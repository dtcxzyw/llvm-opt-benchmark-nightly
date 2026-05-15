inline.NumInlined: 1121
inline.NumDeleted: 571
begin_hunk_0_@_ZN5folly8settings8Snapshot7publishEv:bb.a
  %i.z = icmp ult i64 %i.y, 256
  br i1 %i.z, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.aa = and i64 %i.y, 255                       ; 2 uses
  store i64 %i.aa, ptr %i.h, align 8, !tbaa !26
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.c, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ab = phi i64 [ %i.y, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ad, align 1
  %i.ae = zext i16 %.0.copyload.i.i to i64
  %i.af = icmp eq i64 %i.ab, 0
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.ag
  %.neg18.i = shl i64 -64, %i.ab
  %.0.i.neg.i = select i1 %i.af, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !15
  store i64 0, ptr %i.h, align 8, !tbaa !26
  %i.ah = and i64 %.0.i.neg.i, -8
  %i.ai = shl nuw nsw i64 %i.m, 5
  %i.aj = mul i64 %i.ai, %i.p
  %i.ak = sub i64 %i.aj, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #16
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %._crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit
  %.sroa.05.09 = phi ptr [ %.sroa.05.0, %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit ], [ %.sroa.05.08, %bb.a ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 16
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit unwind label %bb.e, !inline_history !42

_ZN5folly8settings6detail10BoxedValue7publishERKNS0_21FrozenSettingProjectsE.exit: ; preds = %.lr.ph, %bb.d
  %.sroa.05.0 = load ptr, ptr %.sroa.05.09, align 8, !tbaa !11 ; 2 uses
  %i.ao = icmp eq ptr %.sroa.05.0, null
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN5folly8settings8Snapshot13setFromStringESt17basic_string_viewIcSt11char_traitsIcEES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr readonly captures(address_is_null) %2, i64 %3, ptr %4, ptr noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %7 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %7, align 8, !tbaa !53, !alias.scope !50
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !50
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !50
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !50 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !50
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !50 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !50
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !50
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !50
  %i.q = load ptr, ptr %7, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc13 unwind label %bb.r   ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %8, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc13, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc13 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %1
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %8, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre32 = load ptr, ptr %7, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.not.i.i14 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i14, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ad

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !70
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 %3, ptr %4, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %0)
          to label %bb.t unwind label %bb.q, !call_target !73

bb.t:                                             ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.331.0 = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.bm, %bb.s ]
  %i.bn = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i19 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i19, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %7, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bn, label %bb.aa [
    i16 1, label %bb.v
    i16 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = load atomic i32, ptr %i.bo acquire, align 4
  %i.bq = and i32 %i.bp, 768
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %.noexc22 unwind label %bb.ac

.noexc22:                                         ; preds = %bb.w
  br i1 %i.bs, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc22, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bt = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bu = add i32 %i.bt, -2048                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !7
  %i.bv = icmp ugt i32 %i.bu, 2047
  %i.bw = and i32 %i.bt, 16
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  %or.cond.i.i.i21 = or i1 %i.bv, %.not.i.i.i.i
  br i1 %or.cond.i.i.i21, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.y, !prof !3431

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.z:                                             ; preds = %bb.u
  %i.bx = load i16, ptr %i.h, align 2, !tbaa !60
  %i.by = zext i16 %i.bx to i64
  %i.bz = ptrtoint ptr %i.bo to i64
  %.idx.i = shl nuw nsw i64 %i.by, 5
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.cb = cmpxchg ptr %i.ca, i64 %i.bz, i64 0 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cd = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ce = add i32 %i.cd, -2048                    ; 2 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !7
  %i.cf = icmp ugt i32 %i.ce, 2047
  %i.cg = and i32 %i.cd, 16
  %.not.i.i.i20 = icmp eq i32 %i.cg, 0
  %or.cond.i.i = or i1 %i.cf, %.not.i.i.i20
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ab, !prof !3431

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #28
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.z, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc22, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i64 %.sroa.331.0

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.pn9 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bg, %bb.q ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define range(i64 1, 3) i64 @_ZN5folly8settings8Snapshot18forceSetFromStringESt17basic_string_viewIcSt11char_traitsIcEES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr readonly captures(address_is_null) %2, i64 %3, ptr %4, ptr noundef readonly byval(%"class.std::basic_string_view") align 8 captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %7 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %7, align 8, !tbaa !53, !alias.scope !3432
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3432
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !3432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !3432
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3432 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3432
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3432 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3432
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3432
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !3432
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !3432
  %i.q = load ptr, ptr %7, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc13 unwind label %bb.r   ; 2 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %8, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc13, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc13 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %1
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %8, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre32 = load ptr, ptr %7, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.not.i.i14 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i14, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ad

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %5, align 8, !tbaa !69
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !70
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 %3, ptr %4, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %0)
          to label %bb.t unwind label %bb.q, !call_target !3435

bb.t:                                             ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.030.0 = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 1, %bb.s ]
  %i.bn = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i19 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i19, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %7, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bn, label %bb.aa [
    i16 1, label %bb.v
    i16 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = load atomic i32, ptr %i.bo acquire, align 4
  %i.bq = and i32 %i.bp, 768
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %.noexc22 unwind label %bb.ac

.noexc22:                                         ; preds = %bb.w
  br i1 %i.bs, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc22, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bt = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bu = add i32 %i.bt, -2048                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !7
  %i.bv = icmp ugt i32 %i.bu, 2047
  %i.bw = and i32 %i.bt, 16
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  %or.cond.i.i.i21 = or i1 %i.bv, %.not.i.i.i.i
  br i1 %or.cond.i.i.i21, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.y, !prof !3431

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.z:                                             ; preds = %bb.u
  %i.bx = load i16, ptr %i.h, align 2, !tbaa !60
  %i.by = zext i16 %i.bx to i64
  %i.bz = ptrtoint ptr %i.bo to i64
  %.idx.i = shl nuw nsw i64 %i.by, 5
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.cb = cmpxchg ptr %i.ca, i64 %i.bz, i64 0 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cd = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ce = add i32 %i.cd, -2048                    ; 2 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !7
  %i.cf = icmp ugt i32 %i.ce, 2047
  %i.cg = and i32 %i.cd, 16
  %.not.i.i.i20 = icmp eq i32 %i.cg, 0
  %or.cond.i.i = or i1 %i.cf, %.not.i.i.i20
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ab, !prof !3431

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #28
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.z, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc22, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i64 %.sroa.030.0

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.pn9 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bg, %bb.q ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly8settings8Snapshot11getAsStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::Optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 %2, ptr readonly captures(address_is_null) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %5 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.std::pair", align 8        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %5, align 8, !tbaa !53, !alias.scope !3438
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3438
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3438
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !3438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !3438
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3438 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3438
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3438 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3438
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3438
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %4) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !3438
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !3438
  %i.q = load ptr, ptr %5, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !61
  %i.t = icmp eq ptr %3, null
  %i.u = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %2, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %2, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc7 unwind label %bb.r

.noexc7:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %2, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc8 unwind label %bb.r

.noexc8:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc9 unwind label %bb.r    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %6, align 8, !tbaa !28
  store i64 %2, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc9 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %2, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %3, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %3, i64 %2, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %2, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre25 = load ptr, ptr %5, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i.i10 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i10, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.bg, align 8, !tbaa !3441
  br label %bb.x

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ah

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %1)
          to label %bb.t unwind label %bb.w, !call_target !3444

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !3441
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !61
  %i.bp = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !63 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  store ptr %i.bp, ptr %0, align 8, !tbaa !28
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !32
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre26 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u
  %i.bx = phi i64 [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bt, %bb.u ]
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !63
  store ptr %i.bq, ptr %7, align 8, !tbaa !28
  store i64 0, ptr %i.by, align 8, !tbaa !63
  store i8 0, ptr %i.bq, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !61
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !28 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !63 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !28
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !32
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !32
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.pre28 = load i64, ptr %.phi.trans.insert27, align 8, !tbaa !63
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.cl = phi i64 [ %i.ch, %bb.v ], [ %.pre28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !63
  store i8 1, ptr %i.bn, align 8, !tbaa !3449
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.ah

bb.x:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %bb.q
  %i.co = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i15 = icmp eq i16 %i.co, 0
  br i1 %.not.i.i15, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %5, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.co, label %bb.ae [
    i16 1, label %bb.z
    i16 3, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_ZNK5folly8settings8Snapshot11getAsStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %or.cond.i.i.i17, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.ac, !prof !3431

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ag

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ad:                                            ; preds = %bb.y
  %i.cy = load i16, ptr %i.h, align 2, !tbaa !60
  %i.cz = zext i16 %i.cy to i64
  %i.da = ptrtoint ptr %i.cp to i64
  %.idx.i = shl nuw nsw i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.dc = cmpxchg ptr %i.db, i64 %i.da, i64 0 seq_cst seq_cst, align 8
  %i.dd = extractvalue { i64, i1 } %i.dc, 1
  br i1 %i.dd, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.de = atomicrmw sub ptr %i.cp, i32 2048 seq_cst, align 4 ; 2 uses
  %i.df = add i32 %i.de, -2048                    ; 2 uses
  store i32 %i.df, ptr %i.a, align 4, !tbaa !7
  %i.dg = icmp ugt i32 %i.df, 2047
  %i.dh = and i32 %i.de, 16
  %.not.i.i.i16 = icmp eq i32 %i.dh, 0
  %or.cond.i.i = or i1 %i.dg, %.not.i.i.i16
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.af, !prof !3431

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ag

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.aa
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #28
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.ad, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc18, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.ah:                                            ; preds = %bb.w, %bb.r
  %.pn5 = phi { ptr, i32 } [ %i.cn, %bb.w ], [ %i.bh, %bb.r ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN5folly8settings8Snapshot14resetToDefaultESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr readonly captures(address_is_null) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %4, align 8, !tbaa !53, !alias.scope !3451
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3451
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !3451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !3451
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3451 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3451
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3451 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3451
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3451
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !3451
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !3451
  %i.q = load ptr, ptr %4, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc7 unwind label %bb.r

.noexc7:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc8 unwind label %bb.r

.noexc8:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc9 unwind label %bb.r    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %5, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc9 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %1
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i10 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i10, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ad

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %0)
          to label %bb.t unwind label %bb.q, !call_target !3454

bb.t:                                             ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.327.0 = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.bn, %bb.s ]
  %i.bo = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i15 = icmp eq i16 %i.bo, 0
  br i1 %.not.i.i15, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bo, label %bb.aa [
    i16 1, label %bb.v
    i16 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bq = load atomic i32, ptr %i.bp acquire, align 4
  %i.br = and i32 %i.bq, 768
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bp)
          to label %.noexc18 unwind label %bb.ac

.noexc18:                                         ; preds = %bb.w
  br i1 %i.bt, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc18, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bu = atomicrmw sub ptr %i.bp, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bv = add i32 %i.bu, -2048                    ; 2 uses
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !7
  %i.bw = icmp ugt i32 %i.bv, 2047
  %i.bx = and i32 %i.bu, 16
  %.not.i.i.i.i = icmp eq i32 %i.bx, 0
  %or.cond.i.i.i17 = or i1 %i.bw, %.not.i.i.i.i
  br i1 %or.cond.i.i.i17, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.y, !prof !3431

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.z:                                             ; preds = %bb.u
  %i.by = load i16, ptr %i.h, align 2, !tbaa !60
  %i.bz = zext i16 %i.by to i64
  %i.ca = ptrtoint ptr %i.bp to i64
  %.idx.i = shl nuw nsw i64 %i.bz, 5
  %i.cb = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.cc = cmpxchg ptr %i.cb, i64 %i.ca, i64 0 seq_cst seq_cst, align 8
  %i.cd = extractvalue { i64, i1 } %i.cc, 1
  br i1 %i.cd, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ce = atomicrmw sub ptr %i.bp, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cf = add i32 %i.ce, -2048                    ; 2 uses
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !7
  %i.cg = icmp ugt i32 %i.cf, 2047
  %i.ch = and i32 %i.ce, 16
  %.not.i.i.i16 = icmp eq i32 %i.ch, 0
  %or.cond.i.i = or i1 %i.cg, %.not.i.i.i16
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ab, !prof !3431

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.w
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #28
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.z, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc18, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i64 %.sroa.327.0

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.pn5 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bg, %bb.q ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define range(i64 1, 3) i64 @_ZN5folly8settings8Snapshot19forceResetToDefaultESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 %1, ptr readonly captures(address_is_null) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %4, align 8, !tbaa !53, !alias.scope !3457
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3457
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3457
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !3457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !3457
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3457 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3457
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3457 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3457
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3457
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !3457
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !3457
  %i.q = load ptr, ptr %4, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc7 unwind label %bb.r

.noexc7:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc8 unwind label %bb.r

.noexc8:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc9 unwind label %bb.r    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %5, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc9 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %1
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre28 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i10 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i10, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.ad

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %0)
          to label %bb.t unwind label %bb.q, !call_target !3460

bb.t:                                             ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.sroa.026.0 = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ 1, %bb.s ]
  %i.bn = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i15 = icmp eq i16 %i.bn, 0
  br i1 %.not.i.i15, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bn, label %bb.aa [
    i16 1, label %bb.v
    i16 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = load atomic i32, ptr %i.bo acquire, align 4
  %i.bq = and i32 %i.bp, 768
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bs = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bo)
          to label %.noexc18 unwind label %bb.ac

.noexc18:                                         ; preds = %bb.w
  br i1 %i.bs, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc18, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bt = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bu = add i32 %i.bt, -2048                    ; 2 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !7
  %i.bv = icmp ugt i32 %i.bu, 2047
  %i.bw = and i32 %i.bt, 16
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  %or.cond.i.i.i17 = or i1 %i.bv, %.not.i.i.i.i
  br i1 %or.cond.i.i.i17, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.y, !prof !3431

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.z:                                             ; preds = %bb.u
  %i.bx = load i16, ptr %i.h, align 2, !tbaa !60
  %i.by = zext i16 %i.bx to i64
  %i.bz = ptrtoint ptr %i.bo to i64
  %.idx.i = shl nuw nsw i64 %i.by, 5
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.cb = cmpxchg ptr %i.ca, i64 %i.bz, i64 0 seq_cst seq_cst, align 8
  %i.cc = extractvalue { i64, i1 } %i.cb, 1
  br i1 %i.cc, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cd = atomicrmw sub ptr %i.bo, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ce = add i32 %i.cd, -2048                    ; 2 uses
  store i32 %i.ce, ptr %i.a, align 4, !tbaa !7
  %i.cf = icmp ugt i32 %i.ce, 2047
  %i.cg = and i32 %i.cd, 16
  %.not.i.i.i16 = icmp eq i32 %i.cg, 0
  %or.cond.i.i = or i1 %i.cf, %.not.i.i.i16
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ab, !prof !3431

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.bo, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ac

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab, %bb.y, %bb.w
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #28
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.z, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc18, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i64 %.sroa.026.0

bb.ad:                                            ; preds = %bb.r, %bb.q
  %.pn5 = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.bg, %bb.q ]
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE24_M_get_insert_unique_posERS7_:bb.a
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !3511, !range !3513, !noundef !124
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3509   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = and i32 %i.f, 15
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, label %bb.d, !prof !3475

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i, %bb.b, %bb.a
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings15getSettingsMetaESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.folly::Optional.20") align 8 captures(none) %0, i64 %1, ptr readonly captures(address_is_null) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.folly::LockedPtr.22", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = load atomic i8, ptr @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11 acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 24), align 8, !tbaa !44
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 32), align 8, !tbaa !49
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11) #16
  br label %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit

_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3528)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr %4, align 8, !tbaa !53, !alias.scope !3528
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 0, ptr %i.g, align 8, !tbaa !59, !alias.scope !3528
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.h, align 2, !tbaa !60, !alias.scope !3528
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !3528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16, !noalias !3528
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48) monotonic, align 8, !noalias !3528 ; 4 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !7, !noalias !3528
  %i.j = and i32 %i.i, -1408
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.l = or disjoint i32 %i.i, 2048
  %i.m = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), i32 %i.i, i32 %i.l seq_cst seq_cst, align 4, !noalias !3528 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = extractvalue { i32, i1 } %i.m, 0
  store i32 %i.o, ptr %i.c, align 4, !noalias !3528
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.g, align 8, !tbaa !59, !alias.scope !3528
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings6detail11settingsMapB5cxx11Ev.exit
  %i.p = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings6detail11settingsMapB5cxx11EvE3mapB5cxx11, i64 48), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16, !noalias !3528
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !3528
  %i.q = load ptr, ptr %4, align 8, !tbaa !53     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !61
  %i.t = icmp eq ptr %2, null
  %i.u = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = icmp ugt i64 %1, 15
  br i1 %i.v, label %bb.j, label %._crit_edge.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.w = icmp slt i64 %1, 0
  br i1 %i.w, label %.noexc.i.i.i, label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #30
          to label %.noexc6 unwind label %bb.s

.noexc6:                                          ; preds = %.noexc.i.i.i
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.x = add nuw i64 %1, 1                        ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !62

.noexc9.i.i.i:                                    ; preds = %bb.k
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc7 unwind label %bb.s

.noexc7:                                          ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.k
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31
          to label %.noexc8 unwind label %bb.s    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.z, ptr %5, align 8, !tbaa !28
  store i64 %1, ptr %i.s, align 8, !tbaa !32
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc8, %bb.i
  %i.aa = phi ptr [ %i.z, %.noexc8 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %1, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ab = load i8, ptr %2, align 1, !tbaa !32
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !32
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %1, ptr %i.ac, align 8, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %1
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  %.pre = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.ak = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = call i32 @memcmp(ptr noundef %i.am, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.ao = sub i64 %i.aj, %i.ah
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ao, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ap = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ap, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ap, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !66

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.aq = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.aq, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !63 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ah) ; 2 uses
  %i.at = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.at, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28
  %i.aw = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.av, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ax = sub i64 %i.ah, %i.as
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.ay, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.n
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.ag, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5folly8settings6detail15SettingCoreBaseEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.az = icmp eq ptr %.pre, %i.s
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ba = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bb) #29
  %.pre24 = load ptr, ptr %4, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bc = phi ptr [ %.pre24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly8settings6detail15SettingCoreBaseESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.not.i.i9 = icmp eq ptr %i.bc, null
  %i.bd = select i1 %.not.i.i9, i64 8, i64 -40
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = icmp eq ptr %.sroa.0.0.i.i, %i.be
  br i1 %i.bf, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  store i8 0, ptr %0, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.bg, align 8, !tbaa !3531
  br label %bb.v

bb.r:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.af

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef nonnull align 8 dereferenceable(96) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %bb.u unwind label %bb.r, !call_target !3494

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.bo, i64 96, i1 false), !tbaa.struct !3533
  store i8 1, ptr %i.bp, align 8, !tbaa !3540
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.bq = load i16, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %.not.i.i14 = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i14, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load ptr, ptr %4, align 8, !tbaa !53    ; 7 uses
  switch i16 %i.bq, label %bb.ac [
    i16 1, label %bb.x
    i16 3, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.bs = load atomic i32, ptr %i.br acquire, align 4
  %i.bt = and i32 %i.bs, 768
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.br)
          to label %.noexc17 unwind label %bb.ae

.noexc17:                                         ; preds = %bb.y
  br i1 %i.bv, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc17, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.bw = atomicrmw sub ptr %i.br, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bx = add i32 %i.bw, -2048                    ; 2 uses
  store i32 %i.bx, ptr %i.b, align 4, !tbaa !7
  %i.by = icmp ugt i32 %i.bx, 2047
  %i.bz = and i32 %i.bw, 16
  %.not.i.i.i.i = icmp eq i32 %i.bz, 0
  %or.cond.i.i.i16 = or i1 %i.by, %.not.i.i.i.i
  br i1 %or.cond.i.i.i16, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.aa, !prof !3431

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.ae

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ab:                                            ; preds = %bb.w
  %i.ca = load i16, ptr %i.h, align 2, !tbaa !60
  %i.cb = zext i16 %i.ca to i64
  %i.cc = ptrtoint ptr %i.br to i64
  %.idx.i = shl nuw nsw i64 %i.cb, 5
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.ce = cmpxchg ptr %i.cd, i64 %i.cc, i64 0 seq_cst seq_cst, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.cg = atomicrmw sub ptr %i.br, i32 2048 seq_cst, align 4 ; 2 uses
  %i.ch = add i32 %i.cg, -2048                    ; 2 uses
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !7
  %i.ci = icmp ugt i32 %i.ch, 2047
  %i.cj = and i32 %i.cg, 16
  %.not.i.i.i15 = icmp eq i32 %i.cj, 0
  %or.cond.i.i = or i1 %i.ci, %.not.i.i.i15
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.ad, !prof !3431

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.ae

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN5folly9LockedPtrINS_12SynchronizedISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8settings6detail15SettingCoreBaseESt4lessIS8_ESaISt4pairIKS8_SC_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSP_22SynchronizedMutexLevelE2ELNSP_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %bb.y
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
end_hunk_2
