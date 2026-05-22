inline.NumInlined: 1628
inline.NumDeleted: 812
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector12WalkChildrenERKNS0_8internal13FieldPositionERKNS_8DataTypeERKNS_5ArrayE:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sext = shl i64 %i.as, 28
  %i.at = ashr i64 %sext, 32
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !372

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %.not.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !152
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !154
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i26 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.n:                                             ; preds = %bb.l
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i28 = phi i32 [ %i.ay, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !135

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.k, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !373
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE17_M_realloc_insertIJRlRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
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
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !84
  store i64 %i.r, ptr %i.q, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133  ; 2 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !134
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !134
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !239, !alias.scope !379, !noalias !376
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !239, !alias.scope !376, !noalias !379
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !134, !alias.scope !379, !noalias !376
  store ptr null, ptr %i.ae, align 8, !tbaa !133, !alias.scope !379, !noalias !376
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !134, !alias.scope !376, !noalias !379
  store ptr null, ptr %i.ad, align 8, !tbaa !149, !alias.scope !379, !noalias !376
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !381

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ap, %.lr.ph.i.i.i18 ], [ %i.ai, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i20 = phi ptr [ %i.ao, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.aj = load i64, ptr %.0911.i.i.i20, align 8, !tbaa !239, !alias.scope !385, !noalias !382
  store i64 %i.aj, ptr %.012.i.i.i19, align 8, !tbaa !239, !alias.scope !382, !noalias !385
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !134, !alias.scope !385, !noalias !382
  store ptr null, ptr %i.am, align 8, !tbaa !133, !alias.scope !385, !noalias !382
  store <2 x ptr> %i.an, ptr %i.ak, align 8, !tbaa !134, !alias.scope !382, !noalias !385
  store ptr null, ptr %i.al, align 8, !tbaa !149, !alias.scope !385, !noalias !382
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !381

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ai, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ap, %.lr.ph.i.i.i18 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !214
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !217
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 8 uses
  %6 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 16 uses
  %8 = alloca %"class.arrow::Result.72", align 8  ; 17 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = load ptr, ptr %4, align 8, !tbaa !170    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = icmp eq i32 %i.d, 31
  %i.f = lshr i64 %3, 32                          ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !259
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.j = icmp eq i32 %i.i, 29
  br i1 %i.j, label %bb.d, label %bb.am

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.k = load ptr, ptr %1, align 8, !tbaa !387, !nonnull !100, !align !309
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = ashr i64 %3, 32                          ; 3 uses
  %i.o = icmp slt i64 %3, 0
  br i1 %i.o, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29, !noalias !388
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, label %.noexc9.i

.noexc9.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24, !noalias !388 ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  store i32 0, ptr %i.q, align 4, !tbaa !3, !noalias !388
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.t = add nsw i64 %i.n, -1                     ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc9.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !3, !noalias !388
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc9.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.v, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.s, %.noexc9.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0810.i = phi ptr [ %6, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv.i, -1            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49, !noalias !388
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.w
  store i32 %i.y, ptr %i.z, align 4, !tbaa !3, !noalias !388
  %i.aa = load ptr, ptr %.0810.i, align 8, !tbaa !46, !noalias !388
  %i.ab = trunc nuw i64 %indvars.iv.i to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, !llvm.loop !276

_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.076.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.q, %bb.e ]
  %.sroa.679.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %bb.e ]
  %.sroa.8.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !44, !noalias !391
  store ptr %.sroa.076.0, ptr %5, align 8, !tbaa !64, !noalias !391
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.679.0, ptr %i.ae, align 8, !tbaa !277, !noalias !391
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sroa.8.0, ptr %i.af, align 8, !tbaa !67, !noalias !391
  invoke void @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !64, !noalias !391 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !391
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !64, !noalias !391 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !391
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

bb.j:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ar = load ptr, ptr %7, align 8, !tbaa !74
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %bb.k, !prof !88

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aw = load ptr, ptr %1, align 8, !tbaa !387, !nonnull !100, !align !309
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !249
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !118, !noalias !394
  invoke void @_ZN5arrow3ipc14DictionaryMemo4Impl15ReifyDictionaryElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.az, i64 noundef %i.av, ptr noundef %i.ay)
          to label %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit unwind label %bb.o

_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit: ; preds = %bb.m
  %i.ba = load ptr, ptr %8, align 8, !tbaa !74
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.n, !prof !88

bb.n:                                             ; preds = %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.critedge42 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bi = load <2 x ptr>, ptr %i.be, align 8, !tbaa !134, !noalias !397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !133 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !134
  %.not.i.i.i.i48 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bk, align 8, !tbaa !152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !154
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !155
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25, !inline_history !402
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25, !inline_history !402
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i49 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.sroa.02.0.copyload = load ptr, ptr %6, align 8, !tbaa !403
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !146
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr noundef %i.bz)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.x

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = load ptr, ptr %8, align 8, !tbaa !74    ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null                 ; 2 uses
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge44

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %i.cd, label %bb.y, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !88

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i55, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cg, align 8, !tbaa !152
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !154
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !404
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !404
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.ac ], [ %i.ct, %bb.ad ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.ae, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !135

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa
  %.pr.i.pr = load ptr, ptr %8, align 8, !tbaa !74 ; 2 uses
  %.not.i.i56 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusD2Ev.exit54
  %i.cv = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.cc, %_ZN5arrow6StatusD2Ev.exit54 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !89, !range !99, !noundef !100
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cz = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i57, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.ag, !prof !88

bb.ag:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !403
  %.sroa.2.0.copyload.pre = load i64, ptr %i.a, align 8
  br label %bb.am

bb.ai:                                            ; preds = %bb.x, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.ce, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.o, %bb.l
  %.pn38 = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bc, %bb.o ], [ %.pn34, %bb.ai ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i58, label %_ZN5arrow6ResultIlED2Ev.exit59, label %bb.ak, !prof !88

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6ResultIlED2Ev.exit59, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit59

_ZN5arrow6ResultIlED2Ev.exit59:                   ; preds = %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %bb.h, %bb.i, %_ZN5arrow6ResultIlED2Ev.exit59
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZN5arrow6ResultIlED2Ev.exit59 ], [ %i.al, %bb.h ], [ %i.al, %bb.i ]
  resume { ptr, i32 } %.pn38.pn

bb.am:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.c
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %_ZN5arrow6ResultIlED2Ev.exit ], [ %3, %bb.c ]
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %_ZN5arrow6ResultIlED2Ev.exit ], [ %2, %bb.c ]
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 64
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %bb.az

.critedge:                                        ; preds = %bb.k
  %i.di = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.di, null
  br i1 %.not.i.i60, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.an, !prof !88

bb.an:                                            ; preds = %.critedge
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ay

.critedge42:                                      ; preds = %bb.n
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dm = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i62, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ao, !prof !88

bb.ao:                                            ; preds = %.critedge42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ay

.critedge44:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %i.cd, label %bb.ap, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, !prof !88

bb.ap:                                            ; preds = %.critedge44
  %i.dq = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i65, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dr, align 8, !tbaa !152
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !154
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !155
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !404
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !155
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !404
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69

bb.as:                                            ; preds = %bb.aq
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i66 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i66, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67

bb.au:                                            ; preds = %bb.as
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i.i68 = phi i32 [ %i.du, %bb.at ], [ %i.ee, %bb.au ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i68, 1
  br i1 %i.ef, label %bb.av, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, !prof !135

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67, %bb.ar
  %.pr.i70.pr = load ptr, ptr %8, align 8, !tbaa !74 ; 2 uses
  %.not.i.i71 = icmp eq ptr %.pr.i70.pr, null
  br i1 %.not.i.i71, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, %.critedge44
  %i.eg = phi ptr [ %.pr.i70.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69 ], [ %i.cc, %.critedge44 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72: ; preds = %bb.ap, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ek = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i73, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ax, !prof !88

bb.ax:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !89, !range !99, !noundef !100
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.ao, %bb.an
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit74

_ZN5arrow6ResultIlED2Ev.exit74:                   ; preds = %bb.ay, %bb.ax, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, %bb.ao, %.critedge42, %bb.an, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.az

bb.az:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit74, %bb.am
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !154
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !405
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !405
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !89, !range !99, !noundef !100
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !154
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(38) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.f = load i64, ptr %2, align 8, !tbaa !84
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRKS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<long, std::pair<const long, std::shared_ptr<arrow::DataType>>, std::allocator<std::pair<const long, std::shared_ptr<arrow::DataType>>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !406
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 7 uses
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !84
  store i64 %i.c, ptr %i.b, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
end_hunk_0
