Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/max_sharing?download=true
inline.NumInlined: 571
inline.NumDeleted: 336
begin_hunk_0_@_ZN4lean14max_sharing_fn3impD2Ev:bb.a

_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4lean5levelES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_10level_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i
  %.06.i.i.i.i3 = phi ptr [ %i.w, %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i ], [ %i.v, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EED2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i4 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i4, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !33  ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !33
  br label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i1.i.i.i.i.i.i.i.i.i.i6 = icmp eq i32 %i.ab, 0
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i.i6, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.y)
          to label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #14
  unreachable

_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i.i.i.i2
  tail call void @mi_free(ptr noundef nonnull %.06.i.i.i.i3) #12
  %.not.i.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !0

_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeIN4lean4exprELb1EEEEE18_M_deallocate_nodeEPS5_.exit.i.i.i.i, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EED2Ev.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  %i.aj = shl i64 %i.ai, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.aj, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @mi_free(ptr noundef %i.ak) #12
  br label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EED2Ev.exit

_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean14max_sharing_fn3imp5applyERKNS_4exprE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode.33", align 8 ; 4 uses
  %4 = alloca %"class.lean::expr", align 8        ; 6 uses
  %5 = alloca %"class.lean::list_ref", align 8    ; 7 uses
  %6 = alloca %class.anon, align 8                ; 5 uses
  %7 = alloca %"class.lean::expr", align 8        ; 6 uses
  %8 = alloca %"class.lean::level", align 8       ; 7 uses
  %9 = alloca %"class.lean::expr", align 8        ; 7 uses
  %10 = alloca %"class.lean::expr", align 8       ; 5 uses
  %11 = alloca %"class.lean::expr", align 8       ; 7 uses
  %12 = alloca %"class.lean::expr", align 8       ; 5 uses
  %13 = alloca %"class.lean::expr", align 8       ; 7 uses
  %14 = alloca %"class.lean::expr", align 8       ; 7 uses
  %15 = alloca %"class.lean::expr", align 8       ; 5 uses
  %16 = alloca %"class.lean::expr", align 8       ; 7 uses
  %17 = alloca %"class.lean::expr", align 8       ; 7 uses
  %18 = alloca %"class.lean::expr", align 8       ; 5 uses
  %19 = alloca %"class.lean::expr", align 8       ; 7 uses
  %20 = alloca %"class.lean::expr", align 8       ; 7 uses
  %21 = alloca %"class.lean::expr", align 8       ; 7 uses
  %22 = alloca %"class.lean::expr", align 8       ; 5 uses
  tail call void @_ZN4lean12check_systemEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !29 ; 4 uses
  %i.d = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.d, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = tail call noundef zeroext i1 @_ZN4lean11is_bi_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  br i1 %i.f, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread138, label %bb.c, !llvm.loop !64

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !31     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.h, align 4
  %i.i = lshr i32 %.val.i.i.i.i.i.i, 13
  %i.j = and i32 %i.i, 2040
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = zext nneg i32 %i.j to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.ad, %bb.h ]
  %.015.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %.0.i.i.i.i, %bb.h ]
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.aa, %bb.h ] ; 3 uses
  %i.x = icmp eq i64 %i.o, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.z = tail call noundef zeroext i1 @_ZN4lean11is_bi_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  br i1 %i.z, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.aa = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !40 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.ab
  %.not19.i.i.i.i = icmp eq i64 %i.ae, %i.r
  br i1 %.not19.i.i.i.i, label %bb.g, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, !llvm.loop !1

_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i
  %i.af = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread138

_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread138: ; preds = %bb.d, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit
  %.sroa.06.1.i.i140 = phi ptr [ %i.af, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit ], [ %.sroa.06.0.i.i, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i140, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 5 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 1
  %.not.i.i.i.i57 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i57, label %bb.i, label %_ZN4lean4exprC2ERKS0_.exit

bb.i:                                             ; preds = %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread138
  %.val.i.i.i.i.i = load i32, ptr %i.ai, align 4, !tbaa !33 ; 3 uses
  %i.al = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.al, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.am = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !33
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = atomicrmw add ptr %i.ai, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprES2_NS_9_IdentityENS1_16is_bi_equal_procENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit
  tail call void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !31    ; 13 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val.i.i.i = load i32, ptr %i.ap, align 4
  %23 = lshr i32 %.val.i.i.i, 24
  %trunc = trunc nuw i32 %23 to i8
  switch i8 %trunc, label %bb.fh [
    i8 0, label %bb.n
    i8 9, label %bb.n
    i8 2, label %bb.n
    i8 1, label %bb.n
    i8 4, label %bb.v
    i8 3, label %bb.aj
    i8 10, label %bb.az
    i8 11, label %bb.bp
    i8 5, label %bb.cf
    i8 6, label %bb.dd
    i8 7, label %bb.dd
    i8 8, label %bb.eb
  ]

bb.m:                                             ; preds = %bb.fh, %bb.u
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.n:                                             ; preds = %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread
  %.val.i.i.i.i.i59 = load i32, ptr %i.ao, align 4, !tbaa !33 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i.i.i.i59, 0
  br i1 %i.ar, label %bb.o, label %bb.p, !prof !34

bb.o:                                             ; preds = %bb.n
  %i.as = add nuw i32 %.val.i.i.i.i.i59, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !33
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i.i60 = icmp eq i32 %.val.i.i.i.i.i59, 0
  br i1 %.not.i.i.i.i.i60, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = atomicrmw add ptr %i.ao, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !31
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %bb.q, %bb.p, %bb.o
  %24 = phi ptr [ %.pre.i.i, %bb.q ], [ %i.ao, %bb.o ], [ %i.ao, %bb.p ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, 1
  %.not.i.i4.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i4.i.i, label %bb.r, label %_ZN4lean4expraSERKS0_.exit

bb.r:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !33 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.s, label %bb.t, !prof !34

bb.s:                                             ; preds = %bb.r
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.au, align 4, !tbaa !33
  br label %_ZN4lean4expraSERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean4expraSERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.au)
          to label %_ZN4lean4expraSERKS0_.exit unwind label %bb.m

_ZN4lean4expraSERKS0_.exit:                       ; preds = %bb.u, %_ZN4lean3incEP11lean_object.exit.i.i, %bb.s, %bb.t
  store ptr %24, ptr %0, align 8, !tbaa !31
  br label %bb.fh

bb.v:                                             ; preds = %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store ptr %1, ptr %6, align 8, !tbaa !43
  invoke void @_ZN4lean4map2INS_5levelES1_ZNS_14max_sharing_fn3imp5applyERKNS_4exprEEUlRKS1_E_EENS_8list_refIT_EERKNSA_IT0_EEOT1_(ptr dead_on_unwind nonnull writable sret(%"class.lean::list_ref") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN4lean3mapINS_5levelEZNS_14max_sharing_fn3imp5applyERKNS_4exprEEUlRKS1_E_EENS_8list_refIT_EERKSC_OT0_.exit unwind label %bb.ag

_ZN4lean3mapINS_5levelEZNS_14max_sharing_fn3imp5applyERKNS_4exprEEUlRKS1_E_EENS_8list_refIT_EERKSC_OT0_.exit: ; preds = %bb.v
  invoke void @_ZN4lean12update_constERKNS_4exprERKNS_8list_refINS_5levelEEE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN4lean15update_constantERKNS_4exprERKNS_8list_refINS_5levelEEE.exit unwind label %bb.ah

_ZN4lean15update_constantERKNS_4exprERKNS_8list_refINS_5levelEEE.exit: ; preds = %_ZN4lean3mapINS_5levelEZNS_14max_sharing_fn3imp5applyERKNS_4exprEEUlRKS1_E_EENS_8list_refIT_EERKSC_OT0_.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i.i.i.i63 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i63, label %bb.w, label %_ZN4lean10object_refD2Ev.exit

bb.w:                                             ; preds = %_ZN4lean15update_constantERKNS_4exprERKNS_8list_refINS_5levelEEE.exit
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !33 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.x, label %bb.y, !prof !34

bb.x:                                             ; preds = %bb.w
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %.not.i1.i.i.i64 = icmp eq i32 %i.be, 0
  br i1 %.not.i1.i.i.i64, label %_ZN4lean10object_refD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bb)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #14
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.z, %bb.y, %bb.x, %_ZN4lean15update_constantERKNS_4exprERKNS_8list_refINS_5levelEEE.exit
  %i.bj = load ptr, ptr %4, align 8, !tbaa !31
  store ptr %i.bj, ptr %0, align 8, !tbaa !31
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !31
  %i.bk = load ptr, ptr %5, align 8, !tbaa !31    ; 4 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i.i.i65 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i65, label %bb.ab, label %_ZN4lean10object_refD2Ev.exit67

bb.ab:                                            ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !33 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.ac, label %bb.ad, !prof !34

bb.ac:                                            ; preds = %bb.ab
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.bk, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit67

bb.ad:                                            ; preds = %bb.ab
  %.not.i1.i.i66 = icmp eq i32 %i.bn, 0
  br i1 %.not.i1.i.i66, label %_ZN4lean10object_refD2Ev.exit67, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bk)
          to label %_ZN4lean10object_refD2Ev.exit67 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #14
  unreachable

_ZN4lean10object_refD2Ev.exit67:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.fh

bb.ag:                                            ; preds = %bb.v
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4lean3mapINS_5levelEZNS_14max_sharing_fn3imp5applyERKNS_4exprEEUlRKS1_E_EENS_8list_refIT_EERKSC_OT0_.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn52 = phi { ptr, i32 } [ %i.bt, %bb.ah ], [ %i.bs, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.fi

bb.aj:                                            ; preds = %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  invoke void @_ZN4lean14max_sharing_fn3imp5applyERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.ak unwind label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4lean11update_sortERKNS_4exprERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::expr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.al unwind label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, 1
  %.not.i.i.i.i68 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i68, label %bb.am, label %_ZN4lean10object_refD2Ev.exit73

bb.am:                                            ; preds = %bb.al
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !33 ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 1
  br i1 %i.bz, label %bb.an, label %bb.ao, !prof !34

bb.an:                                            ; preds = %bb.am
  %i.ca = add nsw i32 %i.by, -1
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit73

bb.ao:                                            ; preds = %bb.am
  %.not.i1.i.i.i69 = icmp eq i32 %i.by, 0
  br i1 %.not.i1.i.i.i69, label %_ZN4lean10object_refD2Ev.exit73, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bv)
          to label %_ZN4lean10object_refD2Ev.exit73 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #14
  unreachable

_ZN4lean10object_refD2Ev.exit73:                  ; preds = %bb.ap, %bb.ao, %bb.an, %bb.al
  %i.cd = load ptr, ptr %7, align 8, !tbaa !31
  store ptr %i.cd, ptr %0, align 8, !tbaa !31
  store ptr inttoptr (i64 1 to ptr), ptr %7, align 8, !tbaa !31
  %i.ce = load ptr, ptr %8, align 8, !tbaa !31    ; 4 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, 1
  %.not.i.i.i74 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i74, label %bb.ar, label %_ZN4lean10object_refD2Ev.exit76

bb.ar:                                            ; preds = %_ZN4lean10object_refD2Ev.exit73
  %i.ch = load i32, ptr %i.ce, align 4, !tbaa !33 ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.as, label %bb.at, !prof !34

bb.as:                                            ; preds = %bb.ar
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %i.ce, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit76

bb.at:                                            ; preds = %bb.ar
  %.not.i1.i.i75 = icmp eq i32 %i.ch, 0
  br i1 %.not.i1.i.i75, label %_ZN4lean10object_refD2Ev.exit76, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ce)
          to label %_ZN4lean10object_refD2Ev.exit76 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #14
  unreachable

_ZN4lean10object_refD2Ev.exit76:                  ; preds = %_ZN4lean10object_refD2Ev.exit73, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.fh

bb.aw:                                            ; preds = %bb.aj
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #12
  br label %bb.ay

end_hunk_0
begin_hunk_1_@_ZN4lean14max_sharing_fn3imp5applyERKNS_4exprE:bb.a
  %.not.i1.i.i132 = icmp eq i32 %i.ht, 0
  br i1 %.not.i1.i.i132, label %_ZN4lean10object_refD2Ev.exit133, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.hq)
          to label %_ZN4lean10object_refD2Ev.exit133 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #14
  unreachable

_ZN4lean10object_refD2Ev.exit133:                 ; preds = %_ZN4lean10object_refD2Ev.exit130, %bb.ew, %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  br label %bb.fh

bb.fa:                                            ; preds = %bb.eb
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fb:                                            ; preds = %bb.ec
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fc:                                            ; preds = %bb.ed
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ee
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #12
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #12
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.pn = phi { ptr, i32 } [ %i.ib, %bb.fd ], [ %i.ia, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #12
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #12
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fb
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.fe ], [ %i.hz, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #12
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #12
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ff ], [ %i.hy, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #12
  br label %bb.fi

bb.fh:                                            ; preds = %_ZN4lean4expraSERKS0_.exit, %_ZN4lean10object_refD2Ev.exit133, %_ZN4lean10object_refD2Ev.exit118, %_ZN4lean10object_refD2Ev.exit106, %_ZN4lean10object_refD2Ev.exit94, %_ZN4lean10object_refD2Ev.exit85, %_ZN4lean10object_refD2Ev.exit76, %_ZN4lean10object_refD2Ev.exit67, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8, !tbaa !65
  %i.ic = invoke { ptr, i8 } @_ZNSt10_HashtableIN4lean4exprES1_16mi_stl_allocatorIS1_ENSt8__detail9_IdentityENS0_16is_bi_equal_procENS0_9expr_hashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SG_NS4_10_AllocNodeIS2_INS4_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS4_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE6insertERKS1_.exit unwind label %bb.m ; 0 uses

_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE6insertERKS1_.exit: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.fi:                                            ; preds = %bb.fg, %bb.ea, %bb.dc, %bb.ce, %bb.bo, %bb.ay, %bb.ai, %bb.m
  %.pn55 = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %.pn52, %bb.ai ], [ %.pn50, %bb.ay ], [ %.pn48, %bb.bo ], [ %.pn46, %bb.ce ], [ %.pn43.pn, %bb.dc ], [ %.pn40.pn, %bb.ea ], [ %.pn.pn.pn, %bb.fg ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  resume { ptr, i32 } %.pn55

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.l, %bb.k, %bb.j, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread138, %_ZNSt13unordered_setIN4lean4exprENS0_9expr_hashENS0_16is_bi_equal_procE16mi_stl_allocatorIS1_EE6insertERKS1_.exit
  ret void
}

declare void @_ZN4lean12check_systemEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4lean4exprC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZN4lean11update_sortERKNS_4exprERKNS_5levelE(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean14max_sharing_fn3imp5applyERKNS_5levelE(ptr dead_on_unwind noalias writable sret(%"class.lean::level") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %4 = alloca %"class.lean::level", align 8       ; 6 uses
  %5 = alloca %"class.lean::level", align 8       ; 7 uses
  %6 = alloca %"class.lean::level", align 8       ; 6 uses
  %7 = alloca %"class.lean::level", align 8       ; 7 uses
  %8 = alloca %"class.lean::level", align 8       ; 7 uses
  %9 = alloca %"class.lean::level", align 8       ; 6 uses
  %10 = alloca %"class.lean::level", align 8      ; 7 uses
  %11 = alloca %"class.lean::level", align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !45
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !29 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br i1 %i.g, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread66, label %bb.c, !llvm.loop !66

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_ZNK4lean5level4hashEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.q = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.x, %bb.h ]
  %.015.i.i.i.i = phi ptr [ %i.o, %bb.f ], [ %.0.i.i.i.i, %bb.h ]
  %.0.i.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.t = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.s)
  br i1 %i.t, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.u = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !29 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i
  %i.v = load i64, ptr %i.j, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = urem i64 %i.x, %i.v
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, !llvm.loop !67

_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.i.i.i.i
  %i.z = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, label %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread66

_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread66: ; preds = %bb.d, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit
  %.sroa.06.1.i.i68 = phi ptr [ %i.z, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit ], [ %.sroa.06.0.i.i, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i68, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 5 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !31
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i.i.i29 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i29, label %bb.i, label %_ZN4lean5levelC2ERKS0_.exit

bb.i:                                             ; preds = %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread66
  %.val.i.i.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !33 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.af, label %bb.j, label %bb.k, !prof !34

bb.j:                                             ; preds = %bb.i
  %i.ag = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !33
  br label %_ZN4lean5levelC2ERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean5levelC2ERKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = atomicrmw add ptr %i.ac, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean5levelC2ERKS0_.exit

_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean5levelES2_NS_9_IdentityESt8equal_toIS2_ENS1_10level_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS2_mRKNS_16_Hash_node_valueIS2_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit
  tail call void @_ZN4lean5levelC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ai = load ptr, ptr %2, align 8, !tbaa !31    ; 11 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, 1
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_ZNK4lean5level4kindEv.exit, label %_ZN4lean3incEP11lean_object.exit.i.i

_ZNK4lean5level4kindEv.exit:                      ; preds = %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread
  %i.al = getelementptr i8, ptr %i.ai, i64 4
  %.val.i = load i32, ptr %i.al, align 4
  %12 = lshr i32 %.val.i, 24
  %trunc = trunc nuw i32 %12 to i8
  switch i8 %trunc, label %bb.ch [
    i8 0, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.n
    i8 1, label %bb.v
    i8 2, label %bb.al
    i8 3, label %bb.bj
  ]

bb.m:                                             ; preds = %bb.ch, %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.n:                                             ; preds = %_ZNK4lean5level4kindEv.exit, %_ZNK4lean5level4kindEv.exit, %_ZNK4lean5level4kindEv.exit
  %.val.i.i.i.i.i31 = load i32, ptr %i.ai, align 4, !tbaa !33 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i.i.i.i31, 0
  br i1 %i.an, label %bb.o, label %bb.p, !prof !34

bb.o:                                             ; preds = %bb.n
  %i.ao = add nuw i32 %.val.i.i.i.i.i31, 1
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !33
  br label %_ZN4lean3incEP11lean_object.exit.i.i

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i.i32 = icmp eq i32 %.val.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i.i32, label %_ZN4lean3incEP11lean_object.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = atomicrmw add ptr %i.ai, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !31
  br label %_ZN4lean3incEP11lean_object.exit.i.i

_ZN4lean3incEP11lean_object.exit.i.i:             ; preds = %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread, %bb.q, %bb.p, %bb.o
  %i.aq = phi ptr [ %.pre.i.i, %bb.q ], [ %i.ai, %bb.o ], [ %i.ai, %bb.p ], [ %i.ai, %_ZNSt13unordered_setIN4lean5levelENS0_10level_hashESt8equal_toIS1_E16mi_stl_allocatorIS1_EE4findERKS1_.exit.thread ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i4.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i4.i.i, label %bb.r, label %_ZN4lean5levelaSERKS0_.exit

bb.r:                                             ; preds = %_ZN4lean3incEP11lean_object.exit.i.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !33 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.s, label %bb.t, !prof !34

bb.s:                                             ; preds = %bb.r
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.ar, align 4, !tbaa !33
  br label %_ZN4lean5levelaSERKS0_.exit

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean5levelaSERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ar)
          to label %_ZN4lean5levelaSERKS0_.exit unwind label %bb.m

_ZN4lean5levelaSERKS0_.exit:                      ; preds = %bb.u, %_ZN4lean3incEP11lean_object.exit.i.i, %bb.s, %bb.t
  store ptr %i.aq, ptr %0, align 8, !tbaa !31
  br label %bb.ch

bb.v:                                             ; preds = %_ZNK4lean5level4kindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @_ZN4lean14max_sharing_fn3imp5applyERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4lean11update_succERKNS_5levelES2_(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %.not.i.i.i.i33 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i33, label %bb.y, label %_ZN4lean10object_refD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.bb = load i32, ptr %i.ay, align 4, !tbaa !33 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.z, label %bb.aa, !prof !34

bb.z:                                             ; preds = %bb.y
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i1.i.i.i34 = icmp eq i32 %i.bb, 0
  br i1 %.not.i1.i.i.i34, label %_ZN4lean10object_refD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ay)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #14
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.bg = load ptr, ptr %4, align 8, !tbaa !31
  store ptr %i.bg, ptr %0, align 8, !tbaa !31
  store ptr inttoptr (i64 1 to ptr), ptr %4, align 8, !tbaa !31
  %i.bh = load ptr, ptr %5, align 8, !tbaa !31    ; 4 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i.i.i35 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i35, label %bb.ad, label %_ZN4lean10object_refD2Ev.exit37

bb.ad:                                            ; preds = %_ZN4lean10object_refD2Ev.exit
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !33 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.ae, label %bb.af, !prof !34

bb.ae:                                            ; preds = %bb.ad
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit37

bb.af:                                            ; preds = %bb.ad
  %.not.i1.i.i36 = icmp eq i32 %i.bk, 0
  br i1 %.not.i1.i.i36, label %_ZN4lean10object_refD2Ev.exit37, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bh)
          to label %_ZN4lean10object_refD2Ev.exit37 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #14
  unreachable

_ZN4lean10object_refD2Ev.exit37:                  ; preds = %_ZN4lean10object_refD2Ev.exit, %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ch

bb.ai:                                            ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn25 = phi { ptr, i32 } [ %i.bq, %bb.aj ], [ %i.bp, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ci

bb.al:                                            ; preds = %_ZNK4lean5level4kindEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  invoke void @_ZN4lean14max_sharing_fn3imp5applyERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.am unwind label %bb.be

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.bs = load ptr, ptr %2, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  invoke void @_ZN4lean14max_sharing_fn3imp5applyERKNS_5levelE(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %bb.an unwind label %bb.bf

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4lean10update_maxERKNS_5levelES2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.lean::level") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ao unwind label %bb.bg

bb.ao:                                            ; preds = %bb.an
  %i.bu = load ptr, ptr %0, align 8, !tbaa !31    ; 4 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i.i.i.i38 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i38, label %bb.ap, label %_ZN4lean10object_refD2Ev.exit43

bb.ap:                                            ; preds = %bb.ao
  %i.bx = load i32, ptr %i.bu, align 4, !tbaa !33 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.aq, label %bb.ar, !prof !34

bb.aq:                                            ; preds = %bb.ap
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bu, align 4, !tbaa !33
  br label %_ZN4lean10object_refD2Ev.exit43

bb.ar:                                            ; preds = %bb.ap
  %.not.i1.i.i.i39 = icmp eq i32 %i.bx, 0
  br i1 %.not.i1.i.i.i39, label %_ZN4lean10object_refD2Ev.exit43, label %bb.as
end_hunk_1
