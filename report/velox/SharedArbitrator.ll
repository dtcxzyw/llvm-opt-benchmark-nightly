inline.NumInlined: 7736
inline.NumDeleted: 3262
begin_hunk_0_@_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <4 x ptr>, ptr %2, align 8, !tbaa !118
  store <4 x ptr> %i.r, ptr %i.q, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.u = load <4 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !972, !noalias !969
  store <4 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !118, !alias.scope !969, !noalias !972
  store <4 x ptr> splat (ptr null), ptr %.0911.i.i.i, align 8, !tbaa !118, !alias.scope !972, !noalias !969
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !974
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !469

_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ad, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.aa = load <4 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !118, !alias.scope !978, !noalias !975
  store <4 x ptr> %i.aa, ptr %.012.i.i.i18, align 8, !tbaa !118, !alias.scope !975, !noalias !978
  store <4 x ptr> splat (ptr null), ptr %.0911.i.i.i19, align 8, !tbaa !118, !alias.scope !978, !noalias !975
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !980
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !469

_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ae, %.lr.ph.i.i.i17 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !458
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #40
  br label %_ZNSt12_Vector_baseIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !461
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !462
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !458
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8facebook5velox6memory20ArbitrationCandidateEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !138
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !981
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !981
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !138
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !982
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !982
  br label %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit

_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !983

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN8facebook5velox6memory20ArbitrationCandidateEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16.i = alloca { i64, i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 896
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 104
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEET_SH_SH_T0_.exit"
  %i.i = icmp eq i64 %i.db, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph55, !llvm.loop !984

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.gq, %bb.b ]
  %storemerge30.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa51, 56             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bd, %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i.i.i ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store ptr %i.r, ptr %4, align 8, !tbaa !225
  store ptr %i.t, ptr %i.m, align 8, !tbaa !139
  store <2 x ptr> %i.w, ptr %i.n, align 8, !tbaa !118
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.j, ptr noundef %4)
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !138
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !985
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !985
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !138
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !986
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !986
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i2.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4.i.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i4.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i, %bb.k, %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bd = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !987

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.bi, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit" ], [ %storemerge30.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_RT0_.exit.i.i" ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !225
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !139
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = sub i64 %i.bo, %i.a                     ; 2 uses
  %i.bq = sdiv exact i64 %i.bp, 56
  %i.br = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bs = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %0) #28 ; 0 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !225
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !139
  store <2 x ptr> %i.br, ptr %i.bg, align 8, !tbaa !118
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bq, ptr noundef %3)
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i9.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bu, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !138
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28, !inline_history !988
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28, !inline_history !988
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.u, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q, %.lr.ph.i9.i
  %i.cj = load ptr, ptr %i.bf, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ck, align 8, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !138
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !989
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !989
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit"

bb.x:                                             ; preds = %bb.v
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.cn, %bb.y ], [ %i.cx, %bb.z ]
  %i.cy = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.cy, label %bb.aa, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit", !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit": ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cz = icmp sgt i64 %i.bp, 56
  br i1 %i.cz, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !990

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3054 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.03153 = phi i64 [ %i.db, %bb.b ], [ %2, %.lr.ph ]
  %i.da = phi i64 [ %i.gq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.db = add nsw i64 %.03153, -1                 ; 3 uses
  %i.dc = udiv i64 %i.da, 112
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %storemerge3054, i64 -56 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !533 ; 3 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 48
  %.val1.i.i.i = load i64, ptr %i.df, align 8, !tbaa !533 ; 3 uses
  %i.dg = icmp sgt i64 %.val.i.i.i, %.val1.i.i.i
  %i.dh = getelementptr i8, ptr %storemerge3054, i64 -8
  %.val1.i27.i.i = load i64, ptr %i.dh, align 8, !tbaa !533 ; 4 uses
  br i1 %i.dg, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph55
  %i.di = icmp sgt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.di, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = icmp sgt i64 %.val.i.i.i, %.val1.i27.i.i
  %..i.i = select i1 %i.dj, ptr %i.de, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

bb.ad:                                            ; preds = %.lr.ph55
  %i.dk = icmp sgt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dk, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = icmp sgt i64 %.val1.i.i.i, %.val1.i27.i.i
  %.34.i.i = select i1 %i.dl, ptr %i.de, ptr %i.dd
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sink.i.i = phi ptr [ %i.dd, %bb.ab ], [ %i.e, %bb.ad ], [ %.34.i.i, %bb.ae ], [ %..i.i, %bb.ac ]
  tail call void @_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sink.i.i) #28
  br label %bb.af

bb.af:                                            ; preds = %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.014.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.do, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3054, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.val1.i.i13.i = load i64, ptr %i.g, align 8, !tbaa !533 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.af ], [ %i.do, %bb.ag ] ; 14 uses
  %i.dm = getelementptr i8, ptr %.sroa.014.1.i.i, i64 48
  %.val.i.i14.i = load i64, ptr %i.dm, align 8, !tbaa !533
  %i.dn = icmp sgt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 56 ; 2 uses
  br i1 %i.dn, label %bb.ag, label %.preheader.i.i, !llvm.loop !991

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.ag ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 6 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i11.i.i = load i64, ptr %i.dp, align 8, !tbaa !533
  %i.dq = icmp sgt i64 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dq, label %.preheader.i.i, label %bb.ah, !llvm.loop !992

bb.ah:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.ai, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEET_SH_SH_T0_.exit"

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %i.ds = load <2 x ptr>, ptr %.sroa.014.1.i.i, align 8, !tbaa !118
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.1.i.i, i8 0, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  %i.dv = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !118
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48
  %i.dy = load <2 x ptr>, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.1.i.i, i8 0, i64 16, i1 false)
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.dy, ptr %.sroa.014.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ea, align 8, !tbaa !136
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !138
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28, !inline_history !993
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i21 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i21, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.am ], [ %i.en, %bb.an ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.ao, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ak, %bb.ai
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.er = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.er, ptr %i.dt, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.et, align 8, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !138
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !994
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.ew, %bb.as ], [ %i.fg, %bb.at ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.fh, label %bb.au, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.au
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false)
  %i.fj = load ptr, ptr %i.dx, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ds, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fk, align 8, !tbaa !136
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !138
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28, !inline_history !995
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28, !inline_history !995
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i17 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i17, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

bb.az:                                            ; preds = %bb.ax
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i.i19 = phi i32 [ %i.fn, %bb.ay ], [ %i.fx, %bb.az ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i19, 1
  br i1 %i.fy, label %bb.ba, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, !prof !16

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18, %bb.aw, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.fz = load ptr, ptr %i.eq, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.dv, ptr %i.ep, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ga, align 8, !tbaa !136
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !138
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !inline_history !996
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !inline_history !996
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i4.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i6.i.i.i = phi i32 [ %i.gd, %bb.be ], [ %i.gn, %bb.bf ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i6.i.i.i, 1
  br i1 %i.go, label %bb.bg, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !16

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  br label %bb.af, !llvm.loop !997

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.ah
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge3054, i64 noundef %i.db)
  %i.gp = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.gq = sub i64 %i.gp, %i.a                     ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, 896
  br i1 %i.gr, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !984

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_SH_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.036, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [56 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [56 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 48
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !533
  %i.j = getelementptr i8, ptr %i.h, i64 48
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !533
  %i.k = icmp sgt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [56 x i8], ptr %0, i64 %spec.select
  %i.m = getelementptr inbounds [56 x i8], ptr %0, i64 %.036
  %i.n = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.l) #28 ; 0 uses
  %i.o = icmp slt i64 %spec.select, %i.b
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !998

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.p = and i64 %2, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.r = add nsw i64 %2, -2
  %i.s = ashr exact i64 %i.r, 1
  %i.t = icmp eq i64 %.0.lcssa, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = shl nsw i64 %.0.lcssa, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.w = getelementptr inbounds [56 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa
  %i.y = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.w) #28 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.v, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.z = load <2 x ptr>, ptr %3, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %.sroa.14.sroa.0.0.copyload = load <2 x i64>, ptr %i.ac, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.16.32.copyload = load i64, ptr %.sroa.16.32..sroa_idx, align 8 ; 2 uses
  %i.ad = icmp sgt i64 %.1, %1
  br i1 %i.ad, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ae = getelementptr inbounds [56 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 48
  %.val.i.i = load i64, ptr %i.af, align 8, !tbaa !533
  %i.ag = icmp sgt i64 %.val.i.i, %.sroa.16.32.copyload
  br i1 %i.ag, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i
  %i.ai = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #28 ; 0 uses
  %i.aj = icmp sgt i64 %.0911.i, %1
  br i1 %i.aj, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !999

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit": ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %bb.e ]
  %i.ak = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa.i ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.z, ptr %i.ak, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.an, align 8, !tbaa !136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !138
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !993
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.i ], [ %i.ba, %bb.j ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.k, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ab, ptr %i.bc, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bf, align 8, !tbaa !136
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !138
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28, !inline_history !994
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.p:                                             ; preds = %bb.n
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.bi, %bb.o ], [ %i.bs, %bb.p ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.bt, label %bb.q, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store <2 x i64> %.sroa.14.sroa.0.0.copyload, ptr %i.bu, align 8
  %.sroa.16.32..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.16.32.copyload, ptr %.sroa.16.32..sroa_idx39, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !118
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !136
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !138
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !1000
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !1000
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !118
  %.not.i.i.i.i3.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i3.i, label %_ZN8facebook5velox6memory28ScopedArbitrationParticipantaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !138
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !1001
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !1001
  br label %_ZN8facebook5velox6memory28ScopedArbitrationParticipantaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i4.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i6.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i6.i, 1
  br i1 %i.al, label %bb.m, label %_ZN8facebook5velox6memory28ScopedArbitrationParticipantaSEOS2_.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZN8facebook5velox6memory28ScopedArbitrationParticipantaSEOS2_.exit

_ZN8facebook5velox6memory28ScopedArbitrationParticipantaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox6memory22ArbitrationParticipantELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !138
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !183
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !183
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64, i64 }, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.f = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #28 ; 0 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.d, ptr %1, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !136
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !138
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !993
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.w, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !138
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !994
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.ac, %bb.k ], [ %i.am, %bb.l ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.an, label %bb.m, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64, i64 }, align 8   ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.027 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.027, %1
  br i1 %i.b, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.0.029 = phi ptr [ %.sroa.0.027, %.lr.ph ], [ %.sroa.0.0, %bb.ac ] ; 7 uses
  %.pn28 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.029, %bb.ac ] ; 5 uses
  %i.i = getelementptr i8, ptr %.pn28, i64 104
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !533
  %.val1.i = load i64, ptr %i.c, align 8, !tbaa !533
  %i.j = icmp sgt i64 %.val.i, %.val1.i
  br i1 %i.j, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.k = getelementptr inbounds nuw i8, ptr %.pn28, i64 64
  %i.l = load <2 x ptr>, ptr %.sroa.0.029, align 8, !tbaa !118
  store ptr null, ptr %i.k, align 8, !tbaa !139
  store ptr null, ptr %.sroa.0.029, align 8, !tbaa !225
  %i.m = getelementptr inbounds nuw i8, ptr %.pn28, i64 72 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %.pn28, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.029 to i64
  %i.q = sub i64 %i.p, %i.d                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn28, i64 112
  %i.t = udiv exact i64 %i.q, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bk, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.v, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.u, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %.sroa.0.029, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !118
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !138
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !993
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

bb.f:                                             ; preds = %bb.d
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i11 = phi i32 [ %i.ac, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i11, 1
  br i1 %i.an, label %bb.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10, %bb.e, %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i3.i.i13, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !138
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !inline_history !994
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i14 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i4.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i6.i.i16 = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i6.i.i16, 1
  br i1 %i.bh, label %bb.o, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15, %bb.o
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bl = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1002

.loopexit:                                        ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %bb.c
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bn, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !138
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !993
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.ca, %bb.t ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.u, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %.loopexit
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.n, ptr %i.f, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cd, align 8, !tbaa !136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !138
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28, !inline_history !994
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.z:                                             ; preds = %bb.x
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.cg, %bb.y ], [ %i.cq, %bb.z ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.cr, label %bb.aa, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.b
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.029)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, %bb.ab
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 56 ; 2 uses
  %i.cs = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.cs, label %.loopexit26, label %bb.b, !llvm.loop !1003

.loopexit26:                                      ; preds = %bb.ac, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_"(ptr %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.sroa.16.sroa.0.0.copyload = load <2 x i64>, ptr %i.f, align 8
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.18.32.copyload = load i64, ptr %.sroa.18.32..sroa_idx, align 8 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 -8
  %.val2.i11 = load i64, ptr %i.g, align 8, !tbaa !533
  %i.h = icmp sgt i64 %.sroa.18.32.copyload, %.val2.i11
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1004
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !139
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.08.012 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.08.012, i64 -56 ; 7 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.08.012, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0) #28 ; 0 uses
  %i.k = getelementptr i8, ptr %.sroa.08.012, i64 -64
  %.val2.i = load i64, ptr %i.k, align 8, !tbaa !533
  %i.l = icmp sgt i64 %.sroa.18.32.copyload, %.val2.i
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !1005

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.sroa.08.012, i64 -48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139 ; 8 uses
  store ptr %i.a, ptr %.sroa.0.0, align 8, !tbaa !1004
  %i.m = getelementptr inbounds i8, ptr %.sroa.08.012, i64 -48
  store ptr %i.c, ptr %i.m, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !138
  %i.s = load ptr, ptr %.pre, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28, !inline_history !993
  %i.v = load ptr, ptr %.pre, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.g, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %._crit_edge.thread, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %._crit_edge
  %.sroa.08.0.lcssa16 = phi ptr [ %0, %._crit_edge.thread ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0, %._crit_edge ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.e, ptr %i.ac, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.af, align 8, !tbaa !136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !138
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28, !inline_history !994
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.ai, %bb.k ], [ %i.as, %bb.l ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.at, label %bb.m, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 32
  store <2 x i64> %.sroa.16.sroa.0.0.copyload, ptr %i.au, align 8
  %.sroa.18.32..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 48
  store i64 %.sroa.18.32.copyload, ptr %.sroa.18.32..sroa_idx6, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16.i = alloca { i64, i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 896
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit"
  %i.i = icmp eq i64 %i.db, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph55, !llvm.loop !1006

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.gq, %bb.b ]
  %storemerge30.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa51, 56             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bd, %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i.i.i ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store ptr %i.r, ptr %4, align 8, !tbaa !225
  store ptr %i.t, ptr %i.m, align 8, !tbaa !139
  store <2 x ptr> %i.w, ptr %i.n, align 8, !tbaa !118
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.j, ptr noundef %4)
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !136
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !138
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !1007
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !1007
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %bb.c
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !138
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !1008
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !1008
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i2.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4.i.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i4.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i, %bb.k, %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bd = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !1009

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_RT0_.exit.i.i": ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.bi, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit" ], [ %storemerge30.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_RT0_.exit.i.i" ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !225
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !139
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = sub i64 %i.bo, %i.a                     ; 2 uses
  %i.bq = sdiv exact i64 %i.bp, 56
  %i.br = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bs = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %0) #28 ; 0 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !225
  store ptr %i.bl, ptr %i.bf, align 8, !tbaa !139
  store <2 x ptr> %i.br, ptr %i.bg, align 8, !tbaa !118
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bq, ptr noundef %3)
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i9.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bu, align 8, !tbaa !136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !138
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28, !inline_history !1010
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28, !inline_history !1010
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bx, %bb.s ], [ %i.ch, %bb.t ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ci, label %bb.u, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q, %.lr.ph.i9.i
  %i.cj = load ptr, ptr %i.bf, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i1.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit", label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.ck, align 8, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !138
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !1011
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !1011
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit"

bb.x:                                             ; preds = %bb.v
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.cn, %bb.y ], [ %i.cx, %bb.z ]
  %i.cy = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.cy, label %bb.aa, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit", !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit": ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cz = icmp sgt i64 %i.bp, 56
  br i1 %i.cz, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !1012

.lr.ph55:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3054 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.03153 = phi i64 [ %i.db, %bb.b ], [ %2, %.lr.ph ]
  %i.da = phi i64 [ %i.gq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.db = add nsw i64 %.03153, -1                 ; 3 uses
  %i.dc = udiv i64 %i.da, 112
  %i.dd = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %storemerge3054, i64 -56 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !488 ; 3 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 40
  %.val1.i.i.i = load i64, ptr %i.df, align 8, !tbaa !488 ; 3 uses
  %i.dg = icmp sgt i64 %.val.i.i.i, %.val1.i.i.i
  %i.dh = getelementptr i8, ptr %storemerge3054, i64 -16
  %.val1.i27.i.i = load i64, ptr %i.dh, align 8, !tbaa !488 ; 4 uses
  br i1 %i.dg, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %.lr.ph55
  %i.di = icmp sgt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.di, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = icmp sgt i64 %.val.i.i.i, %.val1.i27.i.i
  %..i.i = select i1 %i.dj, ptr %i.de, ptr %i.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

bb.ad:                                            ; preds = %.lr.ph55
  %i.dk = icmp sgt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dk, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = icmp sgt i64 %.val1.i.i.i, %.val1.i27.i.i
  %.34.i.i = select i1 %i.dl, ptr %i.de, ptr %i.dd
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sink.i.i = phi ptr [ %i.dd, %bb.ab ], [ %i.e, %bb.ad ], [ %.34.i.i, %bb.ae ], [ %..i.i, %bb.ac ]
  tail call void @_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sink.i.i) #28
  br label %bb.af

bb.af:                                            ; preds = %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.014.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.do, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3054, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.val1.i.i13.i = load i64, ptr %i.g, align 8, !tbaa !488 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.af ], [ %i.do, %bb.ag ] ; 14 uses
  %i.dm = getelementptr i8, ptr %.sroa.014.1.i.i, i64 40
  %.val.i.i14.i = load i64, ptr %i.dm, align 8, !tbaa !488
  %i.dn = icmp sgt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 56 ; 2 uses
  br i1 %i.dn, label %bb.ag, label %.preheader.i.i, !llvm.loop !1013

.preheader.i.i:                                   ; preds = %bb.ag, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.ag ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 6 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %.val1.i11.i.i = load i64, ptr %i.dp, align 8, !tbaa !488
  %i.dq = icmp sgt i64 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.dq, label %.preheader.i.i, label %bb.ah, !llvm.loop !1014

bb.ah:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.ai, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit"

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %i.ds = load <2 x ptr>, ptr %.sroa.014.1.i.i, align 8, !tbaa !118
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.014.1.i.i, i8 0, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  %i.dv = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !118
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48
  %i.dy = load <2 x ptr>, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.1.i.i, i8 0, i64 16, i1 false)
  %i.dz = load ptr, ptr %i.dr, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.dy, ptr %.sroa.014.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i20, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.ea, align 8, !tbaa !136
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !138
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28, !inline_history !993
  %i.ei = load ptr, ptr %i.dz, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i21 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i21, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.am ], [ %i.en, %bb.an ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.ao, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ak, %bb.ai
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.er = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.es = load ptr, ptr %i.du, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.er, ptr %i.dt, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.et, align 8, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !138
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !994
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !38
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.at:                                            ; preds = %bb.ar
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.ew, %bb.as ], [ %i.fg, %bb.at ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.fh, label %bb.au, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.au
  %i.fi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false)
  %i.fj = load ptr, ptr %i.dx, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ds, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.fk, align 8, !tbaa !136
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !138
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28, !inline_history !995
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  tail call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28, !inline_history !995
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i17 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i17, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

bb.az:                                            ; preds = %bb.ax
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i.i19 = phi i32 [ %i.fn, %bb.ay ], [ %i.fx, %bb.az ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i19, 1
  br i1 %i.fy, label %bb.ba, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, !prof !16

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18, %bb.aw, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.fz = load ptr, ptr %i.eq, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.dv, ptr %i.ep, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.ga, align 8, !tbaa !136
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !138
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !inline_history !996
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !38
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !inline_history !996
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i.i4.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i6.i.i.i = phi i32 [ %i.gd, %bb.be ], [ %i.gn, %bb.bf ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i6.i.i.i, 1
  br i1 %i.go, label %bb.bg, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !16

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i, %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  br label %bb.af, !llvm.loop !1015

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.ah
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge3054, i64 noundef %i.db)
  %i.gp = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.gq = sub i64 %i.gp, %i.a                     ; 3 uses
  %i.gr = icmp sgt i64 %i.gq, 896
  br i1 %i.gr, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !1006

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.036, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [56 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [56 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 40
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !488
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !488
  %i.k = icmp sgt i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [56 x i8], ptr %0, i64 %spec.select
  %i.m = getelementptr inbounds [56 x i8], ptr %0, i64 %.036
  %i.n = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.l) #28 ; 0 uses
  %i.o = icmp slt i64 %spec.select, %i.b
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !1016

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.p = and i64 %2, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.r = add nsw i64 %2, -2
  %i.s = ashr exact i64 %i.r, 1
  %i.t = icmp eq i64 %.0.lcssa, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = shl nsw i64 %.0.lcssa, 1
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.w = getelementptr inbounds [56 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa
  %i.y = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.w) #28 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.v, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.z = load <2 x ptr>, ptr %3, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.16.32.copyload = load i64, ptr %.sroa.16.32..sroa_idx, align 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.17.32.copyload = load i64, ptr %.sroa.17.32..sroa_idx, align 8
  %i.ae = icmp sgt i64 %.1, %1
  br i1 %i.ae, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.af = getelementptr inbounds [56 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 40
  %.val.i.i = load i64, ptr %i.ag, align 8, !tbaa !488
  %i.ah = icmp sgt i64 %.val.i.i, %.sroa.16.32.copyload
  br i1 %i.ah, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i
  %i.aj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.af) #28 ; 0 uses
  %i.ak = icmp sgt i64 %.0911.i, %1
  br i1 %i.ak, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !1017

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit": ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.lr.ph.i ], [ %.0911.i, %bb.e ]
  %i.al = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa.i ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.z, ptr %i.al, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !138
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !993
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.j ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.k, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ab, ptr %i.bd, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bg, align 8, !tbaa !136
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !138
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !994
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.p:                                             ; preds = %bb.n
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.bj, %bb.o ], [ %i.bt, %bb.p ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.bu, label %bb.q, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store <2 x i64> %i.ad, ptr %i.bv, align 8
  %.sroa.17.32..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %.sroa.17.32.copyload, ptr %.sroa.17.32..sroa_idx42, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_SH_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64, i64 }, align 8   ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.027 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.027, %1
  br i1 %i.b, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.0.029 = phi ptr [ %.sroa.0.027, %.lr.ph ], [ %.sroa.0.0, %bb.ac ] ; 7 uses
  %.pn28 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.029, %bb.ac ] ; 5 uses
  %i.i = getelementptr i8, ptr %.pn28, i64 96
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !488
  %.val1.i = load i64, ptr %i.c, align 8, !tbaa !488
  %i.j = icmp sgt i64 %.val.i, %.val1.i
  br i1 %i.j, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.k = getelementptr inbounds nuw i8, ptr %.pn28, i64 64
  %i.l = load <2 x ptr>, ptr %.sroa.0.029, align 8, !tbaa !118
  store ptr null, ptr %i.k, align 8, !tbaa !139
  store ptr null, ptr %.sroa.0.029, align 8, !tbaa !225
  %i.m = getelementptr inbounds nuw i8, ptr %.pn28, i64 72 ; 2 uses
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %.pn28, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.029 to i64
  %i.q = sub i64 %i.p, %i.d                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn28, i64 112
  %i.t = udiv exact i64 %i.q, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bk, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.v, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.u, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %.sroa.0.029, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !118
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !138
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !993
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

bb.f:                                             ; preds = %bb.d
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i11 = phi i32 [ %i.ac, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i11, 1
  br i1 %i.an, label %bb.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10, %bb.e, %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i3.i.i13, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.at, align 8, !tbaa !136
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !138
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !inline_history !994
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

bb.l:                                             ; preds = %bb.j
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i14 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i4.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i6.i.i16 = phi i32 [ %i.aw, %bb.m ], [ %i.bg, %bb.n ]
  %i.bh = icmp eq i32 %.0.i.i.i.i.i.i6.i.i16, 1
  br i1 %i.bh, label %bb.o, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15, %bb.o
  %i.bi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bl = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1002

.loopexit:                                        ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %bb.c
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bn, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !138
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !993
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.s ], [ %i.ca, %bb.t ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.u, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %.loopexit
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.n, ptr %i.f, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cd, align 8, !tbaa !136
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !138
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28, !inline_history !994
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.z:                                             ; preds = %bb.x
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.cg, %bb.y ], [ %i.cq, %bb.z ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.cr, label %bb.aa, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.b
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.029)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, %bb.ab
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 56 ; 2 uses
  %i.cs = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.cs, label %.loopexit26, label %bb.b, !llvm.loop !1018

.loopexit26:                                      ; preds = %bb.ac, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_0EEEvT_T0_"(ptr %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.18.32.copyload = load i64, ptr %.sroa.18.32..sroa_idx, align 8 ; 2 uses
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %.sroa.19.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.19.32.copyload = load i64, ptr %.sroa.19.32..sroa_idx, align 8
  %i.h = getelementptr i8, ptr %0, i64 -16
  %.val2.i14 = load i64, ptr %i.h, align 8, !tbaa !488
  %i.i = icmp sgt i64 %.sroa.18.32.copyload, %.val2.i14
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !1004
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !139
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.015 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.011.015, i64 -56 ; 7 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.011.015, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0) #28 ; 0 uses
  %i.l = getelementptr i8, ptr %.sroa.011.015, i64 -72
  %.val2.i = load i64, ptr %i.l, align 8, !tbaa !488
  %i.m = icmp sgt i64 %.sroa.18.32.copyload, %.val2.i
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !1019

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.sroa.011.015, i64 -48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !139 ; 8 uses
  store ptr %i.a, ptr %.sroa.0.0, align 8, !tbaa !1004
  %i.n = getelementptr inbounds i8, ptr %.sroa.011.015, i64 -48
  store ptr %i.c, ptr %i.n, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.o, align 8, !tbaa !136
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !138
  %i.t = load ptr, ptr %.pre, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28, !inline_history !993
  %i.w = load ptr, ptr %.pre, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.g, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %._crit_edge.thread, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %._crit_edge
  %.sroa.011.0.lcssa19 = phi ptr [ %0, %._crit_edge.thread ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i ], [ %.sroa.0.0, %bb.c ], [ %.sroa.0.0, %._crit_edge ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa19, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa19, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.e, ptr %i.ad, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ag, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !138
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !994
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.l:                                             ; preds = %bb.j
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.aj, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.au, label %bb.m, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa19, i64 32
  store <2 x i64> %i.g, ptr %i.av, align 8
  %.sroa.19.32..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa19, i64 48
  store i64 %.sroa.19.32.copyload, ptr %.sroa.19.32..sroa_idx9, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !479  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !476    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.182) #41
  unreachable

_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !473, !alias.scope !1023, !noalias !1020
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !473, !alias.scope !1020, !noalias !1023
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !458, !alias.scope !1023, !noalias !1020
  store ptr %i.u, ptr %i.s, align 8, !tbaa !458, !alias.scope !1020, !noalias !1023
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1023, !noalias !1020
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1025

_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.ad, %.lr.ph.i.i.i16 ], [ %i.x, %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i18 = phi ptr [ %i.ac, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !473, !alias.scope !1029, !noalias !1026
  store <2 x ptr> %i.y, ptr %.012.i.i.i17, align 8, !tbaa !473, !alias.scope !1026, !noalias !1029
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !458, !alias.scope !1029, !noalias !1026
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !458, !alias.scope !1026, !noalias !1029
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !1029, !noalias !1026
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !1025

_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.x, %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ad, %.lr.ph.i.i.i16 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !480
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ah) #40
  br label %_ZNSt12_Vector_baseISt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt6vectorIN8facebook5velox6memory20ArbitrationCandidateESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIS_IN8facebook5velox6memory20ArbitrationCandidateESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !476
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !479
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !480
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16.i = alloca { i64, i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %6 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 896
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph60

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEET_SH_SH_T0_.exit"
  %i.g = icmp eq i64 %i.ft, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph60, !llvm.loop !1031

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa56 = phi i64 [ %i.c, %.lr.ph ], [ %i.jd, %bb.b ]
  %storemerge31.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa56, 56             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.be, %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.r = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i.i.i ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store ptr %i.s, ptr %6, align 8, !tbaa !225
  store ptr %i.u, ptr %i.n, align 8, !tbaa !139
  store <2 x ptr> %i.x, ptr %i.o, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.h, ptr noundef %6)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !138
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1032
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1032
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !16

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.f, %bb.d
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ap, align 8, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !138
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !1033
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !1033
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i2.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i4.i.i.i.i.i = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i4.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.p, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i, !prof !16

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i, %bb.l, %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.be = add nsw i64 %.010.i.i.i, -1
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i11.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i11.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !136
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !138
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !1032
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !1032
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i12.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i12.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i14.i.i.i = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i14.i.i.i, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i, !prof !16
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_T0_T1_":bb.a
  store i32 0, ptr %i.dv, align 8, !tbaa !136
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !138
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  tail call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28, !inline_history !1036
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28, !inline_history !1036
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.dy, %bb.an ], [ %i.ei, %bb.ao ]
  %i.ej = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.ej, label %bb.ap, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i, !prof !16

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.al, %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ek = load ptr, ptr %i.cn, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i3.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.el, align 8, !tbaa !136
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !138
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  tail call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #28, !inline_history !1035
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  tail call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #28, !inline_history !1035
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i

bb.as:                                            ; preds = %bb.aq
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i.i.i4.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i

bb.au:                                            ; preds = %bb.as
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i6.i = phi i32 [ %i.eo, %bb.at ], [ %i.ey, %bb.au ]
  %i.ez = icmp eq i32 %.0.i.i.i.i.i.i6.i, 1
  br i1 %i.ez, label %bb.av, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i, !prof !16

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i, %bb.ar, %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i
  %i.fa = load ptr, ptr %i.cm, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i8.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i1.i.i8.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit", label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.fb, align 8, !tbaa !136
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !138
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !38
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  tail call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #28, !inline_history !1036
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !38
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #28, !inline_history !1036
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit"

bb.ay:                                            ; preds = %bb.aw
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i9.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i2.i.i9.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i10.i

bb.ba:                                            ; preds = %bb.ay
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i10.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i10.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i4.i.i11.i = phi i32 [ %i.fe, %bb.az ], [ %i.fo, %bb.ba ]
  %i.fp = icmp eq i32 %.0.i.i.i.i4.i.i11.i, 1
  br i1 %i.fp, label %bb.bb, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit", !prof !16

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i10.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #28
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit"

bb.bc:                                            ; preds = %.lr.ph.i9.i
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #28
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit": ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i7.i, %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i10.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.fr = icmp sgt i64 %i.da, 56
  br i1 %i.fr, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !1037

.lr.ph60:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3159 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03258 = phi i64 [ %i.ft, %bb.b ], [ %2, %.lr.ph ]
  %i.fs = phi i64 [ %i.jd, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ft = add nsw i64 %.03258, -1                 ; 3 uses
  %i.fu = udiv i64 %i.fs, 112
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.fu ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %storemerge3159, i64 -56 ; 4 uses
  %i.fx = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fv)
  br i1 %i.fx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph60
  %i.fy = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fv, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fw)
  br i1 %i.fy, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i", label %.sink.split.i.i

bb.be:                                            ; preds = %.lr.ph60
  %i.fz = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fw)
  br i1 %i.fz, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i", label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.be, %bb.bd
  %.sink29.i.i = phi ptr [ %i.e, %bb.bd ], [ %i.fv, %bb.be ] ; 2 uses
  %i.ga = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sink29.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.fw)
  %.26.i.i = select i1 %i.ga, ptr %i.fw, ptr %.sink29.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %.sink.split.i.i, %bb.be, %bb.bd
  %.sink.i.i = phi ptr [ %i.fv, %bb.bd ], [ %i.e, %bb.be ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sink.i.i) #28
  br label %bb.bf

bb.bf:                                            ; preds = %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.gc, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3159, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.bf ], [ %i.gc, %bb.bg ] ; 14 uses
  %i.gb = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.012.1.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 56 ; 2 uses
  br i1 %i.gb, label %bb.bg, label %.preheader.i.i, !llvm.loop !1038

.preheader.i.i:                                   ; preds = %bb.bg, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.bg ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 7 uses
  %i.gd = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.0.1.i.i)
  br i1 %i.gd, label %.preheader.i.i, label %bb.bh, !llvm.loop !1039

bb.bh:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.bi, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEET_SH_SH_T0_.exit"

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8
  %i.gf = load <2 x ptr>, ptr %.sroa.012.1.i.i, align 8, !tbaa !118
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.012.1.i.i, i8 0, i64 16, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 24
  %i.gi = load <2 x ptr>, ptr %i.gg, align 8, !tbaa !118
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false)
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48
  %i.gl = load <2 x ptr>, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.1.i.i, i8 0, i64 16, i1 false)
  %i.gm = load ptr, ptr %i.ge, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.gl, ptr %.sroa.012.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 4 uses
  %i.go = load atomic i64, ptr %i.gn acquire, align 8 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 4294967297
  %i.gq = trunc i64 %i.go to i32                  ; 2 uses
  br i1 %i.gp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.gn, align 8, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 0, ptr %i.gr, align 4, !tbaa !138
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  tail call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28, !inline_history !993
  %i.gv = load ptr, ptr %i.gm, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  tail call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i22 = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i.i.i.i.i22, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gz = add nsw i32 %i.gq, -1
  store i32 %i.gz, ptr %i.gn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bl
  %i.ha = atomicrmw volatile add ptr %i.gn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.bm ], [ %i.ha, %bb.bn ]
  %i.hb = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.hb, label %bb.bo, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gm) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bk, %bb.bi
  %i.hc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 3 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.he = load <2 x ptr>, ptr %i.hc, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false)
  %i.hf = load ptr, ptr %i.gh, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.he, ptr %i.gg, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.hg, align 8, !tbaa !136
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !138
  %i.hl = load ptr, ptr %i.hf, align 8, !tbaa !38
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #28, !inline_history !994
  %i.ho = load ptr, ptr %i.hf, align 8, !tbaa !38
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.br:                                            ; preds = %bb.bp
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.bt:                                            ; preds = %bb.br
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.hj, %bb.bs ], [ %i.ht, %bb.bt ]
  %i.hu = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.hu, label %bb.bu, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.bu
  %i.hv = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 24, i1 false)
  %i.hw = load ptr, ptr %i.gk, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.gf, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.hx, align 8, !tbaa !136
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !138
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  tail call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #28, !inline_history !995
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  tail call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #28, !inline_history !995
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i17 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i.i.i17, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

bb.bz:                                            ; preds = %bb.bx
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i.i19 = phi i32 [ %i.ia, %bb.by ], [ %i.ik, %bb.bz ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i19, 1
  br i1 %i.il, label %bb.ca, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, !prof !16

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18, %bb.bw, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.im = load ptr, ptr %i.hd, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.gi, ptr %i.hc, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.in, align 8, !tbaa !136
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !138
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  tail call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #28, !inline_history !996
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  tail call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #28, !inline_history !996
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i.i = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i.i.i4.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i6.i.i.i = phi i32 [ %i.iq, %bb.ce ], [ %i.ja, %bb.cf ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i.i6.i.i.i, 1
  br i1 %i.jb, label %bb.cg, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !16

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #28
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i, %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  br label %bb.bf, !llvm.loop !1040

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEET_SH_SH_T0_.exit": ; preds = %bb.bh
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge3159, i64 noundef %i.ft)
  %i.jc = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.jd = sub i64 %i.jc, %i.a                     ; 3 uses
  %i.je = icmp sgt i64 %i.jd, 896
  br i1 %i.je, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !1031

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_SH_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.035 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.035, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [56 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [56 x i8], ptr %0, i64 %i.g
  %i.i = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [56 x i8], ptr %0, i64 %spec.select
  %i.k = getelementptr inbounds [56 x i8], ptr %0, i64 %.035
  %i.l = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #28 ; 0 uses
  %i.m = icmp slt i64 %spec.select, %i.b
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !1041

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.n = and i64 %2, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.p = add nsw i64 %2, -2
  %i.q = ashr exact i64 %i.p, 1
  %i.r = icmp eq i64 %.0.lcssa, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = shl nsw i64 %.0.lcssa, 1
  %i.t = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.u = getelementptr inbounds [56 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa
  %i.w = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.u) #28 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.t, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load <4 x ptr>, ptr %3, align 8, !tbaa !118 ; 3 uses
  store <4 x ptr> %i.aa, ptr %4, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.ad = icmp sgt i64 %.1, %1
  br i1 %i.ad, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ae = getelementptr inbounds [56 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %i.af = invoke fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(56) %4)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.af, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit"

bb.e:                                             ; preds = %.noexc
  %i.ag = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i
  %i.ah = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %i.ae) #28 ; 0 uses
  %i.ai = icmp sgt i64 %.0911.i, %1
  br i1 %i.ai, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !1042

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit": ; preds = %.noexc, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %.noexc ], [ %.0911.i, %bb.e ]
  %i.aj = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false)
  %i.ak = extractelement <4 x ptr> %i.aa, i64 0
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !1004
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 8 uses
  %i.an = extractelement <4 x ptr> %i.aa, i64 1
  store ptr %i.an, ptr %i.al, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !138
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !993
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.i ], [ %i.bb, %bb.j ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.k, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_RT2_.exit"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.bf = load <2 x ptr>, ptr %i.y, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.bf, ptr %i.bd, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i3.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bh, align 8, !tbaa !136
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !138
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28, !inline_history !994
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28, !inline_history !994
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.p:                                             ; preds = %bb.n
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.bk, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
end_hunk_1
begin_hunk_2_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_SI_T1_T2_":bb.a
  br i1 %i.dc, label %bb.ad, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.ad
  ret void

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #28
  resume { ptr, i32 } %i.dd
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.429", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !225
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(264) %i.c) ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !225
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !231  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(264) %i.j) ; 5 uses
  %i.o = icmp eq ptr %i.g, null
  %i.p = icmp eq ptr %i.n, null
  %i.q = or i1 %i.o, %i.p
  br i1 %i.q, label %bb.b, label %bb.i, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.r = load ptr, ptr %0, align 8, !tbaa !225
  call void @_ZNK8facebook5velox6memory22ArbitrationParticipant4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(288) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.s = load ptr, ptr %1, align 8, !tbaa !225
  invoke void @_ZNK8facebook5velox6memory22ArbitrationParticipant4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(288) %i.s)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1043
  %i.t = load ptr, ptr %4, align 8, !tbaa !15, !noalias !1043
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11, !noalias !1043
  store ptr %i.t, ptr %2, align 16, !tbaa !14, !noalias !1043
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !14, !noalias !1043
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = load ptr, ptr %5, align 8, !tbaa !15, !noalias !1043
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11, !noalias !1043
  store ptr %i.y, ptr %i.x, align 16, !tbaa !14, !noalias !1043
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !14, !noalias !1043
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.198, i64 70, i64 221, ptr nonnull %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1043
  %i.ac = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !14
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ah = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @"_ZZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_E18veloxCheckFailArgs", ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.198) #41
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.g:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %5, align 8, !tbaa !15    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.g
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.at = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.h
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn20 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.ay, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn20

bb.i:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.g)
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.n)
  %i.bm = icmp eq i32 %i.bh, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !488
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !488
  %i.br = icmp sgt i64 %i.bo, %i.bq
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(12) %i.g)
  %i.bw = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(12) %i.n)
  %i.ca = icmp sgt i32 %i.bv, %i.bz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.016 = phi i1 [ %i.br, %bb.j ], [ %i.ca, %bb.k ]
  ret i1 %.016
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_SH_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64, i64 }, align 8   ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.027 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.027, %1
  br i1 %i.b, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %.sroa.0.029 = phi ptr [ %.sroa.0.027, %.lr.ph ], [ %.sroa.0.0, %bb.ac ] ; 8 uses
  %.pn28 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.029, %bb.ac ] ; 4 uses
  %i.h = tail call fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.0.029, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br i1 %i.h, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.i = getelementptr inbounds nuw i8, ptr %.pn28, i64 64
  %i.j = load <2 x ptr>, ptr %.sroa.0.029, align 8, !tbaa !118
  store ptr null, ptr %i.i, align 8, !tbaa !139
  store ptr null, ptr %.sroa.0.029, align 8, !tbaa !225
  %i.k = getelementptr inbounds nuw i8, ptr %.pn28, i64 72 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %.pn28, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.n = ptrtoint ptr %.sroa.0.029 to i64
  %i.o = sub i64 %i.n, %i.c                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn28, i64 112
  %i.r = udiv exact i64 %i.o, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bi, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.t, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.s, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %.sroa.0.029, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.s, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !139  ; 8 uses
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !118
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !138
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !993
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i9 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i11 = phi i32 [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i.i11, 1
  br i1 %i.al, label %bb.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, !prof !16

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10, %bb.e, %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i3.i.i13, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ar, align 8, !tbaa !136
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !138
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !inline_history !994
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i14 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i4.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i6.i.i16 = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i6.i.i16, 1
  br i1 %i.bf, label %bb.o, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, !prof !16

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15, %bb.o
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.bh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bi = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bj = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1002

.loopexit:                                        ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %bb.c
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bl, align 8, !tbaa !136
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !138
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28, !inline_history !993
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.s ], [ %i.by, %bb.t ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.u, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q, %.loopexit
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.l, ptr %i.e, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cb, align 8, !tbaa !136
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !138
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !inline_history !994
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.z:                                             ; preds = %bb.x
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.ce, %bb.y ], [ %i.co, %bb.z ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.cp, label %bb.aa, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.b
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_"(ptr nonnull %.sroa.0.029)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, %bb.ab
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 56 ; 2 uses
  %i.cq = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.cq, label %.loopexit26, label %bb.b, !llvm.loop !1046

.loopexit26:                                      ; preds = %bb.ac, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupSpillCandidatesEOS9_E3$_1EEEvT_T0_"(ptr %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <4 x ptr>, ptr %0, align 8, !tbaa !118 ; 3 uses
  store <4 x ptr> %i.d, ptr %1, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %0, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %bb.c ] ; 7 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.03.0, i64 -56 ; 3 uses
  %i.g = invoke fastcc noundef zeroext i1 @"_ZZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS1_20ArbitrationCandidateESaIS4_EEENK3$_1clERKS4_SA_"(ptr noundef nonnull readonly align 8 dereferenceable(56) %1, ptr noundef nonnull readonly align 8 dereferenceable(56) %.sroa.0.0)
          to label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_1EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit" unwind label %bb.d

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_1EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit": ; preds = %bb.b
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_1EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit"
  %i.h = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.03.0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0) #28 ; 0 uses
  br label %bb.b, !llvm.loop !1047

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupSpillCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_1EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 16, i1 false)
  %i.j = extractelement <4 x ptr> %i.d, i64 0
  store ptr %i.j, ptr %.sroa.03.0, align 8, !tbaa !1004
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !139  ; 8 uses
  %i.m = extractelement <4 x ptr> %i.d, i64 1
  store ptr %i.m, ptr %i.k, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !136
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !138
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !993
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 24
  %i.ae = load <2 x ptr>, ptr %i.b, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ag, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !138
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !994
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.p:                                             ; preds = %bb.n
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.aj, %bb.o ], [ %i.at, %bb.p ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.au, label %bb.q, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ax, align 8, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !138
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !471
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !471
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.u ], [ %i.bk, %bb.v ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.w, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !16

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bn, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !138
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !472
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !472
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i2.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i4.i.i = phi i32 [ %i.bq, %bb.aa ], [ %i.ca, %bb.ab ]
  %i.cb = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.cb, label %bb.ac, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16.i = alloca { i64, i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 8 uses
  %6 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 896
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph69

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit"
  %i.g = icmp eq i64 %i.ft, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph69, !llvm.loop !1048

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.pr, %bb.b ]
  %storemerge29.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.017.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa, 56               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.be, %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.r = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i.i.i ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store ptr %i.s, ptr %6, align 8, !tbaa !225
  store ptr %i.u, ptr %i.n, align 8, !tbaa !139
  store <2 x ptr> %i.x, ptr %i.o, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.h, ptr noundef %6)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !139  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !138
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1049
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1049
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.h ], [ %i.am, %bb.i ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.j, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i, !prof !16

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.f, %bb.d
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load atomic i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ap, align 8, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !138
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !1050
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28, !inline_history !1050
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i2.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ap, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = atomicrmw volatile add ptr %i.ap, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i4.i.i.i.i.i = phi i32 [ %i.as, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = icmp eq i32 %.0.i.i.i.i4.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.p, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i, !prof !16

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i.i, %bb.l, %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.be = add nsw i64 %.010.i.i.i, -1
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i11.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i11.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !136
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !138
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !1049
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #28, !inline_history !1049
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i12.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i12.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i13.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i14.i.i.i = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i14.i.i.i, 1
  br i1 %i.bu, label %bb.v, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i15.i.i.i, !prof !16
end_hunk_2
begin_hunk_3_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_T0_T1_":bb.a

bb.bh:                                            ; preds = %bb.bg
  %i.ij = xor i1 %i.ii, true
  %i.ik = and i1 %i.ih, %i.ij
  br i1 %i.ik, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bi

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit35.i.i": ; preds = %bb.bg
  %i.il = load ptr, ptr %i.hz, align 8, !tbaa !38
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load ptr, ptr %i.im, align 8
  %i.io = tail call noundef i32 %i.in(ptr noundef nonnull align 8 dereferenceable(12) %i.hz), !inline_history !1055
  %i.ip = load ptr, ptr %i.ig, align 8, !tbaa !38
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = tail call noundef i32 %i.ir(ptr noundef nonnull align 8 dereferenceable(12) %i.ig), !inline_history !1055
  %i.it = icmp sgt i32 %i.io, %i.is
  br i1 %i.it, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bi

bb.bi:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit35.i.i", %bb.bh
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

bb.bj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit.i.i", %bb.bd
  %.val.i36.i.i = load ptr, ptr %i.e, align 8, !tbaa !225
  %i.iu = getelementptr i8, ptr %.val.i36.i.i, i64 40
  %.val.val.i37.i.i = load ptr, ptr %i.iu, align 8, !tbaa !231 ; 2 uses
  %i.iv = load ptr, ptr %.val.val.i37.i.i, align 8, !tbaa !38
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 296
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = tail call noundef ptr %i.ix(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i37.i.i), !inline_history !1055 ; 3 uses
  %i.iz = load ptr, ptr %i.fw, align 8, !tbaa !225
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !231 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !38
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 296
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = tail call noundef ptr %i.je(ptr noundef nonnull align 8 dereferenceable(264) %i.jb), !inline_history !1055 ; 3 uses
  %i.jg = icmp eq ptr %i.iy, null                 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, null                 ; 2 uses
  %or.cond.i.i38.i.i = or i1 %i.jg, %i.jh
  br i1 %or.cond.i.i38.i.i, label %bb.bk, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit40.i.i"

bb.bk:                                            ; preds = %bb.bj
  %i.ji = xor i1 %i.jh, true
  %i.jj = and i1 %i.jg, %i.ji
  br i1 %i.jj, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bl

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit40.i.i": ; preds = %bb.bj
  %i.jk = load ptr, ptr %i.iy, align 8, !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = tail call noundef i32 %i.jm(ptr noundef nonnull align 8 dereferenceable(12) %i.iy), !inline_history !1055
  %i.jo = load ptr, ptr %i.jf, align 8, !tbaa !38
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = tail call noundef i32 %i.jq(ptr noundef nonnull align 8 dereferenceable(12) %i.jf), !inline_history !1055
  %i.js = icmp sgt i32 %i.jn, %i.jr
  br i1 %i.js, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bl

bb.bl:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit40.i.i", %bb.bk
  %.val.i41.i.i = load ptr, ptr %i.fv, align 8, !tbaa !225
  %i.jt = getelementptr i8, ptr %.val.i41.i.i, i64 40
  %.val.val.i42.i.i = load ptr, ptr %i.jt, align 8, !tbaa !231 ; 2 uses
  %i.ju = load ptr, ptr %.val.val.i42.i.i, align 8, !tbaa !38
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 296
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = tail call noundef ptr %i.jw(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i42.i.i), !inline_history !1055 ; 3 uses
  %i.jy = load ptr, ptr %i.fw, align 8, !tbaa !225
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !231 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !38
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 296
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = tail call noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(264) %i.ka), !inline_history !1055 ; 3 uses
  %i.kf = icmp eq ptr %i.jx, null                 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, null                 ; 2 uses
  %or.cond.i.i43.i.i = or i1 %i.kf, %i.kg
  br i1 %or.cond.i.i43.i.i, label %bb.bm, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit45.i.i"

bb.bm:                                            ; preds = %bb.bl
  %i.kh = xor i1 %i.kg, true
  %i.ki = and i1 %i.kf, %i.kh
  br i1 %i.ki, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bn

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit45.i.i": ; preds = %bb.bl
  %i.kj = load ptr, ptr %i.jx, align 8, !tbaa !38
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = tail call noundef i32 %i.kl(ptr noundef nonnull align 8 dereferenceable(12) %i.jx), !inline_history !1055
  %i.kn = load ptr, ptr %i.ke, align 8, !tbaa !38
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = tail call noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(12) %i.ke), !inline_history !1055
  %i.kr = icmp sgt i32 %i.km, %i.kq
  br i1 %i.kr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i", label %bb.bn

bb.bn:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit45.i.i", %bb.bm
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %bb.bn, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit45.i.i", %bb.bm, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit40.i.i", %bb.bk, %bb.bi, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit35.i.i", %bb.bh, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit30.i.i", %bb.bf
  %.sink.i.i = phi ptr [ %i.fw, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit35.i.i" ], [ %i.fv, %bb.bn ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit40.i.i" ], [ %i.fv, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit30.i.i" ], [ %i.e, %bb.bi ], [ %i.fv, %bb.bf ], [ %i.fw, %bb.bh ], [ %i.e, %bb.bk ], [ %i.fw, %bb.bm ], [ %i.fw, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit45.i.i" ]
  tail call void @_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sink.i.i) #28
  br label %bb.bo

bb.bo:                                            ; preds = %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.017.0.i.i = phi ptr [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.pp, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2968, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_SH_T0_.exit.i" ], [ %.sroa.0.1.i.i, %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit ]
  br label %bb.bp

bb.bp:                                            ; preds = %bb.br, %bb.bo
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.0.i.i, %bb.bo ], [ %i.lr, %bb.br ] ; 15 uses
  %.val.i.i13.i = load ptr, ptr %.sroa.017.1.i.i, align 8, !tbaa !225
  %i.ks = getelementptr i8, ptr %.val.i.i13.i, i64 40
  %.val.val.i.i14.i = load ptr, ptr %i.ks, align 8, !tbaa !231 ; 2 uses
  %i.kt = load ptr, ptr %.val.val.i.i14.i, align 8, !tbaa !38
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 296
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = tail call noundef ptr %i.kv(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i.i14.i), !inline_history !1056 ; 3 uses
  %i.kx = load ptr, ptr %0, align 8, !tbaa !225
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !231 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !38
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 296
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = tail call noundef ptr %i.lc(ptr noundef nonnull align 8 dereferenceable(264) %i.kz), !inline_history !1056 ; 3 uses
  %i.le = icmp eq ptr %i.kw, null                 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, null                 ; 2 uses
  %or.cond.i.i.i15.i = or i1 %i.le, %i.lf
  br i1 %or.cond.i.i.i15.i, label %bb.bq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit.i16.i"

bb.bq:                                            ; preds = %bb.bp
  %i.lg = xor i1 %i.lf, true
  %i.lh = and i1 %i.le, %i.lg
  br i1 %i.lh, label %bb.br, label %.preheader

.preheader:                                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit.i16.i", %bb.bq
  br label %bb.bs

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit.i16.i": ; preds = %bb.bp
  %i.li = load ptr, ptr %i.kw, align 8, !tbaa !38
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = tail call noundef i32 %i.lk(ptr noundef nonnull align 8 dereferenceable(12) %i.kw), !inline_history !1056
  %i.lm = load ptr, ptr %i.ld, align 8, !tbaa !38
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = tail call noundef i32 %i.lo(ptr noundef nonnull align 8 dereferenceable(12) %i.ld), !inline_history !1056
  %i.lq = icmp sgt i32 %i.ll, %i.lp
  br i1 %i.lq, label %bb.br, label %.preheader

bb.br:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit.i16.i", %bb.bq
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 56
  br label %bb.bp, !llvm.loop !1057

bb.bs:                                            ; preds = %.backedge, %.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %.preheader ], [ %.sroa.0.1.i.i, %.backedge ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -56 ; 7 uses
  %.val.i10.i.i = load ptr, ptr %0, align 8, !tbaa !225
  %i.ls = getelementptr i8, ptr %.val.i10.i.i, i64 40
  %.val.val.i11.i.i = load ptr, ptr %i.ls, align 8, !tbaa !231 ; 2 uses
  %i.lt = load ptr, ptr %.val.val.i11.i.i, align 8, !tbaa !38
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 296
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = tail call noundef ptr %i.lv(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i11.i.i), !inline_history !1056 ; 3 uses
  %i.lx = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !225
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 40
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !231 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !38
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 296
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = tail call noundef ptr %i.mc(ptr noundef nonnull align 8 dereferenceable(264) %i.lz), !inline_history !1056 ; 3 uses
  %i.me = icmp eq ptr %i.lw, null                 ; 2 uses
  %i.mf = icmp eq ptr %i.md, null                 ; 2 uses
  %or.cond.i.i12.i.i = or i1 %i.me, %i.mf
  br i1 %or.cond.i.i12.i.i, label %bb.bt, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit14.i.i"

bb.bt:                                            ; preds = %bb.bs
  %i.mg = xor i1 %i.mf, true
  %i.mh = and i1 %i.me, %i.mg
  br i1 %i.mh, label %.backedge, label %bb.bu

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit14.i.i": ; preds = %bb.bs
  %i.mi = load ptr, ptr %i.lw, align 8, !tbaa !38
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = tail call noundef i32 %i.mk(ptr noundef nonnull align 8 dereferenceable(12) %i.lw), !inline_history !1056
  %i.mm = load ptr, ptr %i.md, align 8, !tbaa !38
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8
  %i.mp = tail call noundef i32 %i.mo(ptr noundef nonnull align 8 dereferenceable(12) %i.md), !inline_history !1056
  %i.mq = icmp sgt i32 %i.ml, %i.mp
  br i1 %i.mq, label %.backedge, label %bb.bu

.backedge:                                        ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit14.i.i", %bb.bt
  br label %bb.bs, !llvm.loop !1058

bb.bu:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit14.i.i", %bb.bt
  %.not.i.i = icmp ult ptr %.sroa.017.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.bv, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit"

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 8
  %i.ms = load <2 x ptr>, ptr %.sroa.017.1.i.i, align 8, !tbaa !118
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.017.1.i.i, i8 0, i64 16, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 24
  %i.mv = load <2 x ptr>, ptr %i.mt, align 8, !tbaa !118
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, ptr noundef nonnull align 8 dereferenceable(24) %i.mw, i64 24, i1 false)
  %i.mx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48
  %i.my = load <2 x ptr>, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.1.i.i, i8 0, i64 16, i1 false)
  %i.mz = load ptr, ptr %i.mr, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.my, ptr %.sroa.017.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 4 uses
  %i.nb = load atomic i64, ptr %i.na acquire, align 8 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, 4294967297
  %i.nd = trunc i64 %i.nb to i32                  ; 2 uses
  br i1 %i.nc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.na, align 8, !tbaa !136
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 0, ptr %i.ne, align 4, !tbaa !138
  %i.nf = load ptr, ptr %i.mz, align 8, !tbaa !38
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8
  tail call void %i.nh(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #28, !inline_history !993
  %i.ni = load ptr, ptr %i.mz, align 8, !tbaa !38
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 24
  %i.nk = load ptr, ptr %i.nj, align 8
  tail call void %i.nk(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.by:                                            ; preds = %bb.bw
  %i.nl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i22 = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i.i.i.i.i22, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nm = add nsw i32 %i.nd, -1
  store i32 %i.nm, ptr %i.na, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.nn = atomicrmw volatile add ptr %i.na, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.nd, %bb.bz ], [ %i.nn, %bb.ca ]
  %i.no = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.no, label %bb.cb, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mz) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bx, %bb.bv
  %i.np = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 3 uses
  %i.nq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.nr = load <2 x ptr>, ptr %i.np, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.np, i8 0, i64 16, i1 false)
  %i.ns = load ptr, ptr %i.mu, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.nr, ptr %i.mt, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store i32 0, ptr %i.nt, align 8, !tbaa !136
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !138
  %i.ny = load ptr, ptr %i.ns, align 8, !tbaa !38
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  tail call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #28, !inline_history !994
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !38
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  tail call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.ce:                                            ; preds = %bb.cc
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.og = atomicrmw volatile add ptr %i.nt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.cg, %bb.cf
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.nw, %bb.cf ], [ %i.og, %bb.cg ]
  %i.oh = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.oh, label %bb.ch, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.ch:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ns) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.ch
  %i.oi = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mw, ptr noundef nonnull align 8 dereferenceable(24) %i.oi, i64 24, i1 false)
  %i.oj = load ptr, ptr %i.mx, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ms, ptr %.sroa.0.1.i.i, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i16 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i.i.i16, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 4 uses
  %i.ol = load atomic i64, ptr %i.ok acquire, align 8 ; 2 uses
  %i.om = icmp eq i64 %i.ol, 4294967297
  %i.on = trunc i64 %i.ol to i32                  ; 2 uses
  br i1 %i.om, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %i.ok, align 8, !tbaa !136
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store i32 0, ptr %i.oo, align 4, !tbaa !138
  %i.op = load ptr, ptr %i.oj, align 8, !tbaa !38
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load ptr, ptr %i.oq, align 8
  tail call void %i.or(ptr noundef nonnull align 8 dereferenceable(16) %i.oj) #28, !inline_history !995
  %i.os = load ptr, ptr %i.oj, align 8, !tbaa !38
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ou = load ptr, ptr %i.ot, align 8
  tail call void %i.ou(ptr noundef nonnull align 8 dereferenceable(16) %i.oj) #28, !inline_history !995
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.ov = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i17 = icmp eq i8 %i.ov, 0
  br i1 %.not.i.i.i.i.i.i.i.i17, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ow = add nsw i32 %i.on, -1
  store i32 %i.ow, ptr %i.ok, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

bb.cm:                                            ; preds = %bb.ck
  %i.ox = atomicrmw volatile add ptr %i.ok, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18: ; preds = %bb.cm, %bb.cl
  %.0.i.i.i.i.i.i.i.i.i19 = phi i32 [ %i.on, %bb.cl ], [ %i.ox, %bb.cm ]
  %i.oy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i19, 1
  br i1 %i.oy, label %bb.cn, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, !prof !16

bb.cn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oj) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i: ; preds = %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18, %bb.cj, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
  %i.oz = load ptr, ptr %i.nq, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.mv, ptr %i.np, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.co

bb.co:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 4 uses
  %i.pb = load atomic i64, ptr %i.pa acquire, align 8 ; 2 uses
  %i.pc = icmp eq i64 %i.pb, 4294967297
  %i.pd = trunc i64 %i.pb to i32                  ; 2 uses
  br i1 %i.pc, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.pa, align 8, !tbaa !136
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  store i32 0, ptr %i.pe, align 4, !tbaa !138
  %i.pf = load ptr, ptr %i.oz, align 8, !tbaa !38
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  tail call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #28, !inline_history !996
  %i.pi = load ptr, ptr %i.oz, align 8, !tbaa !38
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8
  tail call void %i.pk(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #28, !inline_history !996
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.cq:                                            ; preds = %bb.co
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i.i = icmp eq i8 %i.pl, 0
  br i1 %.not.i.i.i.i.i4.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pm = add nsw i32 %i.pd, -1
  store i32 %i.pm, ptr %i.pa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.pn = atomicrmw volatile add ptr %i.pa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i6.i.i.i = phi i32 [ %i.pd, %bb.cr ], [ %i.pn, %bb.cs ]
  %i.po = icmp eq i32 %.0.i.i.i.i.i.i6.i.i.i, 1
  br i1 %i.po, label %bb.ct, label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !16

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oz) #28
  br label %_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN8facebook5velox6memory20ArbitrationCandidateEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i.i, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i.i, %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.017.1.i.i, i64 56
  br label %bb.bo, !llvm.loop !1059

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit": ; preds = %bb.bu
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.017.1.i.i, ptr %storemerge2968, i64 noundef %i.ft)
  %i.pq = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.pr = sub i64 %i.pq, %i.a                     ; 3 uses
  %i.ps = icmp sgt i64 %i.pr, 896
  br i1 %i.ps, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit", !llvm.loop !1048

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_SH_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"
  %.038 = phi i64 [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.038, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [56 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [56 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !225
  %i.i = getelementptr i8, ptr %.val.i, i64 40
  %.val.val.i = load ptr, ptr %i.i, align 8, !tbaa !231 ; 2 uses
  %i.j = load ptr, ptr %.val.val.i, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i), !inline_history !1060 ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !225
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(264) %i.p), !inline_history !1060 ; 3 uses
  %i.u = icmp eq ptr %i.m, null                   ; 2 uses
  %i.v = icmp eq ptr %i.t, null                   ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = xor i1 %i.v, true
  %i.x = and i1 %i.u, %i.w
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"

bb.c:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.m), !inline_history !1060
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.t), !inline_history !1060
  %i.ag = icmp sgt i32 %i.ab, %i.af
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit": ; preds = %bb.b, %bb.c
  %.0.i.i = phi i1 [ %i.x, %bb.b ], [ %i.ag, %bb.c ]
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.ah = getelementptr inbounds [56 x i8], ptr %0, i64 %spec.select
  %i.ai = getelementptr inbounds [56 x i8], ptr %0, i64 %.038
  %i.aj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #28 ; 0 uses
  %i.ak = icmp slt i64 %spec.select, %i.b
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !1061

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit" ] ; 5 uses
  %i.al = and i64 %2, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.an = add nsw i64 %2, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = shl nsw i64 %.0.lcssa, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [56 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa
  %i.au = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.as) #28 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.ar, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = load <4 x ptr>, ptr %3, align 8, !tbaa !118 ; 4 uses
  store <4 x ptr> %i.ay, ptr %4, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !118
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = icmp sgt i64 %.1, %1
  br i1 %i.bb, label %.lr.ph.i.preheader, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.bc = extractelement <4 x ptr> %i.ay, i64 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.010.i = phi i64 [ %.0911.i, %bb.h ], [ %.1, %.lr.ph.i.preheader ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.be = getelementptr inbounds [56 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !225
  %i.bf = getelementptr i8, ptr %.val.i.i, i64 40
  %.val.val.i.i = load ptr, ptr %i.bf, align 8, !tbaa !231 ; 2 uses
  %i.bg = load ptr, ptr %.val.val.i.i, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 296
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i.i)
          to label %.noexc unwind label %bb.ah, !inline_history !1062 ; 3 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !231 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 296
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(264) %i.bk)
          to label %.noexc25 unwind label %bb.ah, !inline_history !1062 ; 3 uses

.noexc25:                                         ; preds = %.noexc
  %i.bp = icmp eq ptr %i.bj, null                 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, null                 ; 2 uses
  %or.cond.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i, label %bb.g, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EES7_EEbT_RT0_.exit.i"

bb.g:                                             ; preds = %.noexc25
  %i.br = xor i1 %i.bq, true
  %i.bs = and i1 %i.bp, %i.br
  br i1 %i.bs, label %bb.h, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EES7_EEbT_RT0_.exit.i": ; preds = %.noexc25
  %i.bt = load ptr, ptr %i.bj, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(12) %i.bj)
          to label %.noexc26 unwind label %bb.ah, !inline_history !1062

.noexc26:                                         ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EES7_EEbT_RT0_.exit.i"
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef i32 %i.bz(ptr noundef nonnull align 8 dereferenceable(12) %i.bo)
          to label %.noexc27 unwind label %bb.ah, !inline_history !1062

.noexc27:                                         ; preds = %.noexc26
  %i.cb = icmp sgt i32 %i.bw, %i.ca
  br i1 %i.cb, label %bb.h, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"

bb.h:                                             ; preds = %.noexc27, %bb.g
  %i.cc = getelementptr inbounds [56 x i8], ptr %0, i64 %.010.i
  %i.cd = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.be) #28 ; 0 uses
  %i.ce = icmp sgt i64 %.0911.i, %1
  br i1 %i.ce, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit", !llvm.loop !1063

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit": ; preds = %bb.g, %.noexc27, %bb.h, %bb.f
  %.0.lcssa.i = phi i64 [ %.1, %bb.f ], [ %.010.i, %.noexc27 ], [ %.0911.i, %bb.h ], [ %.010.i, %bb.g ]
  %i.cf = getelementptr inbounds [56 x i8], ptr %0, i64 %.0.lcssa.i ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false)
  %i.cg = extractelement <4 x ptr> %i.ay, i64 0
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !1004
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !139 ; 8 uses
  %i.cj = extractelement <4 x ptr> %i.ay, i64 1
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ck, align 8, !tbaa !136
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !138
  %i.cp = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28, !inline_history !993
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.l ], [ %i.cx, %bb.m ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.n, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.j, %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_SI_T1_RT2_.exit"
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.db = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.db, ptr %i.cz, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i3.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dd, align 8, !tbaa !136
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !138
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  tail call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #28, !inline_history !994
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  tail call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #28, !inline_history !994
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.s:                                             ; preds = %bb.q
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.dg, %bb.r ], [ %i.dq, %bb.s ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.dr, label %bb.t, label %bb.u, !prof !16

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #28
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.p, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  %i.dt = load ptr, ptr %i.ax, align 8, !tbaa !139 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.du, align 8, !tbaa !136
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !138
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !38
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !471
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28, !inline_history !471
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.x:                                             ; preds = %bb.v
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i = phi i32 [ %i.dx, %bb.y ], [ %i.eh, %bb.z ]
  %i.ei = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ei, label %bb.aa, label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !16

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #28
  br label %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w, %bb.u
  %i.ej = load ptr, ptr %i.av, align 8, !tbaa !139 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 4 uses
  %i.el = load atomic i64, ptr %i.ek acquire, align 8 ; 2 uses
  %i.em = icmp eq i64 %i.el, 4294967297
  %i.en = trunc i64 %i.el to i32                  ; 2 uses
  br i1 %i.em, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ek, align 8, !tbaa !136
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 0, ptr %i.eo, align 4, !tbaa !138
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #28, !inline_history !472
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #28, !inline_history !472
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ev = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i2.i.i = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i2.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ew = add nsw i32 %i.en, -1
  store i32 %i.ew, ptr %i.ek, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.af:                                            ; preds = %bb.ad
  %i.ex = atomicrmw volatile add ptr %i.ek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i4.i.i = phi i32 [ %i.en, %bb.ae ], [ %i.ex, %bb.af ]
  %i.ey = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ey, label %bb.ag, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox6memory10MemoryPoolELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.ag
  ret void

bb.ah:                                            ; preds = %.noexc26, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EES7_EEbT_RT0_.exit.i", %.noexc, %.lr.ph.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #28
  resume { ptr, i32 } %i.ez
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_SH_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64, i64 }, align 8   ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit26, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.027 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.027, %1
  br i1 %i.b, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.0.029 = phi ptr [ %.sroa.0.027, %.lr.ph ], [ %.sroa.0.0, %bb.ad ] ; 8 uses
  %.pn28 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.029, %bb.ad ] ; 4 uses
  %.val.i = load ptr, ptr %.sroa.0.029, align 8, !tbaa !225
  %i.h = getelementptr i8, ptr %.val.i, i64 40
  %.val.val.i = load ptr, ptr %i.h, align 8, !tbaa !231 ; 2 uses
  %i.i = load ptr, ptr %.val.val.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(264) %.val.val.i), !inline_history !1060 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !225
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(264) %i.o), !inline_history !1060 ; 3 uses
  %i.t = icmp eq ptr %i.l, null                   ; 2 uses
  %i.u = icmp eq ptr %i.s, null                   ; 2 uses
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.c, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.v = xor i1 %i.u, true
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.ac

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit": ; preds = %bb.b
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.l), !inline_history !1060
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.s), !inline_history !1060
  %i.af = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn28, i64 64
  %i.ah = load <2 x ptr>, ptr %.sroa.0.029, align 8, !tbaa !118
  store ptr null, ptr %i.ag, align 8, !tbaa !139
  store ptr null, ptr %.sroa.0.029, align 8, !tbaa !225
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn28, i64 72 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn28, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.al = ptrtoint ptr %.sroa.0.029 to i64
  %i.am = sub i64 %i.al, %i.c                     ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn28, i64 112
  %i.ap = udiv exact i64 %i.am, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cg, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ar, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.aq, %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17 ], [ %.sroa.0.029, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -56 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -56 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !118
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.av, align 8, !tbaa !136
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !138
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !993
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

bb.g:                                             ; preds = %bb.e
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i9 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

bb.i:                                             ; preds = %bb.g
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i11 = phi i32 [ %i.ay, %bb.h ], [ %i.bi, %bb.i ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i.i11, 1
  br i1 %i.bj, label %bb.j, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, !prof !16

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i10, %bb.f, %.lr.ph.i.i.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.bn = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.bn, ptr %i.bk, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i13 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i3.i.i13, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bp, align 8, !tbaa !136
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !138
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !994
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

bb.m:                                             ; preds = %bb.k
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i14 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i4.i.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

bb.o:                                             ; preds = %bb.m
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i6.i.i16 = phi i32 [ %i.bs, %bb.n ], [ %i.cc, %bb.o ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i6.i.i16, 1
  br i1 %i.cd, label %bb.p, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, !prof !16

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17

_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i12, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i15, %bb.p
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %i.cg = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ch = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1002

.loopexit:                                        ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit17, %bb.d
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.ah, ptr %0, align 8, !tbaa !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cj, align 8, !tbaa !136
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !138
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28, !inline_history !993
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.t ], [ %i.cw, %bb.u ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.v, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.r, %.loopexit
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.e, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cz, align 8, !tbaa !136
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !138
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !994
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.dc, %bb.z ], [ %i.dm, %bb.aa ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.dn, label %bb.ab, label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, !prof !16

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclINS_17__normal_iteratorIPS7_S9_EESG_EEbT_T0_.exit"
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.029)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit, %bb.ac
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 56 ; 2 uses
  %i.do = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.do, label %.loopexit26, label %bb.b, !llvm.loop !1064

.loopexit26:                                      ; preds = %bb.ad, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator27sortAndGroupAbortCandidatesEOS9_E3$_0EEEvT_T0_"(ptr %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.facebook::velox::memory::ArbitrationCandidate", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <4 x ptr>, ptr %0, align 8, !tbaa !118 ; 3 uses
  store <4 x ptr> %i.d, ptr %1, align 8, !tbaa !118
  store <4 x ptr> splat (ptr null), ptr %0, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = extractelement <4 x ptr> %i.d, i64 0     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.06.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0, %bb.e ] ; 7 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.06.0, i64 -56 ; 3 uses
  %.val.val = load ptr, ptr %i.h, align 8, !tbaa !231 ; 2 uses
  %i.i = load ptr, ptr %.val.val, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(264) %.val.val)
          to label %.noexc unwind label %bb.f, !inline_history !1065 ; 3 uses

.noexc:                                           ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.0.0, align 8, !tbaa !225
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !231  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(264) %i.o)
          to label %.noexc1 unwind label %bb.f, !inline_history !1065 ; 3 uses

.noexc1:                                          ; preds = %.noexc
  %i.t = icmp eq ptr %i.l, null                   ; 2 uses
  %i.u = icmp eq ptr %i.s, null                   ; 2 uses
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc1
  %i.v = xor i1 %i.u, true
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.g

bb.d:                                             ; preds = %.noexc1
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.l)
          to label %.noexc2 unwind label %bb.f, !inline_history !1065

.noexc2:                                          ; preds = %bb.d
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(12) %i.s)
          to label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit" unwind label %bb.f, !inline_history !1065

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit": ; preds = %.noexc2
  %i.af = icmp sgt i32 %i.aa, %i.ae
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit"
  %i.ag = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0) #28 ; 0 uses
  br label %bb.b, !llvm.loop !1066

bb.f:                                             ; preds = %.noexc2, %bb.d, %.noexc, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.ah

bb.g:                                             ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN8facebook5velox6memory16SharedArbitrator27sortAndGroupAbortCandidatesEOSt6vectorINS4_20ArbitrationCandidateESaIS7_EEE3$_0EclIS7_NS_17__normal_iteratorIPS7_S9_EEEEbRT_T0_.exit"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 16, i1 false)
  store ptr %i.g, ptr %.sroa.06.0, align 8, !tbaa !1004
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 8 uses
  %i.ak = extractelement <4 x ptr> %i.d, i64 1
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !139
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 8, !tbaa !136
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !138
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !993
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !993
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ay, %bb.l ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.m, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, !prof !16

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 24
  %i.bc = load <2 x ptr>, ptr %i.b, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !139 ; 8 uses
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !118
  %.not.i.i.i.i3.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i3.i.i, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.be, align 8, !tbaa !136
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !138
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #28, !inline_history !994
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #28, !inline_history !994
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i4.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i4.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

bb.r:                                             ; preds = %bb.p
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i6.i.i = phi i32 [ %i.bh, %bb.q ], [ %i.br, %bb.r ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i6.i.i, 1
  br i1 %i.bs, label %bb.s, label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit, !prof !16

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #28
  br label %_ZN8facebook5velox6memory20ArbitrationCandidateaSEOS2_.exit
end_hunk_3
