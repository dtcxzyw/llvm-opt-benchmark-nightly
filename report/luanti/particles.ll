Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/particles?download=true
inline.NumInlined: 2466
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15ParticleManager19handleParticleEventEP11ClientEventP6ClientP11LocalPlayer:bb.a
  resume { ptr, i32 } %.pn49.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager21deleteParticleSpawnerEm(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !423
  %.not.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !421 ; 4 uses
  %.not.i.i3 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i3, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %i.i = icmp eq i64 %1, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %bb.d, !llvm.loop !617

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !414  ; 2 uses
  %i.l = urem i64 %1, %i.k                        ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !413
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !422  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !421  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !66
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.t = icmp eq i64 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.h ], [ %i.p, %bb.g ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !421 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.x, %i.l
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread, !llvm.loop !15

_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.p, %bb.g ], [ %i.u, %bb.h ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !417 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !419
  %.not.i.i4 = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !418
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !418
  store ptr null, ptr %i.z, align 8, !tbaa !418
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !417
  br label %_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

bb.k:                                             ; preds = %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %._ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit_crit_edge unwind label %bb.v

._ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit_crit_edge: ; preds = %bb.k
  %.pre = load i64, ptr %i.y, align 8, !tbaa !66
  br label %_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %._ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit_crit_edge, %bb.j
  %i.ah = phi i64 [ %.pre, %._ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit_crit_edge ], [ %1, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !414 ; 3 uses
  %i.ak = urem i64 %i.ah, %i.aj                   ; 3 uses
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !413 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !422 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %.0.i.i.i.i = phi ptr [ %i.an, %_ZNSt6vectorISt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ], [ %i.ao, %bb.l ] ; 4 uses
  %i.ao = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !421 ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.ao, %.sroa.06.1.i.i
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i, label %bb.l, !llvm.loop !13

_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i: ; preds = %bb.l
  %i.ap = icmp eq ptr %.0.i.i.i.i, %i.an
  %i.aq = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !421 ; 4 uses
  %.not18.i.i.i.i6 = icmp eq ptr %i.aq, null      ; 2 uses
  br i1 %i.ap, label %bb.m, label %bb.r

bb.m:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i6, label %._crit_edge.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !66
  %i.at = urem i64 %i.as, %i.aj                   ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.at, %i.ak
  br i1 %.not9.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  store ptr %i.an, ptr %i.au, align 8, !tbaa !422
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.o, %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.an
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !420
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !422
  br label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i

bb.r:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE20_M_get_previous_nodeEmPNS9_10_Hash_nodeIS7_Lb0EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i6, label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !66
  %i.az = urem i64 %i.ay, %i.aj                   ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.az, %i.ak
  br i1 %.not17.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.az
  store ptr %.0.i.i.i.i, ptr %i.ba, align 8, !tbaa !422
  br label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i

_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.n
  %i.bb = load ptr, ptr %.sroa.06.1.i.i, align 8, !tbaa !421
  store ptr %i.bb, ptr %.0.i.i.i.i, align 8, !tbaa !421
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !418 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5eraseENSt8__detail14_Node_iteratorISB_Lb0ELb0EEE.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i
  tail call void @_ZNKSt14default_deleteI15ParticleSpawnerEclEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.bc)
  br label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5eraseENSt8__detail14_Node_iteratorISB_Lb0ELb0EEE.exit

_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5eraseENSt8__detail14_Node_iteratorISB_Lb0ELb0EEE.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNS9_10_Hash_nodeIS7_Lb0EEEm.exit.i.i.i.i, %bb.u
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.1.i.i, i64 noundef 24) #28
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !423
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.d, align 8, !tbaa !423
  br label %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread

bb.v:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  resume { ptr, i32 } %i.bf

_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE4findERSA_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.f, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt13unordered_mapImSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EESt4hashImESt8equal_toImESaISt4pairIKmS4_EEE5eraseENSt8__detail14_Node_iteratorISB_Lb0ELb0EEE.exit
  %i.bh = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN15ParticleManager18addParticleSpawnerEmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS1_EE(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 noundef %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca ptr, align 8                        ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::unique_ptr<ParticleSpawner>>, std::allocator<std::pair<const unsigned long, std::unique_ptr<ParticleSpawner>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !414  ; 2 uses
  %i.g = urem i64 %1, %i.f                        ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !413
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !422  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !421  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66
  %i.n = icmp eq i64 %1, %i.m
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %1, %i.r
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.020.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.k, %bb.c ]
  %i.p = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !421 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %i.s = urem i64 %i.r, %i.f
  %.not19.i.i.i.i = icmp eq i64 %i.s, %i.g
  br i1 %.not19.i.i.i.i, label %bb.d, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.e
  br label %.loopexit.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.d, ptr %4, align 8, !tbaa !618
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !421
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %1, ptr %i.v, align 8, !tbaa !626
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !627
  store ptr %i.t, ptr %i.u, align 8, !tbaa !428
  %i.x = invoke ptr @_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.g, i64 noundef %1, ptr noundef nonnull %i.t, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.f

_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit

bb.f:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

.loopexit:                                        ; preds = %bb.d, %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.c
  %.pn.i.i = phi ptr [ %i.x, %_ZNSt10_HashtableImSt4pairIKmSt10unique_ptrI15ParticleSpawnerSt14default_deleteIS3_EEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.k, %bb.c ], [ %i.p, %bb.d ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 4 uses
  %i.z = load ptr, ptr %.1.i.i, align 8, !tbaa !418
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.u, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.g, %bb.h
  %i.aa = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !360, !nonnull !143, !align !361 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.noexc4 unwind label %bb.t, !inline_history !5

.noexc4:                                          ; preds = %_ZTW11errorstream.exit
  %.v.i = select i1 %i.ae, i64 976, i64 984
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.5, ptr %i.a, align 8, !tbaa !200
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !362 ; 5 uses
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZN11StreamProxylsIRmEERS_OT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !369
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc7 unwind label %bb.t

.noexc7:                                          ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !362
  br label %bb.l

bb.l:                                             ; preds = %.noexc7, %bb.j
  %i.ap = phi ptr [ %.pre.i, %.noexc7 ], [ %i.ah, %bb.j ]
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %1)
          to label %_ZN11StreamProxylsIRmEERS_OT_.exit unwind label %bb.t ; 0 uses

_ZN11StreamProxylsIRmEERS_OT_.exit:               ; preds = %bb.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.6, ptr %3, align 8, !tbaa !200
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZN11StreamProxylsIRmEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %6 = load ptr, ptr %5, align 8, !tbaa !362      ; 5 uses
  %.not.i10.a = icmp eq ptr %6, null
  br i1 %.not.i10.a, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %6, align 8, !tbaa !48
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %6, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !369
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc12 unwind label %bb.t

.noexc12:                                         ; preds = %bb.o
  %.pre.i11 = load ptr, ptr %5, align 8, !tbaa !362 ; 2 uses
  %.pre = load ptr, ptr %.pre.i11, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre27 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.p

bb.p:                                             ; preds = %.noexc12, %bb.n
  %i.ay = phi i64 [ %.pre27, %.noexc12 ], [ %i.at, %bb.n ]
  %i.az = phi ptr [ %.pre.i11, %.noexc12 ], [ %6, %bb.n ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !375 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt16__throw_bad_castv() #29
          to label %.noexc15 unwind label %bb.t

.noexc15:                                         ; preds = %bb.q
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !380
  %.not.i1.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 67
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !64
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bc)
          to label %.noexc16 unwind label %bb.t

.noexc16:                                         ; preds = %bb.s
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.t, !inline_history !6

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc16, %bb.r
  %.0.i.i.i = phi i8 [ %i.bg, %bb.r ], [ %i.bk, %.noexc16 ]
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i)
          to label %.noexc18 unwind label %bb.t

.noexc18:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %.noexc18, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc16, %bb.s, %bb.q, %bb.o, %_ZN11StreamProxylsIRmEERS_OT_.exit, %bb.l, %bb.k, %.noexc4, %_ZTW11errorstream.exit, %.loopexit.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bn, %bb.t ], [ %i.y, %bb.f ]
  %i.bo = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %.loopexit
  %i.bp = load ptr, ptr %2, align 8, !tbaa !418
  store ptr null, ptr %2, align 8, !tbaa !418
  %i.bq = load ptr, ptr %.1.i.i, align 8, !tbaa !418 ; 2 uses
  store ptr %i.bp, ptr %.1.i.i, align 8, !tbaa !418
  %.not.i.i.i.i14 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i14, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNKSt14default_deleteI15ParticleSpawnerEclEPS0_(ptr noundef nonnull align 8 dereferenceable(8) %.1.i.i, ptr noundef nonnull %i.bq)
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.v, %bb.u, %bb.m, %.noexc18
  %i.br = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #27 ; 0 uses
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288), i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager19addDiggingParticlesEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  tail call void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1, i48 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ParticleManager15addNodeParticleEP11LocalPlayerN4core8vector3dIsEERK7MapNode(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %struct.ParticleParameters, align 8 ; 52 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %6 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %7 = alloca %"class.core::vector2d", align 8    ; 6 uses
  %8 = alloca %"class.video::SColor", align 4     ; 6 uses
  %9 = alloca %"class.std::unique_ptr.496", align 8 ; 4 uses
  %10 = alloca %struct.ClientParticleTexRef, align 8 ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i48 %2 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 0, ptr %i.c, align 1, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.d, align 4, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i32 0, ptr %5, align 8
  store i16 1, ptr %i.f, align 2, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.h, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 74
  store i16 1, ptr %i.m, align 2, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 76
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 88
  store <2 x float> splat (float 1.000000e+00), ptr %i.p, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.o, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 104
  store <2 x float> splat (float 1.000000e+00), ptr %i.r, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector2dIfEELm2EEE, i64 16), ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.u, align 8, !tbaa !63
  store i8 0, ptr %i.t, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i8 0, ptr %i.w, align 8, !tbaa !199
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 168
  store i8 0, ptr %i.x, align 8, !tbaa !272
  store i8 0, ptr %i.v, align 8, !tbaa !193
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 164
  store i16 127, ptr %i.y, align 4, !tbaa !273
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 172 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.z, i8 0, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 224
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 4, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 240
  store float 0.000000e+00, ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes9ParameterIfLm1EEE, i64 16), ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 256
  store float 0.000000e+00, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 264
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 280
  store <2 x float> zeroinitializer, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 288
  store float 0.000000e+00, ptr %i.aj, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ah, align 8, !tbaa !48
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 304
  store <2 x float> zeroinitializer, ptr %i.al, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 312
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !141
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN18ParticleParamTypes15VectorParameterIN4core8vector3dIfEELm3EEE, i64 16), ptr %i.ak, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 320
  store float 0.000000e+00, ptr %i.an, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i32 0, ptr %8, align 4, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !271
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !191
  %i.as = invoke noundef zeroext i1 @_ZN15ParticleManager21getNodeParticleParamsEP6ClientRK7MapNodeR18ParticleParametersPPN5video8ITextureERN4core8vector2dIfEESE_PNS7_6SColorEh(ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(328) %5, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull %8, i8 noundef zeroext 0)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  br i1 %i.as, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.at = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.au = sitofp nsz i32 %i.at to float
  %i.av = fdiv nsz float %i.au, 1.000000e+02
  store float %i.av, ptr %i.ab, align 8, !tbaa !91
  %i.aw = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.ax = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 3.000000e+00)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.ay = invoke noundef float @_Z12myrand_rangeff(float noundef -1.500000e+00, float noundef 1.500000e+00)
          to label %bb.g unwind label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 184
  store float %i.aw, ptr %i.az, align 8, !tbaa !53
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 188
  store float %i.ax, ptr %.sroa.515.0..sroa_idx, align 4, !tbaa !53
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 192
  store float %i.ay, ptr %.sroa.616.0..sroa_idx, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !647
  %i.bc = fneg nsz float %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.be = load float, ptr %i.bd, align 8, !tbaa !648
  %i.bf = fmul nsz float %i.be, %i.bc
  %i.bg = fdiv nsz float %i.bf, 1.000000e+01
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 196
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 200
  store float %i.bg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 204
  store float 0.000000e+00, ptr %.sroa.513.0..sroa_idx, align 4, !tbaa !53
  %i.bi = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.bj = sitofp nsz i16 %.sroa.0.0.extract.trunc to float
  %i.bk = fadd nsz float %i.bi, %i.bj
  %i.bl = fadd nsz float %i.bk, -2.500000e-01
  %i.bm = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.bn = invoke noundef float @_Z12myrand_rangeff(float noundef 0.000000e+00, float noundef 5.000000e-01)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bo = bitcast i48 %2 to <3 x i16>
  %i.bp = shufflevector <3 x i16> %i.bo, <3 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.bq = sitofp <2 x i16> %i.bp to <2 x float>
  store float %i.bl, ptr %i.z, align 4, !tbaa !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.br = insertelement <2 x float> poison, float %i.bm, i64 0
end_hunk_0
