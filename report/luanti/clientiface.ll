Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientiface?download=true
inline.NumInlined: 1283
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12RemoteClientD2Ev:bb.a
  %i.ac = load ptr, ptr %.06.i.i.i.i6, align 8, !tbaa !87 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i6, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i6, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i5
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !58
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i6, i64 noundef 48) #30
  %.not.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i7, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i5, !llvm.loop !375

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79
  %i.am = shl i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.am, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !79
  %i.ar = shl i64 %i.aq, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i.i8 = icmp eq ptr %i.au, null
  br i1 %.not5.i.i.i.i8, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i12, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, %.lr.ph.i.i.i.i9
  %.06.i.i.i.i10 = phi ptr [ %i.av, %.lr.ph.i.i.i.i9 ], [ %i.au, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit ] ; 2 uses
  %i.av = load ptr, ptr %.06.i.i.i.i10, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i10, i64 noundef 24) #30
  %.not.i.i.i.i11 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i11, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i12, label %.lr.ph.i.i.i.i9, !llvm.loop !0

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i12: ; preds = %.lr.ph.i.i.i.i9, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.az = shl i64 %i.ay, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.az, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i12
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #30
  br label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i12, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i.i14 = icmp eq ptr %i.bh, null
  br i1 %.not5.i.i.i.i14, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i18, label %.lr.ph.i.i.i.i15

.lr.ph.i.i.i.i15:                                 ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13, %.lr.ph.i.i.i.i15
  %.06.i.i.i.i16 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i15 ], [ %i.bh, %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13 ] ; 2 uses
  %i.bi = load ptr, ptr %.06.i.i.i.i16, align 8, !tbaa !87 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i16, i64 noundef 24) #30
  %.not.i.i.i.i17 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i17, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i18, label %.lr.ph.i.i.i.i15, !llvm.loop !0

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i18: ; preds = %.lr.ph.i.i.i.i15, %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit13
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !65
  %i.bm = shl i64 %i.bl, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bm, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit19, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i18
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !65
  %i.br = shl i64 %i.bq, 3
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #30
  br label %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit19

_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit19: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i18, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit19
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !58
  %i.bx = add i64 %i.bw, 1
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE8_M_eraseEPSt13_Rb_tree_nodeItE(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef %i.ca)
          to label %_ZNSt3setItSt4lessItESaItEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #31
  unreachable

_ZNSt3setItSt4lessItESaItEED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !70 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt3setItSt4lessItESaItEED2Ev.exit
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !58
  %i.ci = add i64 %i.ch, 1
  tail call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt3setItSt4lessItESaItEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ClientInterface12getClientIDsE11ClientState(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.319") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !191  ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.60) #32
          to label %.noexc12 unwind label %.thread54

.noexc12:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not50 = icmp eq i64 %i.d, 0
  br i1 %.not50, label %_ZNSt6vectorItSaItEE7reserveEm.exit, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.g = shl nuw nsw i64 %i.d, 1
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #33
          to label %.noexc13 unwind label %.thread54 ; 4 uses

.noexc13:                                         ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !192
  store ptr %i.h, ptr %i.i, align 8, !tbaa !193
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.d ; 2 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !194
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %.noexc13, %bb.c
  %.promoted25 = phi ptr [ %i.h, %.noexc13 ], [ null, %bb.c ] ; 3 uses
  %.promoted = phi ptr [ %i.j, %.noexc13 ], [ null, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.017.029 = load ptr, ptr %i.k, align 8, !tbaa !87 ; 2 uses
  %.not2230 = icmp eq ptr %.sroa.017.029, null
  br i1 %.not2230, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  store ptr %i.ao, ptr %i.l, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %_ZNSt6vectorItSaItEE7reserveEm.exit
  %.lcssa26 = phi ptr [ %i.ap, %._crit_edge ], [ %.promoted25, %_ZNSt6vectorItSaItEE7reserveEm.exit ]
  %.lcssa = phi ptr [ %i.aq, %._crit_edge ], [ %.promoted, %_ZNSt6vectorItSaItEE7reserveEm.exit ]
  store ptr %.lcssa, ptr %i.f, align 8
  store ptr %.lcssa26, ptr %0, align 8
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void

.thread54:                                        ; preds = %bb.b, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %i.p = phi ptr [ %.promoted25, %.lr.ph ], [ %i.ao, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 8 uses
  %.sroa.017.031 = phi ptr [ %.sroa.017.029, %.lr.ph ], [ %.sroa.017.0, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 2 uses
  %i.q = phi ptr [ %.promoted, %.lr.ph ], [ %i.aq, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 5 uses
  %i.r = phi ptr [ %.promoted25, %.lr.ph ], [ %i.ap, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.031, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !190  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !63
  %.not = icmp slt i32 %i.v, %2
  br i1 %.not, label %_ZNSt6vectorItSaItEE9push_backERKt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i16, ptr %i.t, align 4, !tbaa !97
  store i16 %i.w, ptr %i.p, align 2, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.q, ptr %i.f, align 8
  store ptr %i.r, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #32
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i, %i.ac  ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 4611686018427387903)
  %i.ag = select i1 %i.ae, i64 4611686018427387903, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #33
          to label %.noexc15 unwind label %.loopexit ; 4 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  %i.ak = load i16, ptr %i.t, align 4, !tbaa !97
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !97
  %i.al = icmp sgt i64 %i.aa, 0
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ai, ptr align 2 %i.r, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aa) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.l, align 8
  store ptr %i.q, ptr %i.f, align 8
  store ptr %i.r, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.f, %bb.d
  %i.ao = phi ptr [ %i.am, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.x, %bb.f ], [ %i.p, %bb.d ] ; 2 uses
  %i.ap = phi ptr [ %i.ai, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ] ; 2 uses
  %i.aq = phi ptr [ %i.an, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ], [ %i.q, %bb.f ], [ %i.q, %bb.d ] ; 2 uses
  %.sroa.017.0 = load ptr, ptr %.sroa.017.031, align 8, !tbaa !87 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.017.0, null
  br i1 %.not22, label %._crit_edge, label %bb.d

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  %.not.i.i.i16 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = ptrtoint ptr %i.p to i64
  %i.at = ptrtoint ptr %i.r to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.au) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %.thread54, %bb.k, %bb.l
  %.pn.pn53 = phi { ptr, i32 } [ %i.n, %.thread54 ], [ %.pn, %bb.k ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %.pn.pn53
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15ClientInterface17markBlocksNotSentERKSt6vectorIN4core8vector3dIsEESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.08.013 = load ptr, ptr %i.c, align 8, !tbaa !87 ; 2 uses
  %.not14 = icmp eq ptr %.sroa.08.013, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.d = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.e
  %.sroa.08.015 = phi ptr [ %.sroa.08.0, %bb.e ], [ %.sroa.08.013, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.015, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63
  %i.i = icmp sgt i32 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  invoke void @_ZN12RemoteClient16SetBlocksNotSentERKSt6vectorIN4core8vector3dIsEESaIS3_EEb(ptr noundef nonnull align 8 dereferenceable(568) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #29 ; 0 uses
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c, %.lr.ph
  %.sroa.08.0 = load ptr, ptr %.sroa.08.015, align 8, !tbaa !87 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN15ClientInterface18isUserLimitReachedEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::vector.319", align 8   ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN15ClientInterface12getClientIDsE11ClientState(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.319") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef 8)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = load ptr, ptr %1, align 8, !tbaa !192    ; 5 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = load ptr, ptr @g_settings, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.37, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 9, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.h, align 1, !tbaa !58
  %i.i = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.f, align 8, !tbaa !58
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !194
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.d
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.q) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.r = ptrtoint ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.d
  %i.t = ashr exact i64 %i.s, 1
  %i.u = zext i16 %i.i to i64
  %i.v = icmp uge i64 %i.t, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %i.v

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.z = load i64, ptr %i.f, align 8, !tbaa !58
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %.not.i.i.i7 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorItSaItEED2Ev.exit8, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !194
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.d
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit8

_ZNSt6vectorItSaItEED2Ev.exit8:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.w
}

; Function Attrs: uwtable
define dso_local void @_ZN15ClientInterface4stepEf(ptr noundef nonnull align 8 dereferenceable(152) %0, float noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.timespec, align 8           ; 4 uses
  %3 = alloca %class.Address, align 4             ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !378
  %i.h = fadd nsz float %1, %i.g                  ; 2 uses
  store float %i.h, ptr %i.f, align 8, !tbaa !378
  %i.i = fcmp nsz ult float %i.h, 3.000000e+01
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !378
  tail call void @_ZN15ClientInterface16UpdatePlayerListEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !379
  %i.l = fadd nsz float %1, %i.k                  ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !379
  %i.m = fcmp nsz olt float %i.l, 1.000000e+00
  br i1 %i.m, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !379
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #32
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.058.064 = load ptr, ptr %i.p, align 8, !tbaa !87 ; 2 uses
  %.not65 = icmp eq ptr %.sroa.058.064, null
  br i1 %.not65, label %._crit_edge, label %.lr.ph
end_hunk_0
