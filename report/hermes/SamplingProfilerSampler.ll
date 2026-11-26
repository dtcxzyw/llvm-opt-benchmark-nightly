Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/SamplingProfilerSampler?download=true
inline.NumInlined: 568
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !145

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !145

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread30
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread30 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi ptr [ %i.q, %bb.e ], [ %i.e, %.thread30 ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.af = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread30 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 8 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.al = load i64, ptr %i.a, align 8, !tbaa !78
  %i.am = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef %i.ak, i64 noundef %i.al, i64 noundef 1) #14 ; 2 uses
  %i.an = extractvalue { i8, i64 } %i.am, 0
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ap = extractvalue { i8, i64 } %i.am, 1
  tail call void @_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.ar = urem i64 %i.af, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.ar, %bb.i ], [ %i.ad, %.critedge ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i17 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !31
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !79
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !31
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30 ; 3 uses
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !31
  store ptr %i.ag, ptr %i.ax, align 8, !tbaa !30
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ae, align 8, !tbaa !34
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  store ptr %i.ag, ptr %i.be, align 8, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !79
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !78
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !78
  br label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit

_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ag, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !guid !148 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !149
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN6hermes2vm16SamplingProfilerELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !76

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN6hermes2vm16SamplingProfilerELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN6hermes2vm16SamplingProfilerELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN6hermes2vm16SamplingProfilerELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !30
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !31 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %i.p, ptr %.02530, align 8, !tbaa !31
  store ptr %.02530, ptr %i.g, align 8, !tbaa !30
  store ptr %i.g, ptr %i.n, align 8, !tbaa !79
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !31
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !79
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !31
  store ptr %i.s, ptr %.02530, align 8, !tbaa !31
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !79
  store ptr %.02530, ptr %i.t, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !147

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !34
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #16
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !34
  store ptr %.0.i, ptr %0, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !guid !152 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !78
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph, !llvm.loop !150

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !31 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !150

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit: ; preds = %bb.c, %.preheader.i
  %2 = phi ptr [ %i.g, %.preheader.i ], [ %i.j, %bb.c ]
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = ptrtoint ptr %2 to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34   ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = icmp eq ptr %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2655, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq ptr %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit, label %.lr.ph.i, !llvm.loop !151

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !31 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !151

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !151

_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.017 = phi i64 [ %i.q, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %i.ao = icmp eq ptr %.020, %i.am
  %i.ap = load ptr, ptr %.119, align 8, !tbaa !31 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.017 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.an, %bb.h ]
  %.0205769 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.020, %bb.h ] ; 2 uses
  %.1195967 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.119, %bb.h ] ; 2 uses
  %.0176066 = phi i64 [ %i.v, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.017, %bb.h ]
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !36
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0176066
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.0205770 = phi ptr [ %i.y, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.0205769, %bb.j ], [ %.020, %bb.h ]
  %.1195968 = phi ptr [ %i.z, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %.1195967, %bb.j ], [ %.119, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !79
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = urem i64 %i.bi, %i.al                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bj, %.017
  br i1 %.not17.i, label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj
  store ptr %.020, ptr %i.bk, align 8, !tbaa !79
  br label %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit

_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.11958 = phi ptr [ %.1195967, %bb.i ], [ %.1195968, %bb.l ], [ %.119, %bb.m ], [ %.119, %bb.n ], [ %.119, %bb.o ] ; 2 uses
  %.02056 = phi ptr [ %.0205769, %bb.i ], [ %.0205770, %bb.l ], [ %.020, %bb.m ], [ %.020, %bb.n ], [ %.020, %bb.o ]
  %i.bl = load ptr, ptr %.11958, align 8, !tbaa !31
  store ptr %i.bl, ptr %.02056, align 8, !tbaa !31
  tail call void @_ZdlPvm(ptr noundef nonnull %.11958, i64 noundef 16) #16
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !78
  %i.bn = add i64 %i.bm, -1
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPN6hermes2vm16SamplingProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE17_M_realloc_insertIJRmRNSt6chrono10time_pointINS8_3_V212steady_clockENS8_8durationIlSt5ratioILl1ELl1000000000EEEEEEN9__gnu_cxx17__normal_iteratorIPNS2_10StackFrameES_ISK_SaISK_EEEESO_EEEvNSJ_IPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 !guid !160 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
  unreachable

_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !17
  %.sroa.02.0.copyload.i = load i64, ptr %3, align 8, !tbaa !17
  %.sroa.01.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !55 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !55 ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.02.0.copyload.i, ptr %i.s, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.v = ptrtoint ptr %.sroa.01.0.copyload.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 7 uses
  %i.x = sdiv exact i64 %i.w, 24
  %i.y = icmp ugt i64 %i.x, 384307168202282325
  br i1 %i.y, label %bb.c, label %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i: ; preds = %_ZNKSt6vectorIN6hermes2vm16SamplingProfiler10StackTraceESaIS3_EE12_M_check_lenEmPKc.exit
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIN6hermes2vm16SamplingProfiler10StackFrameESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i
  %i.z = getelementptr inbounds i8, ptr null, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !22
end_hunk_0
