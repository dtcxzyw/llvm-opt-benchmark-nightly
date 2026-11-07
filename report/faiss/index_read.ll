Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/index_read?download=true
inline.NumInlined: 10836
inline.NumDeleted: 4102
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_:bb.a
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #29 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !204
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !396  ; 4 uses
  %i.t = urem i64 %2, %i.s                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !85

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !30
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, label %bb.i

_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41: ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !203
  store ptr %i.y, ptr %3, align 8, !tbaa !203
  store ptr %3, ptr %1, align 8, !tbaa !203
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRKm.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !395    ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !202 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !203 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !30
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ah = icmp eq i64 %i.ad, %i.ak
  br i1 %i.ah, label %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !873

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.020.i = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %.020.i, align 8, !tbaa !203 ; 4 uses
  %.not18.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = urem i64 %i.ak, %i.s
  %.not19.i = icmp eq i64 %i.al, %i.t
  br i1 %.not19.i, label %bb.k, label %..loopexit_crit_edge21.i, !llvm.loop !873

..loopexit_crit_edge21.i:                         ; preds = %bb.l
  br label %.loopexit, !llvm.loop !873

_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ]
  %i.an = phi ptr [ %i.ab, %bb.j ], [ %.020.i, %bb.k ] ; 2 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !203
  store ptr %3, ptr %i.an, align 8, !tbaa !203
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %bb.m, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, !prof !874

bb.m:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.ap = phi i64 [ %i.v, %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41 ], [ %i.ad, %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !203   ; 2 uses
  %.not36 = icmp eq ptr %i.aq, null
  br i1 %.not36, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !30 ; 2 uses
  %i.at = icmp eq i64 %i.ap, %i.as
  br i1 %i.at, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = urem i64 %i.as, %i.s                    ; 2 uses
  %.not37 = icmp eq i64 %i.au, %i.t
  br i1 %.not37, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !395
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %3, ptr %i.aw, align 8, !tbaa !202
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !203
  store ptr %i.ax, ptr %3, align 8, !tbaa !203
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !202
  store ptr %3, ptr %i.ay, align 8, !tbaa !203
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !406
  store ptr %i.ba, ptr %3, align 8, !tbaa !203
  store ptr %3, ptr %i.az, align 8, !tbaa !406
  %i.bb = load ptr, ptr %3, align 8, !tbaa !203   ; 2 uses
  %.not11.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.be = urem i64 %i.bd, %i.s
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.be
  store ptr %3, ptr %i.bf, align 8, !tbaa !202
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.thread
  store ptr %i.az, ptr %i.aa, align 8, !tbaa !202
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.r, %.loopexit, %bb.o, %bb.p, %_ZNKSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, %bb.n, %bb.m
  %i.bg = load i64, ptr %i.f, align 8, !tbaa !397
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.f, align 8, !tbaa !397
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !876
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !78

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKllELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !406  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !406
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %._crit_edge.thread, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.p
  %.05271 = phi ptr [ %.05668.lcssa, %bb.p ], [ null, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 3 uses
  %.05370 = phi i64 [ %.lcssa, %bb.p ], [ 0, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05469 = phi i64 [ %.155, %bb.p ], [ 0, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.05668 = phi ptr [ %.lcssa100, %bb.p ], [ %i.h, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit ] ; 4 uses
  %i.i = load ptr, ptr %.05668, align 8, !tbaa !203 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05668, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %.not62 = icmp ne ptr %.05271, null
  %i.m = icmp eq i64 %.05370, %i.l
  %or.cond = and i1 %.not62, %i.m                 ; 2 uses
  br i1 %or.cond, label %._crit_edge.a, label %bb.h

bb.g:                                             ; preds = %._crit_edge.a
  %i.n = load ptr, ptr %7, align 8, !tbaa !203    ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %3 = load i64, ptr %2, align 8, !tbaa !30
  %4 = urem i64 %3, %1                            ; 3 uses
  %5 = icmp eq i64 %6, %4
  br i1 %5, label %._crit_edge.a, label %bb.h, !llvm.loop !875

bb.h:                                             ; preds = %bb.g, %.lr.ph.a
  %.05271.lcssa = phi ptr [ %.05271, %.lr.ph.a ], [ %.05668109, %bb.g ] ; 2 uses
  %.05370.lcssa = phi i64 [ %.05370, %.lr.ph.a ], [ %6, %bb.g ]
  %.05668.lcssa = phi ptr [ %.05668, %.lr.ph.a ], [ %7, %bb.g ] ; 7 uses
  %.lcssa100 = phi ptr [ %i.i, %.lr.ph.a ], [ %i.n, %bb.g ] ; 2 uses
  %.lcssa = phi i64 [ %i.l, %.lr.ph.a ], [ %4, %bb.g ] ; 4 uses
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %.05271.lcssa, align 8, !tbaa !203 ; 2 uses
  %.not63 = icmp eq ptr %i.o, null
  br i1 %.not63, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = urem i64 %i.q, %1                        ; 2 uses
  %.not64 = icmp eq i64 %i.r, %.05370.lcssa
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.r
  store ptr %.05271.lcssa, ptr %i.s, align 8, !tbaa !202
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.h
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.lcssa ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !202  ; 2 uses
  %.not65 = icmp eq ptr %i.u, null
  br i1 %.not65, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !406
  store ptr %i.v, ptr %.05668.lcssa, align 8, !tbaa !203
  store ptr %.05668.lcssa, ptr %i.g, align 8, !tbaa !406
  store ptr %i.g, ptr %i.t, align 8, !tbaa !202
  %i.w = load ptr, ptr %.05668.lcssa, align 8, !tbaa !203
  %.not66 = icmp eq ptr %i.w, null
  br i1 %.not66, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.05469
  store ptr %.05668.lcssa, ptr %i.x, align 8, !tbaa !202
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !203
  store ptr %i.y, ptr %.05668.lcssa, align 8, !tbaa !203
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !202
  store ptr %.05668.lcssa, ptr %i.z, align 8, !tbaa !203
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.155 = phi i64 [ %.lcssa, %bb.m ], [ %.05469, %bb.o ], [ %.lcssa, %bb.n ]
  %.not = icmp eq ptr %.lcssa100, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.a, !llvm.loop !875

._crit_edge.a:                                    ; preds = %.lr.ph.a, %bb.g
  %6 = phi i64 [ %4, %bb.g ], [ %i.l, %.lr.ph.a ] ; 3 uses
  %7 = phi ptr [ %i.n, %bb.g ], [ %i.i, %.lr.ph.a ] ; 5 uses
  %.05668109 = phi ptr [ %7, %bb.g ], [ %.05668, %.lr.ph.a ] ; 6 uses
  %.05271108 = phi ptr [ %.05668109, %bb.g ], [ %.05271, %.lr.ph.a ] ; 2 uses
  %8 = load ptr, ptr %.05271108, align 8, !tbaa !203
  store ptr %8, ptr %.05668109, align 8, !tbaa !203
  store ptr %.05668109, ptr %.05271108, align 8, !tbaa !203
  %.not88 = icmp eq ptr %7, null
  br i1 %.not88, label %bb.q, label %bb.g, !llvm.loop !875

bb.q:                                             ; preds = %._crit_edge.a
  %i.aa = load ptr, ptr %.05668109, align 8, !tbaa !203 ; 2 uses
  %.not60 = icmp eq ptr %i.aa, null
  br i1 %.not60, label %._crit_edge.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = urem i64 %i.ac, %1                      ; 2 uses
  %.not61 = icmp eq i64 %i.ad, %6
  br i1 %.not61, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ad
  store ptr %.05668109, ptr %i.ae, align 8, !tbaa !202
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.p, %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_allocate_bucketsEm.exit, %bb.r, %bb.s, %bb.q
  %i.af = load ptr, ptr %0, align 8, !tbaa !395   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !396
  %i.ak = shl i64 %i.aj, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ak) #32
  br label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge.thread, %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.al, align 8, !tbaa !396
  store ptr %.0.i, ptr %0, align 8, !tbaa !395
  ret void
}

declare void @_ZN5faiss20IndexIVFFlatPanoramaC1Ev(ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #7

declare void @_ZN5faiss20IndexScalarQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #7

declare void @_ZN5faiss12IndexLatticeC1Eliii(ptr noundef nonnull align 8 dereferenceable(400), i64 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5faiss23IndexIVFScalarQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(440)) unnamed_addr #7

declare void @_ZN5faiss28IndexIVFLocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(800)) unnamed_addr #7

declare void @_ZN5faiss25IndexIVFResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(800)) unnamed_addr #7

declare void @_ZN5faiss35IndexIVFProductLocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #7

declare void @_ZN5faiss32IndexIVFProductResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #7

declare void @_ZN5faiss20IndexIVFSpectralHashC1Ev(ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #7

declare void @_ZN5faiss10IndexIVFPQ16precompute_tableEv(ptr noundef nonnull align 8 dereferenceable(560)) local_unnamed_addr #7

declare void @_ZN5faiss11IndexIVFPQRC1Ev(ptr noundef nonnull align 8 dereferenceable(812)) unnamed_addr #7

declare void @_ZN5faiss10IndexIVFPQC1Ev(ptr noundef nonnull align 8 dereferenceable(560)) unnamed_addr #7

declare void @_ZNK5faiss5Index7search1EPKfRNS_22ResultHandlerUnorderedIflEEPNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss5Index11reconstructElPf(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss5Index13reconstruct_nEllPf(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, i64 noundef, ptr noundef) unnamed_addr #7

declare noundef ptr @_ZNK5faiss5Index21get_distance_computerEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #7

declare void @_ZNK5faiss5Index9sa_encodeElPKfPh(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss5Index9sa_decodeElPKhPf(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss17IndexPreTransformC1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #7

declare void @_ZN5faiss11IndexRefineC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN5faiss11IndexRefineC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare void @_ZN5faiss15IndexRefineFlatC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss19IndexIDMap2TemplateINS_5IndexEEE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !203 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #32
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !200
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !200
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #32
  br label %_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit

_ZNSt13unordered_mapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  tail call void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5faiss19IndexIDMap2TemplateINS_5IndexEEE, i64 16), ptr %0, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !203 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #32, !inline_history !877
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !200
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN5faiss19IndexIDMap2TemplateINS_5IndexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !200
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #32, !inline_history !877
  br label %_ZN5faiss19IndexIDMap2TemplateINS_5IndexEED2Ev.exit

_ZN5faiss19IndexIDMap2TemplateINS_5IndexEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  tail call void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(136) %0) #29, !inline_history !877
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #32
  ret void
}

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE5trainElPKf(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE8train_exElPKvNS_11NumericTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE3addElPKf(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE6add_exElPKvNS_11NumericTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEE12add_with_idsElPKfPKl(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEE15add_with_ids_exElPKvNS_11NumericTypeEPKl(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss18IndexIDMapTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss18IndexIDMapTemplateINS_5IndexEE9search_exElPKvNS_11NumericTypeElPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZNK5faiss18IndexIDMapTemplateINS_5IndexEE12range_searchElPKffPNS_17RangeSearchResultEPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7

declare noundef i64 @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEE10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZNK5faiss19IndexIDMap2TemplateINS_5IndexEE11reconstructElPf(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef) unnamed_addr #7

declare noundef i64 @_ZNK5faiss18IndexIDMapTemplateINS_5IndexEE12sa_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7

declare void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEE10merge_fromERS1_l(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) unnamed_addr #7

declare void @_ZNK5faiss18IndexIDMapTemplateINS_5IndexEE26check_compatible_for_mergeERKS1_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #7

declare void @_ZN5faiss19IndexIDMap2TemplateINS_5IndexEE12add_sa_codesElPKhPKl(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEED1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEED0Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #5

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE12add_with_idsElPKfPKl(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE15add_with_ids_exElPKvNS_11NumericTypeEPKl(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare noundef i64 @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE10remove_idsERKNS_10IDSelectorE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE10merge_fromERS1_l(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) unnamed_addr #7

declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEE12add_sa_codesElPKhPKl(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5faiss18IndexIDMapTemplateINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #5

declare void @_ZN5faiss11Index2LayerC1Ev(ptr noundef nonnull align 8 dereferenceable(456)) unnamed_addr #7

declare void @_ZN5faiss9IndexHNSWC1EiiNS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(5297), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5faiss13IndexHNSWFlatC1Ev(ptr noundef nonnull align 8 dereferenceable(5297)) unnamed_addr #7
end_hunk_0
