Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_session?download=true
inline.NumInlined: 13210
inline.NumDeleted: 5212
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE8_M_eraseESt17integral_constantIbLb0EERS7_:bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.2, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !101 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2, i64 56 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !102
  %i.de = add i64 %i.dd, 1
  tail call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.2, i64 24 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !102
  %i.dj = add i64 %i.di, 1
  tail call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #42
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.2, i64 noundef 80) #42
  %i.dk = add i64 %.040, 1                        ; 3 uses
  %.not52 = icmp eq ptr %i.cx, %.04187
  br i1 %.not52, label %bb.q, label %bb.p, !llvm.loop !1308

bb.q:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !300
  %i.dm = sub i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %i.a, align 8, !tbaa !300
  %i.dn = load ptr, ptr %0, align 8, !tbaa !122   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.046 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !174 ; 2 uses
  %i.dq = icmp eq ptr %.045, %i.dp
  br i1 %i.dq, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %.not.i65 = icmp ne ptr %.04187, null           ; 2 uses
  %.not9.i = icmp eq i64 %i.cw, %.046
  %or.cond.i = and i1 %.not.i65, %.not9.i
  br i1 %or.cond.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i65, label %bb.t, label %._crit_edge.i

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cw
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !174
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %.045
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  store ptr %.04187, ptr %i.ds, align 8, !tbaa !298
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  store ptr null, ptr %i.do, align 8, !tbaa !174
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit

bb.w:                                             ; preds = %bb.q
  %.not53 = icmp eq i64 %i.cw, %.046
  br i1 %.not53, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cw
  store ptr %.045, ptr %i.du, align 8, !tbaa !174
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit: ; preds = %bb.v, %bb.r, %bb.w, %bb.x
  store ptr %.04187, ptr %.045, align 8, !tbaa !167
  br label %.critedge55

.critedge55:                                      ; preds = %bb.l, %.loopexit.i, %bb.i, %bb.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i, %bb.e, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit
  %.1 = phi i64 [ %i.dk, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEEm.exit ], [ 0, %bb.e ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us.i ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %.loopexit.i ], [ 0, %bb.l ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4crow7ci_hashclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #41
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not14 = icmp samesign eq i64 %1, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSt7toupperIcET_S0_RKSt6locale.exit, %bb.a
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %_ZSt7toupperIcET_S0_RKSt6locale.exit ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret i64 %.011.lcssa

.lr.ph:                                           ; preds = %bb.a, %_ZSt7toupperIcET_S0_RKSt6locale.exit
  %.016 = phi ptr [ %i.t, %_ZSt7toupperIcET_S0_RKSt6locale.exit ], [ %2, %bb.a ] ; 2 uses
  %.01115 = phi i64 [ %i.s, %_ZSt7toupperIcET_S0_RKSt6locale.exit ], [ 0, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.016, align 1, !tbaa !102
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #41
  %i.d = load ptr, ptr %3, align 8, !tbaa !301
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !305
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !307  ; 3 uses
  %.not.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZSt16__throw_bad_castv() #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i: ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(570) %i.h, i8 noundef signext %i.b)
          to label %_ZSt7toupperIcET_S0_RKSt6locale.exit unwind label %.loopexit, !inline_history !1309

_ZSt7toupperIcET_S0_RKSt6locale.exit:             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
  %i.m = sext i8 %i.l to i64
  %i.n = shl i64 %.01115, 6
  %i.o = lshr i64 %.01115, 2
  %i.p = add i64 %i.n, 2654435769
  %i.q = add i64 %i.p, %i.o
  %i.r = add i64 %i.q, %i.m
  %i.s = xor i64 %i.r, %.01115                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.016, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.t, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  %i.c = icmp eq i64 %2, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !103  ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !103
  %.not.i.i.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.0813.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0813.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !102
  %i.m = sext i8 %i.l to i32
  %i.n = tail call i32 @toupper(i32 noundef %i.m) #46
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %.0813.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !102
  %i.q = sext i8 %i.p to i32
  %i.r = tail call i32 @toupper(i32 noundef %i.q) #46
  %.not10.i.i.i = icmp eq i32 %i.n, %i.r          ; 2 uses
  %i.s = add nuw i64 %.0813.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp ne i64 %i.s, %i.f
  %or.cond.not = select i1 %.not10.i.i.i, i1 %exitcond.not.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, !llvm.loop !4

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader.i.i.i ], [ %.not10.i.i.i, %.lr.ph.i.i.i ]
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE10_M_emplaceIJS5_S5_EEENSA_14_Node_iteratorIS8_Lb0ELb1EEENSA_20_Node_const_iteratorIS8_Lb0ELb1EEESt17integral_constantIbLb0EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::__detail::_Select1st, crow::ci_key_eq, crow::ci_hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, false>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !1310
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #44 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !167
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !97
  %i.d = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !103  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !101
  %i.k = load i64, ptr %i.e, align 8, !tbaa !102
  store i64 %i.k, ptr %i.c, align 8, !tbaa !102
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.b
  %i.l = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.h, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !tbaa !103
  store ptr %i.e, ptr %2, align 8, !tbaa !101
  store i64 0, ptr %i.m, align 8, !tbaa !103
  store i8 0, ptr %i.e, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !97
  %i.q = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !103  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS5_S5_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.q, ptr %i.o, align 8, !tbaa !101
  %i.x = load i64, ptr %i.r, align 8, !tbaa !102
  store i64 %i.x, ptr %i.p, align 8, !tbaa !102
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre11.i.i = load i64, ptr %.phi.trans.insert10.i.i, align 8, !tbaa !103
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS5_S5_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS5_S5_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.y = phi i64 [ %i.u, %bb.c ], [ %.pre11.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !103
  store ptr %i.r, ptr %3, align 8, !tbaa !101
  store i64 0, ptr %i.aa, align 8, !tbaa !103
  store i8 0, ptr %i.r, align 8, !tbaa !102
  store ptr %i.a, ptr %i.z, align 8, !tbaa !311
  %i.ac = invoke { ptr, i64 } @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_compute_hash_codeENSA_20_Node_const_iteratorIS8_Lb0ELb1EEERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS5_S5_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %i.af = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb1EEEmSN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret ptr %i.af

bb.e:                                             ; preds = %bb.d, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeC2IJS5_S5_EEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEE20_M_compute_hash_codeENSA_20_Node_const_iteratorIS8_Lb0ELb1EEERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !300
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %..thread32_crit_edge

..thread32_crit_edge:                             ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !101
  br label %.thread32

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  %.pre63.pre = load ptr, ptr %2, align 8, !tbaa !101 ; 5 uses
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !103
  %.fr54 = freeze i64 %i.d                        ; 3 uses
  %i.e = icmp eq i64 %.fr54, 0
  br i1 %i.e, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us
  %.sroa.019.047.us = phi ptr [ %i.h, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us ], [ %1, %.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.047.us, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !103
  %.not.i.i.i.us = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.us, label %.loopexit39, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us: ; preds = %.preheader.split.us
  %i.h = load ptr, ptr %.sroa.019.047.us, align 8, !tbaa !167 ; 2 uses
  %.not36.us = icmp eq ptr %i.h, null
  br i1 %.not36.us, label %.thread, label %.preheader.split.us, !llvm.loop !1311

.preheader.split:                                 ; preds = %.preheader, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.019.047 = phi ptr [ %i.v, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ], [ %1, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.019.047, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.047, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !103
  %.not.i.i.i = icmp eq i64 %.fr54, %i.l
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = add nuw i64 %.0813.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %.fr54
  br i1 %exitcond.not.i.i.i, label %.loopexit39, label %.lr.ph.i.i.i, !llvm.loop !4

.lr.ph.i.i.i:                                     ; preds = %.preheader.split, %bb.c
  %.0813.i.i.i = phi i64 [ %i.m, %bb.c ], [ 0, %.preheader.split ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre63.pre, i64 %.0813.i.i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !102
  %i.p = sext i8 %i.o to i32
  %i.q = tail call i32 @toupper(i32 noundef %i.p) #46
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.0813.i.i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !102
  %i.t = sext i8 %i.s to i32
  %i.u = tail call i32 @toupper(i32 noundef %i.t) #46
  %.not10.i.i.i = icmp eq i32 %i.q, %i.u
  br i1 %.not10.i.i.i, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i, %.preheader.split
  %i.v = load ptr, ptr %.sroa.019.047, align 8, !tbaa !167 ; 2 uses
  %.not36 = icmp eq ptr %i.v, null
  br i1 %.not36, label %.thread, label %.preheader.split, !llvm.loop !1311

.loopexit39:                                      ; preds = %bb.c, %.preheader.split.us
  %.sroa.019.046 = phi ptr [ %.sroa.019.047.us, %.preheader.split.us ], [ %.sroa.019.047, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.046, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !173
  br label %bb.e

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.us, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.049 = load ptr, ptr %i.y, align 8, !tbaa !167 ; 3 uses
  %.not3750 = icmp eq ptr %.sroa.0.049, %1
  br i1 %.not3750, label %.thread32, label %.lr.ph

.lr.ph:                                           ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !103
  %.fr = freeze i64 %i.aa                         ; 3 uses
  %i.ab = icmp eq i64 %.fr, 0
  br i1 %i.ab, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit12.us
  %.sroa.0.051.us = phi ptr [ %.sroa.0.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit12.us ], [ %.sroa.0.049, %.lr.ph ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.051.us, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !103
  %.not.i.i.i5.us = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i5.us, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit12.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit12.us: ; preds = %.lr.ph.split.us
  %.sroa.0.0.us = load ptr, ptr %.sroa.0.051.us, align 8, !tbaa !167 ; 2 uses
  %.not37.us = icmp eq ptr %.sroa.0.0.us, %1
  br i1 %.not37.us, label %.thread32, label %.lr.ph.split.us, !llvm.loop !1312

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN4crow9ci_key_eqENSB_7ci_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb0EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit12
end_hunk_0
begin_hunk_1_@_ZN4asio6detail14do_throw_errorERKSt10error_code:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %common.resume

_ZNSt12system_errorC2ESt10error_code.exit:        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %2, align 8, !tbaa !284
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %.sroa.0.0.copyload, ptr %i.o, align 8, !tbaa !242
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.21.0.copyload, ptr %.sroa.35.0..sroa_idx.i, align 8, !tbaa !255
  %i.p = call ptr @__cxa_allocate_exception(i64 32) #41 ; 4 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %i.p, align 8, !tbaa !284
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !698
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #40
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZNSt12system_errorC2ESt10error_code.exit
  unreachable

bb.d:                                             ; preds = %_ZNSt12system_errorC2ESt10error_code.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #11

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio10io_contextC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #44 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZN4asio6detail11posix_mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_ZN4asio17execution_contextC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %.body4, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %.body4 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #42
  br label %common.resume

_ZN4asio17execution_contextC2Ev.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.d, align 8, !tbaa !699
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.e, align 8, !tbaa !372
  store ptr %i.a, ptr %0, align 8, !tbaa !366
  %i.f = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #44
          to label %bb.c unwind label %bb.h       ; 20 uses

bb.c:                                             ; preds = %_ZN4asio17execution_contextC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %0, ptr %i.h, align 8, !tbaa !699
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !377
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4asio6detail9schedulerE, i64 16), ptr %i.f, align 8, !tbaa !284
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !443
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  invoke void @_ZN4asio6detail11posix_mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 1, ptr %i.l, align 8, !tbaa !420
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  invoke void @_ZN4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #41 ; 0 uses
  br label %.body

bb.e:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store ptr null, ptr %i.p, align 8, !tbaa !453
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  store ptr @_ZN4asio6detail9scheduler16get_default_taskERNS_17execution_contextE, ptr %i.q, align 8, !tbaa !700
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i8 1, ptr %i.s, align 8, !tbaa !452
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.t, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.u, align 4, !tbaa !701
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  store ptr null, ptr %i.v, align 8, !tbaa !702
  %i.w = load ptr, ptr %0, align 8, !tbaa !366
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_9schedulerEEE, ptr %1, align 8, !tbaa !634
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !635
  invoke void @_ZN4asio6detail16service_registry14do_add_serviceERKNS_17execution_context7service3keyEPS3_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !284
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(256) %i.f) #41, !inline_history !1744
  br label %.body4

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ac, align 8, !tbaa !703
  ret void

bb.h:                                             ; preds = %_ZN4asio17execution_contextC2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body4

bb.i:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.n, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 256) #42
  br label %.body4

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.h ], [ %i.y, %bb.f ]
  call void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #41
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(380) ptr @_ZN4crow6loggerlsIA27_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(380) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.b = load i32, ptr %i.a, align 8, !tbaa !282
  %i.c = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not = icmp slt i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4asio6detail9scheduler16get_default_taskERNS_17execution_contextE(ptr noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !366    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_13epoll_reactorEEE, ptr %1, align 8, !tbaa !634
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !635
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !704, !nonnull !239, !align !412
  %i.e = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_13epoll_reactorENS_17execution_contextEEEPNS4_7serviceEPv, ptr noundef nonnull %i.d), !inline_history !1745
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9schedulerC2ERNS_17execution_contextEibPFPNS0_14scheduler_taskES3_E(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %6 = alloca %"class.asio::detail::posix_signal_blocker", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.b, align 8, !tbaa !699
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !377
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4asio6detail9schedulerE, i64 16), ptr %0, align 8, !tbaa !284
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = icmp eq i32 %2, 1
  %i.f = and i32 %2, -65535
  %.not = icmp eq i32 %i.f, -1525678080           ; 2 uses
  %i.g = and i32 %2, -65532
  %.not15 = icmp eq i32 %i.g, -1525678080
  %i.h = or i1 %i.e, %.not15
  %narrow = or i1 %i.h, %.not
  %i.i = zext i1 %narrow to i8
  store i8 %i.i, ptr %i.d, align 8, !tbaa !443
  %.not.not = xor i1 %.not, true
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN4asio6detail11posix_mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  %i.k = zext i1 %.not.not to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %i.k, ptr %i.l, align 8, !tbaa !420
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.m)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.n, align 8, !tbaa !453
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %4, ptr %i.o, align 8, !tbaa !700
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.q, align 8, !tbaa !452
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.r, i8 0, i64 26, i1 false)
  store i32 %2, ptr %i.t, align 4, !tbaa !701
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !702
  br i1 %3, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.v = atomicrmw add ptr %i.r, i64 1 seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store i8 0, ptr %6, align 8, !tbaa !707
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.w = call i32 @sigfillset(ptr noundef nonnull %5) #41 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.y = call i32 @pthread_sigmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %i.x) #41
  %i.z = icmp eq i32 %i.y, 0                      ; 2 uses
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %6, align 8, !tbaa !707
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.ab = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %bb.d unwind label %bb.g       ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 0, ptr %i.ac, align 8, !tbaa !509
  %i.ad = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #44
          to label %.noexc unwind label %.split   ; 3 uses

.noexc:                                           ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio6detail12posix_thread4funcINS0_9scheduler15thread_functionEEE, i64 16), ptr %i.ad, align 8, !tbaa !284
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %0, ptr %i.ae, align 8, !tbaa !703
  invoke void @_ZN4asio6detail12posix_thread12start_threadEPNS1_9func_baseE(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, ptr noundef nonnull %i.ad)
          to label %_ZN4asio6detail12posix_threadC2INS0_9scheduler15thread_functionEEET_j.exit unwind label %.split

_ZN4asio6detail12posix_threadC2INS0_9scheduler15thread_functionEEET_j.exit: ; preds = %.noexc
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !702
  %i.af = load i8, ptr %6, align 8, !tbaa !707, !range !238, !noundef !239
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %_ZN4asio6detail20posix_signal_blockerD2Ev.exit

bb.e:                                             ; preds = %_ZN4asio6detail12posix_threadC2INS0_9scheduler15thread_functionEEET_j.exit
  %i.ah = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.x, ptr noundef null) #41 ; 0 uses
  br label %_ZN4asio6detail20posix_signal_blockerD2Ev.exit

_ZN4asio6detail20posix_signal_blockerD2Ev.exit:   ; preds = %_ZN4asio6detail12posix_threadC2INS0_9scheduler15thread_functionEEET_j.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split:                                           ; preds = %.noexc, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 16) #42
  %.pre = load i8, ptr %6, align 8, !tbaa !707, !range !238
  %i.ak = trunc nuw i8 %.pre to i1
  br i1 %i.ak, label %bb.h, label %_ZN4asio6detail20posix_signal_blockerD2Ev.exit21

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.z, label %bb.h, label %_ZN4asio6detail20posix_signal_blockerD2Ev.exit21

bb.h:                                             ; preds = %.split, %bb.g
  %.pn23 = phi { ptr, i32 } [ %i.aj, %.split ], [ %i.al, %bb.g ]
  %i.am = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %i.x, ptr noundef null) #41 ; 0 uses
  br label %_ZN4asio6detail20posix_signal_blockerD2Ev.exit21

_ZN4asio6detail20posix_signal_blockerD2Ev.exit21: ; preds = %.split, %bb.g, %bb.h
  %.pn22 = phi { ptr, i32 } [ %i.aj, %.split ], [ %i.al, %bb.g ], [ %.pn23, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZN4asio6detail8op_queueINS0_19scheduler_operationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.s) #41
  %i.an = call i32 @pthread_cond_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #41 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %_ZN4asio6detail20posix_signal_blockerD2Ev.exit, %bb.b
  ret void

bb.j:                                             ; preds = %_ZN4asio6detail20posix_signal_blockerD2Ev.exit21, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn22, %_ZN4asio6detail20posix_signal_blockerD2Ev.exit21 ], [ %i.ai, %bb.f ]
  %i.ao = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #41 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail11posix_mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::system_error", align 8 ; 6 uses
  %i.a = tail call i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #41 ; 2 uses
  %i.b = load atomic i8, ptr @_ZGVZN4asio15system_categoryEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4asio5error19get_system_categoryEv.exit, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4asio5error19get_system_categoryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3_V214error_categoryD2Ev, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4asio15system_categoryEvE8instance) #41
  br label %_ZN4asio5error19get_system_categoryEv.exit

_ZN4asio5error19get_system_categoryEv.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4asio6detail11throw_errorERKSt10error_codePKc.exit, label %.noexc

.noexc:                                           ; preds = %_ZN4asio5error19get_system_categoryEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 %i.a, ptr nonnull @_ZZN4asio15system_categoryEvE8instance, ptr noundef nonnull @.str.326)
  %i.f = call ptr @__cxa_allocate_exception(i64 32) #41 ; 4 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1) #41
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %i.f, align 8, !tbaa !284
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !698
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #40
          to label %.noexc.i.i unwind label %.body

.noexc.i.i:                                       ; preds = %.noexc
  unreachable

.body:                                            ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  resume { ptr, i32 } %i.i

_ZN4asio6detail11throw_errorERKSt10error_codePKc.exit: ; preds = %_ZN4asio5error19get_system_categoryEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.a = load ptr, ptr %2, align 8, !tbaa !284, !noalias !1752
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1752
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !1
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.259, i64 noundef 2)
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !97, !alias.scope !1753
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !103  ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !101, !alias.scope !1753
  %i.m = load i64, ptr %i.g, align 8, !tbaa !102
  store i64 %i.m, ptr %i.e, align 8, !tbaa !102, !alias.scope !1753
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !103
  br label %bb.c
end_hunk_1
begin_hunk_2_@_ZN4asio6detail9scheduler3runERSt10error_code:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #41 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.az, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !448
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.af, align 8, !tbaa !450
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ah = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !449
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !1777
  store ptr %4, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %5, align 8, !tbaa !1778
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !420, !range !238, !noundef !239
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit: ; preds = %bb.i, %bb.j
  %.sink.i = phi i8 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit, %bb.m
  %.sink = phi i8 [ 1, %bb.m ], [ %.sink.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  %.0.ph = phi i64 [ %spec.select, %bb.m ], [ 0, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit ]
  store i8 %.sink, ptr %i.ap, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, %bb.l
  %.0 = phi i64 [ %spec.select, %bb.l ], [ %.0.ph, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split ] ; 2 uses
  %i.aq = invoke noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1) ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !420, !range !238, !noundef !239
  %i.au = trunc nuw i8 %i.at to i1
  %.not19 = xor i1 %i.au, true
  %i.av = load i8, ptr %i.ap, align 8, !range !238
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond = select i1 %.not19, i1 true, i1 %i.aw
  br i1 %or.cond, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.m, !llvm.loop !1776

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.sink.split, !llvm.loop !1776

bb.n:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load i8, ptr %i.ap, align 8, !tbaa !727, !range !238, !noundef !239
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bc = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %i.ap, align 8, !tbaa !727, !range !238, !noundef !239
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16

bb.q:                                             ; preds = %bb.p
  %i.bh = load ptr, ptr %5, align 8, !tbaa !728, !nonnull !239, !align !412
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bi) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !1777
  store ptr %i.bk, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !430 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bp = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %i.bu, %bb.u ] ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !416 ; 2 uses
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !430
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.bn, align 8, !tbaa !431
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.bp, align 8, !tbaa !416
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !418
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store i32 0, ptr %2, align 8, !tbaa !262
  store ptr %i.a, ptr %i.bo, align 8, !tbaa !263
  invoke void %i.bt(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef 0)
          to label %bb.u unwind label %bb.v, !inline_history !17

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !430 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i17, label %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.r

bb.v:                                             ; preds = %bb.t
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #43
  unreachable

_ZN4asio6detail21scheduler_thread_infoD2Ev.exit:  ; preds = %bb.u, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit16
  call void @_ZN4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZN4asio6detail9scheduler4stopEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockD2Ev.exit: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !1777
  store ptr %i.bx, ptr %i.ah, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %common.resume

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit
  %.012 = phi i64 [ %.0, %_ZN4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i ], [ 0, %bb.f ]
  ret i64 %.012
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4asio6detail9scheduler10do_run_oneERNS0_27conditionally_enabled_mutex11scoped_lockERNS0_21scheduler_thread_infoERKSt10error_code(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.asio::detail::scheduler::task_cleanup", align 8 ; 8 uses
  %7 = alloca %"struct.asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !507, !range !238, !noundef !239
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !430  ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !416  ; 2 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !430
  %i.u = icmp eq ptr %i.t, null                   ; 2 uses
  %.not = icmp eq ptr %i.r, %i.f                  ; 2 uses
  br i1 %i.u, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !431
  br i1 %.not, label %bb.d, label %bb.s

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread: ; preds = %bb.c
  store ptr null, ptr %i.r, align 8, !tbaa !416
  br i1 %.not, label %bb.e, label %bb.t

bb.d:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  store i8 0, ptr %i.g, align 8, !tbaa !452
  br label %bb.i

bb.e:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  store i8 1, ptr %i.g, align 8, !tbaa !452
  %i.v = load i8, ptr %i.h, align 8, !tbaa !443, !range !238, !noundef !239
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 8, !tbaa !420, !range !238, !noundef !239
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i64, ptr %i.j, align 8, !tbaa !451 ; 2 uses
  %i.ac = or i64 %i.ab, 1
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !451
  %i.ad = icmp ugt i64 %i.ab, 1
  %i.ae = load i8, ptr %i.k, align 8, !tbaa !727, !range !238, !noundef !239
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #41 ; 0 uses
  store i8 0, ptr %i.k, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i, %bb.g
  br i1 %i.ad, label %bb.h, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.h:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i
  %i.ai = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !727, !range !238, !noundef !239
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.j, label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i8, ptr %i.am, align 8, !tbaa !420, !range !238, !noundef !239
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #41 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.k, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i, %bb.i, %bb.h, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock6unlockEv.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !732
  store ptr %1, ptr %i.l, align 8, !tbaa !733
  store ptr %2, ptr %i.m, align 8, !tbaa !734
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !453 ; 2 uses
  %i.as = sext i1 %i.u to i64
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !284
  %i.au = load ptr, ptr %i.at, align 8
  invoke void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.av = load i64, ptr %i.p, align 8, !tbaa !738 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = atomicrmw add ptr %i.q, i64 %i.av seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !734
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !733
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %.pre, %bb.m ], [ %1, %bb.l ] ; 2 uses
  %.pre3.i = phi ptr [ %.pre.i, %bb.m ], [ %2, %bb.l ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 112
  store i64 0, ptr %i.az, align 8, !tbaa !738
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !420, !range !238, !noundef !239
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !727, !range !238, !noundef !239
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #41 ; 0 uses
  store i8 1, ptr %i.be, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = load ptr, ptr %6, align 8, !tbaa !732   ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 208
  store i8 1, ptr %i.bk, align 8, !tbaa !452
  %i.bl = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 96 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !433 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 232 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !431 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bp, null
  %..i.i = select i1 %.not8.i.i, ptr %i.bn, ptr %i.bp
  store ptr %i.bm, ptr %..i.i, align 8, !tbaa !433
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !433
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !431
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.q, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 184 ; 3 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !416
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 232 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !431 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.bv, null
  %..i2.i = select i1 %.not.i1.i, ptr %i.bs, ptr %i.bv
  store ptr %i.bt, ptr %..i2.i, align 8, !tbaa !433
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !431
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %_ZN4asio6detail27conditionally_enabled_event4waitERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.r:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ao

bb.s:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !723
  %i.bz = zext i32 %i.by to i64
  br label %bb.ad

bb.t:                                             ; preds = %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE3popEv.exit.thread
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !723
  %i.cc = zext i32 %i.cb to i64                   ; 4 uses
  %i.cd = load i8, ptr %i.h, align 8, !tbaa !443, !range !238, !noundef !239
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %1, align 8, !tbaa !728, !nonnull !239, !align !412 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !420, !range !238, !noundef !239
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !451 ; 2 uses
  %i.ck = or i64 %i.cj, 1
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !451
  %i.cl = icmp ugt i64 %i.cj, 1
  br i1 %i.cl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cm = load i8, ptr %i.k, align 8, !tbaa !727, !range !238, !noundef !239
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i: ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cp = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.co) #41 ; 0 uses
  store i8 0, ptr %i.k, align 8, !tbaa !727
  br label %_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i

_ZN4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex6unlockEv.exit.i.i.i.i, %bb.w
  %i.cq = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.i) #41 ; 0 uses
  br label %_ZN4asio6detail9scheduler26wake_one_thread_and_unlockERNS0_27conditionally_enabled_mutex11scoped_lockE.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cr = load i8, ptr %i.g, align 8, !tbaa !452, !range !238, !noundef !239
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !453 ; 3 uses
  %.not.i30 = icmp eq ptr %i.ct, null
  br i1 %.not.i30, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
end_hunk_2
begin_hunk_3_@_ZN4crow6Router14handle_initialERNS_7requestERNS_8responseE:_ZNSt6vectorImSaImEEC2ERKS1_.exit.i
  br label %bb.dk

bb.di:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.dj:                                            ; preds = %bb.dc
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wn = load ptr, ptr %26, align 8, !tbaa !101  ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.dj
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !102
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.di
  %.pn = phi { ptr, i32 } [ %i.wl, %bb.di ], [ %i.wm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %i.wm, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #41
  br label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %bb.dh
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ], [ %i.wk, %bb.dh ] ; 2 uses
  %i.ws = load ptr, ptr %25, align 8, !tbaa !101  ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.dk
  %i.wv = load i64, ptr %i.wt, align 8, !tbaa !102
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.ww) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.dg
  %.pn.pn.pn = phi { ptr, i32 } [ %i.wj, %bb.dg ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #41
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.df
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.wi, %bb.df ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %24) #41
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.de
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dl ], [ %i.wh, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #41
  br label %bb.ec

bb.dn:                                            ; preds = %bb.cl
  store i32 404, ptr %3, align 8, !tbaa !121
  store i8 1, ptr %i.g, align 8, !tbaa !1083
  %i.wx = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.wy = icmp slt i32 %i.wx, 1
  br i1 %i.wy, label %bb.do, label %.critedge

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(380) %27)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %bb.do
  %i.wz = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 4 uses
  store i32 0, ptr %i.wz, align 8, !tbaa !282
  %i.xa = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i305 = icmp sgt i32 %i.xa, 0
  br i1 %.not.i305, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.366, i64 noundef 19)
          to label %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307 unwind label %bb.dw ; 0 uses

_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307:        ; preds = %bb.dq
  %.pre457 = load i32, ptr %i.wz, align 8, !tbaa !282
  %.pre458 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.xc = icmp slt i32 %.pre457, %.pre458
  br i1 %i.xc, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.dr

bb.dr:                                            ; preds = %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307
  %i.xd = load ptr, ptr %i.to, align 8, !tbaa !101
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !103
  %i.xg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xd, i64 noundef %i.xf)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310 unwind label %bb.dw ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310: ; preds = %bb.dr
  %.pre459 = load i32, ptr %i.wz, align 8, !tbaa !282
  %.pre460 = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %i.xh = icmp slt i32 %.pre459, %.pre460
  br i1 %i.xh, label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313, label %bb.ds

bb.ds:                                            ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310
  %i.xi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef nonnull @.str.373, i64 noundef 2)
          to label %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313 unwind label %bb.dw ; 0 uses

_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313:         ; preds = %bb.dp, %_ZN4crow6loggerlsIA20_cEERS0_RKT_.exit307, %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit310, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  invoke void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %i.g)
          to label %bb.dt unwind label %bb.dx

bb.dt:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xj = load i32, ptr %i.wz, align 8, !tbaa !282
  %i.xk = load i32, ptr @_ZZN4crow6logger17get_log_level_refEvE13current_level, align 4, !tbaa !273
  %.not.i314 = icmp slt i32 %i.xj, %i.xk
  br i1 %.not.i314, label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xl = load ptr, ptr %28, align 8, !tbaa !101
  %i.xm = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !103
  %i.xo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(380) %27, ptr noundef %i.xl, i64 noundef %i.xn)
          to label %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316 unwind label %bb.dy ; 0 uses

_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316: ; preds = %bb.dt, %bb.du
  %i.xp = load ptr, ptr %28, align 8, !tbaa !101  ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.xr = icmp eq ptr %i.xp, %i.xq
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316
  %i.xs = load i64, ptr %i.xq, align 8, !tbaa !102
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xt) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZN4crow6loggerlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %.critedge

bb.dv:                                            ; preds = %bb.do
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.dw:                                            ; preds = %bb.ds, %bb.dr, %bb.dq
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dx:                                            ; preds = %_ZN4crow6loggerlsIA3_cEERS0_RKT_.exit313
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

bb.dy:                                            ; preds = %bb.du
  %i.xx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xy = load ptr, ptr %28, align 8, !tbaa !101  ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ya = icmp eq ptr %i.xy, %i.xz
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %bb.dy
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !102
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.dx
  %.pn107 = phi { ptr, i32 } [ %i.xw, %bb.dx ], [ %i.xx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ], [ %i.xx, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.dz

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %bb.dw
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322 ], [ %i.xv, %bb.dw ]
  call void @_ZN4crow6loggerD2Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %27) #41
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dv
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %bb.dz ], [ %i.xu, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #41
  br label %bb.ec

bb.eb:                                            ; preds = %_ZN4crow21routing_handle_resultaSEOS0_.exit266
  store i8 %i.f, ptr %i.r, align 8, !tbaa !1084
  br label %.critedge

.critedge:                                        ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %bb.ad, %_ZNSt6vectorImSaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %bb.eb, %_ZN4crow8responseD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %bb.dn
  ret void

bb.ec:                                            ; preds = %bb.dd, %bb.dm, %bb.ea, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %bb.w, %bb.t, %bb.s, %bb.r
  %.pn133 = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %i.wg, %bb.dd ], [ %.pn131, %bb.w ], [ %i.cx, %bb.s ], [ %i.cw, %bb.r ], [ %.pn124.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ], [ %.pn107.pn.pn, %bb.ea ], [ %i.ue, %bb.cm ], [ %.pn.pn.pn.pn.pn, %bb.dm ]
  call void @_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #41
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit142, %bb.ec
  %.pn133.pn = phi { ptr, i32 } [ %.pn133, %bb.ec ], [ %i.l, %_ZNSt6vectorImSaImEED2Ev.exit142 ]
  resume { ptr, i32 } %.pn133.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow6Router9get_errorB5cxx11ERKNS_21routing_handle_resultE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(137) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.36", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !103
  store i8 0, ptr %i.a, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3600
  invoke void @_ZN4crow6Router12get_found_bpERKSt6vectorImSaImEERKS1_IPNS_9BlueprintESaIS7_EERS9_m(ptr noundef nonnull align 8 dereferenceable(3656) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !610    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !610  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %.critedge.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.0818 = add nsw i64 %i.l, -1                   ; 2 uses
  %.not.not19 = icmp eq i64 %.0818, 0
  br i1 %.not.not19, label %.critedge.a, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %.08 = add i64 %.0820, -1                       ; 2 uses
  %.not.not = icmp eq i64 %.08, 0
  br i1 %.not.not, label %.critedge.a, label %.lr.ph, !llvm.loop !2251

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !321    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !322
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #42
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.t = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit
  %i.v = load i64, ptr %i.a, align 8, !tbaa !102
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.m

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0820 = phi i64 [ %.08, %bb.d ], [ %.0818, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0820
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !612
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !125
  %.not.i.i.i.i.not = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.not, label %bb.d, label %.critedge.thread, !llvm.loop !2251

.critedge.a:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.not.i.i.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit12, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge.a
  %.pre = ptrtoint ptr %i.e to i64
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge..critedge.thread_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.critedge..critedge.thread_crit_edge ], [ %i.j, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !322
  %i.ad = ptrtoint ptr %i.ac to i64
  %4 = sub i64 %i.ad, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %4) #42
  br label %_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit12

_ZNSt6vectorIPN4crow9BlueprintESaIS2_EED2Ev.exit12: ; preds = %.critedge.a, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4crow14routing_paramsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1012   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, !prof !293

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1012
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1087
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1013
  %i.m = load ptr, ptr %1, align 8, !tbaa !1086   ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1086
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !312

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !99
  store i64 %i.t, ptr %i.i, align 8, !tbaa !99
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !1087
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1088 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !1009 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i10, label %.noexc12, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.noexc.i.i11, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !293

.noexc.i.i11:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #40
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i11
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #44
          to label %.noexc12 unwind label %bb.u

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !1009
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !1088
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !1010
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1086 ; 3 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !1086
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 8
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !312

bb.h:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.aj, i64 %i.an, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc12
  %i.ap = icmp eq i64 %i.an, 8
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !99
  store i64 %i.aq, ptr %i.af, align 8, !tbaa !99
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !1088
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1089 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !1006 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i13 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i13, label %.noexc16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp ugt i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %.noexc.i.i14, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !293

.noexc.i.i14:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #40
          to label %.noexc15 unwind label %bb.v

.noexc15:                                         ; preds = %.noexc.i.i14
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #44
          to label %.noexc16 unwind label %bb.v

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.bc = phi ptr [ null, %bb.k ], [ %i.bb, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !1006
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !1089
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1007
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !1090 ; 3 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !1090
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.m, label %bb.n, !prof !312

bb.m:                                             ; preds = %.noexc16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bc, ptr align 8 %i.bg, i64 %i.bk, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc16
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = load double, ptr %i.bg, align 8, !tbaa !607
  store double %i.bn, ptr %i.bc, align 8, !tbaa !607
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bo = getelementptr inbounds i8, ptr %i.bc, i64 %i.bk
  store ptr %i.bo, ptr %i.bd, align 8, !tbaa !1089
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !581 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !580 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  %.not.i.i.i.i17 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i.i.i.i17, label %.noexc20, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = icmp ugt i64 %i.bw, 9223372036854775776
  br i1 %i.bx, label %.noexc.i.i18, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !293

.noexc.i.i18:                                     ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #40
          to label %.noexc19 unwind label %bb.w

.noexc19:                                         ; preds = %.noexc.i.i18
end_hunk_3
