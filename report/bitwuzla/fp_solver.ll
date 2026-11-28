Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/fp_solver?download=true
inline.NumInlined: 598
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4bzla2fp8FpSolverD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #17, !inline_history !40
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit.i
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !29
  %i.q = shl i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.q, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !29
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #17, !inline_history !40
  br label %_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev.exit

_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(120) %i.a) #18, !inline_history !40
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4bzla9backtrack6objectImEE, i64 16), ptr %i.w, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i1, label %_ZN4bzla9backtrack6objectImED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #17, !inline_history !43
  br label %_ZN4bzla9backtrack6objectImED2Ev.exit

_ZN4bzla9backtrack6objectImED2Ev.exit:            ; preds = %_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev.exit, %bb.d
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(64) %i.w) #18, !inline_history !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4bzla9backtrack6vectorINS_4NodeEEE, i64 16), ptr %i.ae, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4bzla9backtrack6objectImED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZN4bzla9backtrack6objectImED2Ev.exit ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i) #18, !inline_history !44
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i2, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.af, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4bzla9backtrack6objectImED2Ev.exit
  %i.ak = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ag, %_ZN4bzla9backtrack6objectImED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i1.i.i, label %_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #17, !inline_history !44
  br label %_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit

_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.e
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(64) %i.ae) #18, !inline_history !44
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4bzla2fp11WordBlasterD1Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %i.aq) #18
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4bzla6SolverE, i64 16), ptr %0, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46 ; 2 uses
  %.not5.i.i.i.i.i3 = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i.i3, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i4

.lr.ph.i.i.i.i.i4:                                ; preds = %_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit, %.lr.ph.i.i.i.i.i4
  %.06.i.i.i.i.i5 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i4 ], [ %i.at, %_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit ] ; 4 uses
  %i.au = load ptr, ptr %.06.i.i.i.i.i5, align 8, !tbaa !42 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i5, i64 16
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #18, !inline_history !71
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.av) #18, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i5, i64 noundef 32) #17, !inline_history !71
  %.not.i.i.i.i.i6 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i6, label %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i4, !llvm.loop !2

_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i4, %_ZN4bzla9backtrack6vectorINS_4NodeEED2Ev.exit
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.ba, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4bzla6SolverD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.bf = shl i64 %i.be, 3
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #17, !inline_history !71
  br label %_ZN4bzla6SolverD2Ev.exit

_ZN4bzla6SolverD2Ev.exit:                         ; preds = %_ZNSt10_HashtableIN4bzla4NodeESt4pairIKS1_S1_ESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla9backtrack13unordered_setINS_4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4bzla9backtrack13unordered_setINS_4NodeEEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #17
  br label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #17
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !29
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.t = load i64, ptr %i.n, align 8, !tbaa !29
  %i.u = shl i64 %i.t, 3
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #17
  br label %_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN4bzla4NodeESt4hashIS1_ESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  tail call void @_ZN4bzla9backtrack13BacktrackableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4bzla2fp8FpSolverD0Ev(ptr noundef nonnull align 8 dereferenceable(672) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4bzla2fp8FpSolverD1Ev(ptr noundef nonnull align 8 dead_on_return(672) dereferenceable(672) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 672) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla2fp8FpSolver5checkEv(ptr noundef nonnull align 8 dereferenceable(672) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.bzla::util::Logger::Line", align 8 ; 7 uses
  %3 = alloca %"class.bzla::util::Logger::Line", align 8 ; 7 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"struct.std::pair.262", align 8    ; 7 uses
  %6 = alloca %"class.bzla::Node", align 8        ; 11 uses
  %7 = alloca %"class.bzla::Node", align 8        ; 9 uses
  %8 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %9 = alloca %"class.std::vector", align 8       ; 12 uses
  %10 = alloca [2 x %"class.bzla::Node"], align 8 ; 10 uses
  %11 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %12 = alloca %"class.bzla::Node", align 8       ; 7 uses
  %13 = alloca %"class.std::vector", align 8      ; 12 uses
  %14 = alloca [2 x %"class.bzla::Node"], align 8 ; 10 uses
  %15 = alloca %"class.std::vector.26", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !54, !align !55
  %i.c = tail call noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 noundef 1)
  br i1 %i.c, label %bb.b, label %.critedge81

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !54, !align !55
  call void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef 1)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %.critedge unwind label %bb.e  ; 0 uses

.critedge:                                        ; preds = %bb.b
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.critedge81

.critedge81:                                      ; preds = %bb.a, %.critedge
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !54, !align !55
  %i.g = call noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 noundef 1)
  br i1 %i.g, label %bb.c, label %.critedge84

bb.c:                                             ; preds = %.critedge81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !87, !nonnull !54, !align !55
  call void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef 1)
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str, i64 noundef 12)
          to label %.critedge83 unwind label %bb.f ; 0 uses

.critedge83:                                      ; preds = %bb.d
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.critedge84

.critedge84:                                      ; preds = %.critedge81, %.critedge83
  call void @_ZN4bzla6Solver19reset_cached_valuesEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56, !nonnull !54, !align !55
  %i.m = call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !19   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 3 uses
  %i.z = icmp ult i64 %i.q, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge84
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !57  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -8
  %.pre260 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.pre261 = load ptr, ptr %i.s, align 8, !tbaa !33
  %.pre262 = load ptr, ptr %i.r, align 8, !tbaa !32
  %.pre266 = ptrtoint ptr %.pre261 to i64
  %.pre267 = ptrtoint ptr %.pre262 to i64
  %.pre269 = sub i64 %.pre266, %.pre267
  %.pre271 = ashr exact i64 %.pre269, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge84
  %.pre-phi272 = phi i64 [ %.pre271, %._crit_edge.loopexit ], [ %i.y, %.critedge84 ] ; 3 uses
  %i.ag = phi i64 [ %.pre260, %._crit_edge.loopexit ], [ %i.q, %.critedge84 ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %.critedge84 ]
  %i.ai = icmp ult i64 %i.ag, %.pre-phi272
  br i1 %i.ai, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ak

bb.e:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.cb

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.cb

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit
  %.065224 = phi i64 [ %i.q, %.lr.ph ], [ %i.ex, %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !32, !noalias !88
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.065224
  call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %i.az = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16
          to label %bb.h unwind label %_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit.i ; 3 uses

_ZNSt12_Vector_baseISt17reference_wrapperIKN4bzla4NodeEESaIS4_EED2Ev.exit.i: ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %4, ptr %i.az, align 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN4bzla9backtrack13unordered_setINS_4NodeEE6insertERKS2_.exit, %bb.h
  %.sroa.26.0 = phi ptr [ %i.bb, %bb.h ], [ %.sroa.26.1, %_ZN4bzla9backtrack13unordered_setINS_4NodeEE6insertERKS2_.exit ] ; 8 uses
  %.sroa.13.0 = phi ptr [ %i.bb, %bb.h ], [ %.sroa.13.1, %_ZN4bzla9backtrack13unordered_setINS_4NodeEE6insertERKS2_.exit ] ; 2 uses
  %.sroa.0151.0 = phi ptr [ %i.az, %bb.h ], [ %.sroa.0151.1, %_ZN4bzla9backtrack13unordered_setINS_4NodeEE6insertERKS2_.exit ] ; 16 uses
  %.sroa.13.0374 = ptrtoaddr ptr %.sroa.13.0 to i64
  %i.bc = getelementptr inbounds i8, ptr %.sroa.13.0, i64 -8 ; 11 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !59 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.aa, ptr %1, align 8, !tbaa !89
  %i.be = invoke { ptr, i8 } @_ZNSt10_HashtableIN4bzla4NodeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ESt4hashIS1_ENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SH_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %.fca.1.extract5.i = extractvalue { ptr, i8 } %i.be, 1
  %i.bf = trunc nuw i8 %.fca.1.extract5.i to i1
  br i1 %i.bf, label %bb.j, label %_ZN4bzla9backtrack13unordered_setINS_4NodeEE6insertERKS2_.exit

bb.j:                                             ; preds = %.noexc
  %.fca.0.extract4.i = extractvalue { ptr, i8 } %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract4.i, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 6 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !61
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 7 uses
  %i.bl = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %.invoke, label %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #16
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store ptr %i.bg, ptr %i.bw, align 8, !tbaa !59
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.bh
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIKN4bzla4NodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc86
  %i.bx = ptrtoaddr ptr %i.bv to i64
  %i.by = add i64 %i.bl, -8
  %i.bz = sub i64 %i.by, %i.bm                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4bzla2fp8FpSolver5checkEv:bb.a
  %.pre-phi280 = phi i64 [ %.pre279, %._crit_edge228.loopexit ], [ %.pre-phi272, %._crit_edge ]
  %i.fb = phi ptr [ %.pre265, %._crit_edge228.loopexit ], [ %i.ah, %._crit_edge ]
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -8
  store i64 %.pre-phi280, ptr %i.fc, align 8, !tbaa !19
  ret i1 true

bb.ak:                                            ; preds = %.lr.ph227, %bb.by
  %.062225 = phi i64 [ %i.ag, %.lr.ph227 ], [ %i.it, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !32, !noalias !94
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.062225
  call void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN4bzla2fp11WordBlaster10word_blastERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(336) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ff = invoke noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.ff, label %bb.by, label %bb.ap

bb.an:                                            ; preds = %bb.ak
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ao:                                            ; preds = %bb.aq, %bb.ap, %bb.al
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ap:                                            ; preds = %bb.am
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  %i.fj = invoke noundef zeroext i1 @_ZNK4bzla4Type7is_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  %i.fk = load ptr, ptr %i.ak, align 8, !tbaa !62, !nonnull !54, !align !55 ; 2 uses
  br i1 %i.fj, label %bb.as, label %bb.bi

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.at unwind label %.thread

.thread:                                          ; preds = %bb.as
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN4bzla4node5utils11bv1_to_boolERNS_11NodeManagerERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %i.ap, ptr noundef nonnull align 8 dereferenceable(216) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.au unwind label %.loopexit.loopexit229

bb.au:                                            ; preds = %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.fm = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
          to label %.noexc128 unwind label %bb.ay ; 6 uses

.noexc128:                                        ; preds = %bb.au
  store ptr %i.fm, ptr %9, align 8, !tbaa !32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.aq, align 8, !tbaa !35
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %.thread312

.thread312:                                       ; preds = %.noexc128
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  %i.fq = call ptr @__cxa_begin_catch(ptr %i.fp) #18 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc128
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1 unwind label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fs, ptr %i.ar, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %8, ptr noundef nonnull align 8 dereferenceable(216) %i.m, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.ba unwind label %bb.be

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  %i.fv = call ptr @__cxa_begin_catch(ptr %i.fu) #18 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fm) #18
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.thread312
  invoke void @__cxa_rethrow() #19
          to label %bb.ax unwind label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #20
  unreachable

bb.ax:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.au
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %bb.av, %bb.ay
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.fz, %bb.ay ], [ %i.fw, %bb.av ] ; 2 uses
  %i.ga = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %.not.i.i.i92 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i92, label %.body93, label %bb.az

bb.az:                                            ; preds = %.body129
  %i.gb = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = sub i64 %i.gc, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.ge) #17
  br label %.body93

bb.ba:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.gf = invoke noundef zeroext i1 @_ZN4bzla11SolverState5lemmaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bb unwind label %bb.bf     ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  %i.gg = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.gl = load ptr, ptr %9, align 8, !tbaa !32    ; 3 uses
  %i.gm = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i ], [ %i.gl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #18
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i96 = icmp eq ptr %i.gn, %i.gm
  br i1 %.not.i.i.i96, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.go = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.gl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.gp = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #17
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bd
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #18
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.by

.loopexit.loopexit229:                            ; preds = %bb.at
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.sink.split

bb.be:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.1
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ba
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn69 = phi { ptr, i32 } [ %i.gv, %bb.bf ], [ %i.gu, %bb.be ]
  %i.gw = load ptr, ptr %11, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i98, label %_ZNSt6vectorImSaImEED2Ev.exit99, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gx = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.ha) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit99

_ZNSt6vectorImSaImEED2Ev.exit99:                  ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #18
  br label %.body93

.body93:                                          ; preds = %bb.az, %.body129, %_ZNSt6vectorImSaImEED2Ev.exit99
  %.pn69.pn = phi { ptr, i32 } [ %.pn69, %_ZNSt6vectorImSaImEED2Ev.exit99 ], [ %eh.lpad-body130, %.body129 ], [ %eh.lpad-body130, %bb.az ]
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hb) #18
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.body93, %.loopexit.loopexit229
  %.pn69.pn.pn.ph = phi { ptr, i32 } [ %i.gt, %.loopexit.loopexit229 ], [ %.pn69.pn, %.body93 ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.thread
  %.pn69.pn.pn = phi { ptr, i32 } [ %i.fl, %.thread ], [ %.pn69.pn.pn.ph, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bz

bb.bi:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.bj unwind label %.thread170

.thread170:                                       ; preds = %bb.bi
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit173

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bk unwind label %.loopexit173.loopexit230

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
          to label %.noexc142 unwind label %bb.bo ; 6 uses

.noexc142:                                        ; preds = %bb.bk
  store ptr %i.hd, ptr %13, align 8, !tbaa !32
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %i.he, ptr %i.am, align 8, !tbaa !35
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140 unwind label %.thread315

.thread315:                                       ; preds = %.noexc142
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  %i.hh = call ptr @__cxa_begin_catch(ptr %i.hg) #18 ; 0 uses
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i139

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140: ; preds = %.noexc142
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140.1 unwind label %.lr.ph.i.i.i.i.i.i.i136.preheader

_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140.1: ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %i.hj, ptr %i.an, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(216) %i.m, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.bq unwind label %bb.bu

.lr.ph.i.i.i.i.i.i.i136.preheader:                ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  %i.hm = call ptr @__cxa_begin_catch(ptr %i.hl) #18 ; 0 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hd) #18
  br label %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i139

_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i139: ; preds = %.lr.ph.i.i.i.i.i.i.i136.preheader, %.thread315
  invoke void @__cxa_rethrow() #19
          to label %bb.bn unwind label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i139
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body143 unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #20
  unreachable

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeEEvT_S3_.exit.i.i.i.i.i139
  unreachable

bb.bo:                                            ; preds = %bb.bk
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.body143

.body143:                                         ; preds = %bb.bl, %bb.bo
  %eh.lpad-body144 = phi { ptr, i32 } [ %i.hq, %bb.bo ], [ %i.hn, %bb.bl ] ; 2 uses
  %i.hr = load ptr, ptr %13, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i100, label %.body102, label %bb.bp

bb.bp:                                            ; preds = %.body143
  %i.hs = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hv) #17
  br label %.body102

bb.bq:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140.1
  %i.hw = invoke noundef zeroext i1 @_ZN4bzla11SolverState5lemmaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.br unwind label %bb.bv     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  %i.hx = load ptr, ptr %15, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorImSaImEED2Ev.exit106, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit106

_ZNSt6vectorImSaImEED2Ev.exit106:                 ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ic = load ptr, ptr %13, align 8, !tbaa !32   ; 3 uses
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i107 = icmp eq ptr %i.ic, %i.id
  br i1 %.not4.i.i.i107, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113, label %.lr.ph.i.i.i108

.lr.ph.i.i.i108:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit106, %.lr.ph.i.i.i108
  %.05.i.i.i109 = phi ptr [ %i.ie, %.lr.ph.i.i.i108 ], [ %i.ic, %_ZNSt6vectorImSaImEED2Ev.exit106 ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i109) #18
  %i.ie = getelementptr inbounds nuw i8, ptr %.05.i.i.i109, i64 8 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.ie, %i.id
  br i1 %.not.i.i.i110, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111, label %.lr.ph.i.i.i108, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111: ; preds = %.lr.ph.i.i.i108
  %.pr.i112 = load ptr, ptr %13, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111, %_ZNSt6vectorImSaImEED2Ev.exit106
  %i.if = phi ptr [ %.pr.i112, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i111 ], [ %i.ic, %_ZNSt6vectorImSaImEED2Ev.exit106 ] ; 3 uses
  %.not.i.i1.i114 = icmp eq ptr %i.if, null
  br i1 %.not.i.i1.i114, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113
  %i.ig = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ij) #17
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116:    ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i113, %bb.bt
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #18
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.by

.loopexit173.loopexit230:                         ; preds = %bb.bj
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit173.sink.split

bb.bu:                                            ; preds = %_ZSt10_ConstructIN4bzla4NodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i140.1
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn = phi { ptr, i32 } [ %i.im, %bb.bv ], [ %i.il, %bb.bu ]
  %i.in = load ptr, ptr %15, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorImSaImEED2Ev.exit118, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.io = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.ir) #17
  br label %_ZNSt6vectorImSaImEED2Ev.exit118

_ZNSt6vectorImSaImEED2Ev.exit118:                 ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #18
  br label %.body102

.body102:                                         ; preds = %bb.bp, %.body143, %_ZNSt6vectorImSaImEED2Ev.exit118
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorImSaImEED2Ev.exit118 ], [ %eh.lpad-body144, %.body143 ], [ %eh.lpad-body144, %bb.bp ]
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.is) #18
  br label %.loopexit173.sink.split

.loopexit173.sink.split:                          ; preds = %.body102, %.loopexit173.loopexit230
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ik, %.loopexit173.loopexit230 ], [ %.pn.pn, %.body102 ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #18
  br label %.loopexit173

.loopexit173:                                     ; preds = %.loopexit173.sink.split, %.thread170
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %.thread170 ], [ %.pn.pn.pn.ph, %.loopexit173.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.bz

bb.by:                                            ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit116, %bb.am
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.it = add i64 %.062225, 1                     ; 2 uses
  %exitcond259.not = icmp eq i64 %i.it, %.pre-phi272
  br i1 %exitcond259.not, label %._crit_edge228.loopexit, label %bb.ak, !llvm.loop !86

bb.bz:                                            ; preds = %.loopexit173, %.loopexit, %bb.ao
  %.pn69.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn, %.loopexit ], [ %.pn.pn.pn, %.loopexit173 ], [ %i.fh, %bb.ao ]
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #18
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.an
  %.pn69.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn69.pn.pn.pn, %bb.bz ], [ %i.fg, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.cb

bb.cb:                                            ; preds = %.body, %bb.ca, %bb.f, %bb.e
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.e ], [ %i.aw, %bb.f ], [ %.pn75.pn.pn, %.body ], [ %.pn69.pn.pn.pn.pn, %bb.ca ]
  resume { ptr, i32 } %.pn75.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #2

declare void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind writable sret(%"class.bzla::util::Logger::Line") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare void @_ZN4bzla6Solver19reset_cached_valuesEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bzla4Node8is_constEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bzla2fp11WordBlaster7is_leafERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bzla2fp11WordBlaster15is_word_blastedERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bzla2fp11WordBlaster25is_cur_word_blasted_constERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bzla11SolverState5lemmaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4bzla2fp11WordBlaster5validERKNS_4NodeE(ptr dead_on_unwind writable sret(%"struct.std::pair.262") align 8, ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK4bzla4Node5beginEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK4bzla4Node3endEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

declare void @_ZN4bzla2fp11WordBlaster10word_blastERKNS_4NodeE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8, ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4bzlaeqERKNS_4NodeES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4bzla4Type7is_boolEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4bzla11NodeManager7mk_nodeENS_4node4KindERKSt6vectorINS_4NodeESaIS4_EERKS3_ImSaImEE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4bzla4node5utils11bv1_to_boolERNS_11NodeManagerERKNS_4NodeE(ptr dead_on_unwind writable sret(%"class.bzla::Node") align 8, ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #17
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla2fp8FpSolver5valueERKNS_4NodeE(ptr dead_on_unwind noalias writable sret(%"class.bzla::Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(672) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %4 = alloca %"class.bzla::Node", align 8        ; 7 uses
  %5 = alloca %"class.bzla::Node", align 8        ; 8 uses
  %6 = alloca %"class.bzla::FloatingPoint", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56, !nonnull !54, !align !55
  %i.c = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK4bzla2fp11WordBlaster15is_word_blastedERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(336) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.g = icmp eq i8 %i.f, 92
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.i = icmp eq i8 %i.h, 93
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.k = icmp eq i8 %i.j, 81
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i8 @_ZNK4bzla4Node4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.m = icmp eq i8 %i.l, 80
  br i1 %i.m, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !56, !nonnull !54, !align !55
  %i.o = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN4bzla3Env8rewriterEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4bzla2fp11WordBlaster10word_blastERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(336) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla8Rewriter7rewriteERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4bzla4NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62, !nonnull !54, !align !55
  invoke void @_ZN4bzla11SolverState5valueERKNS_4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.bzla::Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4bzla4Node4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef zeroext i1 @_ZNK4bzla4Type5is_bvEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  br i1 %i.t, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4bzla4NodeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.af unwind label %bb.u

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ai

bb.n:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %bb.k
end_hunk_1
