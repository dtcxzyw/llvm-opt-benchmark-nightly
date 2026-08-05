inline.NumInlined: 2145
inline.NumDeleted: 1190
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5folly4test21DeterministicScheduleD2Ev:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !178
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !178  ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !178
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !178
  store ptr null, ptr %i.k, align 8, !tbaa !178
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN5folly4test12_GLOBAL__N_114PerThreadStateD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFvbEEC2EOS1_.exit.i.i
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZN5folly4test12_GLOBAL__N_114PerThreadStateD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #35
  unreachable

_ZN5folly4test12_GLOBAL__N_114PerThreadStateD2Ev.exit: ; preds = %_ZNSt8functionIFvbEEC2EOS1_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4test16ThreadTimestampsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly4test12_GLOBAL__N_114PerThreadStateD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.pre to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.u) #36
  br label %_ZN5folly4test16ThreadTimestampsD2Ev.exit

_ZN5folly4test16ThreadTimestampsD2Ev.exit:        ; preds = %_ZN5folly4test12_GLOBAL__N_114PerThreadStateD2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZNSt6vectorIN5folly4test10ThreadInfoESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !147  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly4test16ThreadTimestampsD2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.y, %_ZN5folly4test16ThreadTimestampsD2Ev.exit ] ; 2 uses
  %i.z = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #36
  %.not.i.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i3, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !148

_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN5folly4test16ThreadTimestampsD2Ev.exit
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !112
  %i.ad = shl i64 %i.ac, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ad, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !112
  %i.ai = shl i64 %i.ah, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #36
  br label %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit

_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !147 ; 2 uses
  %.not5.i.i.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not5.i.i.i.i4, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i8, label %.lr.ph.i.i.i.i5

.lr.ph.i.i.i.i5:                                  ; preds = %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit, %.lr.ph.i.i.i.i5
  %.06.i.i.i.i6 = phi ptr [ %i.am, %.lr.ph.i.i.i.i5 ], [ %i.al, %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit ] ; 2 uses
  %i.am = load ptr, ptr %.06.i.i.i.i6, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i6, i64 noundef 24) #36
  %.not.i.i.i.i7 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i7, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i8, label %.lr.ph.i.i.i.i5, !llvm.loop !148

_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i8: ; preds = %.lr.ph.i.i.i.i5, %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !112
  %i.aq = shl i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.aq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !110 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i8
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !112
  %i.av = shl i64 %i.au, 3
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #36
  br label %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9

_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9: ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_PN5folly4test9SemaphoreEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i8, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149 ; 2 uses
  %.not5.i.i.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not5.i.i.i.i10, label %_ZNSt10_HashtableINSt6thread2idES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9, %.lr.ph.i.i.i.i11
  %.06.i.i.i.i12 = phi ptr [ %i.az, %.lr.ph.i.i.i.i11 ], [ %i.ay, %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9 ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i.i.i12, align 8, !tbaa !22 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i12, i64 noundef 16) #36
  %.not.i.i.i.i13 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i13, label %_ZNSt10_HashtableINSt6thread2idES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i11, !llvm.loop !150

_ZNSt10_HashtableINSt6thread2idES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i11, %_ZNSt13unordered_mapINSt6thread2idEPN5folly4test9SemaphoreESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev.exit9
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !106
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !108
  %i.bd = shl i64 %i.bc, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %i.bd, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !106 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt13unordered_setINSt6thread2idESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt6thread2idES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !108
  %i.bi = shl i64 %i.bh, 3
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #36
  br label %_ZNSt13unordered_setINSt6thread2idESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setINSt6thread2idESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt6thread2idES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !140 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPN5folly4test9SemaphoreESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt13unordered_setINSt6thread2idESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #36
  br label %_ZNSt6vectorIPN5folly4test9SemaphoreESaIS3_EED2Ev.exit

_ZNSt6vectorIPN5folly4test9SemaphoreESaIS3_EED2Ev.exit: ; preds = %_ZNSt13unordered_setINSt6thread2idESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103 ; 2 uses
  %.not.i15 = icmp eq ptr %i.br, null
  br i1 %.not.i15, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN5folly4test9SemaphoreESaIS3_EED2Ev.exit
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt6vectorIPN5folly4test9SemaphoreESaIS3_EED2Ev.exit, %bb.k
  ret void

bb.m:                                             ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #35
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4test21DeterministicSchedule7uniformEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::function.13") align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7425)
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #38, !noalias !7428 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 1, ptr %i.b, align 8, !tbaa !7431, !noalias !7425
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !7433, !noalias !7425
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !258, !noalias !7425
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = icmp eq i64 %1, 0
  %3 = urem i64 %1, 2147483563
  %4 = trunc nuw nsw i64 %3 to i32
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 1)
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.e, i32 19780503, i32 %5
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.a
  %.01320.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.w, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i, %bb.a ], [ %.0.i.i.i.1.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.f = urem i32 %.sroa.0.019.i.i.i.i.i.i.i.i.i, 53668
  %i.g = mul nuw nsw i32 %i.f, 40014              ; 2 uses
  %i.h = udiv i32 %.sroa.0.019.i.i.i.i.i.i.i.i.i, 53668
  %i.i = mul nuw nsw i32 %i.h, 12211              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.g, %i.i
  %i.j = sub nsw i32 %i.g, %i.i                   ; 2 uses
  %i.k = add i32 %i.j, 2147483563
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.k, i32 %i.j ; 3 uses
  %i.l = zext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = urem i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 53668
  %i.n = mul nuw nsw i32 %i.m, 40014              ; 2 uses
  %i.o = udiv i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 53668
  %i.p = mul nuw nsw i32 %i.o, 12211              ; 2 uses
  %.not.i.i.i.1.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.n, %i.p
  %i.q = sub nsw i32 %i.n, %i.p                   ; 2 uses
  %i.r = add i32 %i.q, 2147483563
  %.0.i.i.i.1.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.1.i.i.i.i.i.i.i.i.i, i32 %i.r, i32 %i.q ; 2 uses
  %i.s = zext i32 %.0.i.i.i.1.i.i.i.i.i.i.i.i.i to i64
  %i.t = shl nuw i64 %i.s, 32
  %.masked.i.i.i.i.i.i.i.i.i = and i64 %i.t, 281470681743360
  %i.u = or disjoint i64 %.masked.i.i.i.i.i.i.i.i.i, %i.l
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.01320.i.i.i.i.i.i.i.i.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !35, !noalias !7425
  %i.w = add nuw nsw i64 %.01320.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 12
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %bb.b, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !7434

bb.b:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35, !noalias !7425
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !7435, !noalias !7425
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !noalias !7425
  store ptr %i.a, ptr %i.x, align 8, !tbaa !7437, !alias.scope !7425
  store ptr %i.d, ptr %2, align 8, !tbaa !7440, !alias.scope !7425
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.b, align 8, !tbaa !72
  br label %_ZNSt10shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw volatile add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEC2ERKS4_.exit

_ZNSt10shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEC2ERKS4_.exit: ; preds = %bb.c, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.ag = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit" unwind label %bb.k ; 3 uses

"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit": ; preds = %_ZNSt10shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEC2ERKS4_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !7442
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !7437
  store ptr %i.ag, ptr %0, align 8, !tbaa !178
  store ptr @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule7uniformEmE3$_0E9_M_invokeERKSt9_Any_dataOm", ptr %i.ah, align 8, !tbaa !101
  store ptr @"_ZNSt17_Function_handlerIFmmEZN5folly4test21DeterministicSchedule7uniformEmE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !103
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !7437 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit"
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.al, align 8, !tbaa !7431
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !7433
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !258
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17, !call_target !7444, !inline_history !7501
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !258
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17, !call_target !7472, !inline_history !7501
  br label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i4 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.j, label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17
  br label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev.exit", %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEC2ERKS4_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev"(ptr nonnull %i.a) #17
  call void @_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.ba
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5folly4test21DeterministicSchedule7uniformEmEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !7431
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !7433
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !258
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17, !call_target !7444, !inline_history !7501
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !258
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17, !call_target !7472, !inline_history !7501
  br label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !105
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #17
  br label %_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7437 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !7431
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !7433
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !258
end_hunk_0
