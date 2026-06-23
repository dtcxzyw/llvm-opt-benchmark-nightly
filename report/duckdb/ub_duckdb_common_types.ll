inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb5Value3MAPERKNS_11LogicalTypeES3_NS_6vectorIS0_Lb1ESaIS0_EEES6_:bb.a

_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EED2Ev.exit
  %i.kn = load ptr, ptr %11, align 8, !tbaa !1575
  %i.ko = load i64, ptr %i.m, align 8, !tbaa !1574
  %i.kp = shl i64 %i.ko, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kn, i8 0, i64 %i.kp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.kq = load ptr, ptr %11, align 8, !tbaa !1575 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.l
  br i1 %i.kr, label %_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.kq) #47
  br label %_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  ret void

bb.ct:                                            ; preds = %._crit_edge
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit118
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit118 ], [ %i.ks, %bb.ct ]
  call void @_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.q
  %.pn35.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn, %bb.cu ], [ %.pn.pn, %bb.q ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #46
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.l
  %.pn35.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.br, %bb.l ]
  resume { ptr, i32 } %.pn35.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIN6duckdb5ValueENS0_17ValueHashFunctionENS0_13ValueEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1580 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !351 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #46
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #47
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1581

_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1575
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1574
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !1575   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.i) #47
  br label %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb5ValueES1_SaIS1_ENSt8__detail9_IdentityENS0_13ValueEqualityENS0_17ValueHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

declare void @_ZN6duckdb11LogicalType3MAPES0_S0_(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.451) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1016
  %i.d = load ptr, ptr %0, align 8, !tbaa !1015   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1013 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 56
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #48 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.af, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.012.i.i.i.i, align 8, !tbaa !151, !alias.scope !1600, !noalias !1603
  %i.q = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !1603, !noalias !1600 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 6 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !152, !alias.scope !1603, !noalias !1600 ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false), !alias.scope !1605
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.q, ptr %.012.i.i.i.i, align 8, !tbaa !89, !alias.scope !1600, !noalias !1603
  %i.x = load i64, ptr %i.r, align 8, !tbaa !153, !alias.scope !1603, !noalias !1600
  store i64 %i.x, ptr %i.p, align 8, !tbaa !153, !alias.scope !1600, !noalias !1603
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !152, !alias.scope !1603, !noalias !1600
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.y = phi i64 [ %i.u, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !152, !alias.scope !1600, !noalias !1603
  store ptr %i.r, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !1603, !noalias !1600
  store i64 0, ptr %i.z, align 8, !tbaa !152, !alias.scope !1603, !noalias !1600
  store i8 0, ptr %i.r, align 8, !tbaa !153, !alias.scope !1603, !noalias !1600
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #46
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ac) #46
  %i.ad = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !1603, !noalias !1600 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ad) #47
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.k
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1606

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !1015
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit
  %i.ah = phi ptr [ %.pre, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.ah, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.ah) #47
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !1015
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !1013
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %1
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !1016
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5Value3MAPERKNS_27InsertionOrderPreservingMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %7 = alloca %"class.duckdb::vector.785", align 8 ; 8 uses
  %8 = alloca [2 x %"struct.std::pair.792"], align 8 ; 30 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 25)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb11LogicalType3MAPES0_S0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.o

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.d
  %i.c = load i8, ptr %3, align 8, !tbaa !533
  store i8 %i.c, ptr %0, align 8, !tbaa !533
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !482
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !482
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !363
  %i.j = load <2 x ptr>, ptr %i.g, align 8, !tbaa !363
  store <2 x ptr> %i.i, ptr %i.g, align 8, !tbaa !363
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !363
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #46
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #46
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !513
  %i.l = load ptr, ptr %1, align 8, !tbaa !1607   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1607 ; 2 uses
  %.not194 = icmp eq ptr %i.l, %i.n
  br i1 %.not194, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 19
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 117
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.r

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %.sroa.20.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ], [ %.sroa.20.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  %.sroa.12.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ], [ %.sroa.12.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %.sroa.0102.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ], [ %.sroa.0102.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  %i.aj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #48
          to label %.noexc unwind label %bb.au    ; 14 uses

.noexc:                                           ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 7 uses
  store i32 1, ptr %i.ak, align 8, !tbaa !409, !noalias !1609
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !411, !noalias !1609
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb15NestedValueInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aj, align 8, !tbaa !412, !noalias !1609
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 2, ptr %i.an, align 8, !tbaa !1287, !noalias !1609
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb15NestedValueInfoE, i64 16), ptr %i.am, align 8, !tbaa !412, !noalias !1609
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %.sroa.0102.0.lcssa, ptr %i.ao, align 8, !tbaa !560, !noalias !1609
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store ptr %.sroa.12.0.lcssa, ptr %i.ap, align 8, !tbaa !558, !noalias !1609
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr %.sroa.20.0.lcssa, ptr %i.aq, align 8, !tbaa !1550, !noalias !1609
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !1614
  %.not.i.i.i.i.i.i46 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i46, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  store i32 2, ptr %i.ak, align 8, !tbaa !3, !noalias !1614
  br label %_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.f:                                             ; preds = %.noexc
  %i.as = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !1614 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.f, %bb.e
  %i.at = load atomic i64, ptr %i.ak acquire, align 8, !noalias !1614 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.ak, align 8, !tbaa !409, !noalias !1614
  store i32 0, ptr %i.al, align 4, !tbaa !411, !noalias !1614
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !412, !noalias !1614
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1614
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46, !noalias !1614, !inline_history !1552
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !412, !noalias !1614
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1614
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46, !noalias !1614, !inline_history !1552
  br label %_ZN6duckdb15make_shared_ptrINS_15NestedValueInfoEJNS_6vectorINS_5ValueELb1ESaIS3_EEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15NestedValueInfoELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153, !noalias !1614
  %.not.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %i.av, -1
  store i32 %i.bd, ptr %i.ak, align 8, !tbaa !3, !noalias !1614
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.be = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4, !noalias !1614
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.i ], [ %i.be, %bb.j ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.k, label %_ZN6duckdb15make_shared_ptrINS_15NestedValueInfoEJNS_6vectorINS_5ValueELb1ESaIS3_EEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit, !prof !88

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #46, !noalias !1614
  br label %_ZN6duckdb15make_shared_ptrINS_15NestedValueInfoEJNS_6vectorINS_5ValueELb1ESaIS3_EEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.l:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #46
  br label %bb.ax

bb.m:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.bi, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit91

bb.r:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.sroa.0102.0198 = phi ptr [ null, %.lr.ph ], [ %.sroa.0102.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 7 uses
  %.sroa.12.0197 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 7 uses
  %.sroa.099.0196 = phi ptr [ %i.l, %.lr.ph ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 5 uses
  %.sroa.20.0195 = phi ptr [ null, %.lr.ph ], [ %.sroa.20.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  store ptr %i.o, ptr %10, align 8, !tbaa !151
  %i.bk = load ptr, ptr %.sroa.099.0196, align 8, !tbaa !89 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0196, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !108
  %i.bn = icmp ugt i64 %i.bm, 15
  br i1 %i.bn, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.r
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc47 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ; 2 uses

.noexc47:                                         ; preds = %.noexc.i
  store ptr %i.bo, ptr %10, align 8, !tbaa !89
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.bp, ptr %i.o, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc47, %bb.r
  %i.bq = phi ptr [ %i.bo, %.noexc47 ], [ %i.o, %bb.r ] ; 2 uses
  switch i64 %i.bm, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !153
  store i8 %i.br, ptr %i.bq, align 1, !tbaa !153
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  store i64 %i.bs, ptr %i.p, align 8, !tbaa !152
  %i.bt = load ptr, ptr %10, align 8, !tbaa !89
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %._crit_edge.i.i.i unwind label %bb.ag

._crit_edge.i.i.i:                                ; preds = %bb.u
  store ptr %i.q, ptr %8, align 8, !tbaa !151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.136, i64 3, i1 false)
  store i64 3, ptr %i.r, align 8, !tbaa !152
  store i8 0, ptr %i.ac, align 1, !tbaa !153
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %9) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.099.0196, i64 32
  store ptr %i.u, ptr %12, align 8, !tbaa !151
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.099.0196, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.by, ptr %i.a, align 8, !tbaa !108
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %.noexc.i50, label %._crit_edge.i.i49

.noexc.i50:                                       ; preds = %._crit_edge.i.i.i
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc51 unwind label %bb.ah  ; 2 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.ca, ptr %12, align 8, !tbaa !89
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.cb, ptr %i.u, align 8, !tbaa !153
  br label %._crit_edge.i.i49

._crit_edge.i.i49:                                ; preds = %.noexc51, %._crit_edge.i.i.i
  %i.cc = phi ptr [ %i.ca, %.noexc51 ], [ %i.u, %._crit_edge.i.i.i ] ; 2 uses
  switch i64 %i.by, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i49
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !153
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !153
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bw, i64 %i.by, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i49
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  store i64 %i.ce, ptr %i.v, align 8, !tbaa !152
  %i.cf = load ptr, ptr %12, align 8, !tbaa !89
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 0, ptr %i.cg, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %12)
          to label %._crit_edge.i.i.i53 unwind label %bb.ai

._crit_edge.i.i.i53:                              ; preds = %bb.x
  store ptr %i.w, ptr %i.t, align 8, !tbaa !151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.137, i64 5, i1 false)
  store i64 5, ptr %i.x, align 8, !tbaa !152
  store i8 0, ptr %i.ad, align 1, !tbaa !153
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %11) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ch = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #48
          to label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE11_M_allocateEm.exit.i.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %._crit_edge.i.i.i53
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE11_M_allocateEm.exit.i.i.i: ; preds = %._crit_edge.i.i.i53
  store ptr %i.ch, ptr %7, align 8, !tbaa !1615
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 192
  store ptr %i.cj, ptr %i.aa, align 8, !tbaa !1617
  %i.ck = invoke noundef ptr @_ZSt16__do_uninit_copyIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEPS9_ET0_T_SE_SD_(ptr noundef nonnull %8, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ch)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE11_M_allocateEm.exit.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #47
  br label %.body

bb.z:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.ck, ptr %i.ab, align 8, !tbaa !1618
  invoke void @_ZN6duckdb5Value6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, ptr noundef nonnull %7)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %.not.i.i = icmp eq ptr %.sroa.12.0197, %.sroa.20.0195
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12.0197, ptr noundef nonnull align 8 dereferenceable(64) %6) #46
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cm = ptrtoint ptr %.sroa.12.0197 to i64
  %i.cn = ptrtoint ptr %.sroa.0102.0198 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775744
  br i1 %i.cp, label %bb.ad, label %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ac
  %i.cq = ashr exact i64 %i.co, 6                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 144115188075855871)
  %i.cu = select i1 %i.cs, i64 144115188075855871, i64 %i.ct ; 3 uses
  %.not.i.i92 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i92)
  %i.cv = shl nuw nsw i64 %i.cu, 6
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #48
          to label %.noexc95 unwind label %.loopexit117 ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %6) #46
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0102.0198, %.sroa.12.0197
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc95, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %i.cw, %.noexc95 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0102.0198, %.noexc95 ] ; 3 uses
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i.i) #46
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i.i) #46
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.cy, %.sroa.12.0197
  br i1 %.not.i.i.i.i.i93, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1567

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc95
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cw, %.noexc95 ], [ %i.cz, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i = icmp eq ptr %.sroa.0102.0198, null
  br i1 %.not.i23.i, label %.noexc56, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0102.0198) #47
  br label %.noexc56

.noexc56:                                         ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.da = getelementptr inbounds nuw [64 x i8], ptr %i.cw, i64 %i.cu
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc56, %bb.ab
  %.sroa.20.1 = phi ptr [ %i.da, %.noexc56 ], [ %.sroa.20.0195, %bb.ab ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %.noexc56 ], [ %.sroa.12.0197, %bb.ab ]
  %.sroa.0102.1 = phi ptr [ %i.cw, %.noexc56 ], [ %.sroa.0102.0198, %bb.ab ] ; 2 uses
  %.sroa.12.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 64 ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #46
  %i.db = load ptr, ptr %7, align 8, !tbaa !1615  ; 3 uses
  %i.dc = load ptr, ptr %i.ab, align 8, !tbaa !1618 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.db, %i.dc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i ], [ %i.db, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dd) #46
  %i.de = load ptr, ptr %.05.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.de) #47
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dh, %i.dc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1619

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !1615
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit
  %13 = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.db, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %13, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %13) #47
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEES9_EvT_SB_RSaIT0_E.exit.i, %bb.af
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.af) #46
  %i.di = load ptr, ptr %i.ae, align 8, !tbaa !89 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.ag
  br i1 %i.dj, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.di) #47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ah) #46
  %i.dk = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ai
  br i1 %i.dl, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dk) #47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit.1

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit.1: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #46
  %i.dm = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.u
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit.1
  call void @_ZdlPv(ptr noundef %i.dm) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #46
  %i.do = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.o
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.do) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.099.0196, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.dq, %i.n
  br i1 %.not, label %._crit_edge, label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread: ; preds = %.noexc.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %.loopexit

bb.ag:                                            ; preds = %bb.u
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ah:                                            ; preds = %.noexc.i50
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.ai:                                            ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit117:                                     ; preds = %_ZNKSt6vectorIN6duckdb5ValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit117
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #46
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn34 = phi { ptr, i32 } [ %lpad.phi, %bb.ak ], [ %i.dv, %bb.aj ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #46
  br label %.body

.body:                                            ; preds = %.thread, %bb.y, %bb.al
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.al ], [ %i.ci, %.thread ], [ %i.cl, %bb.y ]
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dx) #46
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !89 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.dy) #47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.eb) #46
  %i.ec = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62
  call void @_ZdlPv(ptr noundef %i.ec) #47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60.1
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #46
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1, %bb.ai
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1 ], [ %i.du, %bb.ai ] ; 2 uses
  %.1 = phi i1 [ true, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit62.1 ], [ false, %bb.ai ] ; 2 uses
  %i.ef = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.u
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.ef) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.ah
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.ah ], [ %.pn34.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.pn34.pn.pn.pn, %bb.am ]
  %.2 = phi i1 [ false, %bb.ah ], [ %.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %.1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #46
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %bb.ag
  %.pn34.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.ds, %bb.ag ] ; 2 uses
  %.111 = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %8, %bb.ag ] ; 2 uses
  %.4 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ false, %bb.ag ]
  %i.eh = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.o
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.eh) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %i.ej = icmp eq ptr %8, %.111
  %or.cond = select i1 %.4, i1 true, i1 %i.ej
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71
  %i.ek = phi ptr [ %i.el, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71 ], [ %.111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -96 ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -64
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.em) #46
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !89 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.ek, i64 -80
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %.preheader
  call void @_ZdlPv(ptr noundef %i.en) #47
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71: ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  %i.eq = icmp eq ptr %i.el, %8
  br i1 %i.eq, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %.pn34.pn.pn.pn.pn.pn.pn.pn116 = phi { ptr, i32 } [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ], [ %.pn34.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn34.pn.pn.pn.pn.pn.pn, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEED2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.av

_ZN6duckdb15make_shared_ptrINS_15NestedValueInfoEJNS_6vectorINS_5ValueELb1ESaIS3_EEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.am, ptr %i.er, align 8, !tbaa !1292
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !408 ; 8 uses
  store ptr %i.aj, ptr %i.es, align 8, !tbaa !408
  %.not.i.i.i.i72 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb15make_shared_ptrINS_15NestedValueInfoEJNS_6vectorINS_5ValueELb1ESaIS3_EEEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 4 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 4294967297
end_hunk_0
begin_hunk_1_@isspace
declare i32 @isspace(i32 noundef) local_unnamed_addr #40

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2788
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2783 ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !469

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !153
  store i8 %i.s, ptr %i.g, align 1, !tbaa !153
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !2783
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !2783
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !469

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !153
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !469

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !153
  store i8 %i.ad, ptr %1, align 1, !tbaa !153
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !469

bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !153
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !153
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !2783
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !2783
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !469

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !153
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !2783
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !2783
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !469

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !153
  store i8 %i.au, ptr %1, align 1, !tbaa !153
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !2781  ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.364) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #48
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !469

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !153
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !153
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !469

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !153
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !153
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !469

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !153
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZdlPv(ptr noundef nonnull %i.av) #47
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !2781
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !2783
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !2788
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRcRKclEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46, !noalias !3431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !3431
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKcRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_RSt6vectorINS_20ExceptionFormatValueESaISF_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !115, !noalias !3431 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118, !noalias !3431 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !115, !noalias !3431
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJcclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #47
  br label %_ZN6duckdb9Exception16ConstructMessageIJcclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46, !noalias !3431
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJcclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46, !noalias !3431
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJcclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJcclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !89     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKcRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_RSt6vectorINS_20ExceptionFormatValueESaISF_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.a = load i8, ptr %3, align 1, !tbaa !153, !noalias !3434
  %i.b = sext i8 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !153
  store i64 %i.q, ptr %i.i, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !152
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !152
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
end_hunk_1
begin_hunk_2_@_ZN6duckdb17SerializationData5UnsetINS_11LogicalTypeEEEvv:bb.a
bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !6529 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -8
  br label %_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEE3popEv.exit

bb.j:                                             ; preds = %_ZN6duckdb17SerializationData14AssertNotEmptyISt17reference_wrapperIKNS_11LogicalTypeEEEEvRKSt5stackIT_St5dequeIS7_SaIS7_EEE.exit
  tail call void @_ZdlPv(ptr noundef %i.m) #47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3299
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !2072
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2073 ; 3 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !2068
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.s, ptr %i.t, align 8, !tbaa !3362
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 504
  br label %_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEE3popEv.exit

_ZNSt5stackISt17reference_wrapperIKN6duckdb11LogicalTypeEESt5dequeIS4_SaIS4_EEE3popEv.exit: ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi ptr [ %i.n, %bb.i ], [ %i.u, %bb.j ]
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !2061
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2143
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2146 ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !153     ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !469

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !153
  store i8 %i.q, ptr %i.d, align 1, !tbaa !153
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !2146
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !2146
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !469

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.z, ptr %i.y, align 1, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !2146
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !469

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !153
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !2146
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !2146
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !2145  ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.461) #49
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !153
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !469

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !153
  store i8 %i.az, ptr %i.au, align 1, !tbaa !153
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.x, %bb.w, %bb.v
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %2 ; 3 uses
  %i.bb = sub i64 %i.f, %i.ar                     ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %bb.z, !prof !469

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr align 1 %1, i64 %i.bb, i1 false)
  br label %bb.ab

bb.z:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bd = icmp eq i64 %i.bb, 1
  br i1 %i.bd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.be = load i8, ptr %1, align 1, !tbaa !153
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !153
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb
  %.not.i75 = icmp eq ptr %i.ai, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #47
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ab, %bb.ac
  store ptr %i.au, ptr %0, align 8, !tbaa !2145
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !2146
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !2143
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %bb.k, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69, %bb.q, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb12VectorBufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb12VectorBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #46, !inline_history !6530
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb12VectorBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb12VectorBufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb12VectorBufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3391 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !153
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #46
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12VectorBufferC2Em(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::AllocatedData", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !2181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef %i.e, i64 noundef %1)
          to label %_ZN6duckdb9Allocator8AllocateEm.exit unwind label %bb.f

_ZN6duckdb9Allocator8AllocateEm.exit:             ; preds = %.noexc
  %i.f = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2) #46 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %.noexc, %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #46
  br label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb9Allocator8AllocateEm.exit, %bb.b
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !603  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i: ; preds = %bb.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !412
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.i) #46, !inline_history !3388
  br label %_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !151
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !152  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !89
  %i.o = load i64, ptr %i.i, align 8, !tbaa !153
  store i64 %i.o, ptr %i.g, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_2
