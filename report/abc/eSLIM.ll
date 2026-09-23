Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eSLIM?download=true
inline.NumInlined: 16391
inline.NumDeleted: 1852
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKiSt3setIiSt4lessIiESaIiEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSK_NS9_10_AllocNodeISaINS9_10_Hash_nodeIS7_Lb0EEEEEEEEvOT_RKT0_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %bb.k, !llvm.loop !1374

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.ab, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i, label %bb.l, !llvm.loop !1375

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i: ; preds = %bb.l
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !253
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store ptr %i.x, ptr %i.q, align 8, !tbaa !254
  %.pre = load i32, ptr %i.n, align 8, !tbaa !35
  br label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit: ; preds = %bb.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i
  %i.ae = phi i32 [ %i.o, %bb.i ], [ %.pre, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.af, align 8, !tbaa !242
  %i.ag = load ptr, ptr %0, align 8, !tbaa !228
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !229
  %i.aj = sext i32 %i.ae to i64
  %i.ak = urem i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak
  store ptr %i.af, ptr %i.al, align 8, !tbaa !255
  %.02234 = load ptr, ptr %i.k, align 8, !tbaa !243 ; 2 uses
  %.not2435 = icmp eq ptr %.02234, null
  br i1 %.not2435, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit, %bb.q
  %.02237 = phi ptr [ %.022, %bb.q ], [ %.02234, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit ] ; 4 uses
  %.036 = phi ptr [ %i.an, %bb.q ], [ %i.m, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02237, i64 8
  %i.an = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 10 uses
  store ptr null, ptr %i.an, align 8, !tbaa !243
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !1383 ; 2 uses
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !1383
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 4 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !251
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !252
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !253
  %i.av = getelementptr inbounds nuw i8, ptr %.02237, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i26, label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit33, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ax, ptr %3, align 8, !tbaa !1385
  %i.ay = call noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i27 = phi ptr [ %i.ay, %bb.m ], [ %i.ba, %bb.n ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i27, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i29, label %bb.n, !llvm.loop !1374

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i29: ; preds = %bb.n
  store ptr %.0.i.i.i.i.i.i.i.i.i27, ptr %i.as, align 8, !tbaa !254
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i29
  %.0.i.i7.i.i.i.i.i.i.i30 = phi ptr [ %i.ay, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i29 ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i30, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !116 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i31, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i32, label %bb.o, !llvm.loop !1375

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i32: ; preds = %bb.o
  store ptr %.0.i.i7.i.i.i.i.i.i.i30, ptr %i.at, align 8, !tbaa !254
  %i.bd = getelementptr inbounds nuw i8, ptr %.02237, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !253
  store i64 %i.be, ptr %i.au, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr %i.ay, ptr %i.ar, align 8, !tbaa !254
  %.pre38 = load i32, ptr %i.ao, align 8, !tbaa !35
  br label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit33

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit33: ; preds = %.lr.ph, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i32
  %i.bf = phi i32 [ %i.ap, %.lr.ph ], [ %.pre38, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyERKS5_.exit.i.i.i.i.i32 ]
  store ptr %i.an, ptr %.036, align 8, !tbaa !243
  %i.bg = load i64, ptr %i.ah, align 8, !tbaa !229
  %i.bh = sext i32 %i.bf to i64
  %i.bi = urem i64 %i.bh, %i.bg
  %i.bj = load ptr, ptr %0, align 8, !tbaa !228
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !255
  %.not25 = icmp eq ptr %i.bl, null
  br i1 %.not25, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit33
  store ptr %.036, ptr %i.bk, align 8, !tbaa !255
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit33
  %.022 = load ptr, ptr %.02237, align 8, !tbaa !243 ; 2 uses
  %.not24 = icmp eq ptr %.022, null
  br i1 %.not24, label %.loopexit, label %.lr.ph, !llvm.loop !1376

.loopexit:                                        ; preds = %bb.q, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKiSt3setIiSt4lessIiESaIiEEELb0EEEEEclIJRKS9_EEEPSA_DpOT_.exit, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.a, align 4, !tbaa !35
  store i32 %i.d, ptr %i.c, align 4, !tbaa !35
  %i.e = load i32, ptr %1, align 8, !tbaa !1387
  store i32 %i.e, ptr %i.b, align 8, !tbaa !1387
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !256
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in30 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.031 = load ptr, ptr %.0.in30, align 8, !tbaa !117 ; 2 uses
  %.not2832 = icmp eq ptr %.031, null
  br i1 %.not2832, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.034 = phi ptr [ %.0, %bb.e ], [ %.031, %bb.c ] ; 4 uses
  %.02733 = phi ptr [ %i.m, %bb.e ], [ %i.b, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.m = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.l, align 4, !tbaa !35
  store i32 %i.o, ptr %i.n, align 4, !tbaa !35
  %i.p = load i32, ptr %.034, align 8, !tbaa !1387
  store i32 %i.p, ptr %i.m, align 8, !tbaa !1387
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.02733, i64 16
  store ptr %i.m, ptr %i.r, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.02733, ptr %i.s, align 8, !tbaa !256
  %i.t = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %.not29 = icmp eq ptr %i.u, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = tail call noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.0.in = getelementptr inbounds nuw i8, ptr %.034, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !117 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !1386

._crit_edge:                                      ; preds = %bb.e, %bb.c
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN5eSLIM10SubcircuitESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN5eSLIM10SubcircuitES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 17 uses
  %.0911.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  %i.a = load <2 x ptr>, ptr %.0911.i.i, align 8, !tbaa !216, !alias.scope !1393, !noalias !1392
  store <2 x ptr> %i.a, ptr %.012.i.i, align 8, !tbaa !216, !alias.scope !1392, !noalias !1393
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 16
  %4 = load ptr, ptr %i.c, align 8, !tbaa !156, !alias.scope !1393, !noalias !1392
  store ptr %4, ptr %i.b, align 8, !tbaa !156, !alias.scope !1392, !noalias !1393
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.0911.i.i, i8 0, i64 24, i1 false), !alias.scope !1393, !noalias !1392
  %5 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24 ; 2 uses
  %i.d = load <2 x ptr>, ptr %6, align 8, !tbaa !216, !alias.scope !1393, !noalias !1392
  store <2 x ptr> %i.d, ptr %5, align 8, !tbaa !216, !alias.scope !1392, !noalias !1393
  %7 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %8 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 40
  %9 = load ptr, ptr %8, align 8, !tbaa !156, !alias.scope !1393, !noalias !1392
  store ptr %9, ptr %7, align 8, !tbaa !156, !alias.scope !1392, !noalias !1393
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !alias.scope !1393, !noalias !1392
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 2 uses
  %10 = load <2 x ptr>, ptr %i.f, align 8, !tbaa !216, !alias.scope !1393, !noalias !1392
  store <2 x ptr> %10, ptr %i.e, align 8, !tbaa !216, !alias.scope !1392, !noalias !1393
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64
  %11 = load ptr, ptr %i.h, align 8, !tbaa !156, !alias.scope !1393, !noalias !1392
  store ptr %11, ptr %i.g, align 8, !tbaa !156, !alias.scope !1392, !noalias !1393
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !alias.scope !1393, !noalias !1392
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !228, !alias.scope !1393, !noalias !1392 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !228, !alias.scope !1392, !noalias !1393
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !229, !alias.scope !1393, !noalias !1392 ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !229, !alias.scope !1392, !noalias !1393
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 88 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !242, !alias.scope !1393, !noalias !1392 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !243, !alias.scope !1392, !noalias !1393
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !246, !alias.scope !1393, !noalias !1392
  store i64 %i.t, ptr %i.r, align 8, !tbaa !246, !alias.scope !1392, !noalias !1393
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !248, !alias.scope !1394
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 120 ; 4 uses
  store ptr null, ptr %i.w, align 8, !tbaa !249, !alias.scope !1392, !noalias !1393
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 120 ; 4 uses
  %i.y = icmp eq ptr %i.k, %i.x
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  store ptr %i.w, ptr %i.i, align 8, !tbaa !228, !alias.scope !1392, !noalias !1393
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !249, !alias.scope !1393, !noalias !1392
  store ptr %i.z, ptr %i.w, align 8, !tbaa !249, !alias.scope !1392, !noalias !1393
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.aa = phi ptr [ %i.w, %bb.b ], [ %i.k, %.lr.ph.i.i ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35, !noalias !1393
  %i.ad = sext i32 %i.ac to i64
  %i.ae = urem i64 %i.ad, %i.n
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae
  store ptr %i.o, ptr %i.af, align 8, !tbaa !255, !noalias !1393
  br label %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112
  store i64 0, ptr %i.ag, align 8, !tbaa !1395, !alias.scope !1393, !noalias !1392
  store i64 1, ptr %i.m, align 8, !tbaa !229, !alias.scope !1393, !noalias !1392
  store ptr null, ptr %i.x, align 8, !tbaa !249, !alias.scope !1393, !noalias !1392
  store ptr %i.x, ptr %i.j, align 8, !tbaa !228, !alias.scope !1393, !noalias !1392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !1393, !noalias !1392
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !216, !alias.scope !1393, !noalias !1392
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !216, !alias.scope !1392, !noalias !1393
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 144
  %12 = load ptr, ptr %i.al, align 8, !tbaa !241, !alias.scope !1393, !noalias !1392
  store ptr %12, ptr %i.ak, align 8, !tbaa !241, !alias.scope !1392, !noalias !1393
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !1393, !noalias !1392
  %13 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 152
  %14 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 152 ; 2 uses
  %i.am = load <2 x ptr>, ptr %14, align 8, !tbaa !216, !alias.scope !1393, !noalias !1392
  store <2 x ptr> %i.am, ptr %13, align 8, !tbaa !216, !alias.scope !1392, !noalias !1393
  %15 = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 168
  %16 = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 168
  %17 = load ptr, ptr %16, align 8, !tbaa !241, !alias.scope !1393, !noalias !1392
  store ptr %17, ptr %15, align 8, !tbaa !241, !alias.scope !1392, !noalias !1393
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !1393, !noalias !1392
  tail call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %.0911.i.i) #23
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 176 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN5eSLIM10SubcircuitES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !1391

_ZSt12__relocate_aIPN5eSLIM10SubcircuitES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.ao, %_ZSt19__relocate_object_aIN5eSLIM10SubcircuitES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE17_M_realloc_insertIJRS1_RNS0_10SubcircuitEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !196    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN5eSLIM11eSLIMCirManC1ERS0_RKNS_10SubcircuitE(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(176) %3) #23
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.r = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !1404, !noalias !1403
  store i64 %i.r, ptr %.012.i.i.i, align 8, !alias.scope !1403, !noalias !1404
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !98, !alias.scope !1404, !noalias !1403
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !98, !alias.scope !1403, !noalias !1404
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !97, !alias.scope !1404, !noalias !1403
  store ptr %i.x, ptr %i.v, align 8, !tbaa !97, !alias.scope !1403, !noalias !1404
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !alias.scope !1404, !noalias !1403
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !1405
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1399

_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.an, %.lr.ph.i.i.i18 ], [ %i.ac, %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i20 = phi ptr [ %i.am, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.ad = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !1407, !noalias !1406
  store i64 %i.ad, ptr %.012.i.i.i19, align 8, !alias.scope !1406, !noalias !1407
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !98, !alias.scope !1407, !noalias !1406
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !98, !alias.scope !1406, !noalias !1407
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97, !alias.scope !1407, !noalias !1406
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !97, !alias.scope !1406, !noalias !1407
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !1407, !noalias !1406
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !alias.scope !1408
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 56 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !1399

_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ac, %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.an, %.lr.ph.i.i.i18 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN5eSLIM11eSLIMCirManESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !232
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #24
  br label %_ZNSt12_Vector_baseIN5eSLIM11eSLIMCirManESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5eSLIM11eSLIMCirManESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5eSLIM11eSLIMCirManESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !196
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !231
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !232
  ret void
}

declare void @_ZN5eSLIM11eSLIMCirManC1ERS0_RKNS_10SubcircuitE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(176)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1409

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5eSLIM8eSLIMLogESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !197    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5eSLIM8eSLIMLogESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #27
  unreachable

_ZNKSt6vectorIN5eSLIM8eSLIMLogESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 296                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 31160040665049918)
  %i.l = select i1 %i.j, i64 31160040665049918, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 296
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i32, ptr %2, align 4, !tbaa !35
  tail call void @_ZN5eSLIM8eSLIMLogC2Ei(ptr noundef nonnull align 8 dereferenceable(296) %i.q, i32 noundef %i.r)
  %i.s = tail call noundef ptr @_ZSt14__relocate_a_1IPN5eSLIM8eSLIMLogES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.u = tail call noundef ptr @_ZSt14__relocate_a_1IPN5eSLIM8eSLIMLogES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.t, ptr noundef nonnull align 1 dereferenceable(1) %0) #23
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i16 = icmp eq ptr %i.c, null
  br i1 %.not.i16, label %_ZNSt12_Vector_baseIN5eSLIM8eSLIMLogESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5eSLIM8eSLIMLogESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !195
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.y) #24
  br label %_ZNSt12_Vector_baseIN5eSLIM8eSLIMLogESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5eSLIM8eSLIMLogESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNKSt6vectorIN5eSLIM8eSLIMLogESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !197
  store ptr %i.u, ptr %i.a, align 8, !tbaa !194
  %i.z = getelementptr inbounds nuw [296 x i8], ptr %i.p, i64 %i.l
  store ptr %i.z, ptr %i.v, align 8, !tbaa !195
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt14__relocate_a_1IPN5eSLIM8eSLIMLogES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat {
bb.a:
  %.not10 = icmp eq ptr %0, %1
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.bb, %.lr.ph ], [ %2, %bb.a ] ; 21 uses
  %.0911 = phi ptr [ %i.ba, %.lr.ph ], [ %0, %bb.a ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %.012, ptr noundef nonnull align 8 dereferenceable(296) %.0911, i64 28, i1 false), !alias.scope !1416
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.0911, i64 32 ; 2 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %.0911, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.f, ptr %i.d, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %4 = getelementptr inbounds nuw i8, ptr %.012, i64 56
  %5 = getelementptr inbounds nuw i8, ptr %.0911, i64 56 ; 2 uses
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.g = getelementptr inbounds nuw i8, ptr %.012, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %.0911, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.i, ptr %i.g, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %.0911, i64 80 ; 2 uses
  %7 = load <2 x ptr>, ptr %i.k, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %7, ptr %i.j, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.l = getelementptr inbounds nuw i8, ptr %.012, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %.0911, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.n, ptr %i.l, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %.0911, i64 104 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !1417, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !1417, !alias.scope !1414, !noalias !1415
  %i.r = getelementptr inbounds nuw i8, ptr %.012, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %.0911, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !159, !alias.scope !1415, !noalias !1414
  store ptr %i.t, ptr %i.r, align 8, !tbaa !159, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.u = getelementptr inbounds nuw i8, ptr %.012, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %.0911, i64 128 ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %.0911, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.z, ptr %i.x, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.aa = getelementptr inbounds nuw i8, ptr %.012, i64 152
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911, i64 152 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !1417, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.ac, ptr %i.aa, align 8, !tbaa !1417, !alias.scope !1414, !noalias !1415
  %i.ad = getelementptr inbounds nuw i8, ptr %.012, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !159, !alias.scope !1415, !noalias !1414
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !159, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.ag = getelementptr inbounds nuw i8, ptr %.012, i64 176
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911, i64 176 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.am = getelementptr inbounds nuw i8, ptr %.012, i64 200
  %i.an = getelementptr inbounds nuw i8, ptr %.0911, i64 200 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !257, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !257, !alias.scope !1414, !noalias !1415
  %i.ap = getelementptr inbounds nuw i8, ptr %.012, i64 216
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911, i64 216
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !163, !alias.scope !1415, !noalias !1414
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !163, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.as = getelementptr inbounds nuw i8, ptr %.012, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %.0911, i64 224 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !216, !alias.scope !1415, !noalias !1414
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !216, !alias.scope !1414, !noalias !1415
  %i.av = getelementptr inbounds nuw i8, ptr %.012, i64 240
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911, i64 240
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !156, !alias.scope !1415, !noalias !1414
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !156, !alias.scope !1414, !noalias !1415
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !alias.scope !1415, !noalias !1414
  %i.ay = getelementptr inbounds nuw i8, ptr %.012, i64 248
  %i.az = getelementptr inbounds nuw i8, ptr %.0911, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !alias.scope !1416
  tail call void @_ZN5eSLIM8eSLIMLogD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %.0911) #23, !noalias !1414
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911, i64 296 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012, i64 296 ; 2 uses
  %.not = icmp eq ptr %i.ba, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1413

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bb, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM8eSLIMLogD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !162  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !155  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !158  ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !159
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit3, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !158 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !159
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #24
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !156
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit10

_ZNSt6vectorIiSaIiEED2Ev.exit10:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !156
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit12

_ZNSt6vectorIiSaIiEED2Ev.exit12:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit10, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !156
  %i.bi = ptrtoint ptr %i.bh to i64
end_hunk_0
