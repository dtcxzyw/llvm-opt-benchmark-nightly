inline.NumInlined: 3624
inline.NumDeleted: 1665
begin_hunk_0_@_ZN4node6worker5locks11LockManager26ReleaseLockAndProcessQueueEPNS_11EnvironmentESt10shared_ptrINS1_4LockEEN2v85LocalINS8_5ValueEEEb:bb.a
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.o, ptr %.0.i.i.i, align 8
  %i.aa = tail call i16 @_ZN2v87Promise8Resolver6RejectENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i.i, ptr %.sroa.0.0.copyload.i.i.i, ptr %3) #24
  %i.ab = trunc i16 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.b
  br i1 %i.v, label %bb.f, label %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i8, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.m) #24
  br label %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i8

_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i8: ; preds = %bb.f, %bb.e
  %.0.i.i.i9 = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.e ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i9 to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.r, align 8
  store i64 %i.o, ptr %.0.i.i.i9, align 8
  %i.ag = tail call i16 @_ZN2v87Promise8Resolver7ResolveENS_5LocalINS_7ContextEEENS2_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i.i9, ptr %.sroa.0.0.copyload.i.i.i, ptr %3) #24
  %i.ah = trunc i16 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i, %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i8, %bb.a
  tail call void @_ZN4node6worker5locks11LockManager12ProcessQueueEPNS_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i8, %_ZN2v89LocalBaseINS_7Promise8ResolverEE3NewEPNS_7IsolateEm.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker5locks11LockManager11ReleaseLockEPNS1_4LockE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.450", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.450", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !198 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !201 ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !noalias !198
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !noalias !198
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit
  %.sroa.16.025 = phi ptr [ %.sroa.16.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.l, %.lr.ph.preheader ] ; 4 uses
  %.sroa.12.024 = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %.sroa.011.023 = phi ptr [ %.sroa.011.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.o = load ptr, ptr %.sroa.011.023, align 8
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  store ptr %.sroa.011.023, ptr %2, align 8, !alias.scope !204, !noalias !207
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %.sroa.16.025, align 8, !noalias !210 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !alias.scope !204, !noalias !207
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  store ptr %i.t, ptr %i.s, align 8, !alias.scope !204, !noalias !207
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.16.025, ptr %i.u, align 8, !alias.scope !204, !noalias !207
  call void @_ZNSt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaIS5_EE8_M_eraseESt15_Deque_iteratorIS5_RS5_PS5_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.450") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = urem i64 %i.ab, %i.z                    ; 5 uses
  %i.ad = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ag, %bb.e ] ; 4 uses
  %i.ag = load ptr, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i, label %bb.e, !llvm.loop !66

_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i: ; preds = %bb.e
  %i.ah = icmp eq ptr %.0.i.i.i.i, %i.af
  %i.ai = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ai, null       ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %.thread23.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = urem i64 %i.ak, %i.z                    ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al
  store ptr %i.af, ptr %i.am, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8     ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.ac
  %.pre25.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %.thread23.i.i.i.i

.thread23.i.i.i.i:                                ; preds = %bb.h, %bb.f
  %i.an = phi ptr [ %i.af, %bb.f ], [ %.pre25.i.i.i.i, %bb.h ]
  %i.ao = phi ptr [ %i.ad, %bb.f ], [ %.pre.i.i.i.i, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ac
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread23.i.i.i.i
  store ptr %i.ai, ptr %i.ap, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread23.i.i.i.i
  store ptr null, ptr %i.aq, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit

bb.k:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.at = load i64, ptr %i.as, align 8
  %i.au = urem i64 %i.at, %i.z                    ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.au, %i.ac
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au
  store ptr %.0.i.i.i.i, ptr %i.av, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit: ; preds = %bb.g, %bb.j, %bb.k, %bb.l, %bb.m
  %i.aw = load ptr, ptr %i.c, align 8
  store ptr %i.aw, ptr %.0.i.i.i.i, align 8
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISG_EEELb1EEEEE18_M_deallocate_nodeEPSK_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull %i.c)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.ax, align 8
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.011.023, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %.sroa.12.024
  br i1 %i.bb, label %bb.o, label %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.16.025, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 512
  br label %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit

_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit: ; preds = %bb.n, %bb.o
  %.sroa.011.1 = phi ptr [ %i.bd, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %i.be, %bb.o ], [ %.sroa.12.024, %bb.n ]
  %.sroa.16.1 = phi ptr [ %i.bc, %bb.o ], [ %.sroa.16.025, %bb.n ]
  %i.bf = icmp eq ptr %.sroa.011.1, %i.i
  br i1 %i.bf, label %.loopexit, label %.lr.ph, !llvm.loop !211

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit, %bb.b, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node6worker5locks11LockManager18CleanupEnvironmentEPNS_11EnvironmentE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.422", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.450", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::_Deque_iterator.450", align 8 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator.422", align 8 ; 6 uses
  store ptr %1, ptr %i.a, align 8
  tail call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.1327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.1729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

._crit_edge42:                                    ; preds = %bb.p, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !noalias !212 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !noalias !215 ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %._crit_edge42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !noalias !212
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !noalias !212
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre51.a = load ptr, ptr %i.a, align 8
  br label %bb.q

bb.b:                                             ; preds = %.lr.ph41, %bb.p
  %.sroa.032.039 = phi ptr [ %i.d, %.lr.ph41 ], [ %.sroa.032.1, %bb.p ] ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 56 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !218 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !221 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !218
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !218
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit
  %.pre50 = load ptr, ptr %i.y, align 8
  %i.ah = icmp eq ptr %i.as, %.pre50
  br i1 %i.ah, label %._crit_edge.thread, label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit
  %i.ai = phi ptr [ %i.as, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.sroa.1729.038.a = phi ptr [ %.sroa.1729.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.ae, %.lr.ph.preheader ] ; 4 uses
  %.sroa.1327.037.a = phi ptr [ %.sroa.1327.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.sroa.022.036.a = phi ptr [ %.sroa.022.1, %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit ], [ %i.z, %.lr.ph.preheader ] ; 3 uses
  %6 = load ptr, ptr %.sroa.022.036.a, align 8
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = icmp eq ptr %8, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  store ptr %.sroa.022.036.a, ptr %3, align 8, !alias.scope !224, !noalias !227
  %i.al = load ptr, ptr %.sroa.1729.038.a, align 8, !noalias !230 ; 2 uses
  store ptr %i.al, ptr %i.f, align 8, !alias.scope !224, !noalias !227
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store ptr %i.am, ptr %i.g, align 8, !alias.scope !224, !noalias !227
  store ptr %.sroa.1729.038.a, ptr %i.h, align 8, !alias.scope !224, !noalias !227
  call void @_ZNSt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaIS5_EE8_M_eraseESt15_Deque_iteratorIS5_RS5_PS5_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.450") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.022.0.copyload = load ptr, ptr %4, align 8
  %.sroa.1327.0.copyload = load ptr, ptr %.sroa.1327.0..sroa_idx, align 8
  %.sroa.1729.0.copyload = load ptr, ptr %.sroa.1729.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.pre.a = load ptr, ptr %i.aa, align 8, !noalias !221
  br label %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit

bb.d:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.022.036.a, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %.sroa.1327.037.a
  br i1 %i.ao, label %bb.e, label %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.1729.038.a, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  br label %_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit

_ZNSt15_Deque_iteratorISt10shared_ptrIN4node6worker5locks4LockEERS5_PS5_EppEv.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.as = phi ptr [ %.pre.a, %bb.c ], [ %i.ai, %bb.e ], [ %i.ai, %bb.d ] ; 3 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.0.copyload, %bb.c ], [ %i.aq, %bb.e ], [ %i.an, %bb.d ] ; 2 uses
  %.sroa.1327.1 = phi ptr [ %.sroa.1327.0.copyload, %bb.c ], [ %i.ar, %bb.e ], [ %.sroa.1327.037.a, %bb.d ]
  %.sroa.1729.1 = phi ptr [ %.sroa.1729.0.copyload, %bb.c ], [ %i.ap, %bb.e ], [ %.sroa.1729.038.a, %bb.d ]
  %i.at = icmp eq ptr %.sroa.022.1, %i.as
  br i1 %i.at, label %._crit_edge, label %.lr.ph, !llvm.loop !231

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.au = load i64, ptr %i.i, align 8             ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.032.039, i64 120
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = urem i64 %i.aw, %i.au                   ; 5 uses
  %i.ay = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8            ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.thread
  %.0.i.i.i.i = phi ptr [ %i.ba, %._crit_edge.thread ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bb = load ptr, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %.sroa.032.039
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i, label %bb.f, !llvm.loop !66

_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i: ; preds = %bb.f
  %i.bc = icmp eq ptr %.0.i.i.i.i, %i.ba
  %i.bd = load ptr, ptr %.sroa.032.039, align 8   ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bd, null       ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %.thread23.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = urem i64 %i.bf, %i.au                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.bg, %i.ax
  br i1 %.not9.i.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bg
  store ptr %i.ba, ptr %i.bh, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.b, align 8     ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %i.ax
  %.pre25.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8
  br label %.thread23.i.i.i.i

.thread23.i.i.i.i:                                ; preds = %bb.i, %bb.g
  %i.bi = phi ptr [ %i.ba, %bb.g ], [ %.pre25.i.i.i.i, %bb.i ]
  %i.bj = phi ptr [ %i.ay, %bb.g ], [ %.pre.i.i.i.i, %bb.i ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ax
  %i.bl = icmp eq ptr %i.c, %i.bi
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread23.i.i.i.i
  store ptr %i.bd, ptr %i.c, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread23.i.i.i.i
  store ptr null, ptr %i.bk, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_St5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISE_EEESaISH_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSJ_18_Mod_range_hashingENSJ_20_Default_ranged_hashENSJ_20_Prime_rehash_policyENSJ_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSJ_10_Hash_nodeISH_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = urem i64 %i.bn, %i.au                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.bo, %i.ax
  br i1 %.not17.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bo
  store ptr %.0.i.i.i.i, ptr %i.bp, align 8
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit: ; preds = %bb.h, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bq = load ptr, ptr %.sroa.032.039, align 8   ; 2 uses
  store ptr %i.bq, ptr %.0.i.i.i.i, align 8
  call void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISG_EEELb1EEEEE18_M_deallocate_nodeEPSK_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.032.039)
  %i.br = load i64, ptr %i.j, align 8
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr %i.j, align 8
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr %.sroa.032.039, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit
  %.sroa.032.1 = phi ptr [ %i.bq, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt5dequeISt10shared_ptrIN4node6worker5locks4LockEESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SE_EEE5eraseENSt8__detail14_Node_iteratorISL_Lb0ELb1EEE.exit ], [ %i.bt, %bb.o ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.032.1, null
  br i1 %i.bu, label %._crit_edge42, label %bb.b, !llvm.loop !232

._crit_edge48:                                    ; preds = %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit, %._crit_edge42
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = call noundef i64 @_ZNSt10_HashtableIPN4node11EnvironmentES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @uv_mutex_unlock(ptr noundef nonnull %0) #24
  ret void

bb.q:                                             ; preds = %.lr.ph47, %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit
  %i.bx = phi ptr [ %i.o, %.lr.ph47 ], [ %i.ci, %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit ] ; 2 uses
  %.sroa.17.045 = phi ptr [ %i.r, %.lr.ph47 ], [ %.sroa.17.1, %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit ] ; 4 uses
  %.sroa.13.044 = phi ptr [ %i.t, %.lr.ph47 ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit ] ; 2 uses
  %.sroa.08.043 = phi ptr [ %i.m, %.lr.ph47 ], [ %.sroa.08.1, %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit ] ; 3 uses
  %i.by = load ptr, ptr %.sroa.08.043, align 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, %.pre51.a
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  store ptr %.sroa.08.043, ptr %2, align 8, !alias.scope !233, !noalias !236
  %i.cb = load ptr, ptr %.sroa.17.045, align 8, !noalias !239 ; 2 uses
  store ptr %i.cb, ptr %i.u, align 8, !alias.scope !233, !noalias !236
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  store ptr %i.cc, ptr %i.v, align 8, !alias.scope !233, !noalias !236
  store ptr %.sroa.17.045, ptr %i.w, align 8, !alias.scope !233, !noalias !236
  call void @_ZNSt5dequeISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EESaIS7_EE8_M_eraseESt15_Deque_iteratorIS7_RS7_PS7_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.422") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.sroa.08.0.copyload = load ptr, ptr %5, align 8
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre52 = load ptr, ptr %i.n, align 8, !noalias !215
  br label %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit

bb.s:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.08.043, i64 8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %.sroa.13.044
  br i1 %i.ce, label %bb.t, label %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.17.045, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 512
  br label %_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit

_ZNSt15_Deque_iteratorISt10unique_ptrIN4node6worker5locks11LockRequestESt14default_deleteIS4_EERS7_PS7_EppEv.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.ci = phi ptr [ %.pre52, %bb.r ], [ %i.bx, %bb.t ], [ %i.bx, %bb.s ] ; 2 uses
  %.sroa.08.1 = phi ptr [ %.sroa.08.0.copyload, %bb.r ], [ %i.cg, %bb.t ], [ %i.cd, %bb.s ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0.copyload, %bb.r ], [ %i.ch, %bb.t ], [ %.sroa.13.044, %bb.s ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.0.copyload, %bb.r ], [ %i.cf, %bb.t ], [ %.sroa.17.045, %bb.s ]
  %i.cj = icmp eq ptr %.sroa.08.1, %i.ci
  br i1 %i.cj, label %._crit_edge48, label %bb.q, !llvm.loop !240
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node6worker5locks11LockManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @uv_mutex_init(ptr noundef nonnull align 8 dereferenceable(40) %0) #24
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node9MutexBaseINS_16LibuvMutexTraitsEEC1EvE20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

_ZN4node9MutexBaseINS_16LibuvMutexTraitsEEC2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 8, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 6 uses
  store ptr %i.l, ptr %.06.i.i.ptr.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.06.i.i.ptr.i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %.06.i.i.ptr.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.p, ptr %i.u, align 8
  store ptr %i.l, ptr %i.m, align 8
  store ptr %i.l, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 1, ptr %i.x, align 8
end_hunk_0
