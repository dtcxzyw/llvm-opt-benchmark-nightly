Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph17jaccardSimilarityERKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEES8_:bb.a
_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !145 ; 2 uses
  %.not5.i.i.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not5.i.i.i.i7, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i11, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %.lr.ph.i.i.i.i8
  %.06.i.i.i.i9 = phi ptr [ %i.af, %.lr.ph.i.i.i.i8 ], [ %i.ae, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 2 uses
  %i.af = load ptr, ptr %.06.i.i.i.i9, align 8, !tbaa !141 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i9, i64 noundef 16) #35
  %.not.i.i.i.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i11, label %.lr.ph.i.i.i.i8, !llvm.loop !9

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i11: ; preds = %.lr.ph.i.i.i.i8, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !138
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !139
  %i.ai = shl i64 %i.ah, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ai, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.aj = load ptr, ptr %5, align 8, !tbaa !138   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit12, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i11
  %i.al = load i64, ptr %i.c, align 8, !tbaa !139
  %i.am = shl i64 %i.al, 3
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #35
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit12

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit12: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i11, %bb.c
  %i.an = uitofp i64 %i.t to double
  %i.ao = uitofp i64 %i.u to double
  %i.ap = fdiv double %i.an, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret double %i.ap

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread
  %.sroa.013.024 = phi ptr [ %.sroa.013.022, %.lr.ph ], [ %.sroa.013.0, %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.013.024, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46 ; 5 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !46
  %i.as = load i64, ptr %i.l, align 8, !tbaa !142
  %.not.not.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !141 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.loopexit, label %.preheader, !llvm.loop !392

bb.f:                                             ; preds = %bb.d
  %i.aw = sext i32 %i.ar to i64
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !139 ; 2 uses
  %i.ay = urem i64 %i.aw, %i.ax                   ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !138
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !141 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = icmp eq i32 %i.ar, %i.be
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bg = icmp eq i32 %i.ar, %i.bj
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !393

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.bh, %bb.h ], [ %i.bc, %bb.g ]
  %i.bh = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !141 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !46 ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = urem i64 %i.bk, %i.ax
  %.not19.i.i.i.i.i = icmp eq i64 %i.bl, %i.ay
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !393

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread, !llvm.loop !393

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %5, ptr %3, align 8, !tbaa !395
  %i.bm = call { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread

_ZNKSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE5countERKi.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %bb.f, %..loopexit_crit_edge21.i.i.i.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %6, ptr %2, align 8, !tbaa !395
  %i.bn = call { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.sroa.013.0 = load ptr, ptr %.sroa.013.024, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %.sroa.013.0, null
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN8DecGraph16autoClusterIndexERSt6vectorIS0_IiSaIiEESaIS2_EEd(ptr dead_on_unwind noalias writable sret(%"class.std::vector.102") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::unordered_set", align 8 ; 19 uses
  %4 = alloca %"class.std::vector.102", align 8   ; 11 uses
  %5 = alloca %"class.std::vector.112", align 8   ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 10 uses
  %7 = alloca %"class.std::vector.9", align 8     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.d = load ptr, ptr %1, align 8, !tbaa !150
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 6 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %sext = shl i64 %i.h, 32                        ; 3 uses
  %i.j = ashr exact i64 %sext, 32                 ; 9 uses
  %i.k = icmp ugt i64 %i.j, 164703072086692425
  br i1 %i.k, label %bb.b, label %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0            ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit, label %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i

_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %i.l = mul nuw nsw i64 %i.j, 56
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 10 uses
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.o, ptr %i.m, align 8, !tbaa !138
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !139
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = add nsw i64 %i.j, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i
  %.lcssa193.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.m, %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.j, %_ZNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp eq i64 %sext, 4294967296
  br i1 %i.u, label %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32 ; 2 uses
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store ptr %i.w, ptr %.08.i.i.i.i.i, align 8, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !140
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88 ; 2 uses
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !138
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i64 1, ptr %i.ad, align 8, !tbaa !139
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -2         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !396

_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa193 = phi ptr [ %.lcssa193.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.j
  %i.aj = ptrtoint ptr %i.ai to i64
  br label %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit

_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit: ; preds = %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i ], [ %i.aj, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit ]
  %.sroa.083.0 = phi ptr [ null, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i ], [ %i.m, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit ] ; 8 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i ], [ %.lcssa193, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit.loopexit ] ; 2 uses
  %i.ak = icmp sgt i32 %i.i, 0                    ; 3 uses
  br i1 %i.ak, label %.lr.ph, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.lr.ph:                                           ; preds = %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.c

_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %_ZNSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EEC2EmRKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 0, ptr %4, align 8
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ar = mul nuw nsw i64 %i.j, 24                ; 3 uses
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #37 ; 4 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !150
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.j
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.as, i64 %i.ar
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit:    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %.sink.i = phi ptr [ %i.at, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.av, align 8, !tbaa !151
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.au, align 8, !tbaa !149
  br i1 %i.ak, label %.preheader.preheader, label %._crit_edge97

.preheader.preheader:                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS2_.exit
  %i.aw = and i64 %i.h, 2147483647
  %wide.trip.count117 = and i64 %i.h, 2147483647  ; 2 uses
  br label %.preheader

bb.c:                                             ; preds = %.lr.ph, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ax = load ptr, ptr %1, align 8, !tbaa !150
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !93 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !138
  store i64 1, ptr %i.am, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ao, align 8, !tbaa !140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.bc = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef 0) #36 ; 6 uses
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !139
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.d, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2EmRKS6_RKS4_RKS0_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.bf = icmp eq i64 %i.bc, 1
  br i1 %i.bf, label %bb.e, label %bb.f, !prof !92

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.al, align 8, !tbaa !144
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.bg = icmp ugt i64 %i.bc, 1152921504606846975
  br i1 %i.bg, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !92

bb.g:                                             ; preds = %bb.f
  %i.bh = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.bi = shl nuw nsw i64 %i.bc, 3                ; 2 uses
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #37 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bj, i8 0, i64 %i.bi, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.bj, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ]
  store ptr %.0.i.i.i.i.i, ptr %3, align 8, !tbaa !138
  store i64 %i.bc, ptr %i.am, align 8, !tbaa !139
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2EmRKS6_RKS4_RKS0_.exit.i.i.i

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2EmRKS6_RKS4_RKS0_.exit.i.i.i: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.c
  %.not6.i.i.i.i.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not6.i.i.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiS4_EEEEET_SD_mRKS1_RKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i26.preheader

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2EmRKS6_RKS4_RKS0_.exit.i.i.i
  %.pre = load i64, ptr %i.aq, align 8, !tbaa !142
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit
  %i.bk = phi i64 [ %i.ee, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit ], [ %.pre, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.ef, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit ], [ %i.az, %.lr.ph.i.i.i.i.i26.preheader ] ; 3 uses
  %.not.not.i = icmp eq i64 %i.bk, 0
  %i.bl = load i32, ptr %.sroa.03.07.i.i.i.i.i, align 4 ; 5 uses
  br i1 %.not.not.i, label %.preheader183, label %.thread30.i

.thread30.i:                                      ; preds = %.lr.ph.i.i.i.i.i26
  %i.bm = sext i32 %i.bl to i64                   ; 4 uses
  %i.bn = load i64, ptr %i.am, align 8, !tbaa !139 ; 2 uses
  %i.bo = urem i64 %i.bm, %i.bn                   ; 5 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !146 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i56, label %.critedge.i, label %bb.l

.preheader183:                                    ; preds = %.lr.ph.i.i.i.i.i26, %bb.j
  %.sroa.025.0.in.i = phi ptr [ %.sroa.025.0.i, %bb.j ], [ %i.an, %.lr.ph.i.i.i.i.i26 ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !141 ; 3 uses
  %.not.i58 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader183
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bu = icmp eq i32 %i.bl, %i.bt
  br i1 %i.bu, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.preheader183, !llvm.loop !397

bb.k:                                             ; preds = %.preheader183
  %i.bv = sext i32 %i.bl to i64                   ; 2 uses
  %i.bw = load i64, ptr %i.am, align 8, !tbaa !139
  %i.bx = urem i64 %i.bv, %i.bw
  br label %.critedge.i

bb.l:                                             ; preds = %.thread30.i
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !141 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.cb = icmp eq i32 %i.bl, %i.ca
  br i1 %i.cb, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i57

bb.m:                                             ; preds = %bb.n
  %i.cc = icmp eq i32 %i.bl, %i.cf
  br i1 %i.cc, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i57, !llvm.loop !10

.lr.ph.i.i.i57:                                   ; preds = %bb.l, %bb.m
  %.020.i.i.i = phi ptr [ %i.cd, %bb.m ], [ %i.by, %bb.l ]
  %i.cd = load ptr, ptr %.020.i.i.i, align 8, !tbaa !141 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i57
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !46 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = urem i64 %i.cg, %i.bn
  %.not19.i.i.i = icmp eq i64 %i.ch, %i.bo
  br i1 %.not19.i.i.i, label %bb.m, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !10

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.n
  br label %.critedge.i, !llvm.loop !10

.critedge.i:                                      ; preds = %.lr.ph.i.i.i57, %..loopexit_crit_edge21.i.i.i, %bb.k, %.thread30.i
  %i.ci = phi i64 [ %i.bx, %bb.k ], [ %i.bo, %.thread30.i ], [ %i.bo, %..loopexit_crit_edge21.i.i.i ], [ %i.bo, %.lr.ph.i.i.i57 ]
  %i.cj = phi i64 [ %i.bv, %bb.k ], [ %i.bm, %.thread30.i ], [ %i.bm, %..loopexit_crit_edge21.i.i.i ], [ %i.bm, %.lr.ph.i.i.i57 ]
  %i.ck = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 7 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !141
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %.sroa.03.07.i.i.i.i.i, align 4, !tbaa !46
  store i32 %i.cm, ptr %i.cl, align 8, !tbaa !46
  %i.cn = load i64, ptr %i.am, align 8, !tbaa !139
  %i.co = load i64, ptr %i.aq, align 8, !tbaa !142
  %i.cp = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 noundef %i.cn, i64 noundef %i.co, i64 noundef 1) #36 ; 2 uses
  %i.cq = extractvalue { i8, i64 } %i.cp, 0
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.o, label %.critedge.i._crit_edge

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre120 = load ptr, ptr %3, align 8, !tbaa !138
  br label %bb.z

bb.o:                                             ; preds = %.critedge.i
end_hunk_0
begin_hunk_1_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
.lr.ph.i115:                                      ; preds = %bb.h, %.lr.ph.i
  %.pre-phi846 = phi i32 [ %i.bz, %.lr.ph.i ], [ %i.bw, %bb.h ] ; 5 uses
  %i.cb = phi i32 [ %i.bw, %.lr.ph.i ], [ %i.bz, %bb.h ] ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1
  %xtraiter = and i32 %i.cb, 3                    ; 3 uses
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.i115.new

.lr.ph.i115.new:                                  ; preds = %.lr.ph.i115
  %unroll_iter = and i32 %i.cb, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i115.new
  %.016.i = phi i32 [ 1, %.lr.ph.i115.new ], [ %i.cs, %bb.i ]
  %.sroa.010.015.i = phi i32 [ 1, %.lr.ph.i115.new ], [ %i.ct, %bb.i ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.i115.new ], [ %niter.next.3, %bb.i ]
  %i.ce = add nsw i32 %.pre-phi846, %.sroa.010.015.i
  %i.cf = mul nsw i32 %i.ce, %.016.i
  %i.cg = sdiv i32 %i.cf, %.sroa.010.015.i
  %i.ch = add nuw nsw i32 %.sroa.010.015.i, 1     ; 2 uses
  %i.ci = add nsw i32 %.pre-phi846, %i.ch
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = sdiv i32 %i.cj, %i.ch
  %i.cl = add nuw nsw i32 %.sroa.010.015.i, 2     ; 2 uses
  %i.cm = add nsw i32 %.pre-phi846, %i.cl
  %i.cn = mul nsw i32 %i.cm, %i.ck
  %i.co = sdiv i32 %i.cn, %i.cl
  %i.cp = add nuw nsw i32 %.sroa.010.015.i, 3     ; 2 uses
  %i.cq = add nsw i32 %.pre-phi846, %i.cp
  %i.cr = mul nsw i32 %i.cq, %i.co
  %i.cs = sdiv i32 %i.cr, %i.cp                   ; 3 uses
  %i.ct = add nuw nsw i32 %.sroa.010.015.i, 4     ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa, label %bb.i

_ZN8DecGraph11Combination5countEv.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8DecGraph11Combination5countEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa, %.lr.ph.i115
  %.016.i.epil.init = phi i32 [ 1, %.lr.ph.i115 ], [ %i.cs, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ]
  %.sroa.010.015.i.epil.init = phi i32 [ 1, %.lr.ph.i115 ], [ %i.ct, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ]
  %lcmp.mod1228 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1228)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.016.i.epil = phi i32 [ %.016.i.epil.init, %.epil.preheader ], [ %i.cw, %bb.j ]
  %.sroa.010.015.i.epil = phi i32 [ %.sroa.010.015.i.epil.init, %.epil.preheader ], [ %i.cx, %bb.j ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.cu = add nsw i32 %.pre-phi846, %.sroa.010.015.i.epil
  %i.cv = mul nsw i32 %i.cu, %.016.i.epil
  %i.cw = sdiv i32 %i.cv, %.sroa.010.015.i.epil   ; 2 uses
  %i.cx = add nuw nsw i32 %.sroa.010.015.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN8DecGraph11Combination5countEv.exit, label %bb.j, !llvm.loop !412

_ZN8DecGraph11Combination5countEv.exit:           ; preds = %bb.j, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.cs, %_ZN8DecGraph11Combination5countEv.exit.unr-lcssa ], [ %i.cw, %bb.j ] ; 3 uses
  %i.cy = icmp slt i32 %.lcssa, 0
  br i1 %i.cy, label %bb.k, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.k:                                             ; preds = %_ZN8DecGraph11Combination5countEv.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN8DecGraph11Combination5countEv.exit
  %i.cz = zext nneg i32 %.lcssa to i64
  %.not.i.i.i.i117 = icmp eq i32 %.lcssa, 0
  br i1 %.not.i.i.i.i117, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %.lr.ph.i123.loopexit

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.lr.ph.i123

.lr.ph.i123.loopexit:                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.da = phi i64 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ 1, %bb.h ] ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 2                ; 3 uses
  %i.dc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #37 ; 5 uses
  store ptr %i.dc, ptr %5, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dd, ptr %i.aa, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dc, i8 0, i64 %i.db, i1 false), !tbaa !46
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  br label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.loopexit, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.df = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.dc, %.lr.ph.i123.loopexit ] ; 13 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.de, %.lr.ph.i123.loopexit ] ; 5 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  br i1 %i.ca, label %bb.l, label %.lr.ph.i131

bb.l:                                             ; preds = %.lr.ph.i123
  %.not14.i130 = icmp slt i32 %i.bz, 1
  br i1 %.not14.i130, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.l, %.lr.ph.i123
  %.pre-phi844 = phi i32 [ %i.bz, %.lr.ph.i123 ], [ %i.bw, %bb.l ] ; 5 uses
  %i.dg = phi i32 [ %i.bw, %.lr.ph.i123 ], [ %i.bz, %bb.l ] ; 3 uses
  %i.dh = add nsw i32 %i.dg, -1
  %xtraiter1230 = and i32 %i.dg, 3                ; 3 uses
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.epil.preheader1229, label %.lr.ph.i131.new

.lr.ph.i131.new:                                  ; preds = %.lr.ph.i131
  %unroll_iter1235 = and i32 %i.dg, 2147483644
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i131.new
  %.016.i132 = phi i32 [ 1, %.lr.ph.i131.new ], [ %i.dx, %bb.m ]
  %.sroa.010.015.i133 = phi i32 [ 1, %.lr.ph.i131.new ], [ %i.dy, %bb.m ] ; 6 uses
  %niter1236 = phi i32 [ 0, %.lr.ph.i131.new ], [ %niter1236.next.3, %bb.m ]
  %i.dj = add nsw i32 %.pre-phi844, %.sroa.010.015.i133
  %i.dk = mul nsw i32 %i.dj, %.016.i132
  %i.dl = sdiv i32 %i.dk, %.sroa.010.015.i133
  %i.dm = add nuw nsw i32 %.sroa.010.015.i133, 1  ; 2 uses
  %i.dn = add nsw i32 %.pre-phi844, %i.dm
  %i.do = mul nsw i32 %i.dn, %i.dl
  %i.dp = sdiv i32 %i.do, %i.dm
  %i.dq = add nuw nsw i32 %.sroa.010.015.i133, 2  ; 2 uses
  %i.dr = add nsw i32 %.pre-phi844, %i.dq
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = sdiv i32 %i.ds, %i.dq
  %i.du = add nuw nsw i32 %.sroa.010.015.i133, 3  ; 2 uses
  %i.dv = add nsw i32 %.pre-phi844, %i.du
  %i.dw = mul nsw i32 %i.dv, %i.dt
  %i.dx = sdiv i32 %i.dw, %i.du                   ; 3 uses
  %i.dy = add nuw nsw i32 %.sroa.010.015.i133, 4  ; 2 uses
  %niter1236.next.3 = add nuw i32 %niter1236, 4   ; 2 uses
  %niter1236.ncmp.3 = icmp eq i32 %niter1236.next.3, %unroll_iter1235
  br i1 %niter1236.ncmp.3, label %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa, label %bb.m

_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa: ; preds = %bb.m
  %lcmp.mod1232.not = icmp eq i32 %xtraiter1230, 0
  br i1 %lcmp.mod1232.not, label %_ZN8DecGraph11Combination5countEv.exit136, label %.epil.preheader1229

.epil.preheader1229:                              ; preds = %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa, %.lr.ph.i131
  %.016.i132.epil.init = phi i32 [ 1, %.lr.ph.i131 ], [ %i.dx, %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa ]
  %.sroa.010.015.i133.epil.init = phi i32 [ 1, %.lr.ph.i131 ], [ %i.dy, %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa ]
  %lcmp.mod1234 = icmp ne i32 %xtraiter1230, 0
  call void @llvm.assume(i1 %lcmp.mod1234)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader1229
  %.016.i132.epil = phi i32 [ %.016.i132.epil.init, %.epil.preheader1229 ], [ %i.eb, %bb.n ]
  %.sroa.010.015.i133.epil = phi i32 [ %.sroa.010.015.i133.epil.init, %.epil.preheader1229 ], [ %i.ec, %bb.n ] ; 3 uses
  %epil.iter1231 = phi i32 [ 0, %.epil.preheader1229 ], [ %epil.iter1231.next, %bb.n ]
  %i.dz = add nsw i32 %.pre-phi844, %.sroa.010.015.i133.epil
  %i.ea = mul nsw i32 %i.dz, %.016.i132.epil
  %i.eb = sdiv i32 %i.ea, %.sroa.010.015.i133.epil ; 2 uses
  %i.ec = add nuw nsw i32 %.sroa.010.015.i133.epil, 1
  %epil.iter1231.next = add i32 %epil.iter1231, 1 ; 2 uses
  %epil.iter1231.cmp.not = icmp eq i32 %epil.iter1231.next, %xtraiter1230
  br i1 %epil.iter1231.cmp.not, label %_ZN8DecGraph11Combination5countEv.exit136, label %bb.n, !llvm.loop !413

_ZN8DecGraph11Combination5countEv.exit136:        ; preds = %bb.n, %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa
  %.lcssa1195 = phi i32 [ %i.dx, %_ZN8DecGraph11Combination5countEv.exit136.unr-lcssa ], [ %i.eb, %bb.n ] ; 3 uses
  %i.ed = icmp slt i32 %.lcssa1195, 0
  br i1 %i.ed, label %bb.o, label %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i

bb.o:                                             ; preds = %_ZN8DecGraph11Combination5countEv.exit136
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i: ; preds = %_ZN8DecGraph11Combination5countEv.exit136
  %i.ee = zext nneg i32 %.lcssa1195 to i64
  %.not.i.i.i.i137 = icmp eq i32 %.lcssa1195, 0
  br i1 %.not.i.i.i.i137, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i, label %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i

_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i: ; preds = %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %_ZN8DecGraph11CombinationD2Ev.exit140

_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i
  %i.ef = phi i64 [ %i.ee, %_ZNSt6vectorISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EE17_S_check_init_lenEmRKSB_.exit.i ], [ 1, %bb.l ] ; 6 uses
  %i.eg = mul nuw nsw i64 %i.ef, 48
  %i.eh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #37 ; 6 uses
  store ptr %i.eh, ptr %6, align 8, !tbaa !98
  %i.ei = getelementptr inbounds nuw [48 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.ei, ptr %i.ac, align 8, !tbaa !449
  %i.ej = add nsw i64 %i.ef, -1
  %xtraiter1237 = and i64 %i.ef, 3                ; 2 uses
  %lcmp.mod1238.not = icmp eq i64 %xtraiter1237, 0
  br i1 %lcmp.mod1238.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.prol ], [ %i.eh, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ] ; 6 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i.prol ], [ %i.ef, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.prol, i8 0, i64 24, i1 false)
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !104
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  store ptr %i.ek, ptr %i.em, align 8, !tbaa !136
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store i64 0, ptr %i.en, align 8, !tbaa !105
  %i.eo = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1237
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !414

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i
  %.lcssa1196.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.eh, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.ef, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.i ], [ %i.eo, %.lr.ph.i.i.i.i.i.prol ]
  %i.eq = icmp ult i64 %i.ej, 3
  br i1 %i.eq, label %_ZN8DecGraph11CombinationD2Ev.exit140, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i, i8 0, i64 24, i1 false)
  store ptr %i.er, ptr %i.es, align 8, !tbaa !104
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  store ptr %i.er, ptr %i.et, align 8, !tbaa !136
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.eu, align 8, !tbaa !105
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !104
  %i.ey = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !136
  %i.ez = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store i64 0, ptr %i.ez, align 8, !tbaa !105
  %i.fa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !104
  %i.fd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  store ptr %i.fb, ptr %i.fd, align 8, !tbaa !136
  %i.fe = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store i64 0, ptr %i.fe, align 8, !tbaa !105
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  %i.fg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false)
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !104
  %i.fi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  store ptr %i.fg, ptr %i.fi, align 8, !tbaa !136
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store i64 0, ptr %i.fj, align 8, !tbaa !105
  %i.fk = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i138.3 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i.i138.3, label %_ZN8DecGraph11CombinationD2Ev.exit140, label %.lr.ph.i.i.i.i.i, !llvm.loop !415

_ZN8DecGraph11CombinationD2Ev.exit140:            ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i
  %i.fm = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS6_ESaIS6_EESaISA_EEC2EmRKSB_.exit.thread.i ], [ %.lcssa1196.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.fl, %.lr.ph.i.i.i.i.i ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !450
  %.not648724 = icmp eq ptr %i.bn, %i.bm
  br i1 %.not648724, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit, %_ZN8DecGraph11CombinationD2Ev.exit140
  %i.fn = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %i.fo = ptrtoint ptr %i.df to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 8 uses
  %.not.i.i.i.i141 = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.df ; 3 uses
  br i1 %.not.i.i.i.i141, label %.thread639, label %bb.p

.thread639:                                       ; preds = %._crit_edge
  %i.fq = getelementptr inbounds nuw i8, ptr null, i64 %i.fp
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.p:                                             ; preds = %._crit_edge
  %i.fr = icmp ugt i64 %i.fp, 9223372036854775804
  br i1 %i.fr, label %bb.q, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143, !prof !92

bb.q:                                             ; preds = %bb.p
  call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143:   ; preds = %bb.p
  %i.fs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #37 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fp ; 3 uses
  %i.fu = icmp samesign ugt i64 %i.fp, 4
  br i1 %i.fu, label %bb.r, label %bb.s, !prof !95

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.df, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i143
  %i.fv = icmp eq i64 %i.fp, 4
  br i1 %i.fv, label %bb.t, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

bb.t:                                             ; preds = %bb.s
  %i.fw = load i32, ptr %i.df, align 4, !tbaa !46
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144:             ; preds = %.thread639, %bb.r, %bb.s, %bb.t
  %i.fx = phi ptr [ %i.ft, %bb.r ], [ %i.ft, %bb.s ], [ %i.ft, %bb.t ], [ %i.fq, %.thread639 ]
  %i.fy = phi ptr [ %i.fs, %bb.r ], [ %i.fs, %bb.s ], [ %i.fs, %bb.t ], [ null, %.thread639 ] ; 4 uses
  %i.fz = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.ga = ptrtoint ptr %i.fm to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = sdiv exact i64 %i.gb, 48                ; 3 uses
  %.not649726 = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.fm
  br i1 %.not649726, label %._crit_edge729, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144
  %xtraiter1239 = and i64 %i.gc, 3                ; 3 uses
  %i.gd = icmp ult i64 %i.gc, 4
  br i1 %i.gd, label %.lr.ph728.epil.preheader, label %.lr.ph728.preheader.new

.lr.ph728.preheader.new:                          ; preds = %.lr.ph728.preheader
  %unroll_iter1243 = and i64 %i.gc, -4
  br label %.lr.ph728

.lr.ph:                                           ; preds = %_ZN8DecGraph11CombinationD2Ev.exit140, %_ZN8DecGraph10TruthTableD2Ev.exit
  %.sroa.0593.0725 = phi ptr [ %i.hr, %_ZN8DecGraph10TruthTableD2Ev.exit ], [ %i.bn, %_ZN8DecGraph11CombinationD2Ev.exit140 ] ; 2 uses
  %i.ge = load i32, ptr %.sroa.0593.0725, align 4, !tbaa !46
  %i.gf = sext i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.s, align 8, !tbaa !124
  %i.gh = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.gf ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !36 ; 9 uses
  store ptr %i.gj, ptr %7, align 8, !tbaa !36
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !45 ; 6 uses
  store ptr %i.gl, ptr %i.ae, align 8, !tbaa !45
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !49
  store i8 %i.gn, ptr %i.af, align 8, !tbaa !49
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !37
  store i64 %i.gp, ptr %i.ag, align 8, !tbaa !37
  %.not.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread, label %bb.u

_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread:     ; preds = %.lr.ph
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

bb.u:                                             ; preds = %.lr.ph
  %i.gq = load i32, ptr %i.gl, align 4, !tbaa !46
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gl, align 4, !tbaa !46
  call void @_ZN8DecGraph15doDecompositionENS_10TruthTableEiRSt6vectorIiSaIiEES4_RS1_ISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessISB_ESaISB_EESaISF_EE(ptr noundef nonnull align 8 %7, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  %i.gs = load i32, ptr %i.gl, align 4, !tbaa !46 ; 2 uses
  %i.gt = add nsw i32 %i.gs, -1
  store i32 %i.gt, ptr %i.gl, align 4, !tbaa !46
  %i.gu = icmp ne i32 %i.gs, 1
  %i.gv = icmp eq ptr %i.gj, null
  %or.cond = select i1 %i.gu, i1 true, i1 %i.gv
  br i1 %or.cond, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !48
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.w, %bb.v
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !48
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.x, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !48
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.y, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.thread, %bb.u, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0593.0725, i64 4 ; 2 uses
  %.not648 = icmp eq ptr %i.hr, %i.bm
  br i1 %.not648, label %._crit_edge, label %.lr.ph

._crit_edge729.loopexit.unr-lcssa:                ; preds = %.lr.ph728
  %lcmp.mod1241.not = icmp eq i64 %xtraiter1239, 0
  br i1 %lcmp.mod1241.not, label %._crit_edge729, label %.lr.ph728.epil.preheader

.lr.ph728.epil.preheader:                         ; preds = %._crit_edge729.loopexit.unr-lcssa, %.lr.ph728.preheader
  %.sroa.0584.0727.epil.init = phi i64 [ 0, %.lr.ph728.preheader ], [ %i.jg, %._crit_edge729.loopexit.unr-lcssa ]
  %lcmp.mod1242 = icmp ne i64 %xtraiter1239, 0
  call void @llvm.assume(i1 %lcmp.mod1242)
  br label %.lr.ph728.epil

.lr.ph728.epil:                                   ; preds = %.lr.ph728.epil, %.lr.ph728.epil.preheader
  %.sroa.0584.0727.epil = phi i64 [ %i.hx, %.lr.ph728.epil ], [ %.sroa.0584.0727.epil.init, %.lr.ph728.epil.preheader ] ; 3 uses
  %epil.iter1240 = phi i64 [ %epil.iter1240.next, %.lr.ph728.epil ], [ 0, %.lr.ph728.epil.preheader ]
  %i.hs = getelementptr inbounds nuw [48 x i8], ptr %i.fm, i64 %.sroa.0584.0727.epil
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !105
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %.sroa.0584.0727.epil
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !46
  %i.hx = add i64 %.sroa.0584.0727.epil, 1
  %epil.iter1240.next = add i64 %epil.iter1240, 1 ; 2 uses
  %epil.iter1240.cmp.not = icmp eq i64 %epil.iter1240.next, %xtraiter1239
  br i1 %epil.iter1240.cmp.not, label %._crit_edge729, label %.lr.ph728.epil, !llvm.loop !416

._crit_edge729:                                   ; preds = %._crit_edge729.loopexit.unr-lcssa, %.lr.ph728.epil, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit144
  %i.hy = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hy, %.0.i.i.i.i.i.i.i
  %or.cond.i.i = select i1 %.not.i.i.i.i141, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge729
  %.pre.i.i = load i32, ptr %i.df, align 4, !tbaa !46
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.hz = phi i32 [ %i.ie, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ia = phi ptr [ %i.id, %.lr.ph.i.i ], [ %i.hy, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.df, %.lr.ph.preheader.i.i ]
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !46 ; 2 uses
  %i.ic = icmp slt i32 %i.ib, %i.hz
end_hunk_1
begin_hunk_2_@_ZN8DecGraph15DecisionDiagram15buildOneClusterERSt6vectorIiSaIiEE:bb.a
  br label %_ZN8DecGraph10TruthTableD2Ev.exit342

_ZN8DecGraph10TruthTableD2Ev.exit342:             ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit334, %bb.df, %bb.dg, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i341
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262:         ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit, %_ZN8DecGraph10TruthTableD2Ev.exit342
  %i.ajr = add nuw nsw i64 %.sroa.0466.0773, 1    ; 2 uses
  %.not656 = icmp eq i64 %i.ajr, %i.uy
  br i1 %.not656, label %.preheader.preheader, label %bb.bx

.preheader.preheader:                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit262
  br i1 %min.iters.check, label %.preheader.preheader1193, label %vector.body

vector.body:                                      ; preds = %.preheader.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %index ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %wide.load = load <4 x float>, ptr %i.ajs, align 4, !tbaa !84
  %wide.load1072 = load <4 x float>, ptr %i.ajt, align 4, !tbaa !84
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %index ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 16 ; 2 uses
  %wide.load1073 = load <4 x float>, ptr %i.aju, align 4, !tbaa !84
  %wide.load1074 = load <4 x float>, ptr %i.ajv, align 4, !tbaa !84
  %i.ajw = fadd <4 x float> %wide.load, %wide.load1073
  %i.ajx = fadd <4 x float> %wide.load1072, %wide.load1074
  store <4 x float> %i.ajw, ptr %i.aju, align 4, !tbaa !84
  store <4 x float> %i.ajx, ptr %i.ajv, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ajy = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajy, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEED2Ev.exit344, label %.preheader.preheader1193

.preheader.preheader1193:                         ; preds = %.preheader.preheader, %middle.block
  %.sroa.0459.0774.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

_ZNSt6vectorIfSaIfEED2Ev.exit344:                 ; preds = %.preheader, %middle.block
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.ux) #35
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.0477.0776, i64 4 ; 2 uses
  %.not654 = icmp eq ptr %i.ajz, %i.vi
  br i1 %.not654, label %._crit_edge778, label %.lr.ph777

.preheader:                                       ; preds = %.preheader.preheader1193, %.preheader
  %.sroa.0459.0774 = phi i64 [ %i.akf, %.preheader ], [ %.sroa.0459.0774.ph, %.preheader.preheader1193 ] ; 3 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %.sroa.0459.0774
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !84
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %.sroa.0459.0774 ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !84
  %i.ake = fadd float %i.akb, %i.akd
  store float %i.ake, ptr %i.akc, align 4, !tbaa !84
  %i.akf = add nuw nsw i64 %.sroa.0459.0774, 1    ; 2 uses
  %.not657 = icmp eq i64 %i.akf, %i.uy
  br i1 %.not657, label %_ZNSt6vectorIfSaIfEED2Ev.exit344, label %.preheader, !llvm.loop !446

bb.dl:                                            ; preds = %._crit_edge831, %_ZNSt6vectorIfSaIfEED2Ev.exit254
  %i.akg = phi ptr [ %i.vi, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.pre833, %._crit_edge831 ] ; 2 uses
  %i.akh = phi ptr [ %i.vh, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.pre832, %._crit_edge831 ] ; 2 uses
  %.197 = phi i32 [ %i.wb, %_ZNSt6vectorIfSaIfEED2Ev.exit254 ], [ %.096, %._crit_edge831 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i32 0, ptr %i.ax, align 8, !tbaa !134
  store ptr null, ptr %i.ay, align 8, !tbaa !135
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !104
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !136
  store i64 0, ptr %i.bb, align 8, !tbaa !105
  %.not655779 = icmp eq ptr %i.akh, %i.akg
  br i1 %.not655779, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357, label %.lr.ph782

._crit_edge783:                                   ; preds = %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.pre834 = load ptr, ptr %i.az, align 8, !tbaa !104 ; 3 uses
  %.not4.i.i.i345 = icmp eq ptr %.pre834, %i.ax
  br i1 %.not4.i.i.i345, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357, label %.lr.ph.i.i.i346

.lr.ph.i.i.i346:                                  ; preds = %._crit_edge783, %.lr.ph.i.i.i346
  %.06.i.i.i347 = phi i64 [ %i.akj, %.lr.ph.i.i.i346 ], [ 0, %._crit_edge783 ] ; 2 uses
  %.sroa.02.05.i.i.i348 = phi ptr [ %i.aki, %.lr.ph.i.i.i346 ], [ %.pre834, %._crit_edge783 ]
  %i.aki = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i348) #41 ; 2 uses
  %i.akj = add nuw nsw i64 %.06.i.i.i347, 1       ; 3 uses
  %.not.i.i.i349 = icmp eq ptr %i.aki, %i.ax
  br i1 %.not.i.i.i349, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350, label %.lr.ph.i.i.i346, !llvm.loop !13

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350: ; preds = %.lr.ph.i.i.i346
  %i.akk = icmp samesign ugt i64 %.06.i.i.i347, 2305843009213693950
  br i1 %i.akk, label %bb.dm, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351

bb.dm:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i350
  %i.akl = shl nuw nsw i64 %i.akj, 2
  %i.akm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akl) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i352

.lr.ph.i.i.i.i.i.i.i.i.i.i352:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351
  %.08.i.i.i.i.i.i.i.i.i.i353 = phi ptr [ %i.akp, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %i.akm, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354 = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i.i.i.i.i352 ], [ %.pre834, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i351 ] ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354, i64 32
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !46
  store i32 %i.ako, ptr %.08.i.i.i.i.i.i.i.i.i.i353, align 4, !tbaa !46
  %i.akp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i353, i64 4 ; 2 uses
  %i.akq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i354) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i355 = icmp eq ptr %i.akq, %i.ax
  br i1 %.not.i.i.i.i.i.i.i.i.i.i355, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i352, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i352
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.akj
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357: ; preds = %bb.dl, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit, %._crit_edge783
  %.sroa.0451.0 = phi ptr [ null, %._crit_edge783 ], [ %i.akm, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %.sroa.9.0 = phi ptr [ null, %._crit_edge783 ], [ %i.akr, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i356 = phi ptr [ null, %._crit_edge783 ], [ %i.akp, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357.loopexit ], [ null, %bb.dl ]
  %i.aks = load ptr, ptr %2, align 16, !tbaa !67  ; 3 uses
  %i.akt = load ptr, ptr %i.m, align 16, !tbaa !75
  store ptr %.sroa.0451.0, ptr %2, align 16, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i356, ptr %i.k, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.m, align 16, !tbaa !75
  %.not.i.i.i.i.i358 = icmp eq ptr %i.aks, null
  br i1 %.not.i.i.i.i.i358, label %_ZNSt6vectorIiSaIiEED2Ev.exit361, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.aku = ptrtoint ptr %i.akt to i64
  %i.akv = ptrtoint ptr %i.aks to i64
  %i.akw = sub i64 %i.aku, %i.akv
  call void @_ZdlPvm(ptr noundef nonnull %i.aks, i64 noundef %i.akw) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit361

_ZNSt6vectorIiSaIiEED2Ev.exit361:                 ; preds = %bb.dn, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit357
  %i.akx = load ptr, ptr %i.ay, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.akx)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.not.i.i.i362 = icmp eq ptr %.sroa.0495.0.lcssa, null
  br i1 %.not.i.i.i362, label %_ZNSt6vectorIiSaIiEED2Ev.exit363, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361
  %i.aky = sub i64 %.sroa.23.0.lcssa, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0495.0.lcssa, i64 noundef %i.aky) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit363

_ZNSt6vectorIiSaIiEED2Ev.exit363:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit361, %bb.do
  %.not.i.i.i364 = icmp eq ptr %.sroa.0525.0, null
  br i1 %.not.i.i.i364, label %_ZNSt6vectorIfSaIfEED2Ev.exit365, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit363
  %i.akz = sub i64 %.sroa.15533.0, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0525.0, i64 noundef %i.akz) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit365

.lr.ph782:                                        ; preds = %bb.dl, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0455.0780 = phi ptr [ %i.asw, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.akh, %bb.dl ] ; 2 uses
  %i.ala = load i32, ptr %.sroa.0455.0780, align 4, !tbaa !46 ; 5 uses
  %i.alb = load i32, ptr %i.bc, align 4, !tbaa !122
  %i.alc = add nsw i32 %i.alb, 2
  %i.ald = sext i32 %i.alc to i64
  %i.ale = load ptr, ptr %i.bd, align 8, !tbaa !123 ; 8 uses
  %i.alf = load ptr, ptr %i.s, align 8, !tbaa !124 ; 7 uses
  %i.alg = ptrtoint ptr %i.ale to i64             ; 2 uses
  %i.alh = ptrtoint ptr %i.alf to i64             ; 2 uses
  %i.ali = sub i64 %i.alg, %i.alh                 ; 7 uses
  %i.alj = sdiv exact i64 %i.ali, 48              ; 12 uses
  %i.alk = lshr i64 %i.alj, 1
  %i.all = icmp ult i64 %i.alk, %i.ald
  br i1 %i.all, label %bb.dq, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.dq:                                            ; preds = %.lr.ph782
  %i.alm = icmp sgt i64 %i.ali, 0
  br i1 %i.alm, label %bb.dr, label %bb.ec

bb.dr:                                            ; preds = %bb.dq
  %i.aln = load ptr, ptr %i.be, align 8, !tbaa !165
  %i.alo = ptrtoint ptr %i.aln to i64
  %i.alp = sub i64 %i.alo, %i.alg
  %i.alq = sdiv exact i64 %i.alp, 48              ; 2 uses
  %i.alr = sub nuw nsw i64 192153584101141162, %i.alj ; 2 uses
  %i.als = icmp ule i64 %i.alq, %i.alr
  call void @llvm.assume(i1 %i.als)
  %.not27.i = icmp ult i64 %i.alq, %i.alj
  br i1 %.not27.i, label %bb.ds, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.dr
  %xtraiter1266 = and i64 %i.alj, 3               ; 2 uses
  %lcmp.mod1267.not = icmp eq i64 %xtraiter1266, 0
  br i1 %lcmp.mod1267.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.prol ], [ %i.ale, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.alx, %.lr.ph.i.i.i.i.prol ], [ %i.alj, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter1268 = phi i64 [ %prol.iter1268.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.alt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.alu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.alu, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alt, i8 0, i64 17, i1 false)
  %i.alv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.alv, align 8, !tbaa !129
  %i.alw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.alw, align 4, !tbaa !128
  %i.alx = add nsw i64 %.057.i.i.i.i.prol, -1     ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter1268.next = add i64 %prol.iter1268, 1 ; 2 uses
  %prol.iter1268.cmp.not = icmp eq i64 %prol.iter1268.next, %xtraiter1266
  br i1 %prol.iter1268.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !447

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa1217.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.aly, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.ale, %.lr.ph.i.i.i.i.preheader ], [ %i.aly, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.alj, %.lr.ph.i.i.i.i.preheader ], [ %i.alx, %.lr.ph.i.i.i.i.prol ]
  %i.alz = icmp ult i64 %i.ali, 192
  br i1 %i.alz, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.amu, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.amt, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.ama = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.amb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.amb, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ama, i8 0, i64 17, i1 false)
  %i.amc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.amc, align 8, !tbaa !129
  %i.amd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.amd, align 4, !tbaa !128
  %i.ame = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.ame, align 8, !tbaa !127
  %i.amf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.amg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.amg, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amf, i8 0, i64 17, i1 false)
  %i.amh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.amh, align 8, !tbaa !129
  %i.ami = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.ami, align 4, !tbaa !128
  %i.amj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.amj, align 8, !tbaa !127
  %i.amk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.aml = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.aml, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amk, i8 0, i64 17, i1 false)
  %i.amm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.amm, align 8, !tbaa !129
  %i.amn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.amn, align 4, !tbaa !128
  %i.amo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.amo, align 8, !tbaa !127
  %i.amp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.amq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.amq, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amp, i8 0, i64 17, i1 false)
  %i.amr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.amr, align 8, !tbaa !129
  %i.ams = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.ams, align 4, !tbaa !128
  %i.amt = add nsw i64 %.057.i.i.i.i, -4          ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i443.3 = icmp eq i64 %i.amt, 0
  br i1 %.not.i.i.i.i443.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa1217 = phi ptr [ %.lcssa1217.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.amu, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa1217, ptr %i.bd, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.ds:                                            ; preds = %bb.dr
  %i.amv = icmp ult i64 %i.alr, %i.alj
  br i1 %i.amv, label %bb.dt, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ds
  %i.amw = shl nuw nsw i64 %i.alj, 1
  %i.amx = call i64 @llvm.umin.i64(i64 %i.amw, i64 192153584101141162) ; 2 uses
  %i.amy = mul nuw nsw i64 %i.amx, 48
  %i.amz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amy) #37 ; 4 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 %i.ali ; 3 uses
  %xtraiter1269 = and i64 %i.alj, 3               ; 2 uses
  %lcmp.mod1270.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1270.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.ang, %.lr.ph.i.i.i29.i.prol ], [ %i.ana, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.anf, %.lr.ph.i.i.i29.i.prol ], [ %i.alj, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter1271 = phi i64 [ %prol.iter1271.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.anb = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.anc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.anc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anb, i8 0, i64 17, i1 false)
  %i.and = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.and, align 8, !tbaa !129
  %i.ane = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.ane, align 4, !tbaa !128
  %i.anf = add nsw i64 %.057.i.i.i31.i.prol, -1   ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter1271.next = add i64 %prol.iter1271, 1 ; 2 uses
  %prol.iter1271.cmp.not = icmp eq i64 %prol.iter1271.next, %xtraiter1269
  br i1 %prol.iter1271.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !448

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.ana, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ang, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.alj, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.anf, %.lr.ph.i.i.i29.i.prol ]
  %i.anh = icmp ult i64 %i.ali, 192
  br i1 %i.anh, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aoc, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aob, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.ani = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.anj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.anj, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ani, i8 0, i64 17, i1 false)
  %i.ank = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.ank, align 8, !tbaa !129
  %i.anl = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.anl, align 4, !tbaa !128
  %i.anm = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.anm, align 8, !tbaa !127
  %i.ann = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.ano = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.ano, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ann, i8 0, i64 17, i1 false)
  %i.anp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.anp, align 8, !tbaa !129
  %i.anq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.anq, align 4, !tbaa !128
  %i.anr = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.anr, align 8, !tbaa !127
  %i.ans = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.ant = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.ant, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ans, i8 0, i64 17, i1 false)
  %i.anu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.anu, align 8, !tbaa !129
  %i.anv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.anv, align 4, !tbaa !128
  %i.anw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.anw, align 8, !tbaa !127
  %i.anx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.any = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.any, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anx, i8 0, i64 17, i1 false)
  %i.anz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.anz, align 8, !tbaa !129
  %i.aoa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aoa, align 4, !tbaa !128
  %i.aob = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aob, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.alf, %i.ale
  br i1 %.not9.i.i.i.i.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.aov, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.amz, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.aou, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.alf, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aod = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aod, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aoe = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aof = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aog = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !45 ; 3 uses
  %i.aoi = load <2 x ptr>, ptr %i.aof, align 8, !tbaa !51
  store <2 x ptr> %i.aoi, ptr %i.aoe, align 8, !tbaa !51
  %i.aoj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aok = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aol = load i8, ptr %i.aok, align 8, !tbaa !49
  store i8 %i.aol, ptr %i.aoj, align 8, !tbaa !49
  %i.aom = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aon = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aoo = load i64, ptr %i.aon, align 8, !tbaa !37
  store i64 %i.aoo, ptr %i.aom, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i444 = icmp eq ptr %i.aoh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i444, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aop = load i32, ptr %i.aoh, align 4, !tbaa !46
  %i.aoq = add nsw i32 %i.aop, 1
  store i32 %i.aoq, ptr %i.aoh, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.du, %.lr.ph.i.i.i.i.i.i
  %i.aor = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.aos = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.aot = load i64, ptr %i.aos, align 8
  store i64 %i.aot, ptr %i.aor, align 8
  %i.aou = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i445 = icmp eq ptr %i.aou, %i.ale
  br i1 %.not.i.i.i.i.i.i445, label %.lr.ph.i446, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

.lr.ph.i446:                                      ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i
  %.05.i = phi ptr [ %i.apz, %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i ], [ %i.alf, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.aox = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i.i447 = icmp eq ptr %i.aoy, null
  br i1 %.not.i.i.i.i.i447, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i446
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !46 ; 2 uses
  %i.apa = add nsw i32 %i.aoz, -1
  store i32 %i.apa, ptr %i.aoy, align 4, !tbaa !46
  %i.apb = icmp eq i32 %i.aoz, 1
  br i1 %i.apb, label %bb.dw, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i

bb.dw:                                            ; preds = %bb.dv
  %i.apc = load ptr, ptr %i.aow, align 8, !tbaa !36 ; 8 uses
  %i.apd = icmp eq ptr %i.apc, null
  br i1 %i.apd, label %_ZSt8_DestroyIN8DecGraph12DecisionNodeEEvPT_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 56
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i450 = icmp eq ptr %i.apf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i450, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 72
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !48
  %i.api = ptrtoint ptr %i.aph to i64
  %i.apj = ptrtoint ptr %i.apf to i64
  %i.apk = sub i64 %i.api, %i.apj
  call void @_ZdlPvm(ptr noundef nonnull %i.apf, i64 noundef %i.apk) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.dy, %bb.dx
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apc, i64 32
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.apm, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apc, i64 48
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !48
  %i.app = ptrtoint ptr %i.apo to i64
  %i.apq = ptrtoint ptr %i.apm to i64
  %i.apr = sub i64 %i.app, %i.apq
  call void @_ZdlPvm(ptr noundef nonnull %i.apm, i64 noundef %i.apr) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i:       ; preds = %bb.dz, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.apt, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i.i.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apc, i64 24
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !48
end_hunk_2
begin_hunk_3_@_ZN8DecGraph15DecisionDiagram42buildWithTheseSupportWithEntropyAndFourierERSt6vectorIiSaIiEERSt3setIiSt4lessIiES2_E:bb.a
_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i205
  %i.vw = icmp samesign ugt i64 %.06.i.i.i, 2305843009213693950
  br i1 %i.vw, label %bb.bh, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.bh:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #40
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  %i.vx = shl nuw nsw i64 %i.vv, 2
  %i.vy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vx) #37 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.vy, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.wc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.pre578, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !46
  store i32 %i.wa, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %i.wb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.wc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i) #41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wc, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.vv
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split: ; preds = %._crit_edge525, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit
  %.sroa.0313.0.ph = phi ptr [ %i.vy, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.sroa.9.0.ph = phi ptr [ %i.wd, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.wb, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit.loopexit ], [ null, %._crit_edge525 ]
  %.pr = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit

_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit: ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split
  %i.we = phi ptr [ %.pr, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ %i.vs, %bb.bg ] ; 3 uses
  %.sroa.0313.0 = phi ptr [ %.sroa.0313.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.sroa.9.0 = phi ptr [ %.sroa.9.0.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.ph, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exitthread-pre-split ], [ null, %bb.bg ]
  %i.wf = load ptr, ptr %i.an, align 8, !tbaa !75
  store ptr %.sroa.0313.0, ptr %2, align 8, !tbaa !67
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !66
  store ptr %.sroa.9.0, ptr %i.an, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %i.wg = ptrtoint ptr %i.wf to i64
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = sub i64 %i.wg, %i.wh
  call void @_ZdlPvm(ptr noundef nonnull %i.we, i64 noundef %i.wi) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bi, %_ZNSt6vectorIiSaIiEEC2ISt23_Rb_tree_const_iteratorIiEvEET_S5_RKS0_.exit
  %.02022.i.i.i208 = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %.not23.i.i.i209 = icmp eq ptr %.02022.i.i.i208, null
  br i1 %.not23.i.i.i209, label %._crit_edge.thread.i.i.i226, label %.lr.ph.i.i.i210

.lr.ph.i.i.i210:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.wj = load i32, ptr %i.a, align 4, !tbaa !46  ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i.i.i210
  %.02024.i.i.i211 = phi ptr [ %.02022.i.i.i208, %.lr.ph.i.i.i210 ], [ %.020.i.i.i214, %bb.bj ] ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.02024.i.i.i211, i64 32
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !46 ; 2 uses
  %i.wm = icmp slt i32 %i.wj, %i.wl               ; 2 uses
  %.in.v.i.i.i212 = select i1 %i.wm, i64 16, i64 24
  %.in.i.i.i213 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i211, i64 %.in.v.i.i.i212
  %.020.i.i.i214 = load ptr, ptr %.in.i.i.i213, align 8, !tbaa !100 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %.020.i.i.i214, null
  br i1 %.not.i.i.i215, label %._crit_edge.i.i.i216, label %bb.bj, !llvm.loop !7

._crit_edge.i.i.i216:                             ; preds = %bb.bj
  br i1 %i.wm, label %._crit_edge.thread.i.i.i226, label %bb.bl

._crit_edge.thread.i.i.i226:                      ; preds = %._crit_edge.i.i.i216, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.019.lcssa29.i.i.i227 = phi ptr [ %.02024.i.i.i211, %._crit_edge.i.i.i216 ], [ %i.k, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.wn = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.wo = icmp eq ptr %.019.lcssa29.i.i.i227, %i.wn
  br i1 %i.wo, label %select.unfold.i.i223, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread.i.i.i226
  %i.wp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i227) #41
  %.phi.trans.insert.i.i228 = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %.pre.i.i229 = load i32, ptr %.phi.trans.insert.i.i228, align 4, !tbaa !46
  %.pre18.i.i230 = load i32, ptr %i.a, align 4, !tbaa !46
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i216
  %i.wq = phi i32 [ %.pre18.i.i230, %bb.bk ], [ %i.wj, %._crit_edge.i.i.i216 ]
  %i.wr = phi i32 [ %.pre.i.i229, %bb.bk ], [ %i.wl, %._crit_edge.i.i.i216 ]
  %.019.lcssa28.i.i.i217 = phi ptr [ %.019.lcssa29.i.i.i227, %bb.bk ], [ %.02024.i.i.i211, %._crit_edge.i.i.i216 ]
  %i.ws = icmp slt i32 %i.wr, %i.wq
  br i1 %i.ws, label %select.unfold.i.i223, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231

select.unfold.i.i223:                             ; preds = %bb.bl, %._crit_edge.thread.i.i.i226
  %.sroa.4.0.i.ph.i.i224 = phi ptr [ %.019.lcssa29.i.i.i227, %._crit_edge.thread.i.i.i226 ], [ %.019.lcssa28.i.i.i217, %bb.bl ] ; 3 uses
  %i.wt = icmp eq ptr %.sroa.4.0.i.ph.i.i224, %i.k
  br i1 %i.wt, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225, label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i223
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i224, i64 32
  %i.wv = load i32, ptr %i.a, align 4, !tbaa !46
  %i.ww = load i32, ptr %i.wu, align 4, !tbaa !46
  %i.wx = icmp slt i32 %i.wv, %i.ww
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225: ; preds = %bb.bm, %select.unfold.i.i223
  %i.wy = phi i1 [ %i.wx, %bb.bm ], [ true, %select.unfold.i.i223 ]
  %i.wz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 32
  %i.xb = load i32, ptr %i.a, align 4, !tbaa !46
  store i32 %i.xb, ptr %i.xa, align 4, !tbaa !46
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.wy, ptr noundef nonnull %i.wz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i224, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #36
  %i.xc = load i64, ptr %i.o, align 8, !tbaa !105
  %i.xd = add i64 %i.xc, 1
  store i64 %i.xd, ptr %i.o, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231:   ; preds = %bb.bl, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i225
  %i.xe = call noundef i64 @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE5eraseERKi(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %i.xf = load ptr, ptr %i.af, align 8, !tbaa !135
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.xf)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i.i.i232 = icmp eq ptr %.sroa.0358.0.lcssa, null
  br i1 %.not.i.i.i232, label %_ZNSt6vectorIiSaIiEED2Ev.exit233, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231
  %i.xg = sub i64 %.sroa.23.0.lcssa, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0358.0.lcssa, i64 noundef %i.xg) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit233

_ZNSt6vectorIiSaIiEED2Ev.exit233:                 ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit231, %bb.bn
  %.not.i.i.i234 = icmp eq ptr %.sroa.0388.0, null
  br i1 %.not.i.i.i234, label %_ZNSt6vectorIfSaIfEED2Ev.exit235, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233
  %i.xh = sub i64 %.sroa.15396.0, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0388.0, i64 noundef %i.xh) #35
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit235

_ZNSt6vectorIfSaIfEED2Ev.exit235:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit233, %bb.bo
  %i.xi = load ptr, ptr %2, align 8, !tbaa !93    ; 3 uses
  %i.xj = load ptr, ptr %i.s, align 8, !tbaa !93  ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %.critedge.thread, label %bb.f, !llvm.loop !480

.lr.ph524:                                        ; preds = %bb.bg, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit
  %.sroa.0317.0522 = phi ptr [ %i.aee, %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit ], [ %i.vs, %bb.bg ] ; 2 uses
  %i.xl = load i32, ptr %.sroa.0317.0522, align 4, !tbaa !46 ; 5 uses
  %i.xm = load i32, ptr %i.a, align 4, !tbaa !46
  %i.xn = load i32, ptr %i.aj, align 4, !tbaa !122
  %i.xo = add nsw i32 %i.xn, 2
  %i.xp = sext i32 %i.xo to i64
  %i.xq = load ptr, ptr %i.ak, align 8, !tbaa !123 ; 8 uses
  %i.xr = load ptr, ptr %i.d, align 8, !tbaa !124 ; 7 uses
  %i.xs = ptrtoint ptr %i.xq to i64               ; 2 uses
  %i.xt = ptrtoint ptr %i.xr to i64               ; 2 uses
  %i.xu = sub i64 %i.xs, %i.xt                    ; 7 uses
  %i.xv = sdiv exact i64 %i.xu, 48                ; 12 uses
  %i.xw = lshr i64 %i.xv, 1
  %i.xx = icmp ult i64 %i.xw, %i.xp
  br i1 %i.xx, label %bb.bp, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bp:                                            ; preds = %.lr.ph524
  %i.xy = icmp sgt i64 %i.xu, 0
  br i1 %i.xy, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.xz = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.ya = ptrtoint ptr %i.xz to i64
  %i.yb = sub i64 %i.ya, %i.xs
  %i.yc = sdiv exact i64 %i.yb, 48                ; 2 uses
  %i.yd = sub nuw nsw i64 192153584101141162, %i.xv ; 2 uses
  %i.ye = icmp ule i64 %i.yc, %i.yd
  call void @llvm.assume(i1 %i.ye)
  %.not27.i = icmp ult i64 %i.yc, %i.xv
  br i1 %.not27.i, label %bb.br, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bq
  %xtraiter913 = and i64 %i.xv, 3                 ; 2 uses
  %lcmp.mod914.not = icmp eq i64 %xtraiter913, 0
  br i1 %lcmp.mod914.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.prol ], [ %i.xq, %.lr.ph.i.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.yj, %.lr.ph.i.i.i.i.prol ], [ %i.xv, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.i.prol, align 8, !tbaa !127
  %i.yf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  %i.yg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 0, ptr %i.yg, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yf, i8 0, i64 17, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40
  store i32 -1, ptr %i.yh, align 8, !tbaa !129
  %i.yi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 44
  store i32 -1, ptr %i.yi, align 4, !tbaa !128
  %i.yj = add nsw i64 %.057.i.i.i.i.prol, -1      ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter913
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !481

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa871.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %i.xq, %.lr.ph.i.i.i.i.preheader ], [ %i.yk, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.xv, %.lr.ph.i.i.i.i.preheader ], [ %i.yj, %.lr.ph.i.i.i.i.prol ]
  %i.yl = icmp ult i64 %i.xu, 192
  br i1 %i.yl, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.zg, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i.i = phi i64 [ %i.zf, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i, align 8, !tbaa !127
  %i.ym = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 0, ptr %i.yn, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i8 0, i64 17, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store i32 -1, ptr %i.yo, align 8, !tbaa !129
  %i.yp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 44
  store i32 -1, ptr %i.yp, align 4, !tbaa !128
  %i.yq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 -1, ptr %i.yq, align 8, !tbaa !127
  %i.yr = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  %i.ys = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i64 0, ptr %i.ys, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yr, i8 0, i64 17, i1 false)
  %i.yt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store i32 -1, ptr %i.yt, align 8, !tbaa !129
  %i.yu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 92
  store i32 -1, ptr %i.yu, align 4, !tbaa !128
  %i.yv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 -1, ptr %i.yv, align 8, !tbaa !127
  %i.yw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  %i.yx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  store i64 0, ptr %i.yx, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yw, i8 0, i64 17, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 136
  store i32 -1, ptr %i.yy, align 8, !tbaa !129
  %i.yz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 140
  store i32 -1, ptr %i.yz, align 4, !tbaa !128
  %i.za = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 144
  store i32 -1, ptr %i.za, align 8, !tbaa !127
  %i.zb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  %i.zc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 176
  store i64 0, ptr %i.zc, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, i8 0, i64 17, i1 false)
  %i.zd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 184
  store i32 -1, ptr %i.zd, align 8, !tbaa !129
  %i.ze = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 188
  store i32 -1, ptr %i.ze, align 4, !tbaa !128
  %i.zf = add nsw i64 %.057.i.i.i.i, -4           ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i310.3 = icmp eq i64 %i.zf, 0
  br i1 %.not.i.i.i.i310.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.lcssa871 = phi ptr [ %.lcssa871.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.zg, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa871, ptr %i.ak, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.zh = icmp ult i64 %i.yd, %i.xv
  br i1 %i.zh, label %bb.bs, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.br
  %i.zi = shl nuw nsw i64 %i.xv, 1
  %i.zj = call i64 @llvm.umin.i64(i64 %i.zi, i64 192153584101141162) ; 2 uses
  %i.zk = mul nuw nsw i64 %i.zj, 48
  %i.zl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zk) #37 ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 %i.xu ; 3 uses
  %xtraiter915 = and i64 %i.xv, 3                 ; 2 uses
  %lcmp.mod916.not = icmp eq i64 %xtraiter915, 0
  br i1 %lcmp.mod916.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol

.lr.ph.i.i.i29.i.prol:                            ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i29.i.prol
  %.08.i.i.i30.i.prol = phi ptr [ %i.zs, %.lr.ph.i.i.i29.i.prol ], [ %i.zm, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.057.i.i.i31.i.prol = phi i64 [ %i.zr, %.lr.ph.i.i.i29.i.prol ], [ %i.xv, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter917 = phi i64 [ %prol.iter917.next, %.lr.ph.i.i.i29.i.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 -1, ptr %.08.i.i.i30.i.prol, align 8, !tbaa !127
  %i.zn = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 32
  store i64 0, ptr %i.zo, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zn, i8 0, i64 17, i1 false)
  %i.zp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 40
  store i32 -1, ptr %i.zp, align 8, !tbaa !129
  %i.zq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 44
  store i32 -1, ptr %i.zq, align 4, !tbaa !128
  %i.zr = add nsw i64 %.057.i.i.i31.i.prol, -1    ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i.prol, i64 48 ; 2 uses
  %prol.iter917.next = add i64 %prol.iter917, 1   ; 2 uses
  %prol.iter917.cmp.not = icmp eq i64 %prol.iter917.next, %xtraiter915
  br i1 %prol.iter917.cmp.not, label %.lr.ph.i.i.i29.i.prol.loopexit, label %.lr.ph.i.i.i29.i.prol, !llvm.loop !482

.lr.ph.i.i.i29.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i29.i.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i30.i.unr = phi ptr [ %i.zm, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zs, %.lr.ph.i.i.i29.i.prol ]
  %.057.i.i.i31.i.unr = phi i64 [ %i.xv, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.zr, %.lr.ph.i.i.i29.i.prol ]
  %i.zt = icmp ult i64 %i.xu, 192
  br i1 %i.zt, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i

.lr.ph.i.i.i29.i:                                 ; preds = %.lr.ph.i.i.i29.i.prol.loopexit, %.lr.ph.i.i.i29.i
  %.08.i.i.i30.i = phi ptr [ %i.aao, %.lr.ph.i.i.i29.i ], [ %.08.i.i.i30.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i31.i = phi i64 [ %i.aan, %.lr.ph.i.i.i29.i ], [ %.057.i.i.i31.i.unr, %.lr.ph.i.i.i29.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30.i, align 8, !tbaa !127
  %i.zu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 32
  store i64 0, ptr %i.zv, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zu, i8 0, i64 17, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 40
  store i32 -1, ptr %i.zw, align 8, !tbaa !129
  %i.zx = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 44
  store i32 -1, ptr %i.zx, align 4, !tbaa !128
  %i.zy = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 48
  store i32 -1, ptr %i.zy, align 8, !tbaa !127
  %i.zz = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 56
  %i.aaa = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 80
  store i64 0, ptr %i.aaa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zz, i8 0, i64 17, i1 false)
  %i.aab = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 88
  store i32 -1, ptr %i.aab, align 8, !tbaa !129
  %i.aac = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 92
  store i32 -1, ptr %i.aac, align 4, !tbaa !128
  %i.aad = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 96
  store i32 -1, ptr %i.aad, align 8, !tbaa !127
  %i.aae = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 104
  %i.aaf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 128
  store i64 0, ptr %i.aaf, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aae, i8 0, i64 17, i1 false)
  %i.aag = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 136
  store i32 -1, ptr %i.aag, align 8, !tbaa !129
  %i.aah = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 140
  store i32 -1, ptr %i.aah, align 4, !tbaa !128
  %i.aai = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 144
  store i32 -1, ptr %i.aai, align 8, !tbaa !127
  %i.aaj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 152
  %i.aak = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 176
  store i64 0, ptr %i.aak, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aaj, i8 0, i64 17, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 184
  store i32 -1, ptr %i.aal, align 8, !tbaa !129
  %i.aam = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 188
  store i32 -1, ptr %i.aam, align 4, !tbaa !128
  %i.aan = add nsw i64 %.057.i.i.i31.i, -4        ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.i, i64 192
  %.not.i.i.i32.i.3 = icmp eq i64 %i.aan, 0
  br i1 %.not.i.i.i32.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, label %.lr.ph.i.i.i29.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i: ; preds = %.lr.ph.i.i.i29.i, %.lr.ph.i.i.i29.i.prol.loopexit
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.xr, %i.xq
  br i1 %.not9.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.abh, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.zl, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 6 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.abg, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.xr, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i ] ; 7 uses
  %i.aap = load i32, ptr %.0810.i.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.aap, ptr %.011.i.i.i.i.i.i, align 8, !tbaa !127
  %i.aaq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 8
  %i.aas = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !45 ; 3 uses
  %i.aau = load <2 x ptr>, ptr %i.aar, align 8, !tbaa !51
  store <2 x ptr> %i.aau, ptr %i.aaq, align 8, !tbaa !51
  %i.aav = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24
  %i.aax = load i8, ptr %i.aaw, align 8, !tbaa !49
  store i8 %i.aax, ptr %i.aav, align 8, !tbaa !49
  %i.aay = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 32
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 32
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !37
  store i64 %i.aba, ptr %i.aay, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i311 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i311, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.abb = load i32, ptr %i.aat, align 4, !tbaa !46
  %i.abc = add nsw i32 %i.abb, 1
  store i32 %i.abc, ptr %i.aat, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.bt, %.lr.ph.i.i.i.i.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 40
  %i.abe = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 40
  %i.abf = load i64, ptr %i.abe, align 8
  store i64 %i.abf, ptr %i.abd, align 8
  %i.abg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i312 = icmp eq ptr %i.abg, %i.xq
  br i1 %.not.i.i.i.i.i.i312, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34.i
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef %i.xr, ptr noundef %i.xq)
  %.not.i35.i = icmp eq ptr %i.xr, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %i.abi = load ptr, ptr %i.al, align 8, !tbaa !165
  %i.abj = ptrtoint ptr %i.abi to i64
  %i.abk = sub i64 %i.abj, %i.xt
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef %i.abk) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.bu, %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  store ptr %i.zl, ptr %i.d, align 8, !tbaa !124
  %i.abl = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.xu
  store ptr %i.abl, ptr %i.ak, align 8, !tbaa !123
  %i.abm = getelementptr inbounds nuw [48 x i8], ptr %i.zl, i64 %i.zj
  store ptr %i.abm, ptr %i.al, align 8, !tbaa !165
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bv:                                            ; preds = %bb.bp
  %i.abn = icmp slt i64 %i.xu, 0
  br i1 %i.abn, label %bb.bw, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

bb.bw:                                            ; preds = %bb.bv
  %.idx.i.i = mul nsw i64 %i.xv, 96
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xr, i64 %.idx.i.i ; 3 uses
  %.not.i.i.i.i237 = icmp eq ptr %i.xq, %i.abo
  br i1 %.not.i.i.i.i237, label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef nonnull %i.abo, ptr noundef %i.xq)
  store ptr %i.abo, ptr %i.ak, align 8, !tbaa !123
  br label %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i

_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i: ; preds = %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit.i, %bb.bx, %bb.bw, %bb.bv, %.lr.ph524
  %i.abp = sext i32 %i.xl to i64
  %i.abq = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.abr = getelementptr inbounds nuw [48 x i8], ptr %i.abq, i64 %i.abp ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 40 ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !129
  %.not.i236 = icmp eq i32 %i.abt, -1
  br i1 %.not.i236, label %bb.by, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.by:                                            ; preds = %_ZN8DecGraph15DecisionDiagram12prepareSpaceEv.exit.i
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 44 ; 3 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !128
  %.not33.i = icmp eq i32 %i.abv, -1
  br i1 %.not33.i, label %bb.bz, label %_ZN8DecGraph15DecisionDiagram25buildWithDecisionVariableEiiRSt3setIiSt4lessIiESaIiEEi.exit

bb.bz:                                            ; preds = %bb.by
  call void @_ZN8DecGraph12DecisionNode25buildWithDecisionVariableEPNS_15DecisionDiagramEibi(ptr noundef nonnull align 8 dereferenceable(48) %i.abr, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.xm, i1 zeroext poison, i32 noundef 0)
  %i.abw = load i32, ptr %i.abs, align 8, !tbaa !129 ; 4 uses
  %i.abx = icmp eq i32 %i.abw, -1
  br i1 %i.abx, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  %i.aby = load i32, ptr %i.abu, align 4, !tbaa !128
  %i.abz = icmp eq i32 %i.aby, -1
end_hunk_3
begin_hunk_4_@_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit
  %.0.i19 = phi i64 [ %i.bf, %bb.h ], [ %i.g, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJOS5_EESR_IJEEEEEPNSA_16_Hashtable_allocISaINSA_10_Hash_nodeIS8_Lb1EEEEEEDpOT_.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 %i.d, ptr %i.bg, align 8, !tbaa !200
  %i.bh = load ptr, ptr %0, align 8, !tbaa !190   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.0.i19 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !146 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !141
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !141
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !146
  store ptr %i.aj, ptr %i.bl, align 8, !tbaa !141
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !196 ; 3 uses
  store ptr %i.bn, ptr %i.aj, align 8, !tbaa !141
  store ptr %i.aj, ptr %i.bm, align 8, !tbaa !196
  %.not11.i.i = icmp eq ptr %i.bn, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !200
  %i.br = urem i64 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.br
  store ptr %i.aj, ptr %i.bs, align 8, !tbaa !146
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !146
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.m, %bb.j
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !201
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.ay, align 8, !tbaa !201
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.c, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.aj, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.0.us.i.i, %bb.c ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  ret ptr %.1
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !516
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !92

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #40
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !196  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !196
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !141 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !200
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !146  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !196
  store ptr %i.o, ptr %.02530, align 8, !tbaa !141
  store ptr %.02530, ptr %i.g, align 8, !tbaa !196
  store ptr %i.g, ptr %i.m, align 8, !tbaa !146
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !141
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !146
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !141
  store ptr %i.r, ptr %.02530, align 8, !tbaa !141
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !146
  store ptr %.02530, ptr %i.s, align 8, !tbaa !141
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !515

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !190    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !191
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !191
  store ptr %.0.i, ptr %0, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !124    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 48                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !165
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 48                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 192153584101141163
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 192153584101141162, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not27 = icmp ult i64 %i.l, %1
  br i1 %.not27, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.u, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %.057.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i32 -1, ptr %.08.i.i.i.prol, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  store i64 0, ptr %i.q, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 17, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40
  store i32 -1, ptr %i.r, align 8, !tbaa !129
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 44
  store i32 -1, ptr %i.s, align 4, !tbaa !128
  %i.t = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !517

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %i.v = icmp ult i64 %1, 4
  br i1 %i.v, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 21 uses
  %.057.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  store i64 0, ptr %i.x, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 17, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 40
  store i32 -1, ptr %i.y, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 44
  store i32 -1, ptr %i.z, align 4, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store i32 -1, ptr %i.aa, align 8, !tbaa !127
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i64 0, ptr %i.ac, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 17, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88
  store i32 -1, ptr %i.ad, align 8, !tbaa !129
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 92
  store i32 -1, ptr %i.ae, align 4, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 96
  store i32 -1, ptr %i.af, align 8, !tbaa !127
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 128
  store i64 0, ptr %i.ah, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 17, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 136
  store i32 -1, ptr %i.ai, align 8, !tbaa !129
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 140
  store i32 -1, ptr %i.aj, align 4, !tbaa !128
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  store i32 -1, ptr %i.ak, align 8, !tbaa !127
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store i64 0, ptr %i.am, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 17, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184
  store i32 -1, ptr %i.an, align 8, !tbaa !129
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 188
  store i32 -1, ptr %i.ao, align 4, !tbaa !128
  %i.ap = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !123
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = icmp ult i64 %i.n, %1
  br i1 %i.ar, label %bb.d, label %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #40
  unreachable

_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.as = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 192153584101141162) ; 2 uses
  %i.au = mul nuw nsw i64 %i.at, 48
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #37 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f ; 3 uses
  %xtraiter40 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i29.prol

.lr.ph.i.i.i29.prol:                              ; preds = %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i29.prol
  %.08.i.i.i30.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i29.prol ], [ %i.aw, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.057.i.i.i31.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i29.prol ], [ %1, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.i29.prol ], [ 0, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit ]
  store i32 -1, ptr %.08.i.i.i30.prol, align 8, !tbaa !127
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.prol, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.prol, i64 32
  store i64 0, ptr %i.ay, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 17, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.prol, i64 40
  store i32 -1, ptr %i.az, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.prol, i64 44
  store i32 -1, ptr %i.ba, align 4, !tbaa !128
  %i.bb = add nsw i64 %.057.i.i.i31.prol, -1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i30.prol, i64 48 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i29.prol, !llvm.loop !518

.lr.ph.i.i.i29.prol.loopexit:                     ; preds = %.lr.ph.i.i.i29.prol, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i30.unr = phi ptr [ %i.aw, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.bc, %.lr.ph.i.i.i29.prol ]
  %.057.i.i.i31.unr = phi i64 [ %1, %_ZNKSt6vectorIN8DecGraph12DecisionNodeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.bb, %.lr.ph.i.i.i29.prol ]
  %i.bd = icmp ult i64 %1, 4
  br i1 %i.bd, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.lr.ph.i.i.i29.prol.loopexit, %.lr.ph.i.i.i29
  %.08.i.i.i30 = phi ptr [ %i.by, %.lr.ph.i.i.i29 ], [ %.08.i.i.i30.unr, %.lr.ph.i.i.i29.prol.loopexit ] ; 21 uses
  %.057.i.i.i31 = phi i64 [ %i.bx, %.lr.ph.i.i.i29 ], [ %.057.i.i.i31.unr, %.lr.ph.i.i.i29.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i30, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 32
  store i64 0, ptr %i.bf, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 17, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 40
  store i32 -1, ptr %i.bg, align 8, !tbaa !129
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 44
  store i32 -1, ptr %i.bh, align 4, !tbaa !128
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 48
  store i32 -1, ptr %i.bi, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 80
  store i64 0, ptr %i.bk, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 17, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 88
  store i32 -1, ptr %i.bl, align 8, !tbaa !129
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 92
  store i32 -1, ptr %i.bm, align 4, !tbaa !128
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 96
  store i32 -1, ptr %i.bn, align 8, !tbaa !127
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 128
  store i64 0, ptr %i.bp, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i8 0, i64 17, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 136
  store i32 -1, ptr %i.bq, align 8, !tbaa !129
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 140
  store i32 -1, ptr %i.br, align 4, !tbaa !128
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 144
  store i32 -1, ptr %i.bs, align 8, !tbaa !127
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 152
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 176
  store i64 0, ptr %i.bu, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i8 0, i64 17, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 184
  store i32 -1, ptr %i.bv, align 8, !tbaa !129
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 188
  store i32 -1, ptr %i.bw, align 4, !tbaa !128
  %i.bx = add nsw i64 %.057.i.i.i31, -4           ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i30, i64 192
  %.not.i.i.i32.3 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i32.3, label %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34, label %.lr.ph.i.i.i29, !llvm.loop !17

_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34: ; preds = %.lr.ph.i.i.i29, %.lr.ph.i.i.i29.prol.loopexit
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.cr, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.av, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34 ] ; 6 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.cq, %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34 ] ; 7 uses
  %i.bz = load i32, ptr %.0810.i.i.i.i.i, align 8, !tbaa !127
  store i32 %i.bz, ptr %.011.i.i.i.i.i, align 8, !tbaa !127
  %i.ca = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !45 ; 3 uses
  %i.ce = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !51
  store <2 x ptr> %i.ce, ptr %i.ca, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !49
  store i8 %i.ch, ptr %i.cf, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !37
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !46
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.cd, align 4, !tbaa !46
  br label %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 40
  %i.cp = load i64, ptr %i.co, align 8
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !18

_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN8DecGraph12DecisionNodeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit34
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph12DecisionNodeEEEvT_S5_(ptr noundef %i.c, ptr noundef %i.b)
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !165
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cu) #35
  br label %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8DecGraph12DecisionNodeES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %bb.f
  store ptr %i.av, ptr %0, align 8, !tbaa !124
  %i.cv = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %1
  store ptr %i.cv, ptr %i.a, align 8, !tbaa !123
  %i.cw = getelementptr inbounds nuw [48 x i8], ptr %i.av, i64 %i.at
  store ptr %i.cw, ptr %i.h, align 8, !tbaa !165
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN8DecGraph12DecisionNodeEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN8DecGraph12DecisionNodeESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !141 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !141 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !519

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !60
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !141 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !519

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !60
  %i.t = tail call noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911) #36 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !191  ; 3 uses
  %i.w = urem i64 %i.t, %i.v                      ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !146  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !141 ; 3 uses
  %i.ab = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ab                   ; 3 uses
  %i.ac = icmp eq i64 %.fr22.i.i, 0
  %i.ad = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !200 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.d, %bb.f
  %i.ae = phi i64 [ %i.al, %bb.f ], [ %.pre26.i.i, %bb.d ]
  %.0.us.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.aa, %bb.d ] ; 3 uses
  %i.af = icmp eq i64 %i.t, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.e:                                             ; preds = %.split.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !60
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.e, %.split.us.i.i
  %i.aj = load ptr, ptr %.0.us.i.i, align 8, !tbaa !141 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !200 ; 2 uses
  %i.am = urem i64 %i.al, %i.v
  %.not19.us.i.i = icmp eq i64 %i.am, %i.w
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !21

.split.i.i:                                       ; preds = %bb.d, %bb.h
  %i.an = phi i64 [ %i.ax, %bb.h ], [ %.pre26.i.i, %bb.d ]
  %.0.i.i = phi ptr [ %i.av, %bb.h ], [ %i.aa, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ap = icmp eq i64 %i.t, %i.an
  br i1 %i.ap, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

bb.g:                                             ; preds = %.split.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.as = icmp eq i64 %.fr22.i.i, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !61
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %i.at, i64 %.fr22.i.i)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i, %bb.g, %.split.i.i
  %i.av = load ptr, ptr %.0.i.i, align 8, !tbaa !141 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !200 ; 2 uses
  %i.ay = urem i64 %i.ax, %i.v
  %.not19.i.i = icmp eq i64 %i.ay, %i.w
end_hunk_4
