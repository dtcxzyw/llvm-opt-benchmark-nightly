inline.NumInlined: 1069
inline.NumDeleted: 554
begin_hunk_0_@_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !78
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !246

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !77
  br label %bb.j

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm:bb.a
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487) ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #21 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.aa, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !78
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !246

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !21, !alias.scope !250, !noalias !247
  store ptr null, ptr %i.t, align 8, !tbaa !22, !alias.scope !250, !noalias !247
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !21, !alias.scope !247, !noalias !250
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !66, !alias.scope !250, !noalias !247
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !21, !alias.scope !255, !noalias !252
  store ptr null, ptr %i.y, align 8, !tbaa !22, !alias.scope !255, !noalias !252
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !21, !alias.scope !252, !noalias !255
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !66, !alias.scope !255, !noalias !252
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
end_hunk_4
begin_hunk_5_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !257
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !257
  br label %bb.j

bb.f:                                             ; preds = %bb.d
end_hunk_5
begin_hunk_6_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = load ptr, ptr %3, align 8, !tbaa !258    ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i

end_hunk_6
begin_hunk_7_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(72) %i.v) #22, !inline_history !259
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i
end_hunk_7
begin_hunk_8_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
bb.l:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !258   ; 3 uses
  %.not.i10 = icmp eq ptr %i.ab, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i11

end_hunk_8
begin_hunk_9_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.ab) #22, !inline_history !259
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i11, %bb.l, %bb.k
end_hunk_9
begin_hunk_10_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %4, align 8, !tbaa !258   ; 3 uses
  %.not.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i14

end_hunk_10
begin_hunk_11_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(72) %i.ag) #22, !inline_history !259
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.o, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i14
end_hunk_11
begin_hunk_12_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
bb.q:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !258   ; 3 uses
  %.not.i16 = icmp eq ptr %i.am, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i17

end_hunk_12
begin_hunk_13_@_ZN5arrow6FutureINS_8internal5EmptyEEC2ENS_6ResultIS2_EE:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(72) %i.am) #22, !inline_history !259
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i17, %bb.q, %bb.p
end_hunk_13
begin_hunk_14_@_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_:bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !260
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !260
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit

bb.d:                                             ; preds = %bb.b
end_hunk_14
begin_hunk_15_@_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !258    ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !22
end_hunk_15
begin_hunk_16_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
          to label %bb.c unwind label %bb.x       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !258
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !261
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread
end_hunk_16
begin_hunk_17_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #22, !inline_history !263
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #22, !inline_history !263
  br label %bb.j

bb.f:                                             ; preds = %bb.d
end_hunk_17
begin_hunk_18_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
bb.p:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

end_hunk_18
begin_hunk_19_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  br i1 %i.aq, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.p
  store ptr %i.a, ptr %i.al, align 8, !tbaa !265
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.q
end_hunk_19
begin_hunk_20_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a

bb.s:                                             ; preds = %bb.q
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !264
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
end_hunk_20
begin_hunk_21_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E:bb.a
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #22, !inline_history !267
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !264
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
end_hunk_21
begin_hunk_22_@_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit, label %bb.b

end_hunk_22
begin_hunk_23_@_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #22, !inline_history !270
  br label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit: ; preds = %bb.a, %bb.b
end_hunk_23
begin_hunk_24_@llvm.umin.i64
!243 = distinct !{!243, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_"}
!244 = !{!245}
!245 = distinct !{!245, !243, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!246 = distinct !{!246, !62}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!249 = distinct !{!249, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_"}
!250 = !{!251}
!251 = distinct !{!251, !249, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!254 = distinct !{!254, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_"}
!255 = !{!256}
!256 = distinct !{!256, !254, !"_ZSt19__relocate_object_aIN5arrow6FutureINS0_8internal5EmptyEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!257 = distinct !{ptr @_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!258 = !{!68, !68, i64 0}
!259 = distinct !{null, null}
!260 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!261 = !{!262, !68, i64 0}
!262 = !{!"_ZTSNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE5_ImplE", !68, i64 0}
!263 = distinct !{null, null}
!264 = !{!204, !24, i64 0}
!265 = !{!266, !68, i64 0}
!266 = !{!"_ZTSSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0, !204, i64 8}
!267 = distinct !{null, null, null, null, null}
!268 = !{!269, !68, i64 16}
!269 = !{!"_ZTSSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !262, i64 16}
!270 = distinct !{null}
end_hunk_24
