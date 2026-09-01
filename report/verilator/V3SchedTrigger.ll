Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SchedTrigger?download=true
inline.NumInlined: 4626
inline.NumDeleted: 1695
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8AstRangeC2EP8FileLineii:bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i16 121, ptr noundef %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.b, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef 32, i32 noundef %2, i1 noundef zeroext true)
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.e = load i32, ptr %i.d, align 8, !tbaa !233
  %i.f = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.b, i32 noundef %i.e, i32 noundef 0, i8 0)
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %.noexc9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157
  %.not.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i.i, label %_ZN8AstConstC2EP8FileLinej.exit, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  store ptr %i.f, ptr %i.g, align 8, !tbaa !157
  %i.i = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  br label %_ZN8AstConstC2EP8FileLinej.exit

bb.c:                                             ; preds = %.noexc9
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.c) #24
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit:                  ; preds = %bb.b, %.noexc.i
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.b)
  %i.l = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26 ; 10 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i16 121, ptr noundef %1)
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %_ZN8AstConstC2EP8FileLinej.exit
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.l, align 8, !tbaa !136
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef 32, i32 noundef %3, i1 noundef zeroext true)
          to label %.noexc14 unwind label %bb.g

.noexc14:                                         ; preds = %.noexc13
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.o = load i32, ptr %i.n, align 8, !tbaa !233
  %i.p = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.o, i32 noundef 0, i8 0)
          to label %.noexc.i11 unwind label %bb.e ; 2 uses

.noexc.i11:                                       ; preds = %.noexc14
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157
  %.not.i.i.i12 = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i12, label %_ZN8AstConstC2EP8FileLinej.exit17, label %bb.d

bb.d:                                             ; preds = %.noexc.i11
  store ptr %i.p, ptr %i.q, align 8, !tbaa !157
  %i.s = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  br label %_ZN8AstConstC2EP8FileLinej.exit17

bb.e:                                             ; preds = %.noexc14
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #24
  br label %.body

_ZN8AstConstC2EP8FileLinej.exit17:                ; preds = %bb.d, %.noexc.i11
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.l)
  ret void

bb.f:                                             ; preds = %.noexc, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.noexc13, %_ZN8AstConstC2EP8FileLinej.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e, %bb.f, %bb.c
  %.sink = phi ptr [ %i.b, %bb.f ], [ %i.b, %bb.c ], [ %i.l, %bb.e ], [ %i.l, %bb.g ]
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.k, %bb.c ], [ %i.u, %bb.e ], [ %i.w, %bb.g ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 208) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapIPK10AstSenTreePS0_St4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !355  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !294 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !356

_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !303
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !304
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !303    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !304
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPK10AstSenTreeSt4pairIKS2_PS0_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13unordered_mapI5VNRefIK10AstSenItemEmSt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !294 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #25
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !358

_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !292
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !291  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !292
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #25
  br label %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableI5VNRefIK10AstSenItemESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7V3Sched10TriggerKit26createSenTrigVecAssignmentEP11AstVarScopeRSt6vectorIP11AstNodeExprSaIS5_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.e = load ptr, ptr %1, align 8, !tbaa !362
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  %.04783 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.cs, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ] ; 4 uses
  %.04882 = phi ptr [ null, %.preheader.lr.ph ], [ %i.cr, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ]
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, %bb.a
  %.048.lcssa = phi ptr [ null, %bb.a ], [ %i.cr, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit ]
  ret ptr %.048.lcssa

bb.b:                                             ; preds = %bb.d
  %i.g = lshr exact i64 %.04783, 6
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 4 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #26
          to label %bb.l unwind label %bb.u       ; 13 uses

bb.c:                                             ; preds = %.preheader, %bb.d
  %.04681 = phi i32 [ 0, %.preheader ], [ %i.m, %bb.d ] ; 2 uses
  %i.k = shl nuw i32 1, %.04681
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %2 = shl nuw nsw i64 %i.l, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit
  %i.m = add nuw nsw i32 %.04681, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.m, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !363

bb.e:                                             ; preds = %bb.c, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit ] ; 2 uses
  %i.n = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26 ; 12 uses
  %i.o = or disjoint i64 %.04783, %indvars.iv     ; 3 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !362    ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !364  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !120
  %i.u = add i64 %i.o, %i.l                       ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !364  ; 2 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.n, i16 202, ptr noundef %i.t)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.n, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 0, ptr %i.x, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef %i.w)
          to label %.noexc54 unwind label %bb.k

.noexc54:                                         ; preds = %.noexc
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull %i.r)
          to label %.noexc55 unwind label %bb.k

.noexc55:                                         ; preds = %.noexc54
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstConcat, i64 16), ptr %i.n, align 8, !tbaa !136
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !157  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157
  %.not13.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 432
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(162) %i.z)
          to label %.noexc56 unwind label %bb.k, !inline_history !366

.noexc56:                                         ; preds = %bb.g
  br i1 %i.af, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %.noexc56
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 432
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(162) %i.ag)
          to label %.noexc57 unwind label %bb.k, !inline_history !366

.noexc57:                                         ; preds = %bb.h
  br i1 %i.ak, label %.noexc.i, label %.noexc15.i

.noexc.i:                                         ; preds = %.noexc57, %.noexc56
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !157
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !367
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !157
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !367
  %i.ar = add nsw i32 %i.aq, %i.an                ; 2 uses
  %i.as = invoke noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(160) %i.n, i32 noundef %i.ar, i32 noundef %i.ar, i8 0)
          to label %.noexc58 unwind label %bb.k   ; 2 uses

.noexc58:                                         ; preds = %.noexc.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157
  %.not.i.i.i = icmp eq ptr %i.au, %i.as
  br i1 %.not.i.i.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.i

bb.i:                                             ; preds = %.noexc58
  store ptr %i.as, ptr %i.at, align 8, !tbaa !157
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i

.noexc15.i:                                       ; preds = %.noexc57
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !157
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !367
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !157
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !367
  %i.bb = add nsw i32 %i.ba, %i.ax                ; 2 uses
  %i.bc = invoke noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(160) %i.n, i32 noundef %i.bb, i32 noundef %i.bb, i8 0)
          to label %.noexc59 unwind label %bb.k   ; 2 uses

.noexc59:                                         ; preds = %.noexc15.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !157
  %.not.i.i14.i = icmp eq ptr %i.be, %i.bc
  br i1 %.not.i.i14.i, label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc59
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !157
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i: ; preds = %bb.j, %bb.i
  %i.bf = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  br label %_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit

_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_.exit: ; preds = %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split.i, %.noexc59, %.noexc58, %bb.f, %.noexc55
  %i.bh = load ptr, ptr %1, align 8, !tbaa !362   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.o
  store ptr %i.n, ptr %i.bi, align 8, !tbaa !364
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.u
  store ptr null, ptr %i.bj, align 8, !tbaa !364
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %2 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next, 64
  br i1 %i.bk, label %bb.e, label %bb.d, !llvm.loop !368

bb.k:                                             ; preds = %.noexc15.i, %.noexc.i, %bb.h, %bb.g, %.noexc54, %.noexc, %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 160) #25
  br label %bb.z

bb.l:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !139 ; 3 uses
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(232) %i.j, i16 369, ptr noundef %i.b)
          to label %.noexc60 unwind label %bb.w

.noexc60:                                         ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV13AstNodeVarRef, i64 16), ptr %i.j, align 8, !tbaa !136
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.bo, align 8, !tbaa !142
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, i64 8), align 8, !tbaa !144 ; 2 uses
  %i.br = load <2 x ptr>, ptr @_ZN16VSelfPointerText8s_emptypB5cxx11E, align 8, !tbaa !147
  store <2 x ptr> %i.br, ptr %i.bp, align 8, !tbaa !147
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !130
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !148
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !148
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i

_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i:      ; preds = %bb.o, %bb.n, %.noexc60
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !149
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !157 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !157
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, %i.by
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !157
  %i.cb = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN16VSelfPointerTextC2ENS_5EmptyE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV9AstVarRef, i64 16), ptr %i.j, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 216 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !126
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  store i64 0, ptr %i.cf, align 8, !tbaa !125
  store i8 0, ptr %i.ce, align 8, !tbaa !130
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store ptr %0, ptr %i.cg, align 8, !tbaa !159
  invoke void @_ZN11AstArraySelC2EP8FileLineP11AstNodeExpri(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef %i.b, ptr noundef nonnull %i.j, i32 noundef %i.h)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ch = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26 ; 8 uses
  %i.ci = load ptr, ptr %1, align 8, !tbaa !362
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.04783
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !364
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, i16 466, ptr noundef %i.b)
          to label %.noexc62 unwind label %bb.y

.noexc62:                                         ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.ch, align 8, !tbaa !136
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef %i.ck)
          to label %.noexc63 unwind label %bb.y

.noexc63:                                         ; preds = %.noexc62
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef nonnull %i.i)
          to label %.noexc64 unwind label %bb.y

.noexc64:                                         ; preds = %.noexc63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !157 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 72 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !157
  %.not.i.i8.i.i = icmp eq ptr %i.co, %i.cm
  br i1 %.not.i.i8.i.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, label %bb.t

bb.t:                                             ; preds = %.noexc64
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !157
  %i.cp = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !158
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %.noexc64, %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.ch, align 8, !tbaa !136
  %i.cr = tail call noundef ptr @_ZN7AstNode7addNextIS_S_EEPT_S2_PT0_(ptr noundef %.04882, ptr noundef nonnull %i.ch) ; 2 uses
  %i.cs = add i64 %.04783, 64                     ; 2 uses
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !359
  %i.cu = load ptr, ptr %1, align 8, !tbaa !362
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = icmp ult i64 %i.cs, %i.cy
  br i1 %i.cz, label %.preheader, label %._crit_edge, !llvm.loop !369

bb.u:                                             ; preds = %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  %i.dc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 232) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.w
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.w ], [ %i.db, %bb.v ], [ %i.da, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 160) #25
  br label %bb.z

bb.y:                                             ; preds = %.noexc63, %.noexc62, %bb.s
  %i.dd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 152) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.k
  %.pn52 = phi { ptr, i32 } [ %i.bl, %bb.k ], [ %i.dd, %bb.y ], [ %.pn, %bb.x ]
  resume { ptr, i32 } %.pn52
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7V3Sched10TriggerKit6createEP10AstNetlistP8AstCFuncR14SenExprBuilderRKSt6vectorIPK10AstSenTreeSaISA_EESE_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_13ExtraTriggersEbb(ptr dead_on_unwind noalias writable sret(%"class.V3Sched::TriggerKit") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(560) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %11 = alloca %"class.std::unordered_map", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %18 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 30 uses
  %19 = alloca %class.anon.162, align 8           ; 13 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %25 = alloca %class.anon.164, align 8           ; 10 uses
  %26 = alloca %"class.std::vector.146", align 8  ; 16 uses
  %27 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %36 = alloca %"class.std::vector.132", align 8  ; 15 uses
  %37 = alloca %"struct.SenExprBuilder::Results", align 8 ; 19 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 9 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !291
end_hunk_0
