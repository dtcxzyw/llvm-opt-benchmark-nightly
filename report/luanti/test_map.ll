Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_map?download=true
inline.NumInlined: 891
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_:bb.a
  %i.n = urem i64 %i.l, %i.m                      ; 3 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !97   ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ae, %bb.g ]
  %i.t = phi ptr [ %i.r, %bb.e ], [ %i.ac, %bb.g ] ; 4 uses
  %i.u = icmp eq i64 %i.l, %i.s
  br i1 %i.u, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i16, ptr %i.v, align 2, !tbaa !129
  %i.x = icmp eq i16 %.02242, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %.01948, %i.z
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %bb.f
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !97  ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !100 ; 2 uses
  %i.af = urem i64 %i.ae, %i.m
  %.not19.i.i.i = icmp eq i64 %i.af, %i.n
  br i1 %.not19.i.i.i, label %bb.f, label %.loopexit.i, !llvm.loop !131

.loopexit.i:                                      ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i, %bb.d
  %i.ag = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %.noexc unwind label %bb.h     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i
  store ptr null, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %.sroa.0.0.insert.insert, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !132
  %i.aj = invoke ptr @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.n, i64 noundef %i.l, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #21
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %.noexc
  %.pn.i = phi ptr [ %i.aj, %.noexc ], [ %i.t, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  store ptr %i.i, ptr %.1.i, align 8, !tbaa !135
  br i1 %.not2439, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %.loopexit
  %i.al = add i16 %.02242, 1                      ; 2 uses
  %.not23 = icmp sgt i16 %i.al, %.sroa.015.0.extract.trunc
  br i1 %.not23, label %._crit_edge46, label %bb.b, !llvm.loop !136

bb.h:                                             ; preds = %.loopexit.i, %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #21
  br label %.body

.lr.ph:                                           ; preds = %.loopexit, %bb.j
  %.040 = phi i16 [ %i.ap, %bb.j ], [ %.sroa.217.0.extract.trunc, %.loopexit ] ; 2 uses
  %i.ao = invoke noundef ptr @_ZN9MapSector16createBlankBlockEs(ptr noundef nonnull align 8 dereferenceable(98) %i.i, i16 noundef signext %.040)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph
  %i.ap = add i16 %.040, 1                        ; 2 uses
  %.not24 = icmp sgt i16 %i.ap, %.sroa.2.0.extract.trunc
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !137

bb.k:                                             ; preds = %.lr.ph
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.an, %bb.i ], [ %i.am, %bb.h ], [ %i.ak, %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i ]
  tail call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #22
  resume { ptr, i32 } %.pn
}

declare void @_ZN3Map7setNodeEN4core8vector3dIsEE7MapNode(ptr noundef nonnull align 8 dereferenceable(144), i48, i32) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIN4core8vector3dIsEE7MapNodeSt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !97 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !51
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEESt4pairIKS2_7MapNodeESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_setIN4core8vector3dIsEESt4hashIS2_ESt8equal_toIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !97 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #21
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !124

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !47
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4core8vector3dIsEES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7TestMap26testForEachNodeInAreaBlankEP8IGameDef(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader210.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %class.DummyMap, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef %1, i48 0, i48 -1)
  %i.f = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0)
          to label %.preheader208.lr.ph.split.split.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader208.lr.ph.split.split.i:                ; preds = %.preheader210.i
  %.not77.i = icmp eq ptr %i.f, null
  br i1 %.not77.i, label %.preheader.i, label %.preheader.us217.us.i

.preheader.us217.us.i:                            ; preds = %.preheader208.lr.ph.split.split.i
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !138
  %i.g = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit

.preheader.i:                                     ; preds = %.preheader208.lr.ph.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i8 1, ptr %i.e, align 1, !tbaa !138
  %i.h = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %4, i48 0, ptr noundef nonnull %i.e)
          to label %.noexc19.peel unwind label %.loopexit

.noexc19.peel:                                    ; preds = %.preheader.i
  %or.cond11.i.i.peel = icmp eq i32 %i.h, 127
  br i1 %or.cond11.i.i.peel, label %bb.a, label %_ZNK7MapNodeeqERKS_.exit.thread.i.i

bb.a:                                             ; preds = %.noexc19.peel
  %i.i = load i8, ptr %i.e, align 1, !tbaa !138, !range !93, !noundef !94
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.noexc.i125.i, label %._crit_edge.i

.noexc19:                                         ; preds = %.preheader.us217.us.i
  %or.cond11.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %i.g
  br i1 %or.cond11.i.i, label %7, label %_ZNK7MapNodeeqERKS_.exit.thread.i.i

_ZNK7MapNodeeqERKS_.exit.thread.i.i:              ; preds = %.noexc19, %.noexc19.peel
  %i.k = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 39, ptr %i.a, align 8, !tbaa !31
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc143.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc143.i:                                      ; preds = %_ZNK7MapNodeeqERKS_.exit.thread.i.i
  store ptr %i.m, ptr %2, align 8, !tbaa !11
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.m, ptr noundef nonnull align 1 dereferenceable(39) @.str.41, i64 39, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  store ptr %i.q, ptr %i.k, align 8, !tbaa !29
  %i.r = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i

bb.b:                                             ; preds = %.noexc143.i
  %i.t = load i64, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i129.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i: ; preds = %.noexc143.i
  store ptr %i.r, ptr %i.k, align 8, !tbaa !11
  %i.w = load i64, ptr %i.l, align 8, !tbaa !17
  store i64 %i.w, ptr %i.q, align 8, !tbaa !17
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i129.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i129.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i, %bb.b
  %i.x = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i ], [ %i.t, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  store ptr %i.l, ptr %2, align 8, !tbaa !11
  store i64 0, ptr %i.o, align 8, !tbaa !30
  store i8 0, ptr %i.l, align 8, !tbaa !17
  %i.z = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.h       ; 4 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i129.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !29
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i137.i unwind label %bb.i

.noexc.i137.i:                                    ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !31
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i.i135.i, label %._crit_edge.i.i.i134.i

.noexc.i.i135.i:                                  ; preds = %bb.e
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc6.i136.i unwind label %bb.i ; 2 uses

.noexc6.i136.i:                                   ; preds = %.noexc.i.i135.i
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !11
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !17
  br label %._crit_edge.i.i.i134.i

._crit_edge.i.i.i134.i:                           ; preds = %.noexc6.i136.i, %bb.e
  %i.ah = phi ptr [ %i.af, %.noexc6.i136.i ], [ %i.ab, %bb.e ] ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.k
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i134.i
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !17
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !17
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge.i.i.i134.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.z, i64 %i.ad, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i129.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.noexc.i.i135.i, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i130.i = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !11  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.q
  br i1 %i.am, label %.body138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.q, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %.body138.i

bb.k:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i134.i
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !30
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i32 155, ptr %i.at, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.v unwind label %.body138.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %_ZNK7MapNodeeqERKS_.exit.thread.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body138.i:                                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i
  %i.av = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.l
  br i1 %i.aw, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i: ; preds = %.body138.i
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !17
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %.sink.split.i.i

.body138.thread.i:                                ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !11    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.l
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.body138.thread.i
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

7:                                                ; preds = %.noexc19
  %8 = load i8, ptr %i.e, align 1, !tbaa !138, !range !93, !noundef !94
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %.noexc.i125.i, label %._crit_edge.i

.noexc.i125.i:                                    ; preds = %7, %bb.a
  %i.be = call ptr @__cxa_allocate_exception(i64 72) #22 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.bf, ptr %3, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 18, ptr %i.c, align 8, !tbaa !31
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc126.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ; 2 uses

.noexc126.i:                                      ; preds = %.noexc.i125.i
  store ptr %i.bg, ptr %3, align 8, !tbaa !11
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.bg, ptr noundef nonnull align 1 dereferenceable(18) @.str.42, i64 18, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !30
  %i.bj = load ptr, ptr %3, align 8, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !29
  %i.bm = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.bf
  br i1 %i.bn, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i

bb.l:                                             ; preds = %.noexc126.i
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !30 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i112.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i: ; preds = %.noexc126.i
  store ptr %i.bm, ptr %i.be, align 8, !tbaa !11
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !17
  store i64 %i.br, ptr %i.bl, align 8, !tbaa !17
  %.pre265.i = load i64, ptr %i.bi, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i112.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i112.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i, %bb.l
  %i.bs = phi i64 [ %.pre265.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i ], [ %i.bo, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !30
  store ptr %i.bf, ptr %3, align 8, !tbaa !11
  store i64 0, ptr %i.bi, align 8, !tbaa !30
  store i8 0, ptr %i.bf, align 8, !tbaa !17
  %i.bu = invoke noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef nonnull @.str.7)
          to label %bb.m unwind label %bb.r       ; 4 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i112.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 3 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !29
  %i.bx = icmp eq ptr %i.bu, null
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #24
          to label %.noexc.i120.i unwind label %bb.s

.noexc.i120.i:                                    ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %i.by, ptr %i.d, align 8, !tbaa !31
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %.noexc.i.i118.i, label %._crit_edge.i.i.i117.i

.noexc.i.i118.i:                                  ; preds = %bb.o
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc6.i119.i unwind label %bb.s ; 2 uses

.noexc6.i119.i:                                   ; preds = %.noexc.i.i118.i
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !11
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !31
  store i64 %i.cb, ptr %i.bw, align 8, !tbaa !17
  br label %._crit_edge.i.i.i117.i

._crit_edge.i.i.i117.i:                           ; preds = %.noexc6.i119.i, %bb.o
  %i.cc = phi ptr [ %i.ca, %.noexc6.i119.i ], [ %i.bw, %bb.o ] ; 2 uses
  switch i64 %i.by, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.u
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i117.i
  %i.cd = load i8, ptr %i.bu, align 1, !tbaa !17
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !17
  br label %bb.u

bb.q:                                             ; preds = %._crit_edge.i.i.i117.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr nonnull align 1 %i.bu, i64 %i.by, i1 false)
  br label %bb.u

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i112.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i.i118.i, %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i113.i = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %i.ce, %bb.r ] ; 2 uses
  %i.cg = load ptr, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bl
  br i1 %i.ch, label %.body121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i: ; preds = %bb.t
  %i.ci = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #21
  br label %.body121.i

bb.u:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i117.i
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !31  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !30
  %i.cm = load ptr, ptr %i.bv, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 156, ptr %i.co, align 8, !tbaa !32
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.v unwind label %.body121.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i: ; preds = %.noexc.i125.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i.i

.body121.i:                                       ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i
  %i.cq = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bf
  br i1 %i.cr, label %.sink.split.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i: ; preds = %.body121.i
  %i.cs = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #21
  br label %.sink.split.i.i

.body121.thread.i:                                ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %3, align 8, !tbaa !11    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i: ; preds = %.body121.thread.i
  %i.cx = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

.sink.split.i.i:                                  ; preds = %.body121.i, %.body138.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.sink.i.i = phi ptr [ %i.k, %.body138.i ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %i.be, %.body121.i ]
  %.pn20.pn.ph.i.i = phi { ptr, i32 } [ %.pn.i130.i, %.body138.i ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i.i ], [ %.pn.i130.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.thread.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %.pn.i113.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.thread.i ], [ %.pn.i113.i, %.body121.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i: ; preds = %.body121.thread.i, %.body138.thread.i, %.sink.split.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn20.pn.i.i = phi { ptr, i32 } [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn20.pn.ph.i.i, %.sink.split.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i ], [ %i.az, %.body138.thread.i ], [ %i.cu, %.body121.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %.body

bb.v:                                             ; preds = %bb.u, %bb.k
  unreachable

._crit_edge.i:                                    ; preds = %7, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

.loopexit:                                        ; preds = %.preheader.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.us217.us.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.preheader210.i
  %lpad.loopexit.split-lp34 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i
  %.pn.pn = phi { ptr, i32 } [ %.pn20.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp34, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7TestMap26testForEachNodeInAreaEmptyEP8IGameDef(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.DummyMap, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN8DummyMapC2EP8IGameDefN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef %1, i48 0, i48 0)
  call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7TestMap7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11TestManager14getTestModulesEv.exit, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #22
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11TestManager14getTestModulesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev, ptr nonnull @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, ptr nonnull @__dso_handle) #22 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #22
  br label %_ZN11TestManager14getTestModulesEv.exit

_ZN11TestManager14getTestModulesEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !140 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !143
  %.not.i1 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  store ptr %0, ptr %i.e, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !140
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  %i.h = load ptr, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !146 ; 4 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #24
  unreachable

_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #25 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !144
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !143
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #21
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.s, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !146
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !143
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !143
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #21
  br label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef) local_unnamed_addr #3

declare void @_ZN3MapC2EP8IGameDef(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) unnamed_addr #3

declare void @_ZN9MapSectorC1EP3MapN4core8vector2dIsEEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(98), ptr noundef, i32, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN9MapSector16createBlankBlockEs(ptr noundef nonnull align 8 dereferenceable(98), i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8DummyMapD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN3MapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN3Map12emergeSectorEN4core8vector2dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
end_hunk_0
