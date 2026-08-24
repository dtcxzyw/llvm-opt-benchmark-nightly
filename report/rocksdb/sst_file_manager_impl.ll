Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/sst_file_manager_impl?download=true
inline.NumInlined: 920
inline.NumDeleted: 450
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb18SstFileManagerImpl9OnAddFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
bb.e:                                             ; preds = %bb.d
  store i64 %3, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !151, !alias.scope !160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !160
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit5 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit5:                  ; preds = %bb.g
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl12OnDeleteFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  invoke void @_ZN7rocksdb18SstFileManagerImpl16OnDeleteFileImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !151, !alias.scope !163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !163
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit3:                  ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl16OnDeleteFileImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = tail call ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !159
  %i.h = sub i64 %i.g, %i.e
  store i64 %i.h, ptr %i.f, align 8, !tbaa !159
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !166
  %i.m = urem i64 %i.l, %i.j                      ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !168  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !122 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i.i.i, label %bb.c, !llvm.loop !169

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = icmp eq ptr %.0.i.i.i.i, %i.p
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !122  ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null        ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !166
  %i.w = urem i64 %i.v, %i.j                      ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.w, %i.m
  br i1 %.not9.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w
  store ptr %i.p, ptr %i.x, align 8, !tbaa !168
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.p
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  store ptr %i.t, ptr %i.y, align 8, !tbaa !121
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.o, align 8, !tbaa !168
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE20_M_get_previous_nodeEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit.i.i.i
  br i1 %.not18.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !166
  %i.ac = urem i64 %i.ab, %i.j                    ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.ac, %i.m
  br i1 %.not17.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ac
  store ptr %.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !168
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !122
  store ptr %i.ae, ptr %.0.i.i.i.i, align 8, !tbaa !122
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !9   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #23
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !170
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !170
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb1EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl22OnCompactionCompletionEPNS_10CompactionE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 11528
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 11536
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !174  ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader.preheader

_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader.preheader: ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 56
  %umax28 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  br label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader

_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader.preheader, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge
  %.01725 = phi i64 [ %i.ao, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge ], [ 0, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader.preheader ] ; 2 uses
  %.01824 = phi i64 [ %.1.lcssa, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge ], [ 0, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader.preheader ] ; 4 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.01725 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !178  ; 5 uses
  %.not27 = icmp eq ptr %i.m, %i.n
  br i1 %.not27, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.r, -16                      ; 4 uses
  %i.s = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.01824, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.s, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi33 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi34 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi35 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <4 x ptr>, ptr %i.t, align 8, !tbaa !179
  %wide.load36 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !179
  %wide.load37 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !179
  %wide.load38 = load <4 x ptr>, ptr %i.w, align 8, !tbaa !179
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep39 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load36, i64 24
  %wide.gep40 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load37, i64 24
  %wide.gep41 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load38, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather42 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep39, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather43 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep40, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather44 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep41, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %i.x = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.y = add <4 x i64> %wide.masked.gather42, %vec.phi33 ; 2 uses
  %i.z = add <4 x i64> %wide.masked.gather43, %vec.phi34 ; 2 uses
  %i.aa = add <4 x i64> %wide.masked.gather44, %vec.phi35 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.y, %i.x
  %bin.rdx45 = add <4 x i64> %i.z, %bin.rdx
  %bin.rdx46 = add <4 x i64> %i.aa, %bin.rdx45
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx46) ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ad = and i64 %i.q, 96
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56, label %vec.epilog.ph, !prof !191

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ac, %vec.epilog.iter.check ], [ %.01824, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.r, -4                     ; 3 uses
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi49 = phi <4 x i64> [ %i.ae, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index48
  %wide.load50 = load <4 x ptr>, ptr %i.af, align 8, !tbaa !179
  %wide.gep51 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load50, i64 24
  %wide.masked.gather52 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep51, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %i.ag = add <4 x i64> %wide.masked.gather52, %vec.phi49 ; 2 uses
  %index.next53 = add nuw i64 %index48, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !192

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n54 = icmp eq i64 %i.r, %n.vec47
  br i1 %cmp.n54, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56

_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec47, %vec.epilog.middle.block ]
  %.122.ph = phi i64 [ %.01824, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit

._crit_edge:                                      ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !193
  %i.al = sub i64 %i.ak, %.018.lcssa
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !193
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %._crit_edge
  ret void

_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit, %middle.block, %vec.epilog.middle.block, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader
  %.1.lcssa = phi i64 [ %.01824, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit ] ; 2 uses
  %i.ao = add nuw i64 %.01725, 1                  ; 2 uses
  %exitcond29.not = icmp eq i64 %i.ao, %umax28
  br i1 %exitcond29.not, label %._crit_edge, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader, !llvm.loop !194

_ZNK7rocksdb10Compaction15num_input_filesEm.exit: ; preds = %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit
  %.023 = phi i64 [ %i.au, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit ], [ %.023.ph, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56 ] ; 2 uses
  %.122 = phi i64 [ %i.at, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit ], [ %.122.ph, %_ZNK7rocksdb10Compaction15num_input_filesEm.exit.preheader56 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.023
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !181
  %i.at = add i64 %i.as, %.122                    ; 2 uses
  %i.au = add nuw i64 %.023, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.r
  br i1 %exitcond.not, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit._crit_edge, label %_ZNK7rocksdb10Compaction15num_input_filesEm.exit, !llvm.loop !195
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl10OnMoveFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_Pm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit unwind label %bb.c

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit: ; preds = %bb.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !133
  store i64 %i.d, ptr %4, align 8, !tbaa !133
  br label %bb.e

bb.c:                                             ; preds = %bb.h, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit8, %bb.e, %bb.b, %bb.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit8 unwind label %bb.c

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit8: ; preds = %bb.e
  %i.j = load i64, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEEixERSB_.exit8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !157
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !159
  %i.q = sub i64 %i.j, %i.n
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %i.o, align 8, !tbaa !159
  br label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !159
  %i.u = add i64 %i.t, %i.j
  store i64 %i.u, ptr %i.s, align 8, !tbaa !159
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.h
  store i64 %i.j, ptr %i.v, align 8, !tbaa !133
  invoke void @_ZN7rocksdb18SstFileManagerImpl16OnDeleteFileImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.c

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit10:                 ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !151, !alias.scope !196
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !196
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl13OnUntrackFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  invoke void @_ZN7rocksdb18SstFileManagerImpl16OnDeleteFileImplERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(840) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !151, !alias.scope !199
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !199
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit3:                  ; preds = %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl23SetMaxAllowedSpaceUsageEm(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %1, ptr %i.b, align 8, !tbaa !202
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18SstFileManagerImpl23SetCompactionBufferSizeEm(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %1, ptr %i.b, align 8, !tbaa !203
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb18SstFileManagerImpl24IsMaxAllowedSpaceReachedEv(ptr noundef nonnull align 8 dereferenceable(840) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i64, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = icmp uge i64 %i.f, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb18SstFileManagerImpl44IsMaxAllowedSpaceReachedIncludingCompactionsEv(ptr noundef nonnull align 8 dereferenceable(840) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i64, ptr %i.b, align 8, !tbaa !202  ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !193
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp uge i64 %i.i, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZN7rocksdb9MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #25
  unreachable

_ZN7rocksdb9MutexLockD2Ev.exit:                   ; preds = %bb.c
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb18SstFileManagerImpl23EnoughRoomForCompactionEPNS_16ColumnFamilyDataERKSt6vectorINS_20CompactionInputFilesESaIS4_EERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %5 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %6 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !174    ; 4 uses
  %.not75 = icmp eq ptr %i.d, %i.e
  br i1 %.not75, label %._crit_edge72, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv i64 %i.h, 56
  %umax77 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03671 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.03770 = phi i64 [ %.138.lcssa, %._crit_edge ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %.03671 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !175  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !178  ; 5 uses
  %.not76 = icmp eq ptr %i.m, %i.n
  br i1 %.not76, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check100 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.r, -16                      ; 4 uses
  %i.s = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.03770, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.s, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi101 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi102 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi103 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %wide.load = load <4 x ptr>, ptr %i.t, align 8, !tbaa !179
  %wide.load104 = load <4 x ptr>, ptr %i.u, align 8, !tbaa !179
  %wide.load105 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !179
  %wide.load106 = load <4 x ptr>, ptr %i.w, align 8, !tbaa !179
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep107 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load104, i64 24
  %wide.gep108 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load105, i64 24
  %wide.gep109 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load106, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather110 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep107, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather111 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep108, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %wide.masked.gather112 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep109, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %i.x = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.y = add <4 x i64> %wide.masked.gather110, %vec.phi101 ; 2 uses
  %i.z = add <4 x i64> %wide.masked.gather111, %vec.phi102 ; 2 uses
  %i.aa = add <4 x i64> %wide.masked.gather112, %vec.phi103 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.y, %i.x
  %bin.rdx113 = add <4 x i64> %i.z, %bin.rdx
  %bin.rdx114 = add <4 x i64> %i.aa, %bin.rdx113
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx114) ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ad = and i64 %i.q, 96
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !191

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ac, %vec.epilog.iter.check ], [ %.03770, %vector.main.loop.iter.check ]
  %n.vec115 = and i64 %i.r, -4                    ; 3 uses
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index116 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi117 = phi <4 x i64> [ %i.ae, %vec.epilog.ph ], [ %i.ag, %vec.epilog.vector.body ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index116
  %wide.load118 = load <4 x ptr>, ptr %i.af, align 8, !tbaa !179
  %wide.gep119 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load118, i64 24
  %wide.masked.gather120 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep119, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !181
  %i.ag = add <4 x i64> %wide.masked.gather120, %vec.phi117 ; 2 uses
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ag) ; 2 uses
  %cmp.n122 = icmp eq i64 %i.r, %n.vec115
  br i1 %cmp.n122, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03469.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec115, %vec.epilog.middle.block ]
  %.13868.ph = phi i64 [ %.03770, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge72:                                    ; preds = %._crit_edge, %bb.a
  %.037.lcssa = phi i64 [ 0, %bb.a ], [ %.138.lcssa, %._crit_edge ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !193
  %i.al = add i64 %i.ak, %.037.lcssa              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !203
  %i.ao = add i64 %i.al, %i.an                    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !202 ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %.138.lcssa = phi i64 [ %.03770, %.preheader ], [ %i.ai, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.aw, %.lr.ph ] ; 2 uses
  %i.ar = add nuw i64 %.03671, 1                  ; 2 uses
  %exitcond78.not = icmp eq i64 %i.ar, %umax77
  br i1 %exitcond78.not, label %._crit_edge72, label %.preheader, !llvm.loop !206

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03469 = phi i64 [ %i.ax, %.lr.ph ], [ %.03469.ph, %.lr.ph.preheader ] ; 2 uses
  %.13868 = phi i64 [ %i.aw, %.lr.ph ], [ %.13868.ph, %.lr.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03469
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !179
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !181
  %i.aw = add i64 %i.av, %.13868                  ; 2 uses
  %i.ax = add nuw i64 %.03469, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !207

bb.b:                                             ; preds = %._crit_edge72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !159
  %i.ba = add i64 %i.az, %i.ao
  %i.bb = icmp ugt i64 %i.ba, %i.aq
  br i1 %i.bb, label %bb.q, label %bb.c

bb.c:                                             ; preds = %._crit_edge72, %bb.b
  %i.bc = load i8, ptr %3, align 8, !tbaa !208
  %i.bd = icmp eq i8 %i.bc, 5
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 4
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !209
  %i.bk = icmp eq i8 %i.bj, 1
  br i1 %i.bk, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1856
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !178
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !179
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !210 ; 2 uses
  %i.br = and i64 %i.bq, 4611686018427387903
  %i.bs = lshr i64 %i.bq, 62
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  invoke void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %i.br, i32 noundef %i.bt)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 0, ptr %6, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.bw, align 8, !tbaa !137
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.bx, align 4, !tbaa !146
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 7, ptr %i.by, align 8, !tbaa !147
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !148
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 1, ptr %i.cb, align 8, !tbaa !149
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cd, align 8, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ce, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.cf, align 1, !tbaa !150
  %i.cg = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 472
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(84) %6, ptr noundef nonnull %i.a, ptr noundef null)
          to label %_ZN7rocksdb6StatusC2EOS0_.exit unwind label %bb.k

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !131 ; 6 uses
  store ptr null, ptr %i.cj, align 8, !tbaa !131
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !155 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.cm, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.cl, %_ZN7rocksdb6StatusC2EOS0_.exit ] ; 6 uses
  %i.cm = load ptr, ptr %.06.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !9  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !15
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #23
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #23
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !156

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.cz = load ptr, ptr %i.bz, align 8, !tbaa !148
  %i.da = load i64, ptr %i.cb, align 8, !tbaa !149
  %i.db = shl i64 %i.da, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cz, i8 0, i64 %i.db, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %i.bz, align 8, !tbaa !148 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ca
  br i1 %i.dd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.de = load i64, ptr %i.cb, align 8, !tbaa !149
  %i.df = shl i64 %i.de, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.dg = load i64, ptr %i.am, align 8, !tbaa !203
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !211
  %i.dk = add i64 %i.dj, %i.ao
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.k:                                             ; preds = %bb.f
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bz) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit48

bb.l:                                             ; preds = %bb.n
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i46, label %_ZN7rocksdb6StatusD2Ev.exit48, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i47

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i47: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit48

bb.m:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.dk, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.do = load i64, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %i.dp = add i64 %.0, %.037.lcssa
  %.not45 = icmp ult i64 %i.do, %i.dp
  br i1 %.not45, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull @.str.39, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i64 noundef %i.do, i64 noundef %.0)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  %.not.i.i49 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i49, label %_ZN7rocksdb6StatusD2Ev.exit51, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50: ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit51

_ZN7rocksdb6StatusD2Ev.exit51:                    ; preds = %bb.o, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.dr = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_sst_file_manager_impl.cc:bb.a
  %i.ag = invoke noalias noundef nonnull dereferenceable(35) ptr @_Znwm(i64 noundef 35) #26
          to label %.noexc98.i unwind label %bb.m ; 3 uses

.noexc98.i:                                       ; preds = %.noexc90.i
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 328), align 8, !tbaa !9
  store i64 34, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 344), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ag, ptr noundef nonnull align 1 dereferenceable(34) @.str.21, i64 34, i1 false)
  store i64 34, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 336), align 16, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 34
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), align 8, !tbaa !270
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !117
  %i.ai = invoke noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #26
          to label %.noexc106.i unwind label %bb.n ; 3 uses

.noexc106.i:                                      ; preds = %.noexc98.i
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !9
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), align 16, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ai, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 376), align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 35
  store i8 0, ptr %i.aj, align 1, !tbaa !15
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), align 16, !tbaa !270
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !117
  %i.ak = invoke noalias noundef nonnull dereferenceable(45) ptr @_Znwm(i64 noundef 45) #26
          to label %__cxx_global_var_init.13.exit unwind label %bb.o ; 3 uses

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %.noexc50.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.noexc58.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %.noexc66.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.noexc74.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %.noexc82.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %.noexc90.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %.noexc98.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %.noexc106.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.923.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 80), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 120), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 160), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 200), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 240), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 280), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 320), %bb.m ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.al, %bb.g ], [ %i.am, %bb.h ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, %bb.p
  %i.au = phi ptr [ %.923.i, %bb.p ], [ %i.av, %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -40 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9  ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i

_ZN7rocksdb18OperationStageInfoD2Ev.exit.i:       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.bc = icmp eq ptr %i.av, @_ZN7rocksdbL21global_op_stage_tableE
  br i1 %i.bc, label %common.resume, label %bb.q

__cxx_global_var_init.13.exit:                    ; preds = %.noexc106.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !9
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ak, ptr noundef nonnull align 1 dereferenceable(44) @.str.23, i64 44, i1 false)
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 416), align 16, !tbaa !118
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 0, ptr %i.bd, align 1, !tbaa !15
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.24, ptr null, ptr nonnull @__dso_handle) #24 ; 0 uses
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.27, ptr null, ptr nonnull @__dso_handle) #24 ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, align 16, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 16), align 16, !tbaa !118
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 29), align 1, !tbaa !15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), align 8, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !117
  %i.bg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #26
          to label %.noexc27.i unwind label %bb.r ; 3 uses

.noexc27.i:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !9
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 56), align 8, !tbaa !118
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bh, align 1, !tbaa !15
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), align 16, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !117
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %__cxx_global_var_init.28.exit unwind label %bb.s ; 3 uses

bb.r:                                             ; preds = %__cxx_global_var_init.13.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc27.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.413.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), %bb.r ]
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bj, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, %bb.t
  %i.bl = phi ptr [ %.413.i, %bb.t ], [ %i.bm, %_ZN7rocksdb17OperationPropertyD2Ev.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -40 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9  ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #23
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i

_ZN7rocksdb17OperationPropertyD2Ev.exit.i:        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bt = icmp eq ptr %i.bm, @_ZN7rocksdbL31compaction_operation_propertiesE
  br i1 %i.bt, label %common.resume, label %bb.u

__cxx_global_var_init.28.exit:                    ; preds = %.noexc27.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !9
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bi, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 96), align 16, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !15
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 120), align 8, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.32, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 136), align 8, !tbaa !118
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 159), align 1, !tbaa !15
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 160), align 16, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 176), align 16, !tbaa !118
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 193), align 1, !tbaa !15
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 200), align 8, !tbaa !273
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 216), align 8, !tbaa !118
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 236), align 4, !tbaa !15
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.35, ptr null, ptr nonnull @__dso_handle) #24 ; 0 uses
  %i.bw = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.38, ptr null, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0}
!20 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!21 = !{!13, !13, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !29, i64 0, !14, i64 8, !31, i64 16, !14, i64 24, !33, i64 32, !32, i64 48}
!29 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !30, i64 0}
!30 = !{!"any p2 pointer", !13, i64 0}
!31 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !32, i64 0}
!32 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!33 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !34, i64 0, !14, i64 8}
!34 = !{!"float", !7, i64 0}
!35 = !{!28, !14, i64 8}
!36 = !{!33, !34, i64 0}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0, !19, i64 8}
!39 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !13, i64 0}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0, !19, i64 8}
!42 = !{!"p1 _ZTSN7rocksdb10FileSystemE", !13, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !19, i64 8}
!45 = !{!"p1 _ZTSN7rocksdb6LoggerE", !13, i64 0}
!46 = !{!47, !24, i64 728}
!47 = !{!"_ZTSN7rocksdb18SstFileManagerImplE", !48, i64 0, !49, i64 8, !50, i64 24, !51, i64 40, !52, i64 56, !14, i64 96, !14, i64 104, !14, i64 112, !53, i64 120, !14, i64 176, !54, i64 184, !84, i64 672, !24, i64 728, !86, i64 736, !10, i64 744, !99, i64 776, !14, i64 792, !14, i64 800, !109, i64 808, !115, i64 832}
!48 = !{!"_ZTSN7rocksdb14SstFileManagerE"}
!49 = !{!"_ZTSSt10shared_ptrIN7rocksdb11SystemClockEE", !38, i64 0}
!50 = !{!"_ZTSSt10shared_ptrIN7rocksdb10FileSystemEE", !41, i64 0}
!51 = !{!"_ZTSSt10shared_ptrIN7rocksdb6LoggerEE", !44, i64 0}
!52 = !{!"_ZTSN7rocksdb4port5MutexE", !7, i64 0}
!53 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_mEEE", !28, i64 0}
!54 = !{!"_ZTSN7rocksdb15DeleteSchedulerE", !39, i64 0, !42, i64 8, !55, i64 16, !57, i64 24, !59, i64 32, !61, i64 96, !6, i64 176, !6, i64 180, !69, i64 184, !14, i64 232, !78, i64 240, !24, i64 288, !24, i64 289, !83, i64 296, !86, i64 376, !59, i64 384, !45, i64 448, !93, i64 456, !94, i64 464, !97, i64 472}
!55 = !{!"_ZTSSt6atomicImE", !56, i64 0}
!56 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!57 = !{!"_ZTSSt6atomicIlE", !58, i64 0}
!58 = !{!"_ZTSSt13__atomic_baseIlE", !14, i64 0}
!59 = !{!"_ZTSN7rocksdb17InstrumentedMutexE", !52, i64 0, !60, i64 40, !39, i64 48, !6, i64 56}
!60 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !13, i64 0}
!61 = !{!"_ZTSSt5queueIN7rocksdb15DeleteScheduler10FileAndDirESt5dequeIS2_SaIS2_EEE", !62, i64 0}
!62 = !{!"_ZTSSt5dequeIN7rocksdb15DeleteScheduler10FileAndDirESaIS2_EE", !63, i64 0}
!63 = !{!"_ZTSSt11_Deque_baseIN7rocksdb15DeleteScheduler10FileAndDirESaIS2_EE", !64, i64 0}
!64 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb15DeleteScheduler10FileAndDirESaIS2_EE11_Deque_implE", !65, i64 0}
!65 = !{!"_ZTSNSt11_Deque_baseIN7rocksdb15DeleteScheduler10FileAndDirESaIS2_EE16_Deque_impl_dataE", !66, i64 0, !14, i64 8, !67, i64 16, !67, i64 48}
!66 = !{!"p2 _ZTSN7rocksdb15DeleteScheduler10FileAndDirE", !30, i64 0}
!67 = !{!"_ZTSSt15_Deque_iteratorIN7rocksdb15DeleteScheduler10FileAndDirERS2_PS2_E", !68, i64 0, !68, i64 8, !68, i64 16, !66, i64 24}
!68 = !{!"p1 _ZTSN7rocksdb15DeleteScheduler10FileAndDirE", !13, i64 0}
!69 = !{!"_ZTSSt3mapIiiSt4lessIiESaISt4pairIKiiEEE", !70, i64 0}
!70 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE", !71, i64 0}
!71 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !72, i64 0, !74, i64 8}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !73, i64 0}
!73 = !{!"_ZTSSt4lessIiE"}
!74 = !{!"_ZTSSt15_Rb_tree_header", !75, i64 0, !14, i64 32}
!75 = !{!"_ZTSSt18_Rb_tree_node_base", !76, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!76 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!77 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!78 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb6StatusESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !79, i64 0}
!79 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !80, i64 0}
!80 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb6StatusEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !81, i64 0, !74, i64 8}
!81 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !82, i64 0}
!82 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!83 = !{!"_ZTSN7rocksdb19InstrumentedCondVarE", !84, i64 0, !60, i64 56, !39, i64 64, !6, i64 72}
!84 = !{!"_ZTSN7rocksdb4port7CondVarE", !7, i64 0, !85, i64 48}
!85 = !{!"p1 _ZTSN7rocksdb4port5MutexE", !13, i64 0}
!86 = !{!"_ZTSSt10unique_ptrISt6threadSt14default_deleteIS0_EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataISt6threadSt14default_deleteIS0_ELb1ELb1EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implISt6threadSt14default_deleteIS0_EE", !89, i64 0}
!89 = !{!"_ZTSSt5tupleIJPSt6threadSt14default_deleteIS0_EEE", !90, i64 0}
!90 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6threadSt14default_deleteIS0_EEE", !91, i64 0}
!91 = !{!"_ZTSSt10_Head_baseILm0EPSt6threadLb0EE", !92, i64 0}
!92 = !{!"p1 _ZTSSt6thread", !13, i64 0}
!93 = !{!"p1 _ZTSN7rocksdb18SstFileManagerImplE", !13, i64 0}
!94 = !{!"_ZTSSt6atomicIdE", !95, i64 0}
!95 = !{!"_ZTSSt14__atomic_floatIdE", !96, i64 0}
!96 = !{!"double", !7, i64 0}
!97 = !{!"_ZTSSt10shared_ptrIN7rocksdb10StatisticsEE", !98, i64 0}
!98 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10StatisticsELN9__gnu_cxx12_Lock_policyE2EE", !60, i64 0, !19, i64 8}
!99 = !{!"_ZTSN7rocksdb6StatusE", !100, i64 0, !101, i64 1, !102, i64 2, !24, i64 3, !24, i64 4, !7, i64 5, !103, i64 8}
!100 = !{!"_ZTSN7rocksdb6Status4CodeE", !7, i64 0}
!101 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !7, i64 0}
!102 = !{!"_ZTSN7rocksdb6Status8SeverityE", !7, i64 0}
!103 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !104, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !105, i64 0}
!105 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !106, i64 0}
!106 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !107, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !108, i64 0}
!108 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !12, i64 0}
!109 = !{!"_ZTSNSt7__cxx114listIPN7rocksdb12ErrorHandlerESaIS3_EEE", !110, i64 0}
!110 = !{!"_ZTSNSt7__cxx1110_List_baseIPN7rocksdb12ErrorHandlerESaIS3_EEE", !111, i64 0}
!111 = !{!"_ZTSNSt7__cxx1110_List_baseIPN7rocksdb12ErrorHandlerESaIS3_EE10_List_implE", !112, i64 0}
!112 = !{!"_ZTSNSt8__detail17_List_node_headerE", !113, i64 0, !14, i64 16}
!113 = !{!"_ZTSNSt8__detail15_List_node_baseE", !114, i64 0, !114, i64 8}
!114 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !13, i64 0}
!115 = !{!"p1 _ZTSN7rocksdb12ErrorHandlerE", !13, i64 0}
!116 = !{!91, !92, i64 0}
!117 = !{!11, !12, i64 0}
!118 = !{!10, !14, i64 8}
!119 = !{!113, !114, i64 8}
!120 = !{!113, !114, i64 0}
!121 = !{!28, !32, i64 16}
!122 = !{!31, !32, i64 0}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !{!126, !6, i64 8}
!126 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!127 = !{!126, !6, i64 12}
!128 = distinct !{null, null}
!129 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!130 = distinct !{!130, !124}
!131 = !{!12, !12, i64 0}
!132 = !{!92, !92, i64 0}
!133 = !{!14, !14, i64 0}
!134 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!135 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!136 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb11SystemClockELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!137 = !{!138, !140, i64 8}
!138 = !{!"_ZTSN7rocksdb9IOOptionsE", !139, i64 0, !140, i64 8, !141, i64 12, !142, i64 16, !143, i64 24, !24, i64 80, !24, i64 81, !24, i64 82, !145, i64 83}
!139 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !14, i64 0}
!140 = !{!"_ZTSN7rocksdb10IOPriorityE", !7, i64 0}
!141 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !7, i64 0}
!142 = !{!"_ZTSN7rocksdb6IOTypeE", !7, i64 0}
!143 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEE", !144, i64 0}
!144 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !29, i64 0, !14, i64 8, !31, i64 16, !14, i64 24, !33, i64 32, !32, i64 48}
!145 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !7, i64 0}
!146 = !{!138, !141, i64 12}
!147 = !{!138, !142, i64 16}
!148 = !{!144, !29, i64 0}
!149 = !{!144, !14, i64 8}
!150 = !{!138, !145, i64 83}
!151 = !{!108, !12, i64 0}
!152 = !{!100, !100, i64 0}
!153 = !{!99, !24, i64 4}
!154 = !{!99, !7, i64 5}
!155 = !{!144, !32, i64 16}
!156 = distinct !{!156, !124}
!157 = !{!158, !14, i64 32}
!158 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !10, i64 0, !14, i64 32}
!159 = !{!47, !14, i64 96}
!160 = !{!161}
end_hunk_1
