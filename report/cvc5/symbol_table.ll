Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/symbol_table?download=true
inline.NumInlined: 2078
inline.NumDeleted: 925
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4cvc58internal6parser18OverloadedTypeTrie28getOverloadedConstantForTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4SortE:bb.a
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i
  br i1 %i.bd, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit, label %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc13, %bb.m
  %i.be = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not18.i.i.i.i.i.i.i.i, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i
  %i.bf = load i64, ptr %i.at, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !61 ; 2 uses
  %i.bi = urem i64 %i.bh, %i.bf
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.bi, %i.av
  br i1 %.not19.i.i.i.i.i.i.i.i, label %bb.m, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, !llvm.loop !1

_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread: ; preds = %bb.n, %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i, %bb.i, %.noexc12
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  br label %bb.o

_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit: ; preds = %.noexc13
  %i.bj = load ptr, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !55
  %.not29 = icmp eq ptr %i.bj, null
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  br i1 %.not29, label %bb.o, label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i, %bb.k
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp63

bb.o:                                             ; preds = %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  br label %.critedge8

.critedge8:                                       ; preds = %_ZNKSt8_Rb_treeIN4cvc54SortESt4pairIKS1_NS0_4TermEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.b, %_ZNKSt3mapIN4cvc54SortENS0_4TermESt4lessIS1_ESaISt4pairIKS1_S2_EEE4findERS6_.exit, %bb.o, %bb.a
  %i.bk = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.bk, ptr %0, align 8, !tbaa !73
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !70
  %.not.i.i.i.i14 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i14, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.critedge8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i15 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i15, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !72
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bs = atomicrmw volatile add ptr %i.bo, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.q, %.critedge8, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread26
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6parser18OverloadedTypeTrie29getOverloadedFunctionForTypesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_4SortESaISC_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::Term") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4cvc58internal6parser18OverloadedTypeTrie11TypeArgTrieEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %.not31 = icmp eq ptr %i.b, null
  br i1 %.not31, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = load ptr, ptr %3, align 8, !tbaa !77     ; 2 uses
  %.not34.not = icmp eq ptr %i.e, %i.f
  br i1 %.not34.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.g = phi ptr [ %i.ae, %bb.f ], [ %i.f, %bb.b ]
  %i.h = phi i64 [ %i.ac, %bb.f ], [ 0, %bb.b ]
  %.01336 = phi i32 [ %i.ab, %bb.f ], [ 0, %bb.b ]
  %.01435 = phi ptr [ %i.aa, %bb.f ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01435, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01435, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %.lr.ph ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = tail call noundef zeroext i1 @_ZNK4cvc54SortltERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIN4cvc54SortESt4pairIKS1_NS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !209

_ZNKSt8_Rb_treeIN4cvc54SortESt4pairIKS1_NS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.o, label %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread, label %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit

_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt8_Rb_treeIN4cvc54SortESt4pairIKS1_NS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = tail call noundef zeroext i1 @_ZNK4cvc54SortltERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  br i1 %i.q, label %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread, label %bb.f

_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc54SortESt4pairIKS1_NS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i, %.lr.ph, %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit
  %i.r = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.r, ptr %0, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit20, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.v, align 4, !tbaa !72
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !72
  br label %_ZN4cvc54TermC2ERKS0_.exit20

bb.e:                                             ; preds = %bb.c
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit20

bb.f:                                             ; preds = %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56 ; 2 uses
  %i.ab = add i32 %.01336, 1                      ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.ae = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 24
  %.not = icmp ugt i64 %i.ai, %i.ac
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.014.lcssa = phi ptr [ %i.c, %bb.b ], [ %i.aa, %bb.f ]
  tail call void @_ZNK4cvc58internal6parser18OverloadedTypeTrie23getOverloadedFunctionAtEPKNS2_11TypeArgTrieEb(ptr dead_on_unwind writable sret(%"class.cvc5::Term") align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef nonnull %.014.lcssa, i1 noundef zeroext true)
  br label %_ZN4cvc54TermC2ERKS0_.exit20

bb.g:                                             ; preds = %bb.a
  %i.aj = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.aj, ptr %0, align 8, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !70 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !70
  %.not.i.i.i.i18 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i18, label %_ZN4cvc54TermC2ERKS0_.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i19 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !72
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !72
  br label %_ZN4cvc54TermC2ERKS0_.exit20

bb.j:                                             ; preds = %bb.h
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit20

_ZN4cvc54TermC2ERKS0_.exit20:                     ; preds = %_ZNKSt3mapIN4cvc54SortENS0_8internal6parser18OverloadedTypeTrie11TypeArgTrieESt4lessIS1_ESaISt4pairIKS1_S5_EEE4findERS9_.exit.thread, %bb.d, %bb.e, %bb.j, %bb.i, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6parser18OverloadedTypeTrie23getOverloadedFunctionAtEPKNS2_11TypeArgTrieEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cvc5::Term") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %1, ptr nofree noundef readonly captures(address) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::Term", align 16       ; 11 uses
  %5 = alloca %"class.cvc5::Term", align 16       ; 13 uses
  %6 = alloca %"class.cvc5::Term", align 16       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4cvc54TermC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %.not54 = icmp eq ptr %i.b, %i.c
  br i1 %.not54, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4cvc54TermaSERKS0_.exit
  %.sroa.029.055 = phi ptr [ %i.b, %.lr.ph ], [ %i.cq, %_ZN4cvc54TermaSERKS0_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.029.055, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68   ; 3 uses
  store ptr %i.k, ptr %5, align 16, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.029.055, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 3 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.029.055, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 5 uses
  store ptr %i.o, ptr %i.e, align 16, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit.thread, label %bb.c

_ZN4cvc54TermC2ERKS0_.exit.thread:                ; preds = %bb.b
  store ptr %i.k, ptr %6, align 16, !tbaa !68
  store ptr %i.m, ptr %i.f, align 8, !tbaa !69
  store ptr null, ptr %i.g, align 16, !tbaa !70
  br label %_ZN4cvc54TermC2ERKS0_.exit15

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit, label %_ZN4cvc54TermC2ERKS0_.exit.thread75

_ZN4cvc54TermC2ERKS0_.exit.thread75:              ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !72
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !72
  store ptr %i.k, ptr %6, align 16, !tbaa !68
  store ptr %i.m, ptr %i.f, align 8, !tbaa !69
  store ptr %i.o, ptr %i.g, align 16, !tbaa !70
  br label %bb.d

_ZN4cvc54TermC2ERKS0_.exit:                       ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.e, align 16, !tbaa !70 ; 3 uses
  %i.u = load <2 x ptr>, ptr %5, align 16, !tbaa !73
  store <2 x ptr> %i.u, ptr %6, align 16, !tbaa !73
  store ptr %.pr.pre, ptr %i.g, align 16, !tbaa !70
  %.not.i.i.i.i13 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i.i13, label %_ZN4cvc54TermC2ERKS0_.exit15, label %bb.d

bb.d:                                             ; preds = %_ZN4cvc54TermC2ERKS0_.exit.thread75, %_ZN4cvc54TermC2ERKS0_.exit
  %.pr78 = phi ptr [ %i.o, %_ZN4cvc54TermC2ERKS0_.exit.thread75 ], [ %.pr.pre, %_ZN4cvc54TermC2ERKS0_.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.pr78, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i14 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.v, align 4, !tbaa !72
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !72
  br label %_ZN4cvc54TermC2ERKS0_.exit15

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit15

_ZN4cvc54TermC2ERKS0_.exit15:                     ; preds = %_ZN4cvc54TermC2ERKS0_.exit.thread, %_ZN4cvc54TermC2ERKS0_.exit, %bb.e, %bb.f
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !54
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.not.i.i.i.i.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4cvc54TermC2ERKS0_.exit15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.g
  %.sroa.06.0.in.i.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %.sroa.06.0.i.i.i.i.i.i, %.noexc ]
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not.i.i.i.i.i.not.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.not.i, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.ah = invoke noundef zeroext i1 @_ZNK4cvc54TermeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  br i1 %i.ah, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread34, label %bb.h, !llvm.loop !0

_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread34: ; preds = %.noexc
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  br label %bb.n

bb.j:                                             ; preds = %_ZN4cvc54TermC2ERKS0_.exit15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.aj = invoke noundef i64 @_ZNKSt4hashIN4cvc54TermEEclERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc16:                                         ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 88 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.am = urem i64 %i.aj, %i.al                   ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, label %bb.k

bb.k:                                             ; preds = %.noexc16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ar = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.k ], [ %i.ay, %bb.m ]
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.k ], [ %.0.i.i.i.i.i.i.i.i, %bb.m ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %i.av, %bb.m ] ; 3 uses
  %i.as = icmp eq i64 %i.aj, %i.ar
  br i1 %i.as, label %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i, i64 8
  %i.au = invoke noundef zeroext i1 @_ZNK4cvc54TermeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %i.at)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i
  br i1 %i.au, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit, label %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.noexc17, %bb.l
  %i.av = load ptr, ptr %.0.i.i.i.i.i.i.i.i, align 8, !tbaa !55 ; 3 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not18.i.i.i.i.i.i.i.i, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.az = urem i64 %i.ay, %i.aw
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.az, %i.am
  br i1 %.not19.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, !llvm.loop !1

_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread: ; preds = %bb.m, %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i, %bb.h, %.noexc16
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  br label %_ZN4cvc54TermaSERKS0_.exit

_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit: ; preds = %.noexc17
  %i.ba = load ptr, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !55
  %.not36 = icmp eq ptr %i.ba, null
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  br i1 %.not36, label %_ZN4cvc54TermaSERKS0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread34, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit
  %i.bb = invoke noundef zeroext i1 @_ZNK4cvc54Term6isNullEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  br i1 %i.bb, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  br i1 %3, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %7 = load <2 x ptr>, ptr %5, align 16, !tbaa !73
  store <2 x ptr> %7, ptr %0, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.e, align 16, !tbaa !70 ; 3 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !70
  %.not.i.i.i.i18 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i18, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i19 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i19, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !72
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !72
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %_ZNKSt8__detail15_Hashtable_baseIKN4cvc54TermESt4pairIS3_KbENS_10_Select1stESt8equal_toIS3_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS3_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i.i.i.i, %bb.j
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  br label %bb.ak

bb.u:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %bb.p
  %8 = load <2 x ptr>, ptr %5, align 16, !tbaa !73
  store <2 x ptr> %8, ptr %4, align 16, !tbaa !73
  %i.bk = load ptr, ptr %i.e, align 16, !tbaa !70 ; 4 uses
  %i.bl = load ptr, ptr %i.i, align 16, !tbaa !70 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i.i21, label %_ZN4cvc54TermaSERKS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not7.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i22 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i22, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !72
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !72
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.i, align 16, !tbaa !70
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.br = phi ptr [ %i.bl, %bb.w ], [ %i.bl, %bb.y ], [ %.pr.pre.i.i.i.i, %bb.z ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.bs, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !81
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !2
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !2
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i9.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i9.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !72
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.bv, %bb.ad ], [ %i.cf, %bb.ae ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.af, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !84

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.bk, ptr %i.i, align 16, !tbaa !70
  br label %_ZN4cvc54TermaSERKS0_.exit

bb.ag:                                            ; preds = %bb.o
  %i.ch = load <2 x ptr>, ptr %1, align 8, !tbaa !73
  store <2 x ptr> %i.ch, ptr %0, align 8, !tbaa !73
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !70 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !70
  %.not.i.i.i.i23 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i23, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i24 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i24, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !72
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !72
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %i.cp = atomicrmw volatile add ptr %i.cl, i32 1 acq_rel, align 4 ; 0 uses
  br label %.critedge

_ZN4cvc54TermaSERKS0_.exit:                       ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.v, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit.thread, %_ZNK4cvc58internal6parser18OverloadedTypeTrie20isOverloadedFunctionENS_4TermE.exit
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.029.055) #23 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.c
  br i1 %.not, label %.critedge12, label %bb.b, !llvm.loop !211

bb.ak:                                            ; preds = %bb.u, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.t, %bb.s, %bb.q
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN4cvc54TermC2ERKS0_.exit28

.critedge12:                                      ; preds = %_ZN4cvc54TermaSERKS0_.exit, %bb.a
  %i.cr = load <2 x ptr>, ptr %4, align 16, !tbaa !73
  store <2 x ptr> %i.cr, ptr %0, align 8, !tbaa !73
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = load ptr, ptr %i.ct, align 16, !tbaa !70 ; 3 uses
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !70
  %.not.i.i.i.i26 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i26, label %_ZN4cvc54TermC2ERKS0_.exit28, label %bb.al

bb.al:                                            ; preds = %.critedge12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i27 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i27, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !72
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !72
  br label %_ZN4cvc54TermC2ERKS0_.exit28

bb.an:                                            ; preds = %bb.al
  %i.cz = atomicrmw volatile add ptr %i.cv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit28

_ZN4cvc54TermC2ERKS0_.exit28:                     ; preds = %bb.an, %bb.am, %.critedge12, %.critedge
  call void @_ZN4cvc54TermD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6parser18OverloadedTypeTrie4bindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4TermESB_(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef readonly align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::Term", align 16       ; 9 uses
  %5 = alloca %"class.cvc5::Term", align 16       ; 5 uses
  %6 = alloca %"class.cvc5::Term", align 16       ; 5 uses
  %i.a = load <2 x ptr>, ptr %2, align 8, !tbaa !73
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  store ptr %i.d, ptr %i.b, align 16, !tbaa !70
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN4cvc54TermC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !72
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !72
  br label %_ZN4cvc54TermC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4cvc54TermC2ERKS0_.exit

_ZN4cvc54TermC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.not.i.i.i.i.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4cvc54TermC2ERKS0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
end_hunk_0
