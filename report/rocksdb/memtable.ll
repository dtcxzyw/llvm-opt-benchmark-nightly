inline.NumInlined: 3338
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb15TablePropertiesD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !30
  %i.cd = add i64 %i.cc, 1
  tail call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !889
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !890  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !30
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #39
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !898

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #26

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !426    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.idx.i = shl i64 %i.c, 4                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.preheader.preheader.i
  %i.f = phi ptr [ %i.g, %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ], [ %i.e, %.preheader.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !193
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !195
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !inline_history !899
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !inline_history !899
  br label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !192
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !27

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br label %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %.preheader.i
  %i.y = icmp eq ptr %i.g, %i.a
  br i1 %i.y, label %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit, label %.preheader.i

_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.z = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.b, i64 noundef %i.z) #39
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIA_St10shared_ptrIN7rocksdb33FragmentedRangeTombstoneListCacheEEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb15ConcurrentArenaD0Ev(ptr noundef nonnull align 16 dereferenceable(2472) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7rocksdb15ConcurrentArenaE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) %i.a) #36, !inline_history !460
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !414  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb15ConcurrentArenaD2Ev.exit, label %_ZNKSt14default_deleteIA_N7rocksdb15ConcurrentArena5ShardEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i

_ZNKSt14default_deleteIA_N7rocksdb15ConcurrentArena5ShardEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #39, !inline_history !460
  br label %_ZN7rocksdb15ConcurrentArenaD2Ev.exit

_ZN7rocksdb15ConcurrentArenaD2Ev.exit:            ; preds = %bb.a, %_ZNKSt14default_deleteIA_N7rocksdb15ConcurrentArena5ShardEEclIS2_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS3_EE5valueEvE4typeEPS7_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2480) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7rocksdb15ConcurrentArena8AllocateEm(ptr noundef nonnull align 16 dereferenceable(2472) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !900
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !903
  %i.b = call noundef ptr @_ZN7rocksdb15ConcurrentArena12AllocateImplIZNS0_8AllocateEmEUlvE_EEPcmbRKT_(ptr noundef nonnull align 16 dereferenceable(2472) %0, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7rocksdb15ConcurrentArena15AllocateAlignedEmmPNS_6LoggerE(ptr noundef nonnull align 16 dereferenceable(2472) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.408, align 8            ; 7 uses
  %i.a = add i64 %1, 7
  %5 = and i64 %i.a, -8                           ; 2 uses
  %i.b = icmp ne i64 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %0, ptr %4, align 8, !tbaa !904
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %5, ptr %i.c, align 8, !tbaa !906
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !907
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !908
  %i.f = call noundef ptr @_ZN7rocksdb15ConcurrentArena12AllocateImplIZNS0_15AllocateAlignedEmmPNS_6LoggerEEUlvE_EEPcmbRKT_(ptr noundef nonnull align 16 dereferenceable(2472) %0, i64 noundef %5, i1 noundef zeroext %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb15ConcurrentArena9BlockSizeEv(ptr noundef nonnull align 16 dereferenceable(2472) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %i.b = load i64, ptr %i.a, align 16, !tbaa !909
  ret i64 %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: uwtable
define linkonce_odr noundef ptr @_ZN7rocksdb15ConcurrentArena12AllocateImplIZNS0_8AllocateEmEUlvE_EEPcmbRKT_(ptr noundef nonnull align 16 dereferenceable(2472) %0, i64 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !910
  %i.d = lshr i64 %i.c, 2
  %i.e = icmp ugt i64 %1, %i.d
  %or.cond = or i1 %2, %i.e
  br i1 %or.cond, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15ConcurrentArena9tls_cpuidE, null
  br i1 %.not.i, label %_ZTWN7rocksdb15ConcurrentArena9tls_cpuidE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTHN7rocksdb15ConcurrentArena9tls_cpuidE()
  br label %_ZTWN7rocksdb15ConcurrentArena9tls_cpuidE.exit

_ZTWN7rocksdb15ConcurrentArena9tls_cpuidE.exit:   ; preds = %bb.b, %bb.c
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15ConcurrentArena9tls_cpuidE)
  %i.g = load i64, ptr %i.f, align 8, !tbaa !199  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZTWN7rocksdb15ConcurrentArena9tls_cpuidE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !414
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = load atomic i8, ptr %i.a monotonic, align 16, !range !85, !noundef !86
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %_ZNSt11unique_lockIN7rocksdb9SpinMutexEE4lockEv.exit, label %.thread

.preheader.i:                                     ; preds = %bb.a, %bb.h
  %.0.i.i = phi i64 [ %i.w, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %i.q = load atomic i8, ptr %i.a monotonic, align 16, !range !85, !noundef !86
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i

_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i:        ; preds = %.preheader.i
  %i.s = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_ZNSt11unique_lockIN7rocksdb9SpinMutexEE4lockEv.exit, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i

_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i: ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i, %.preheader.i
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #36, !srcloc !461
  %i.u = icmp ugt i64 %.0.i.i, 100
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i
  %i.v = tail call noundef i32 @sched_yield() #36 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i
  %i.w = add i64 %.0.i.i, 1
  br label %.preheader.i, !llvm.loop !462

_ZNSt11unique_lockIN7rocksdb9SpinMutexEE4lockEv.exit: ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i, %bb.f
  %i.x = load ptr, ptr %3, align 8, !tbaa !900    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !903  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 2352 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 16, !tbaa !468 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt11unique_lockIN7rocksdb9SpinMutexEE4lockEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 2336 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !911
  %i.ae = sub i64 0, %i.z
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.ac, align 16, !tbaa !911
  %i.ag = sub nuw i64 %i.ab, %i.z
  store i64 %i.ag, ptr %i.aa, align 16, !tbaa !468
  br label %.thread100

bb.j:                                             ; preds = %_ZNSt11unique_lockIN7rocksdb9SpinMutexEE4lockEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ai = invoke noundef ptr @_ZN7rocksdb5Arena16AllocateFallbackEmb(ptr noundef nonnull align 16 dereferenceable(2288) %i.ah, i64 noundef %i.z, i1 noundef zeroext false)
          to label %.thread100 unwind label %.thread105

.thread100:                                       ; preds = %bb.j, %bb.i
  %.0.i.i66 = phi ptr [ %i.af, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !468
  store atomic i64 %i.al, ptr %i.aj monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.ao = load i64, ptr %i.an, align 16, !tbaa !463
  store atomic i64 %i.ao, ptr %i.am monotonic, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !912
  store atomic i64 %i.ar, ptr %i.ap monotonic, align 8
  store atomic i8 0, ptr %i.a release, align 16
  br label %_ZNSt11unique_lockIN7rocksdb9SpinMutexEED2Ev.exit79

.thread105:                                       ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr %i.a release, align 16
  br label %_ZNSt11unique_lockIN7rocksdb9SpinMutexEED2Ev.exit81

.thread:                                          ; preds = %bb.e, %_ZTWN7rocksdb15ConcurrentArena9tls_cpuidE.exit, %bb.d, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.av = load i32, ptr %i.au, align 16, !tbaa !413
  %i.aw = zext nneg i32 %i.av to i64
  %notmask = shl nsw i64 -1, %i.aw
  %i.ax = xor i64 %notmask, -1
  %i.ay = and i64 %i.g, %i.ax
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !414
  %i.ba = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bc = load atomic i8, ptr %i.bb monotonic, align 1, !range !85, !noundef !86
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit

_ZN7rocksdb9SpinMutex8try_lockEv.exit:            ; preds = %.thread
  %i.be = cmpxchg weak ptr %i.bb, i8 0, i8 1 acquire monotonic, align 1
  %i.bf = extractvalue { i8, i1 } %i.be, 1
  br i1 %i.bf, label %_ZN7rocksdb9SpinMutex4lockEv.exit, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread

_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread:     ; preds = %.thread, %_ZN7rocksdb9SpinMutex8try_lockEv.exit
  %i.bg = tail call noundef ptr @_ZN7rocksdb15ConcurrentArena6RepickEv(ptr noundef nonnull align 16 dereferenceable(2472) %0) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread
  %.0.i = phi i64 [ 0, %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bi = load atomic i8, ptr %i.bh monotonic, align 1, !range !85, !noundef !86
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i

_ZN7rocksdb9SpinMutex8try_lockEv.exit.i:          ; preds = %bb.k
  %i.bk = cmpxchg weak ptr %i.bh, i8 0, i8 1 acquire monotonic, align 1
  %i.bl = extractvalue { i8, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZN7rocksdb9SpinMutex4lockEv.exit, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i

_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i:   ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i, %bb.k
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #36, !srcloc !461
  %i.bm = icmp ugt i64 %.0.i, 100
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i
  %i.bn = tail call noundef i32 @sched_yield() #36 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i
  %i.bo = add i64 %.0.i, 1
  br label %bb.k, !llvm.loop !462

_ZN7rocksdb9SpinMutex4lockEv.exit:                ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i, %_ZN7rocksdb9SpinMutex8try_lockEv.exit
  %.042 = phi ptr [ %i.ba, %_ZN7rocksdb9SpinMutex8try_lockEv.exit ], [ %i.bg, %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.042, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.042, i64 56 ; 2 uses
  %i.br = load atomic i64, ptr %i.bq monotonic, align 8 ; 2 uses
  %i.bs = icmp ult i64 %i.br, %1
  br i1 %i.bs, label %.preheader, label %bb.y

.preheader:                                       ; preds = %_ZN7rocksdb9SpinMutex4lockEv.exit, %bb.o
  %.0.i.i68 = phi i64 [ %i.bz, %bb.o ], [ 0, %_ZN7rocksdb9SpinMutex4lockEv.exit ] ; 2 uses
  %i.bt = load atomic i8, ptr %i.a monotonic, align 16, !range !85, !noundef !86
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i70, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i69

_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i69:      ; preds = %.preheader
  %i.bv = cmpxchg weak ptr %i.a, i8 0, i8 1 acquire monotonic, align 1
  %i.bw = extractvalue { i8, i1 } %i.bv, 1
  br i1 %i.bw, label %_ZNSt10lock_guardIN7rocksdb9SpinMutexEEC2ERS1_.exit, label %_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i70

_ZN7rocksdb9SpinMutex8try_lockEv.exit.thread.i.i70: ; preds = %_ZN7rocksdb9SpinMutex8try_lockEv.exit.i.i69, %.preheader
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #36, !srcloc !461
  %i.bx = icmp ugt i64 %.0.i.i68, 100
end_hunk_0
