Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/string?download=true
inline.NumInlined: 1430
inline.NumDeleted: 480
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z15writeFlagStringB5cxx11jPK8FlagDescj:bb.a
  %i.j = and i32 %i.h, %1
  %.not19 = icmp eq i32 %i.j, 0
  %.pre37 = load i64, ptr %i.b, align 8, !tbaa !59 ; 2 uses
  br i1 %.not19, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %.pre37, -2
  %i.l = icmp eq i64 %i.k, 4611686018427387902
  br i1 %i.l, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !76
  %.pre36 = load i64, ptr %i.b, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.b
  %i.n = phi i64 [ %.pre36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %.pre37, %bb.b ]
  %i.o = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #2 ; 2 uses
  %i.q = sub i64 4611686018427387903, %i.n
  %i.r = icmp ult i64 %i.q, %i.p
  br i1 %i.r, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.t = load i64, ptr %i.b, align 8, !tbaa !59
  %i.u = and i64 %i.t, -2
  %i.v = icmp eq i64 %i.u, 4611686018427387902
  br i1 %i.v, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.185) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %._crit_edge
  %i.z = add i64 %.pre38, -2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.invoke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !73
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z9mystrlcpyPcPKcm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %2) ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  store i8 0, ptr %i.e, align 1, !tbaa !73
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_Z9read_seedPKc(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store ptr null, ptr %i.a, align 8, !tbaa !29
  %i.b = load i8, ptr %0, align 1, !tbaa !73
  %i.c = icmp eq i8 %i.b, 48
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !73
  %i.f = icmp eq i8 %i.e, 120
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ 10, %bb.c ], [ 16, %bb.b ]
  %i.g = call i64 @__isoc23_strtoull(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.sink) #2
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.i = load i8, ptr %i.h, align 1, !tbaa !73
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %i.k = call noundef i64 @_Z17murmur_hash_64_uaPKvmj(ptr noundef nonnull %0, i64 noundef %i.j, i32 noundef 4919)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.k, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  ret i64 %.1
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare noundef i64 @_Z17murmur_hash_64_uaPKvmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !87 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !73
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 56) #34
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !89
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !89
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i1 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string.0", align 8 ; 14 uses
  %i.e = alloca [4 x i8], align 1                 ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !73
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.i, align 8, !tbaa !59 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i8 0, ptr %i.e, align 1, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store i8 0, ptr %i.j, align 1, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  store i8 %3, ptr %i.l, align 1, !tbaa !73
  switch i64 %.val10, label %bb.c [
    i64 9, label %.lr.ph.split.us.i.preheader
    i64 7, label %.lr.ph.split.us.i.preheader
  ]

.lr.ph.split.us.i.preheader:                      ; preds = %bb.b, %bb.b
  br label %.lr.ph.split.us.i

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %.val10, -2
  %or.cond5.i = icmp eq i64 %i.m, 4
  br i1 %or.cond5.i, label %.lr.ph.split.preheader.i, label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

.lr.ph.split.preheader.i:                         ; preds = %bb.c
  %i.n = add nsw i64 %.val10, -2
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.m
  %.017.us.i = phi i64 [ %i.ag, %bb.m ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.03216.us.i = phi i64 [ %i.af, %bb.m ], [ 1, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %.03216.us.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !73    ; 5 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i46.us.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i46.us.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.i
  %i.r = add i8 %i.p, -65
  %or.cond5.i47.us.i = icmp ult i8 %i.r, 6
  br i1 %or.cond5.i47.us.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i8 %i.p, -97
  %or.cond8.i48.us.i = icmp ult i8 %i.s, 6
  br i1 %or.cond8.i48.us.i, label %bb.f, label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i8 %i.p, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = add nsw i8 %i.p, -55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph.split.us.i
  %.04.ph.us.i = phi i8 [ %i.q, %.lr.ph.split.us.i ], [ %i.t, %bb.f ], [ %i.u, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !73    ; 5 uses
  %i.x = add i8 %i.w, -48                         ; 2 uses
  %or.cond.i53.us.i = icmp ult i8 %i.x, 10
  br i1 %or.cond.i53.us.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i8 %i.w, -65
  %or.cond5.i54.us.i = icmp ult i8 %i.y, 6
  br i1 %or.cond5.i54.us.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add i8 %i.w, -97
  %or.cond8.i55.us.i = icmp ult i8 %i.z, 6
  br i1 %or.cond8.i55.us.i, label %bb.k, label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i8 %i.w, -87
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ab = add nsw i8 %i.w, -55
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %.03.ph.us.i = phi i8 [ %i.x, %bb.h ], [ %i.aa, %bb.k ], [ %i.ab, %bb.l ]
  %i.ac = shl nuw i8 %.04.ph.us.i, 4
  %i.ad = add nuw nsw i8 %.03.ph.us.i, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %.017.us.i
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !73
  %i.af = add i64 %.03216.us.i, 2                 ; 2 uses
  %i.ag = add nuw nsw i64 %.017.us.i, 1
  %.not.us.i = icmp ult i64 %i.af, %.val10
  br i1 %.not.us.i, label %.lr.ph.split.us.i, label %.critedge45.i, !llvm.loop !120

.lr.ph.split.i:                                   ; preds = %bb.r, %.lr.ph.split.preheader.i
  %.017.i = phi i64 [ %i.ar, %bb.r ], [ 0, %.lr.ph.split.preheader.i ] ; 3 uses
  %.03216.i = phi i64 [ %i.aq, %bb.r ], [ 1, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %.03216.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !73  ; 5 uses
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.aj, 10
  br i1 %or.cond.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.ak = add i8 %i.ai, -65
  %or.cond5.i.i = icmp ult i8 %i.ak, 6
  br i1 %or.cond5.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i8 %i.ai, -55
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.am = add i8 %i.ai, -97
  %or.cond8.i.i = icmp ult i8 %i.am, 6
  br i1 %or.cond8.i.i, label %bb.q, label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

bb.q:                                             ; preds = %bb.p
  %i.an = add nsw i8 %i.ai, -87
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %.lr.ph.split.i
  %.05.ph.i = phi i8 [ %i.aj, %.lr.ph.split.i ], [ %i.an, %bb.q ], [ %i.al, %bb.o ]
  %i.ao = mul nuw i8 %.05.ph.i, 17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %.017.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !73
  %i.aq = add nuw i64 %.03216.i, 1
  %i.ar = add nuw nsw i64 %.017.i, 1
  %exitcond.not.i = icmp eq i64 %.017.i, %i.n
  br i1 %exitcond.not.i, label %.critedge45.i, label %.lr.ph.split.i, !llvm.loop !120

.critedge45.i:                                    ; preds = %bb.m, %bb.r
  %9 = load i8, ptr %i.e, align 1, !tbaa !73
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %9, ptr %10, align 2, !tbaa !131
  %11 = load i8, ptr %i.j, align 1, !tbaa !73
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %11, ptr %12, align 1, !tbaa !131
  %13 = load i8, ptr %i.k, align 1, !tbaa !73
  store i8 %13, ptr %1, align 4, !tbaa !131
  %14 = load i8, ptr %i.l, align 1, !tbaa !73
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = load i32, ptr %1, align 4, !tbaa !131
  %18 = and i32 %17, 16777215
  %19 = or disjoint i32 %18, %16
  store i32 %19, ptr %1, align 4, !tbaa !131
  br label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit: ; preds = %bb.e, %bb.j, %bb.p, %bb.c, %.critedge45.i
  %.5.i = phi i1 [ true, %.critedge45.i ], [ false, %bb.c ], [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  br label %bb.br

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i64 0, ptr %i.at, align 8, !tbaa !59
  store i8 0, ptr %i.as, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.au, ptr %5, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.av, align 8, !tbaa !59
  store i8 0, ptr %i.au, align 8, !tbaa !73
  %i.aw = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 35, i64 noundef 0) #2 ; 4 uses
  %.not.i = icmp eq i64 %i.aw, -1
  br i1 %.not.i, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !59, !noalias !132
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.az, ptr %6, align 8, !tbaa !74, !alias.scope !132
  %i.ba = load ptr, ptr %0, align 8, !tbaa !58, !noalias !132 ; 2 uses
  %spec.select.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ay) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2, !noalias !132
  store i64 %spec.select.i.i.i.i, ptr %i.d, align 8, !tbaa !19, !noalias !132
  %i.bb = icmp ugt i64 %spec.select.i.i.i.i, 15
  br i1 %i.bb, label %.noexc10.i.i.i, label %._crit_edge.i.i.i.i

.noexc10.i.i.i:                                   ; preds = %bb.t
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.al  ; 2 uses

.noexc.i:                                         ; preds = %.noexc10.i.i.i
  store ptr %i.bc, ptr %6, align 8, !tbaa !58, !alias.scope !132
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !132
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !73, !alias.scope !132
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i, %bb.t
  %i.be = phi ptr [ %i.bc, %.noexc.i ], [ %i.az, %bb.t ] ; 2 uses
  switch i64 %spec.select.i.i.i.i, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = load i8, ptr %i.ba, align 1, !tbaa !73
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !73
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ba, i64 %spec.select.i.i.i.i, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !132 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !59, !alias.scope !132
  %i.bi = load ptr, ptr %6, align 8, !tbaa !58, !alias.scope !132
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2, !noalias !132
  %i.bk = load ptr, ptr %4, align 8, !tbaa !58    ; 6 uses
  %i.bl = icmp eq ptr %i.bk, %i.as
  %i.bm = load ptr, ptr %6, align 8, !tbaa !58    ; 5 uses
  %i.bn = icmp eq ptr %i.bm, %i.az                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  br i1 %i.bn, label %bb.x, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.w
  br i1 %i.bn, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !59 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  switch i64 %i.bo, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !73
  store i8 %i.bq, ptr %i.bk, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  store i64 %i.br, ptr %i.at, align 8, !tbaa !59
  %i.bs = load ptr, ptr %4, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !73
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !58
  %i.bu = load <2 x i64>, ptr %i.bh, align 8, !tbaa !73
  store <2 x i64> %i.bu, ptr %i.at, align 8, !tbaa !73
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bv = load i64, ptr %i.as, align 8, !tbaa !73
  store ptr %i.bm, ptr %4, align 8, !tbaa !58
  %i.bw = load <2 x i64>, ptr %i.bh, align 8, !tbaa !73
  store <2 x i64> %i.bw, ptr %i.at, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bk, ptr %6, align 8, !tbaa !58
  store i64 %i.bv, ptr %i.az, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.az, ptr %6, align 8, !tbaa !58
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ab, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bx = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bk, %bb.aa ], [ %i.az, %bb.ab ]
  store i64 0, ptr %i.bh, align 8, !tbaa !59
  store i8 0, ptr %i.bx, align 1, !tbaa !73
  %i.by = load ptr, ptr %6, align 8, !tbaa !58    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.az
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ca = load i64, ptr %i.az, align 8, !tbaa !73
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.cc = add nuw i64 %i.aw, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.cd = load i64, ptr %i.ax, align 8, !tbaa !59, !noalias !133 ; 3 uses
  %.not101.i = icmp ult i64 %i.aw, %i.cd
  br i1 %.not101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.169, i64 noundef %i.cc, i64 noundef %i.cd) #33
          to label %.noexc31.i unwind label %bb.am

.noexc31.i:                                       ; preds = %bb.ac
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.ce, ptr %7, align 8, !tbaa !74, !alias.scope !133
  %i.cf = load ptr, ptr %0, align 8, !tbaa !58, !noalias !133
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cc ; 2 uses
  %i.ch = sub nuw i64 %i.cd, %i.cc                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2, !noalias !133
  store i64 %i.ch, ptr %i.c, align 8, !tbaa !19, !noalias !133
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc10.i.i30.i, label %._crit_edge.i.i.i29.i

.noexc10.i.i30.i:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc32.i unwind label %bb.am ; 2 uses

.noexc32.i:                                       ; preds = %.noexc10.i.i30.i
  store ptr %i.cj, ptr %7, align 8, !tbaa !58, !alias.scope !133
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !19, !noalias !133
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !73, !alias.scope !133
  br label %._crit_edge.i.i.i29.i

._crit_edge.i.i.i29.i:                            ; preds = %.noexc32.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.cl = phi ptr [ %i.cj, %.noexc32.i ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i ] ; 2 uses
  switch i64 %i.ch, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i29.i
  %i.cm = load i8, ptr %i.cg, align 1, !tbaa !73
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !73
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i29.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %i.cg, i64 %i.ch, i1 false)
  br label %bb.af
end_hunk_0
