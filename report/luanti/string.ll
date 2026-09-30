Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/string?download=true
inline.NumInlined: 1430
inline.NumDeleted: 480
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z15writeFlagStringB5cxx11jPK8FlagDescj:bb.a

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge, %bb.b
  %i.n = phi i64 [ %.pre35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %.pre36, %bb.b ]
  %i.o = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit_crit_edge ], [ %i.e, %bb.b ] ; 2 uses
  %i.p = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #2 ; 2 uses
  %i.q = sub i64 4611686018427387903, %i.n
  %i.r = icmp ult i64 %i.q, %i.p
  br i1 %i.r, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.o, i64 noundef %i.p)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.t = load i64, ptr %i.b, align 8, !tbaa !59
  %i.u = and i64 %i.t, -2
  %i.v = icmp eq i64 %i.u, 4611686018427387902
  br i1 %i.v, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %._crit_edge
  %i.z = add i64 %.pre37, -2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %._crit_edge
  ret void

bb.e:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !58    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !73
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
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
define dso_local noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, i1 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
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
  %i.e = alloca [4 x i8], align 4                 ; 9 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !73
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.i, align 8, !tbaa !59 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i8 0, ptr %i.e, align 4, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i8 0, ptr %i.k, align 2, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 3
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
  %9 = load <4 x i8>, ptr %i.e, align 4, !tbaa !73
  %10 = shufflevector <4 x i8> %9, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x i8> %10, ptr %1, align 4, !tbaa !131
  br label %_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit

_ZL19parseHexColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEh.exit: ; preds = %bb.e, %bb.j, %bb.p, %bb.c, %.critedge45.i
  %.5.i = phi i1 [ true, %.critedge45.i ], [ false, %bb.c ], [ false, %bb.p ], [ false, %bb.j ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  br label %bb.bs

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
begin_hunk_1_@_GLOBAL__sub_I_string.cpp:bb.a
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 5622
  store i8 0, ptr %i.aam, align 2, !tbaa !73
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 5632
  store i32 16737095, ptr %i.aan, align 8, !tbaa !91
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 5640
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 5656 ; 2 uses
  store ptr %i.aap, ptr %i.aao, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aap, ptr noundef nonnull align 1 dereferenceable(9) @.str.152, i64 9, i1 false)
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 5648
  store i64 9, ptr %i.aaq, align 8, !tbaa !59
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 5665
  store i8 0, ptr %i.aar, align 1, !tbaa !73
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 5672
  store i32 4251856, ptr %i.aas, align 8, !tbaa !91
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 5680
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 5696 ; 2 uses
  store ptr %i.aau, ptr %i.aat, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aau, ptr noundef nonnull align 1 dereferenceable(6) @.str.153, i64 6, i1 false)
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 5688
  store i64 6, ptr %i.aav, align 8, !tbaa !59
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 5702
  store i8 0, ptr %i.aaw, align 2, !tbaa !73
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 5712
  store i32 15631086, ptr %i.aax, align 8, !tbaa !91
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 5736 ; 2 uses
  store ptr %i.aaz, ptr %i.aay, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aaz, ptr noundef nonnull align 1 dereferenceable(5) @.str.154, i64 5, i1 false)
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 5728
  store i64 5, ptr %i.aba, align 8, !tbaa !59
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 5741
  store i8 0, ptr %i.abb, align 1, !tbaa !73
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 5752
  store i32 16113331, ptr %i.abc, align 8, !tbaa !91
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 5760
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 5776 ; 2 uses
  store ptr %i.abe, ptr %i.abd, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.abe, ptr noundef nonnull align 1 dereferenceable(5) @.str.155, i64 5, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 5768
  store i64 5, ptr %i.abf, align 8, !tbaa !59
  %i.abg = getelementptr inbounds nuw i8, ptr %0, i64 5781
  store i8 0, ptr %i.abg, align 1, !tbaa !73
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 5792
  store i32 16777215, ptr %i.abh, align 8, !tbaa !91
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 5800
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 5816 ; 2 uses
  store ptr %i.abj, ptr %i.abi, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.abj, ptr noundef nonnull align 1 dereferenceable(10) @.str.156, i64 10, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 5808
  store i64 10, ptr %i.abk, align 8, !tbaa !59
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 5826
  store i8 0, ptr %i.abl, align 2, !tbaa !73
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 5832
  store i32 16119285, ptr %i.abm, align 8, !tbaa !91
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 5840
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 5856 ; 2 uses
  store ptr %i.abo, ptr %i.abn, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.abo, ptr noundef nonnull align 1 dereferenceable(6) @.str.157, i64 6, i1 false)
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 5848
  store i64 6, ptr %i.abp, align 8, !tbaa !59
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 5862
  store i8 0, ptr %i.abq, align 2, !tbaa !73
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 5872
  store i32 16776960, ptr %i.abr, align 8, !tbaa !91
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 5896 ; 2 uses
  store ptr %i.abt, ptr %i.abs, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.abt, ptr noundef nonnull align 1 dereferenceable(11) @.str.158, i64 11, i1 false)
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 5888
  store i64 11, ptr %i.abu, align 8, !tbaa !59
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 5907
  store i8 0, ptr %i.abv, align 1, !tbaa !73
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 5912
  store i32 10145074, ptr %i.abw, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.abx = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 3 uses
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) @_ZL14s_named_colorsB5cxx11, ptr noundef nonnull %0, ptr noundef nonnull %i.abx, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit.i unwind label %bb.f

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit.i: ; preds = %.noexc995.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit.i
  %i.aby = phi ptr [ %i.abx, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit.i ], [ %i.abz, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i ] ; 2 uses
  %i.abz = getelementptr inbounds i8, ptr %i.aby, i64 -40 ; 3 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !58 ; 2 uses
  %i.acb = getelementptr inbounds i8, ptr %i.aby, i64 -24 ; 2 uses
  %i.acc = icmp eq ptr %i.aca, %i.acb
  br i1 %i.acc, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.acd = load i64, ptr %i.acb, align 8, !tbaa !73
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.aca, i64 noundef %i.ace) #34
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.acf = icmp eq ptr %i.abz, %0
  br i1 %i.acf, label %__cxx_global_var_init.exit, label %bb.b

bb.c:                                             ; preds = %bb.a
  %i.acg = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.d:                                             ; preds = %.noexc906.i
  %i.ach = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.e:                                             ; preds = %.noexc973.i
  %i.aci = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i

bb.f:                                             ; preds = %.noexc995.i
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i, %bb.f
  %i.ack = phi ptr [ %i.abx, %bb.f ], [ %i.acl, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i ] ; 2 uses
  %i.acl = getelementptr inbounds i8, ptr %i.ack, i64 -40 ; 3 uses
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !58 ; 2 uses
  %i.acn = getelementptr inbounds i8, ptr %i.ack, i64 -24 ; 2 uses
  %i.aco = icmp eq ptr %i.acm, %i.acn
  br i1 %i.aco, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1212.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1212.i: ; preds = %bb.g
  %i.acp = load i64, ptr %i.acn, align 8, !tbaa !73
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acq) #34
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1212.i
  %i.acr = icmp eq ptr %i.acl, %0
  br i1 %i.acr, label %.thread.i, label %bb.g

.preheader.preheader.i:                           ; preds = %bb.e, %bb.d, %bb.c
  %.146489.i = phi ptr [ %i.rf, %bb.e ], [ %i.mo, %bb.c ], [ %i.py, %bb.d ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aci, %bb.e ], [ %i.acg, %bb.c ], [ %i.ach, %bb.d ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i, %.preheader.preheader.i
  %i.acs = phi ptr [ %i.act, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i ], [ %.146489.i, %.preheader.preheader.i ] ; 2 uses
  %i.act = getelementptr inbounds i8, ptr %i.acs, i64 -40 ; 3 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !58 ; 2 uses
  %i.acv = getelementptr inbounds i8, ptr %i.acs, i64 -24 ; 2 uses
  %i.acw = icmp eq ptr %i.acu, %i.acv
  br i1 %i.acw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215.i: ; preds = %.preheader.i
  %i.acx = load i64, ptr %i.acv, align 8, !tbaa !73
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acu, i64 noundef %i.acy) #34
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i: ; preds = %.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1215.i
  %i.acz = icmp eq ptr %i.act, %0
  br i1 %i.acz, label %.thread.i, label %.preheader.i

.thread.i:                                        ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1369.i = phi { ptr, i32 } [ %i.acj, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1214.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit1217.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #2
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn1369.i

__cxx_global_var_init.exit:                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #2
  %i.ada = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEED2Ev, ptr nonnull @_ZL14s_named_colorsB5cxx11, ptr nonnull @__dso_handle) #2 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH10infostream() #4

declare extern_weak void @_ZTH11errorstream() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

attributes #0 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree noreturn }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn }
attributes #34 = { builtin nounwind }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !30}
!1 = distinct !{null, null}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"branch_weights", i32 1023, i32 1}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"_ZTSN12_GLOBAL__N_117IconvSmartPointerE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 wchar_t", !15, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !21, i64 0, !18, i64 8, !10, i64 16}
!24 = !{!23, !18, i64 8}
!25 = !{!"wchar_t", !10, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!23, !20, i64 0}
!28 = !{!"p1 omnipotent char", !15, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"p1 _ZTS9LogTarget", !15, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!33 = !{!"_ZTSSt6locale", !32, i64 0}
!34 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !33, i64 56}
!35 = !{!"_ZTSSt14_Function_base", !10, i64 0, !15, i64 16}
!36 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !35, i64 0, !15, i64 24}
!37 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !34, i64 0, !36, i64 64, !11, i64 96, !10, i64 100}
!38 = !{!"_ZTS17DummyStreamBuffer", !34, i64 0}
!39 = !{!"_ZTSSo"}
!40 = !{!"p1 _ZTSSo", !15, i64 0}
!41 = !{!"_ZTS11StreamProxy", !40, i64 0}
!42 = !{!"_ZTS9LogStream", !31, i64 0, !37, i64 8, !38, i64 368, !39, i64 432, !39, i64 704, !41, i64 976, !41, i64 984}
!43 = !{!42, !31, i64 0}
!44 = !{}
!45 = !{i64 8}
!46 = !{!"vtable pointer", !9, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!41, !40, i64 0}
!49 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!50 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!51 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!52 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !18, i64 8}
!53 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!54 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !49, i64 24, !50, i64 28, !50, i64 32, !51, i64 40, !52, i64 48, !10, i64 64, !11, i64 192, !53, i64 200, !33, i64 208}
!55 = !{!54, !50, i64 32}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !56, i64 0, !18, i64 8, !10, i64 16}
!58 = !{!57, !28, i64 0}
!59 = !{!57, !18, i64 8}
!60 = !{!"bool", !10, i64 0}
!61 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!62 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!63 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!64 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!65 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !54, i64 0, !40, i64 216, !10, i64 224, !60, i64 225, !61, i64 232, !62, i64 240, !63, i64 248, !64, i64 256}
!66 = !{!65, !62, i64 240}
!67 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!68 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!69 = !{!"p1 int", !15, i64 0}
!70 = !{!"p1 short", !15, i64 0}
!71 = !{!"_ZTSSt5ctypeIcE", !67, i64 0, !68, i64 16, !60, i64 24, !69, i64 32, !69, i64 40, !70, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!72 = !{!71, !10, i64 56}
!73 = !{!10, !10, i64 0}
!74 = !{!56, !28, i64 0}
!75 = !{!"_ZTS8FlagDesc", !28, i64 0, !11, i64 8}
!76 = !{!75, !28, i64 0}
!77 = !{!75, !11, i64 8}
!78 = !{!11, !11, i64 0}
!79 = !{!"any p2 pointer", !15, i64 0}
!80 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !79, i64 0}
!81 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!82 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !81, i64 0}
!83 = !{!"float", !10, i64 0}
!84 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !83, i64 0, !18, i64 8}
!85 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !80, i64 0, !18, i64 8, !82, i64 16, !18, i64 24, !84, i64 32, !81, i64 48}
!86 = !{!85, !81, i64 16}
!87 = !{!82, !81, i64 0}
!88 = !{!85, !80, i64 0}
!89 = !{!85, !18, i64 8}
!90 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjE", !57, i64 0, !11, i64 32}
!91 = !{!90, !11, i64 32}
!92 = !{!"llvm.loop.isvectorized", i32 1}
!93 = !{!"llvm.loop.unroll.runtime.disable"}
!94 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !15, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEESaIS5_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!96 = !{!95, !94, i64 0}
!97 = !{!95, !94, i64 8}
!98 = !{!20, !20, i64 0}
!99 = !{!95, !94, i64 16}
!100 = !{!85, !18, i64 24}
!101 = !{!81, !81, i64 0}
!102 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !18, i64 0}
!103 = !{!102, !18, i64 0}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = !{!85, !81, i64 48}
!106 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEEEEE", !15, i64 0}
!107 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjELb1EEE", !15, i64 0}
!108 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !106, i64 0, !107, i64 8}
!109 = !{!108, !107, i64 8}
!110 = distinct !{null}
!111 = distinct !{null}
!112 = distinct !{!112, !"_ZL10hex_encodeB5cxx11PKcm"}
!113 = distinct !{!113, !112, !"_ZL10hex_encodeB5cxx11PKcm: argument 0"}
!114 = !{!113}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!122 = distinct !{!122, !121, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!123 = distinct !{!123, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!124 = distinct !{!124, !123, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!125 = distinct !{!125, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE"}
!126 = distinct !{!126, !125, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!127 = distinct !{!127, !30}
!128 = distinct !{null}
!129 = distinct !{null, null, null, null, null}
!130 = !{!"_ZTSN5video6SColorE", !11, i64 0}
!131 = !{!130, !11, i64 0}
!132 = !{!122}
!133 = !{!124}
!134 = !{!126}
!135 = distinct !{!135, !30, !92, !93}
!136 = distinct !{!136, !30, !92, !93}
!137 = distinct !{!137, !30, !93, !92}
!138 = !{!"branch_weights", i32 8, i32 24}
!139 = distinct !{!139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_"}
!140 = distinct !{!140, !139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EES5_RKS8_: argument 0"}
!141 = distinct !{!141, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!142 = distinct !{!142, !141, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!143 = distinct !{!143, !30}
!144 = !{!140}
!145 = !{!142, !140}
!146 = distinct !{!146, !30}
!147 = distinct !{!147, !30}
!148 = distinct !{null}
!149 = distinct !{!149, !30}
!150 = distinct !{!150, !30}
!151 = distinct !{null, null}
!152 = distinct !{null, null, null}
!153 = distinct !{null, null}
!154 = distinct !{!154, !30}
!155 = distinct !{null, null}
end_hunk_1
