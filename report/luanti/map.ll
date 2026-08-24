Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/map?download=true
inline.NumInlined: 1940
inline.NumDeleted: 1002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3Map13deleteSectorsERKSt6vectorIN4core8vector2dIsEESaIS3_EE:bb.a
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = icmp eq i16 %i.ab, %i.k
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %bb.d
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !48  ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !101 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.o
  %.not19.i.i.i = icmp eq i64 %i.ah, %i.p
  br i1 %.not19.i.i.i, label %bb.d, label %.loopexit.i, !llvm.loop !103

.loopexit.i:                                      ; preds = %bb.e, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i, %bb.b
  %i.ai = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.g, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.ak, align 8, !tbaa !52
  %i.al = invoke ptr @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.p, i64 noundef %i.n, ptr noundef nonnull %i.ai, i64 noundef 1)
          to label %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit unwind label %_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i

_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i: ; preds = %.loopexit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 32) #28
  resume { ptr, i32 } %i.am

_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i, %.loopexit.i
  %.pn.i = phi ptr [ %i.al, %.loopexit.i ], [ %i.v, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.an = load ptr, ptr %.1.i, align 8, !tbaa !264 ; 4 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.ap = icmp eq ptr %i.ao, %i.an
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit
  store ptr null, ptr %i.f, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt8__detail9_Map_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorESaIS8_ENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_.exit
  %i.aq = call noundef i64 @_ZNSt10_HashtableIN4core8vector2dIsEESt4pairIKS2_P9MapSectorESaIS7_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %2) ; 0 uses
  %i.ar = icmp eq ptr %i.an, null
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(98) %i.an) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef i32 @_ZN8Profiler5printERSojj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8ProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_fESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8Profiler8DataPairEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8Profiler8DataPairESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8Profiler8DataPairESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEfSt4lessIS5_ESaISt4pairIKS5_fEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Map24unloadUnreferencedBlocksEPSt6vectorIN4core8vector3dIsEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN3Map11timerUpdateEffiPSt6vectorIN4core8vector3dIsEESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, float noundef 0.000000e+00, float noundef -1.000000e+00, i32 noundef 0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3Map9PrintInfoERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 5) ; 0 uses
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN3Map21findNodesWithMetadataEN4core8vector3dIsEES2_(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %2, i48 %3) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %.sroa.0170.0.extract.trunc = trunc i48 %2 to i16 ; 2 uses
  %.sroa.5171.0.extract.shift = lshr i48 %2, 16
  %.sroa.5171.0.extract.trunc = trunc i48 %.sroa.5171.0.extract.shift to i16 ; 2 uses
  %.sroa.8172.0.extract.shift = lshr i48 %2, 32
  %.sroa.8172.0.extract.trunc = trunc nuw i48 %.sroa.8172.0.extract.shift to i16 ; 2 uses
  %.sroa.0167.0.extract.trunc = trunc i48 %3 to i16 ; 2 uses
  %.sroa.5168.0.extract.shift = lshr i48 %3, 16
  %.sroa.5168.0.extract.trunc = trunc i48 %.sroa.5168.0.extract.shift to i16 ; 2 uses
  %.sroa.8169.0.extract.shift = lshr i48 %3, 32
  %.sroa.8169.0.extract.trunc = trunc nuw i48 %.sroa.8169.0.extract.shift to i16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %spec.select = tail call i16 @llvm.smin.i16(i16 %.sroa.0170.0.extract.trunc, i16 %.sroa.0167.0.extract.trunc) ; 3 uses
  %spec.select179 = tail call i16 @llvm.smax.i16(i16 %.sroa.0170.0.extract.trunc, i16 %.sroa.0167.0.extract.trunc) ; 3 uses
  %.sroa.5171.0 = tail call i16 @llvm.smin.i16(i16 %.sroa.5171.0.extract.trunc, i16 %.sroa.5168.0.extract.trunc) ; 3 uses
  %.sroa.5168.0 = tail call i16 @llvm.smax.i16(i16 %.sroa.5171.0.extract.trunc, i16 %.sroa.5168.0.extract.trunc) ; 3 uses
  %.sroa.8172.0 = tail call i16 @llvm.smin.i16(i16 %.sroa.8172.0.extract.trunc, i16 %.sroa.8169.0.extract.trunc) ; 3 uses
  %.sroa.8169.0 = tail call i16 @llvm.smax.i16(i16 %.sroa.8172.0.extract.trunc, i16 %.sroa.8169.0.extract.trunc) ; 3 uses
  %i.c = sext i16 %spec.select to i32             ; 2 uses
  %i.d = add nsw i32 %i.c, -15
  %i.e = icmp slt i16 %spec.select, 0
  %i.f = select i1 %i.e, i32 %i.d, i32 %i.c
  %i.g = sdiv i32 %i.f, 16                        ; 2 uses
  %i.h = sext i16 %.sroa.5171.0 to i32            ; 2 uses
  %i.i = add nsw i32 %i.h, -15
  %i.j = icmp slt i16 %.sroa.5171.0, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.h
  %i.l = sdiv i32 %i.k, 16                        ; 2 uses
  %i.m = sext i16 %.sroa.8172.0 to i32            ; 2 uses
  %i.n = add nsw i32 %i.m, -15
  %.not180181 = icmp slt i16 %.sroa.8172.0, 0
  %i.o = select i1 %.not180181, i32 %i.n, i32 %i.m
  %i.p = sdiv i32 %i.o, 16                        ; 2 uses
  %.sroa.525.0.extract.trunc = trunc nsw i32 %i.l to i16
  %i.q = sext i16 %spec.select179 to i32          ; 2 uses
  %i.r = add nsw i32 %i.q, -15
  %i.s = icmp slt i16 %spec.select179, 0
  %i.t = select i1 %i.s, i32 %i.r, i32 %i.q
  %i.u = sdiv i32 %i.t, 16                        ; 2 uses
  %i.v = sext i16 %.sroa.5168.0 to i32            ; 2 uses
  %i.w = add nsw i32 %i.v, -15
  %i.x = icmp slt i16 %.sroa.5168.0, 0
  %i.y = select i1 %i.x, i32 %i.w, i32 %i.v
  %i.z = sdiv i32 %i.y, 16                        ; 2 uses
  %i.aa = sext i16 %.sroa.8169.0 to i32           ; 2 uses
  %i.ab = add nsw i32 %i.aa, -15
  %.not182183 = icmp slt i16 %.sroa.8169.0, 0
  %i.ac = select i1 %.not182183, i32 %i.ab, i32 %i.aa
  %i.ad = sdiv i32 %i.ac, 16
  %.mask.i.i57 = and i32 %i.ad, 65535
  %.sroa.3.0.insert.ext.i.i58 = zext nneg i32 %.mask.i.i57 to i48
  %.sroa.3.0.insert.shift.i.i59 = shl nuw i48 %.sroa.3.0.insert.ext.i.i58, 32
  %.sroa.021.0.extract.trunc = zext i32 %i.u to i64
  %.sroa.5.0.extract.trunc = trunc nsw i32 %i.z to i16
  %i.ae = ashr exact i48 %.sroa.3.0.insert.shift.i.i59, 32 ; 2 uses
  %i.af = trunc nsw i48 %i.ae to i32
  %.not216 = icmp sgt i32 %i.p, %i.af
  br i1 %.not216, label %._crit_edge219, label %.preheader192.lr.ph

.preheader192.lr.ph:                              ; preds = %bb.a
  %.not43213 = icmp sgt i32 %i.l, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.not.i65 = icmp eq ptr @_ZTH13verbosestream, null
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @verbosestream) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.not.i84 = icmp eq ptr @_ZTH10infostream, null
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %.not44209 = icmp sgt i32 %i.g, %i.u
  %or.cond289 = select i1 %.not43213, i1 true, i1 %.not44209
  br i1 %or.cond289, label %._crit_edge219, label %.preheader192.preheader

.preheader192.preheader:                          ; preds = %.preheader192.lr.ph
  %sext267 = shl i64 %.sroa.021.0.extract.trunc, 48
  %5 = ashr exact i64 %sext267, 48
  %i.at = sext i32 %i.p to i64
  %sext = sext i48 %i.ae to i64
  %6 = sext i32 %i.g to i64
  br label %.preheader192

.preheader192:                                    ; preds = %.preheader192.preheader, %._crit_edge215
  %i.au = phi ptr [ null, %.preheader192.preheader ], [ %i.hw, %._crit_edge215 ]
  %indvars.iv235 = phi i64 [ %i.at, %.preheader192.preheader ], [ %indvars.iv.next236, %._crit_edge215 ] ; 5 uses
  %i.av = trunc nsw i64 %indvars.iv235 to i16     ; 5 uses
  %i.aw = trunc i64 %indvars.iv235 to i48
  %.sroa.10.0.insert.ext149 = shl i48 %i.aw, 32
  %i.ax = shl i16 %i.av, 4
  br label %.preheader186

._crit_edge219:                                   ; preds = %._crit_edge215, %.preheader192.lr.ph, %bb.a
  ret void

.preheader186:                                    ; preds = %.preheader192, %._crit_edge212
  %i.ay = phi ptr [ %i.au, %.preheader192 ], [ %i.hw, %._crit_edge212 ]
  %.040214 = phi i16 [ %.sroa.525.0.extract.trunc, %.preheader192 ], [ %i.ba, %._crit_edge212 ] ; 4 uses
  %.sroa.8.0.insert.ext141 = zext i16 %.040214 to i48
  %.sroa.8.0.insert.shift142 = shl nuw nsw i48 %.sroa.8.0.insert.ext141, 16
  %.sroa.8.0.insert.insert144 = or disjoint i48 %.sroa.8.0.insert.shift142, %.sroa.10.0.insert.ext149 ; 2 uses
  %sh.diff.i = lshr exact i48 %.sroa.8.0.insert.insert144, 16 ; 2 uses
  %tr.sh.diff.i = trunc nuw i48 %sh.diff.i to i32
  %.sroa.4.0.insert.shift.i = and i32 %tr.sh.diff.i, -65536
  %.sroa.2.0.extract.trunc.i = trunc i48 %sh.diff.i to i16 ; 2 uses
  %i.az = shl nsw i16 %.040214, 4
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge212
  %indvars.iv.next236 = add nsw i64 %indvars.iv235, 1
  %.not = icmp slt i64 %indvars.iv235, %sext
  br i1 %.not, label %.preheader192, label %._crit_edge219, !llvm.loop !299

._crit_edge212:                                   ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit92
  %i.ba = add nsw i16 %.040214, 1
  %.not43.not = icmp slt i16 %.040214, %.sroa.5.0.extract.trunc
  br i1 %.not43.not, label %.preheader186, label %._crit_edge215, !llvm.loop !300

bb.b:                                             ; preds = %.preheader186, %_ZN11StreamProxylsEPFRSoS0_E.exit92
  %i.bb = phi ptr [ %i.ay, %.preheader186 ], [ %i.hw, %_ZN11StreamProxylsEPFRSoS0_E.exit92 ] ; 4 uses
  %indvars.iv = phi i64 [ %6, %.preheader186 ], [ %indvars.iv.next, %_ZN11StreamProxylsEPFRSoS0_E.exit92 ] ; 7 uses
  %i.bc = trunc nsw i64 %indvars.iv to i16        ; 5 uses
  %i.bd = trunc i64 %indvars.iv to i48
  %.sroa.0134.0.insert.ext135 = and i48 %i.bd, 65535
  %.sroa.0134.0.insert.insert137 = or disjoint i48 %.sroa.8.0.insert.insert144, %.sroa.0134.0.insert.ext135
  %i.be = trunc i64 %indvars.iv to i32
  %.sroa.04.0.extract.trunc.i = and i32 %i.be, 65535
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.04.0.extract.trunc.i
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bg = load i16, ptr %i.ah, align 8, !tbaa !97
  %i.bh = icmp eq i16 %i.bg, %i.bc
  %i.bi = load i16, ptr %i.ai, align 2
  %i.bj = icmp eq i16 %i.bi, %i.av
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bl = load i64, ptr %i.aj, align 8, !tbaa !98
  %.not.not.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader220, label %bb.f

.preheader220:                                    ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.am, %bb.d ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !48 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader220
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !97
  %i.bo = icmp eq i16 %i.bn, %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 10
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = icmp eq i16 %i.bq, %i.av
  %i.bs = select i1 %i.bo, i1 %i.br, i1 false
  br i1 %i.bs, label %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i, label %.preheader220, !llvm.loop !99

bb.f:                                             ; preds = %bb.d
  %i.bt = call i64 @llvm.fshl.i64(i64 %indvars.iv, i64 %indvars.iv, i64 32)
  %i.bu = xor i64 %i.bt, %indvars.iv235           ; 2 uses
  %i.bv = load i64, ptr %i.al, align 8, !tbaa !43 ; 2 uses
  %i.bw = urem i64 %i.bu, %i.bv                   ; 2 uses
  %i.bx = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !101
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.cb = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.g ], [ %i.cn, %bb.i ]
  %i.cc = phi ptr [ %i.ca, %bb.g ], [ %i.cl, %bb.i ] ; 4 uses
  %i.cd = icmp eq i64 %i.bu, %i.cb
  br i1 %i.cd, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !97
  %i.cg = icmp eq i16 %i.cf, %i.bc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = icmp eq i16 %i.ci, %i.av
  %i.ck = select i1 %i.cg, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i.i.i.i, %bb.h
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !48 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !101 ; 2 uses
  %i.co = urem i64 %i.cn, %i.bv
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.bw
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.h, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, !llvm.loop !103

_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i.i.i.i, %bb.e
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.e ], [ %i.cc, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52 ; 3 uses
  store i32 %.sroa.0.0.insert.insert.i, ptr %i.ah, align 8
  store ptr %i.cq, ptr %i.ag, align 8, !tbaa !96
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, label %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i

_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i: ; preds = %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i, %bb.c
  %.1.i.i12.i = phi ptr [ %i.cq, %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i ], [ %i.bf, %bb.c ]
  %i.cr = invoke noundef ptr @_ZN9MapSector20getBlockNoCreateNoExEs(ptr noundef nonnull align 8 dereferenceable(98) %.1.i.i12.i, i16 noundef signext %.sroa.2.0.extract.trunc.i)
          to label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit unwind label %.loopexit187 ; 2 uses

_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit: ; preds = %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i
  %.not45 = icmp eq ptr %i.cr, null
  br i1 %.not45, label %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, label %.thread

_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread: ; preds = %bb.i, %_ZNKSt8__detail15_Hashtable_baseIN4core8vector2dIsEESt4pairIKS3_P9MapSectorENS_10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS5_mRKNS_16_Hash_node_valueIS8_Lb1EEE.exit.thread.i.i.i.i.i.i.i, %.preheader220, %bb.f, %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.i, %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit
  br i1 %.not.i65, label %_ZTW13verbosestream.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread
  call void @_ZTH13verbosestream()
  br label %_ZTW13verbosestream.exit

_ZTW13verbosestream.exit:                         ; preds = %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit.thread, %bb.j
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !54, !nonnull !68, !align !69 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !9
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %.noexc66 unwind label %.loopexit187, !inline_history !301

.noexc66:                                         ; preds = %_ZTW13verbosestream.exit
  %.v.i = select i1 %i.cv, i64 976, i64 984
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.11, ptr %i.b, align 8, !tbaa !148
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.k unwind label %.loopexit187 ; 0 uses

bb.k:                                             ; preds = %.noexc66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !153 ; 5 uses
  %.not.i68 = icmp eq ptr %i.cy, null
  br i1 %.not.i68, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cy, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !154
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cy)
          to label %.noexc72 unwind label %.loopexit187

.noexc72:                                         ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.cw, align 8, !tbaa !153
  br label %bb.n

bb.n:                                             ; preds = %.noexc72, %bb.l
  %i.dg = phi ptr [ %.pre.i, %.noexc72 ], [ %i.cy, %bb.l ] ; 2 uses
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.42, i64 noundef 1)
          to label %.noexc73 unwind label %.loopexit187 ; 0 uses

.noexc73:                                         ; preds = %bb.n
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i16 noundef signext %i.bc)
          to label %.noexc74 unwind label %.loopexit187 ; 2 uses

.noexc74:                                         ; preds = %.noexc73
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.noexc75 unwind label %.loopexit187 ; 0 uses

.noexc75:                                         ; preds = %.noexc74
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i16 noundef signext %.sroa.2.0.extract.trunc.i)
          to label %.noexc76 unwind label %.loopexit187 ; 2 uses

.noexc76:                                         ; preds = %.noexc75
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.43, i64 noundef 1)
          to label %.noexc77 unwind label %.loopexit187 ; 0 uses

.noexc77:                                         ; preds = %.noexc76
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i16 noundef signext %i.av)
          to label %.noexc78 unwind label %.loopexit187

.noexc78:                                         ; preds = %.noexc77
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.36, i64 noundef 1)
          to label %_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_.exit unwind label %.loopexit187 ; 0 uses

_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_.exit: ; preds = %.noexc78
  %.pr = load ptr, ptr %i.cw, align 8, !tbaa !153 ; 5 uses
  %.not.i80 = icmp eq ptr %.pr, null
  br i1 %.not.i80, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.o

bb.o:                                             ; preds = %_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_.exit
  %i.do = load ptr, ptr %.pr, align 8, !tbaa !9
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.pr, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !154
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
          to label %.noexc82 unwind label %.loopexit187

.noexc82:                                         ; preds = %bb.p
  %.pre.i81 = load ptr, ptr %i.cw, align 8, !tbaa !153 ; 2 uses
  %.pre = load ptr, ptr %.pre.i81, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre241.a = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %.noexc82, %bb.o
  %i.dv = phi i64 [ %.pre241.a, %.noexc82 ], [ %i.dq, %bb.o ]
  %i.dw = phi ptr [ %.pre.i81, %.noexc82 ], [ %.pr, %bb.o ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 240
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i113 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i113, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.q, %bb.z
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.cont unwind label %.loopexit.split-lp188

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 56
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.eb, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 67
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !90
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dz)
          to label %.noexc115 unwind label %.loopexit187

.noexc115:                                        ; preds = %bb.s
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef signext i8 %i.eg(ptr noundef nonnull align 8 dereferenceable(570) %i.dz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit187, !inline_history !294

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc115, %bb.r
  %.0.i.i.i = phi i8 [ %i.ed, %bb.r ], [ %i.eh, %.noexc115 ]
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, i8 noundef signext %.0.i.i.i)
          to label %.noexc117 unwind label %.loopexit187

.noexc117:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit187 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.k, %_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_.exit, %.noexc117
  %i.ek = load ptr, ptr %1, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = invoke noundef ptr %i.em(ptr noundef nonnull align 8 dereferenceable(144) %1, i48 %.sroa.0134.0.insert.insert137, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit187 ; 2 uses

.loopexit187:                                     ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZN3Map19getSectorNoGenerateEN4core8vector2dIsEE.exit.thread9.i, %_ZTW13verbosestream.exit, %.noexc66, %bb.m, %bb.n, %.noexc73, %.noexc74, %.noexc75, %.noexc76, %.noexc77, %.noexc78, %bb.p, %_ZTW10infostream.exit, %.noexc86, %bb.y, %bb.s, %.noexc115, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc117, %bb.ab, %.noexc125, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122, %.noexc127
  %lpad.loopexit189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp188:                            ; preds = %.invoke
  %lpad.loopexit.split-lp190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.t:                                             ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit
  %.not46 = icmp eq ptr %i.en, null
  br i1 %.not46, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i84, label %_ZTW10infostream.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.u, %bb.v
  %i.eo = load ptr, ptr %i.as, align 8, !tbaa !54, !nonnull !68, !align !69 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !9
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef zeroext i1 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.eo)
          to label %.noexc86 unwind label %.loopexit187, !inline_history !302

.noexc86:                                         ; preds = %_ZTW10infostream.exit
  %.v.i85 = select i1 %i.er, i64 976, i64 984
  %i.es = getelementptr inbounds nuw i8, ptr %i.as, i64 %.v.i85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.12, ptr %i.a, align 8, !tbaa !148
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.w unwind label %.loopexit187 ; 0 uses

bb.w:                                             ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !153 ; 5 uses
  %.not.i88 = icmp eq ptr %i.eu, null
  br i1 %.not.i88, label %_ZN11StreamProxylsEPFRSoS0_E.exit92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !9
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.eu, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !154
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %.noexc90 unwind label %.loopexit187

.noexc90:                                         ; preds = %bb.y
  %.pre.i89 = load ptr, ptr %i.es, align 8, !tbaa !153 ; 2 uses
  %.pre243 = load ptr, ptr %.pre.i89, align 8, !tbaa !9
  %.phi.trans.insert244 = getelementptr i8, ptr %.pre243, i64 -24
  %.pre245 = load i64, ptr %.phi.trans.insert244, align 8
  br label %bb.z

bb.z:                                             ; preds = %.noexc90, %bb.x
  %i.fc = phi i64 [ %.pre245, %.noexc90 ], [ %i.ex, %bb.x ]
  %i.fd = phi ptr [ %.pre.i89, %.noexc90 ], [ %i.eu, %bb.x ] ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.fd, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i119 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i119, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120: ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !84
  %.not.i1.i.i121 = icmp eq i8 %i.fi, 0
  br i1 %.not.i1.i.i121, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 67
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !90
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i120
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fg)
          to label %.noexc125 unwind label %.loopexit187

.noexc125:                                        ; preds = %bb.ab
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef signext i8 %i.fn(ptr noundef nonnull align 8 dereferenceable(570) %i.fg, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122 unwind label %.loopexit187, !inline_history !294

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122: ; preds = %.noexc125, %bb.aa
  %.0.i.i.i123 = phi i8 [ %i.fk, %bb.aa ], [ %i.fo, %.noexc125 ]
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i8 noundef signext %.0.i.i.i123)
          to label %.noexc127 unwind label %.loopexit187

.noexc127:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i122
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit92 unwind label %.loopexit187 ; 0 uses

.thread:                                          ; preds = %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit, %bb.t
  %.038178 = phi ptr [ %i.en, %bb.t ], [ %i.cr, %_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE.exit ]
  %i.fr = shl nsw i16 %i.bc, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.fs = getelementptr inbounds nuw i8, ptr %.038178, i64 88
  invoke void @_ZN16NodeMetadataList10getAllKeysEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.fs)
          to label %.preheader unwind label %bb.ad

.preheader:                                       ; preds = %.thread
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %i.ft = load ptr, ptr %i.ao, align 8, !tbaa !218
  %i.fu = load ptr, ptr %4, align 8, !tbaa !216   ; 4 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %.not47205 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not47205, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, %.preheader
  %i.fw = phi ptr [ %i.bb, %.preheader ], [ %i.hn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa202 = phi ptr [ %.promoted, %.preheader ], [ %i.ho, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  %.lcssa199 = phi ptr [ %i.fu, %.preheader ], [ %i.hr, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.lcssa196 = phi i64 [ %i.fv, %.preheader ], [ %i.ht, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ]
  store ptr %.lcssa202, ptr %0, align 8
  %.not.i.i.i95 = icmp eq ptr %.lcssa199, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.fx = load ptr, ptr %i.ar, align 8, !tbaa !217
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = sub i64 %i.fy, %.lcssa196
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa199, i64 noundef %i.fz) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit92

bb.ad:                                            ; preds = %.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.gb = phi ptr [ %i.hn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %i.bb, %.preheader ] ; 7 uses
  %i.gc = phi ptr [ %i.hr, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %i.fu, %.preheader ] ; 2 uses
  %.031206 = phi i64 [ %i.hp, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.gd = phi ptr [ %i.ho, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ], [ %.promoted, %.preheader ] ; 10 uses
  %i.ge = getelementptr inbounds nuw [6 x i8], ptr %i.gc, i64 %.031206 ; 3 uses
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !162
  %i.gg = add i16 %i.gf, %i.fr                    ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !163
  %i.gj = add i16 %i.gi, %i.az                    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !164
  %i.gm = add i16 %i.gl, %i.ax                    ; 3 uses
  %.sroa.3.0.insert.ext.i96 = zext i16 %i.gm to i48
  %.sroa.3.0.insert.shift.i97 = shl nuw i48 %.sroa.3.0.insert.ext.i96, 32
  %.sroa.2.0.insert.ext.i98 = zext i16 %i.gj to i48
  %.sroa.2.0.insert.shift.i99 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i98, 16
  %.sroa.0.0.insert.ext.i101 = zext i16 %i.gg to i48
  %i.gn = or disjoint i48 %.sroa.2.0.insert.shift.i99, %.sroa.0.0.insert.ext.i101
  %.sroa.0.0.insert.insert.i102 = or disjoint i48 %i.gn, %.sroa.3.0.insert.shift.i97 ; 2 uses
  %.not.i103 = icmp sgt i16 %spec.select, %i.gg
  %.not6.i = icmp slt i16 %spec.select179, %i.gg
  %or.cond.i = or i1 %.not.i103, %.not6.i
  %.not7.i = icmp sgt i16 %.sroa.5171.0, %i.gj
  %.not8.i = icmp slt i16 %.sroa.5168.0, %i.gj
  %i.go = or i1 %.not7.i, %.not8.i
  %or.cond14.i = select i1 %or.cond.i, i1 true, i1 %i.go
  br i1 %or.cond14.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %.not9.i = icmp sge i16 %i.gm, %.sroa.8172.0
  %i.gp = icmp sle i16 %i.gm, %.sroa.8169.0
  %or.cond = and i1 %.not9.i, %i.gp
  br i1 %or.cond, label %bb.ah, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

.thread269:                                       ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gd, ptr %0, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre242 = load ptr, ptr %4, align 8, !tbaa !216 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %.pre242, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105, label %bb.ag

bb.ag:                                            ; preds = %.thread269, %bb.af
  %lpad.phi272 = phi { ptr, i32 } [ %lpad.loopexit, %.thread269 ], [ %lpad.loopexit.split-lp, %bb.af ]
  %i.gq = phi ptr [ %i.gc, %.thread269 ], [ %.pre242, %bb.af ] ; 2 uses
  %i.gr = load ptr, ptr %i.ar, align 8, !tbaa !217
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105

bb.ah:                                            ; preds = %bb.ae
  %i.gv = load ptr, ptr %i.ap, align 8, !tbaa !218 ; 3 uses
  %.not.i106 = icmp eq ptr %i.gv, %i.gb
  br i1 %.not.i106, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i48 %.sroa.0.0.insert.insert.i102, ptr %i.gv, align 2
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 6
  store ptr %i.gw, ptr %i.ap, align 8, !tbaa !218
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gx = ptrtoint ptr %i.gb to i64
  %i.gy = ptrtoint ptr %i.gd to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775806
  br i1 %i.ha, label %bb.ak, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.gd, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
          to label %.noexc109 unwind label %bb.af

.noexc109:                                        ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.hb = sdiv exact i64 %i.gz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1537228672809129301)
  %i.hf = select i1 %i.hd, i64 1537228672809129301, i64 %i.he ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.hg = mul nuw nsw i64 %i.hf, 6
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #32
          to label %.noexc110 unwind label %.thread269 ; 5 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i48 %.sroa.0.0.insert.insert.i102, ptr %i.hi, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.gd, %i.gb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc110, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i ], [ %i.hh, %.noexc110 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i ], [ %i.gd, %.noexc110 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !219, !alias.scope !303
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i108 = icmp eq ptr %i.hj, %i.gb
  br i1 %.not.i.i.i.i.i108, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc110
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hh, %.noexc110 ], [ %i.hk, %.lr.ph.i.i.i.i.i ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6
  %.not.i23.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gz) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.hl, ptr %i.ap, align 8, !tbaa !218
  %i.hm = getelementptr inbounds nuw [6 x i8], ptr %i.hh, i64 %i.hf ; 2 uses
  store ptr %i.hm, ptr %i.aq, align 8, !tbaa !217
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %.lr.ph, %bb.ae, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ai
  %i.hn = phi ptr [ %i.gb, %.lr.ph ], [ %i.gb, %bb.ae ], [ %i.hm, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gb, %bb.ai ] ; 2 uses
  %i.ho = phi ptr [ %i.gd, %.lr.ph ], [ %i.gd, %bb.ae ], [ %i.hh, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gd, %bb.ai ] ; 2 uses
  %i.hp = add i64 %.031206, 1                     ; 2 uses
  %i.hq = load ptr, ptr %i.ao, align 8, !tbaa !218
  %i.hr = load ptr, ptr %4, align 8, !tbaa !216   ; 3 uses
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 6
  %.not47 = icmp eq i64 %i.hp, %i.hv
  br i1 %.not47, label %._crit_edge, label %.lr.ph, !llvm.loop !307

_ZN11StreamProxylsEPFRSoS0_E.exit92:              ; preds = %bb.w, %.noexc127, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit
  %i.hw = phi ptr [ %i.bb, %bb.w ], [ %i.bb, %.noexc127 ], [ %i.fw, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not44.not = icmp slt i64 %indvars.iv, %5
  br i1 %.not44.not, label %bb.b, label %._crit_edge212, !llvm.loop !308

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105: ; preds = %bb.ag, %bb.af, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.ga, %bb.ad ], [ %lpad.loopexit.split-lp, %bb.af ], [ %lpad.phi272, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.am

bb.am:                                            ; preds = %.loopexit187, %.loopexit.split-lp188, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit105 ], [ %lpad.loopexit189, %.loopexit187 ], [ %lpad.loopexit.split-lp190, %.loopexit.split-lp188 ]
  %i.hx = load ptr, ptr %0, align 8, !tbaa !216   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hy = load ptr, ptr %i.aq, align 8, !tbaa !217
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit112: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !154
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !153
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i48, ptr %1, align 2 ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i48 %.sroa.0.0.copyload to i16
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.42, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i16 noundef signext %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i16 noundef signext %.sroa.2.0.extract.trunc.i) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.43, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i16 noundef signext %.sroa.3.0.extract.trunc.i)
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.36, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_ZN16NodeMetadataList10getAllKeysEv(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN3Map15getNodeMetadataEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %.sroa.034.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.2.0.extract.shift = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = sext i16 %.sroa.034.0.extract.trunc to i32 ; 2 uses
  %i.d = add nsw i32 %i.c, -15
  %i.e = icmp slt i16 %.sroa.034.0.extract.trunc, 0
  %i.f = select i1 %i.e, i32 %i.d, i32 %i.c
  %i.g = sdiv i32 %i.f, 16                        ; 2 uses
  %i.h = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %i.i = add nsw i32 %i.h, -15
  %i.j = icmp slt i16 %.sroa.2.0.extract.trunc, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.h
  %i.l = sdiv i32 %i.k, 16                        ; 2 uses
  %i.m = ashr i48 %1, 32
  %i.n = trunc nsw i48 %i.m to i32                ; 2 uses
  %i.o = add nsw i32 %i.n, -15
  %i.p = icmp slt i48 %1, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = sdiv i32 %i.q, 16                        ; 2 uses
  %.mask.i.i = and i32 %i.r, 65535
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %.mask.i.i to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.s = shl nsw i32 %i.l, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.s to i48
  %.mask5.i.i = and i32 %i.g, 65535
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %.mask5.i.i to i48
  %i.t = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %i.t, %.sroa.2.0.insert.shift.i.i ; 2 uses
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  %i.u = trunc nsw i32 %i.g to i16
  %i.v = shl nsw i16 %i.u, 4
  %i.w = trunc nsw i32 %i.l to i16
  %i.x = shl nsw i16 %i.w, 4
  %i.y = trunc nsw i32 %i.r to i16
  %i.z = shl nsw i16 %i.y, 4
  %i.aa = sub i16 %.sroa.034.0.extract.trunc, %i.v
  %i.ab = sub i16 %.sroa.2.0.extract.trunc, %i.x
  %i.ac = sub i16 %.sroa.3.0.extract.trunc, %i.z
  %.sroa.3.0.insert.ext.i16 = zext i16 %i.ac to i48
  %.sroa.3.0.insert.shift.i17 = shl nuw i48 %.sroa.3.0.insert.ext.i16, 32
  %.sroa.2.0.insert.ext.i18 = zext i16 %i.ab to i48
  %.sroa.2.0.insert.shift.i19 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i18, 16
  %.sroa.2.0.insert.insert.i20 = or disjoint i48 %.sroa.3.0.insert.shift.i17, %.sroa.2.0.insert.shift.i19
  %.sroa.0.0.insert.ext.i21 = zext i16 %i.aa to i48
  %.sroa.0.0.insert.insert.i22 = or disjoint i48 %.sroa.2.0.insert.insert.i20, %.sroa.0.0.insert.ext.i21
  %i.ad = tail call noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i) ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i, label %_ZTW10infostream.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %bb.b, %bb.c
  %i.ae = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54, !nonnull !68, !align !69 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !301
  %.v.i = select i1 %i.ai, i64 976, i64 984
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.11, ptr %i.b, align 8, !tbaa !148
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIsEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 2 dereferenceable(6) %2) ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !153 ; 5 uses
  %.not.i23 = icmp eq ptr %i.am, null
  br i1 %.not.i23, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZTW10infostream.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !154
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !153 ; 2 uses
  %.pre = load ptr, ptr %.pre.i, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre38 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi i64 [ %.pre38, %bb.e ], [ %i.ap, %bb.d ]
  %i.av = phi ptr [ %.pre.i, %bb.e ], [ %i.am, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !84
  %.not.i1.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 67
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !90
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay)
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef signext i8 %i.bf(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 10), !inline_history !155
end_hunk_0
begin_hunk_1_@_ZNK8MMVManip16getCoveredBlocksEv:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %.not2.i = icmp eq i32 %i.l, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.014.0.copyload = load i48, ptr %i.f, align 8 ; 6 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.014.0.copyload, 16 ; 2 uses
  %i.m = ashr i48 %.sroa.014.0.copyload, 32
  %i.n = trunc nsw i48 %i.m to i32                ; 2 uses
  %i.o = add nsw i32 %i.n, -15
  %i.p = icmp slt i48 %.sroa.014.0.copyload, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = sdiv i32 %i.q, 16                        ; 2 uses
  %.sroa.8100.0.extract.trunc = trunc nsw i32 %i.r to i16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.012.0.copyload = load i48, ptr %i.s, align 2 ; 5 uses
  %.sroa.2.0.extract.shift.i.i41 = lshr i48 %.sroa.012.0.copyload, 16
  %i.t = trunc i48 %.sroa.014.0.copyload to i16
  %i.u = insertelement <2 x i16> poison, i16 %i.t, i64 0
  %i.v = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.w = insertelement <2 x i16> %i.u, i16 %i.v, i64 1 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.014.0.copyload to i16
  %i.x = sext <2 x i16> %i.w to <2 x i32>         ; 2 uses
  %i.y = add nsw <2 x i32> %i.x, splat (i32 -15)
  %i.z = icmp slt <2 x i16> %i.w, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x i32> %i.y, <2 x i32> %i.x
  %i.ab = sdiv <2 x i32> %i.aa, splat (i32 16)    ; 3 uses
  %i.ac = bitcast <2 x i32> %i.ab to <4 x i16>
  %.sroa.096.0.extract.trunc = extractelement <4 x i16> %i.ac, i64 0 ; 2 uses
  %i.ad = bitcast <2 x i32> %i.ab to <4 x i16>
  %.sroa.698.0.extract.trunc = extractelement <4 x i16> %i.ad, i64 2 ; 2 uses
  %.sroa.2.0.extract.trunc.i.i42 = trunc i48 %.sroa.2.0.extract.shift.i.i41 to i16 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i40 = trunc i48 %.sroa.012.0.copyload to i16 ; 2 uses
  %i.ae = insertelement <2 x i16> poison, i16 %.sroa.0.0.extract.trunc.i.i40, i64 0
  %i.af = insertelement <2 x i16> %i.ae, i16 %.sroa.2.0.extract.trunc.i.i42, i64 1 ; 2 uses
  %i.ag = sext <2 x i16> %i.af to <2 x i32>       ; 2 uses
  %i.ah = add nsw <2 x i32> %i.ag, splat (i32 -15)
  %i.ai = icmp slt <2 x i16> %i.af, zeroinitializer
  %i.aj = select <2 x i1> %i.ai, <2 x i32> %i.ah, <2 x i32> %i.ag
  %i.ak = sdiv <2 x i32> %i.aj, splat (i32 16)    ; 3 uses
  %i.al = ashr i48 %.sroa.012.0.copyload, 32
  %i.am = trunc nsw i48 %i.al to i32              ; 2 uses
  %i.an = add nsw i32 %i.am, -15
  %i.ao = icmp slt i48 %.sroa.012.0.copyload, 0
  %i.ap = select i1 %i.ao, i32 %i.an, i32 %i.am
  %i.aq = sdiv i32 %i.ap, 16                      ; 2 uses
  %i.ar = bitcast <2 x i32> %i.ak to <4 x i16>
  %.sroa.091.0.extract.trunc = extractelement <4 x i16> %i.ar, i64 0 ; 2 uses
  %i.as = bitcast <2 x i32> %i.ak to <4 x i16>
  %.sroa.693.0.extract.trunc = extractelement <4 x i16> %i.as, i64 2 ; 2 uses
  %.sroa.8.0.extract.trunc = trunc nsw i32 %i.aq to i16 ; 2 uses
  %i.at = shl nsw i16 %.sroa.096.0.extract.trunc, 4
  %i.au = shl nsw i16 %.sroa.8100.0.extract.trunc, 4
  %i.av = icmp eq i16 %i.at, %.sroa.0.0.extract.trunc.i.i
  %i.aw = lshr i48 %.sroa.014.0.copyload, 32
  %i.ax = trunc nuw i48 %i.aw to i16
  %i.ay = lshr i48 %.sroa.012.0.copyload, 32
  %i.az = trunc nuw i48 %i.ay to i16
  br i1 %i.av, label %bb.c, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.ba = shl nsw i16 %.sroa.698.0.extract.trunc, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bc = icmp eq i16 %i.ba, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.bc, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.not110 = icmp eq i16 %i.au, %i.ax
  br i1 %.not110, label %bb.g, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %bb.b, %bb.c, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.be = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
          to label %bb.ag unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !90
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

bb.f:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @__cxa_free_exception(ptr %i.be) #27
  br label %.body

bb.g:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.bm = shl nsw i16 %.sroa.091.0.extract.trunc, 4
  %i.bn = or disjoint i16 %i.bm, 15
  %i.bo = icmp eq i16 %i.bn, %.sroa.0.0.extract.trunc.i.i40
  br i1 %i.bo, label %bb.h, label %_ZNK4core8vector3dIsEneERKS1_.exit72.thread

bb.h:                                             ; preds = %bb.g
  %i.bp = shl nsw i16 %.sroa.8.0.extract.trunc, 4
  %i.bq = or disjoint i16 %i.bp, 15
  %i.br = shl nsw i16 %.sroa.693.0.extract.trunc, 4
  %i.bs = or disjoint i16 %i.br, 15
  %i.bt = icmp eq i16 %i.bs, %.sroa.2.0.extract.trunc.i.i42
  %.not111 = icmp eq i16 %i.bq, %i.az
  %or.cond151 = select i1 %i.bt, i1 %.not111, i1 false
  br i1 %or.cond151, label %.preheader115, label %_ZNK4core8vector3dIsEneERKS1_.exit72.thread

.preheader115:                                    ; preds = %bb.h
  %.not121 = icmp sgt i32 %i.r, %i.aq
  br i1 %.not121, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.preheader114.lr.ph

.preheader114.lr.ph:                              ; preds = %.preheader115
  %i.bu = icmp sgt <2 x i32> %i.ab, %i.ak         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = extractelement <2 x i1> %i.bu, i64 0
  %i.bx = extractelement <2 x i1> %i.bu, i64 1
  %brmerge = select i1 %i.bx, i1 true, i1 %i.bw
  br i1 %brmerge, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.preheader114

_ZNK4core8vector3dIsEneERKS1_.exit72.thread:      ; preds = %bb.g, %bb.h
  %i.by = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit72.thread
  call void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTI13BaseException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
          to label %bb.ag unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %4, align 8, !tbaa !106   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.j
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !90
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

bb.k:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit72.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @__cxa_free_exception(ptr %i.by) #27
  br label %.body

.preheader114:                                    ; preds = %.preheader114.lr.ph, %._crit_edge120
  %.023122 = phi i16 [ %i.cj, %._crit_edge120 ], [ %.sroa.8100.0.extract.trunc, %.preheader114.lr.ph ] ; 6 uses
  %.sroa.8.0.insert.ext = zext i16 %.023122 to i48
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader114, %._crit_edge
  %.022119 = phi i16 [ %.sroa.698.0.extract.trunc, %.preheader114 ], [ %i.ck, %._crit_edge ] ; 8 uses
  %.sroa.7.0.insert.ext = zext i16 %.022119 to i48
  %.sroa.7.0.insert.shift = shl nuw nsw i48 %.sroa.7.0.insert.ext, 16 ; 2 uses
  %.sroa.7.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.7.0.insert.shift
  %i.cg = lshr i48 %.sroa.7.0.insert.insert, 28
  %i.ch = trunc i48 %i.cg to i16                  ; 2 uses
  %.sroa.7.0.extract.trunc.i = and i16 %i.ch, -16 ; 2 uses
  %i.ci = or i16 %i.ch, 15                        ; 2 uses
  %.not18.not.i = icmp sgt i16 %.sroa.7.0.extract.trunc.i, %i.ci
  br label %bb.l

._crit_edge120:                                   ; preds = %._crit_edge
  %i.cj = add nsw i16 %.023122, 1
  %.not.not = icmp slt i16 %.023122, %.sroa.8.0.extract.trunc
  br i1 %.not.not, label %.preheader114, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, !llvm.loop !372

._crit_edge:                                      ; preds = %bb.ad
  %i.ck = add nsw i16 %.022119, 1
  %.not32.not = icmp slt i16 %.022119, %.sroa.693.0.extract.trunc
  br i1 %.not32.not, label %.preheader, label %._crit_edge120, !llvm.loop !373

bb.l:                                             ; preds = %.preheader, %bb.ad
  %.021117 = phi i16 [ %.sroa.096.0.extract.trunc, %.preheader ], [ %i.fn, %bb.ad ] ; 9 uses
  %.sroa.0.0.insert.ext = zext i16 %.021117 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.7.0.insert.shift, %.sroa.0.0.insert.ext
  %i.cl = shl i16 %.021117, 4                     ; 2 uses
  %i.cm = lshr i48 %.sroa.0.0.insert.insert, 12
  %i.cn = trunc i48 %i.cm to i16                  ; 2 uses
  %.sroa.5.0.extract.trunc.i = and i16 %i.cn, -16 ; 2 uses
  %i.co = or disjoint i16 %i.cl, 15
  %i.cp = or i16 %i.cn, 15                        ; 2 uses
  %.not2114.i = icmp sgt i16 %.sroa.5.0.extract.trunc.i, %i.cp
  %or.cond.i76 = or i1 %.not18.not.i, %.not2114.i
  br i1 %or.cond.i76, label %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit", label %.preheader9.lr.ph.split.i

.preheader9.lr.ph.split.i:                        ; preds = %bb.l
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !374
  %i.cr = load i16, ptr %i.bd, align 4, !tbaa !361
  %i.cs = sext i16 %i.cr to i32
  %i.ct = load i32, ptr %i.i, align 8, !tbaa !371
  %i.cu = load i32, ptr %i.g, align 4, !tbaa !363
  %i.cv = load i16, ptr %i.bb, align 2, !tbaa !359
  %i.cw = sext i16 %i.cv to i32
  %i.cx = load i16, ptr %i.f, align 8, !tbaa !357
  %i.cy = sext i16 %i.cx to i32
  br label %.preheader9.i

.preheader9.i:                                    ; preds = %..critedge25_crit_edge.i, %.preheader9.lr.ph.split.i
  %.01719.i = phi i16 [ %.sroa.7.0.extract.trunc.i, %.preheader9.lr.ph.split.i ], [ %i.dl, %..critedge25_crit_edge.i ] ; 2 uses
  %i.cz = sext i16 %.01719.i to i32
  %i.da = sub nsw i32 %i.cz, %i.cs
  %i.db = mul nsw i32 %i.da, %i.ct
  %invariant.op16.i = sub i32 %i.db, %i.cw
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader9.i
  %.01515.i = phi i16 [ %.sroa.5.0.extract.trunc.i, %.preheader9.i ], [ %i.dk, %.critedge.i ] ; 2 uses
  %i.dc = sext i16 %.01515.i to i32
  %.reass17.i = add i32 %invariant.op16.i, %i.dc
  %i.dd = mul i32 %.reass17.i, %i.cu
  %invariant.op.i = sub i32 %i.dd, %i.cy
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.de = add i16 %.013.i, 1                      ; 2 uses
  %.not22.i = icmp sgt i16 %i.de, %i.co
  br i1 %.not22.i, label %.critedge.i, label %bb.n, !llvm.loop !375

bb.n:                                             ; preds = %bb.m, %.preheader.i
  %.013.i = phi i16 [ %i.cl, %.preheader.i ], [ %i.de, %bb.m ] ; 2 uses
  %i.df = sext i16 %.013.i to i32
  %.reass.i = add i32 %invariant.op.i, %i.df
  %i.dg = sext i32 %.reass.i to i64
  %i.dh = getelementptr inbounds i8, ptr %i.cq, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !90
  %i.dj = and i8 %i.di, 1
  %.not23.i = icmp eq i8 %i.dj, 0
  br i1 %.not23.i, label %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit", label %bb.m

.critedge.i:                                      ; preds = %bb.m
  %i.dk = add i16 %.01515.i, 1                    ; 2 uses
  %.not21.i = icmp sgt i16 %i.dk, %i.cp
  br i1 %.not21.i, label %..critedge25_crit_edge.i, label %.preheader.i, !llvm.loop !376

..critedge25_crit_edge.i:                         ; preds = %.critedge.i
  %i.dl = add i16 %.01719.i, 1                    ; 2 uses
  %.not.not.i = icmp sgt i16 %i.dl, %i.ci
  br i1 %.not.not.i, label %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit", label %.preheader9.i, !llvm.loop !377

"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit": ; preds = %..critedge25_crit_edge.i, %bb.n, %bb.l
  %.not12.i = phi i8 [ 1, %bb.n ], [ 0, %bb.l ], [ 0, %..critedge25_crit_edge.i ]
  %i.dm = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not12.i.i.i.i, label %.critedge.i77, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit", %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.dm, %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit" ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i ], [ %i.a, %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit" ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !162 ; 2 uses
  %i.dp = icmp slt i16 %i.do, %.021117
  br i1 %i.dp, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = icmp eq i16 %i.do, %.021117
  br i1 %i.dq, label %bb.p, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 34
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !163 ; 2 uses
  %i.dt = icmp slt i16 %i.ds, %.022119
  br i1 %i.dt, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.du = icmp eq i16 %i.ds, %.022119
  br i1 %i.du, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !164
  %i.dx = icmp slt i16 %i.dw, %.023122
  br i1 %i.dx, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.p, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i, %bb.q, %bb.o
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ 16, %bb.q ], [ 16, %bb.o ], [ 16, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.q ], [ %.014.i.i.i.i, %bb.o ], [ %.014.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i.i.i.i ] ; 12 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.dy, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !367

_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEE11lower_boundERS6_.exit.i: ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.thread11.i.i.i.i
  %i.dz = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.dz, label %.critedge.i77, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEE11lower_boundERS6_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !162 ; 2 uses
  %i.ec = icmp slt i16 %.021117, %i.eb
  br i1 %i.ec, label %.critedge.i77, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = icmp eq i16 %.021117, %i.eb
  br i1 %i.ed, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 34
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !163 ; 2 uses
  %i.eg = icmp slt i16 %.022119, %i.ef
  br i1 %i.eg, label %.critedge.i77, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = icmp eq i16 %.022119, %i.ef
  br i1 %i.eh, label %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, label %bb.ad

_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i: ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !164
  %i.ek = icmp slt i16 %.023122, %i.ej
  br i1 %i.ek, label %.critedge.i77, label %bb.ad

.critedge.i77:                                    ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.t, %bb.r, %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEE11lower_boundERS6_.exit.i, %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit"
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.a, %"_ZZNK8MMVManip16getCoveredBlocksEvENK3$_0clEN4core8vector3dIsEE.exit" ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEE11lower_boundERS6_.exit.i ], [ %.19.i.i.i.i, %bb.t ], [ %.19.i.i.i.i, %bb.r ]
  %i.el = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %.noexc79 unwind label %bb.ae  ; 10 uses

.noexc79:                                         ; preds = %.critedge.i77
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 3 uses
  store i16 %.021117, ptr %i.em, align 2, !tbaa !170
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 34
  store i16 %.022119, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !170
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  store i16 %.023122, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !170
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 38
  store i8 0, ptr %i.en, align 2, !tbaa !368
  %i.eo = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 2 dereferenceable(6) %i.em)
          to label %bb.v unwind label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.v:                                             ; preds = %.noexc79
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 6 uses
  %.not.i78 = icmp eq ptr %i.eq, null
  br i1 %.not.i78, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.er = icmp eq ptr %i.eq, %i.a
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.er
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.et = load i16, ptr %i.em, align 2, !tbaa !162 ; 2 uses
  %i.eu = load i16, ptr %i.es, align 2, !tbaa !162 ; 2 uses
  %i.ev = icmp slt i16 %i.et, %i.eu
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = icmp eq i16 %i.et, %i.eu
  br i1 %i.ew, label %bb.z, label %.thread.i

bb.z:                                             ; preds = %bb.y
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 34
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !163 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 34
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !163 ; 2 uses
  %i.fb = icmp slt i16 %i.ey, %i.fa
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = icmp eq i16 %i.ey, %i.fa
  br i1 %i.fc, label %bb.ab, label %.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !164
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !164
  %i.fh = icmp slt i16 %i.fe, %i.fg
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.fi = phi i1 [ false, %bb.y ], [ true, %bb.w ], [ true, %bb.z ], [ true, %bb.x ], [ false, %bb.aa ], [ %i.fh, %bb.ab ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.el, ptr noundef nonnull %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27
  %i.fj = load i64, ptr %i.e, align 8, !tbaa !41
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.e, align 8, !tbaa !41
  br label %bb.ad

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc79
  %i.fl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 40) #28
  br label %.body

bb.ac:                                            ; preds = %bb.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 40) #28
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i, %bb.u, %bb.s, %bb.ac, %.thread.i
  %.sroa.06.0.i = phi ptr [ %.19.i.i.i.i, %bb.u ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4core8vector3dIsEEEclERKS2_S5_.exit.i ], [ %.19.i.i.i.i, %bb.s ], [ %i.el, %.thread.i ], [ %i.ep, %bb.ac ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 38
  store i8 %.not12.i, ptr %i.fm, align 1, !tbaa !146
  %i.fn = add nsw i16 %.021117, 1
  %.not33.not = icmp slt i16 %.021117, %.sroa.091.0.extract.trunc
  br i1 %.not33.not, label %bb.l, label %._crit_edge, !llvm.loop !378

bb.ae:                                            ; preds = %.critedge.i77
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ae, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i, %bb.f, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread
  %.pn36.pn.pn = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.thread ], [ %i.bl, %bb.f ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cf, %bb.k ], [ %i.fo, %bb.ae ], [ %i.fl, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ]
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.fp)
          to label %_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %.body
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #29
  unreachable

_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit: ; preds = %.body
  resume { ptr, i32 } %.pn36.pn.pn

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge120, %.preheader114.lr.ph, %.preheader115, %bb.a
  ret void

bb.ag:                                            ; preds = %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIN4core8vector3dIsEEbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN8MapBlock6copyToER16VoxelManipulator(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN16VoxelManipulator8setFlagsERK9VoxelAreah(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(24), i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !104
  %i.d = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8, !tbaa !51
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !106
  %i.i = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.i, ptr %i.c, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !90
  store i8 %i.k, ptr %i.j, align 1, !tbaa !90
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !108
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.e:                                             ; preds = %.noexc.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !90
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK8MMVManip11blitBackAllEPSt3mapIN4core8vector3dIsEEP8MapBlockSt4lessIS3_ESaISt4pairIKS3_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::tuple.338", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.341", align 1    ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::map.218", align 8      ; 9 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !363
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %.not1.i = icmp eq i32 %i.h, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %.not2.i = icmp eq i32 %i.j, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZNK8MMVManip16getCoveredBlocksEv(ptr dead_on_unwind nonnull writable sret(%"class.std::map.218") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not8891 = icmp eq ptr %i.l, %i.m
  br i1 %.not8891, label %_ZN11StreamProxylsEPFRSoS0_E.exit53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not29 = icmp eq ptr %1, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.not.i32 = icmp eq ptr @_ZTH13warningstream, null
  %i.s = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.al
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit53, label %bb.am

bb.c:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.071.093 = phi ptr [ %i.l, %.lr.ph ], [ %i.do, %bb.al ] ; 3 uses
  %.092 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.al ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.071.093, i64 38
  %i.u = load i8, ptr %i.t, align 2, !tbaa !368, !range !145, !noundef !68
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.al

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.071.093, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.w, i64 6, i1 false), !tbaa.struct !219
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !335
  %.sroa.05.0.copyload = load i48, ptr %6, align 8
  %i.y = invoke noundef ptr @_ZN3Map20getBlockNoCreateNoExEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(144) %i.x, i48 %.sroa.05.0.copyload)
          to label %bb.e unwind label %.loopexit  ; 2 uses

end_hunk_1
