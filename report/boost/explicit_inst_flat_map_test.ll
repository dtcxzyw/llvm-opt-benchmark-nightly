Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_equal_rangeINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EES3_IT_SK_ESK_SK_RKT0_:bb.a
  %i.bn = add i64 %.013.i20, %.neg.i24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i22
  %i.bo = phi ptr [ %i.bm, %bb.l ], [ %i.bc, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i22 ] ; 2 uses
  %.1.i25 = phi i64 [ %i.bn, %bb.l ], [ %i.bd, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i22 ] ; 2 uses
  %.not.i26 = icmp eq i64 %.1.i25, 0
  br i1 %.not.i26, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit, label %bb.j, !llvm.loop !1635

bb.n:                                             ; preds = %bb.d, %bb.e
  %i.bp = phi ptr [ %i.j, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %.2 = phi i64 [ %i.k, %bb.e ], [ %i.u, %bb.d ]  ; 2 uses
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit, label %bb.b, !llvm.loop !10220

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit: ; preds = %bb.n, %bb.m, %bb.a, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit
  %.sink69 = phi ptr [ %i.at, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit ], [ %i.at, %bb.m ], [ %i.c, %bb.a ], [ %i.bp, %bb.n ]
  %.sink = phi ptr [ %i.av, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb0EEES5_EET_SK_SK_RKT0_.exit ], [ %i.bo, %bb.m ], [ %i.c, %bb.a ], [ %i.bp, %bb.n ]
  store ptr %.sink69, ptr %0, align 8, !tbaa !1522
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bq, align 8, !tbaa !1522
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_equal_rangeINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EES3_IT_SK_ESK_SK_RKT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !1437
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !1437   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1467 ; 2 uses
  %.not45 = icmp eq ptr %i.b, %i.d
  br i1 %.not45, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 3
  %i.i = load i32, ptr %4, align 4, !tbaa !802    ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %i.j = phi ptr [ %i.c, %.lr.ph ], [ %i.bp, %bb.n ] ; 5 uses
  %.01446 = phi i64 [ %i.h, %.lr.ph ], [ %.2, %bb.n ] ; 3 uses
  %i.k = lshr i64 %.01446, 1                      ; 4 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !1467
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1458
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit: ; preds = %bb.b, %bb.c
  %.sroa.032.0 = phi ptr [ %i.j, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802  ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit
  %i.r = load ptr, ptr %.sroa.032.0, align 8, !tbaa !1467
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1458 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !1437
  %.neg = xor i64 %i.k, -1
  %i.u = add i64 %.01446, %.neg
  br label %bb.n

bb.e:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit
  %i.v = icmp slt i32 %i.i, %i.p
  br i1 %i.v, label %bb.n, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit16

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit16: ; preds = %bb.e
  store ptr %i.j, ptr %3, align 8, !tbaa !1437
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !1467
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.01446
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1458 ; 2 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !1437
  %i.z = load ptr, ptr %2, align 8, !tbaa !1437   ; 3 uses
  %i.aa = load ptr, ptr %.sroa.032.0, align 8, !tbaa !1467, !noalias !10221 ; 3 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !1467, !noalias !10221 ; 2 uses
  %.not12.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not12.i, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit16
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = ashr exact i64 %i.ae, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %i.ag = phi ptr [ %i.z, %.lr.ph.i ], [ %i.as, %bb.i ] ; 3 uses
  %.013.i = phi i64 [ %i.af, %.lr.ph.i ], [ %.1.i, %bb.i ] ; 2 uses
  %i.ah = lshr i64 %.013.i, 1                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1467, !noalias !10221
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1458, !noalias !10221
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !802, !noalias !10221
  %i.an = icmp slt i32 %i.am, %i.i
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i
  %i.ao = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !10221
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1458, !noalias !10221
  %.neg.i = xor i64 %i.ah, -1
  %i.ar = add i64 %.013.i, %.neg.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i
  %i.as = phi ptr [ %i.aq, %bb.h ], [ %i.ag, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i ] ; 2 uses
  %.1.i = phi i64 [ %i.ar, %bb.h ], [ %i.ah, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i ] ; 2 uses
  %.not.i17 = icmp eq i64 %.1.i, 0
  br i1 %.not.i17, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %bb.f, !llvm.loop !1656

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit: ; preds = %bb.i, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit16
  %i.at = phi ptr [ %i.z, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit16 ], [ %i.as, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1458 ; 3 uses
  %i.aw = load ptr, ptr %i.y, align 8, !tbaa !1467, !noalias !10224 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !1467, !noalias !10224 ; 2 uses
  %.not12.i18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not12.i18, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.az, %i.ay
  %i.bb = ashr exact i64 %i.ba, 3
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i19
  %i.bc = phi ptr [ %i.av, %.lr.ph.i19 ], [ %i.bo, %bb.m ] ; 3 uses
  %.013.i20 = phi i64 [ %i.bb, %.lr.ph.i19 ], [ %.1.i25, %bb.m ] ; 2 uses
  %i.bd = lshr i64 %.013.i20, 1                   ; 4 uses
  %.not.i.i21 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i21, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1467, !noalias !10224
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1458, !noalias !10224
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i23 = phi ptr [ %i.bc, %bb.j ], [ %i.bg, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i23, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802, !noalias !10224
  %i.bj = icmp slt i32 %i.i, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22
  %i.bk = load ptr, ptr %.sroa.0.0.i23, align 8, !tbaa !1467, !noalias !10224
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1458, !noalias !10224
  %.neg.i24 = xor i64 %i.bd, -1
  %i.bn = add i64 %.013.i20, %.neg.i24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22
  %i.bo = phi ptr [ %i.bm, %bb.l ], [ %i.bc, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22 ] ; 2 uses
  %.1.i25 = phi i64 [ %i.bn, %bb.l ], [ %i.bd, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1EEpLEl.exit.i22 ] ; 2 uses
  %.not.i26 = icmp eq i64 %.1.i25, 0
  br i1 %.not.i26, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %bb.j, !llvm.loop !1652

bb.n:                                             ; preds = %bb.d, %bb.e
  %i.bp = phi ptr [ %i.j, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %.2 = phi i64 [ %i.k, %bb.e ], [ %i.u, %bb.d ]  ; 2 uses
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit, label %bb.b, !llvm.loop !10227

_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_upper_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit: ; preds = %bb.n, %bb.m, %bb.a, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit
  %.sink69 = phi ptr [ %i.at, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit ], [ %i.at, %bb.m ], [ %i.c, %bb.a ], [ %i.bp, %bb.n ]
  %.sink = phi ptr [ %i.av, %_ZNK5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13stable_vectorIS6_NS0_9allocatorIS6_Lj2ELj0EEEEEE16priv_lower_boundINS0_22stable_vector_iteratorIPS6_Lb1EEES5_EET_SK_SK_RKT0_.exit ], [ %i.bo, %bb.m ], [ %i.c, %bb.a ], [ %i.bp, %bb.n ]
  store ptr %.sink69, ptr %0, align 8, !tbaa !1437
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bq, align 8, !tbaa !1437
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test24movable_and_copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_5dequeIS6_NS4_16simple_allocatorIS6_EEvEEE4DataD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1905, !noalias !10228 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1895, !noalias !10231 ; 4 uses
  %i.d = lshr i64 %i.b, 4
  %.idx.i = and i64 %i.d, 1152921504606846968     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvED2Ev.exit, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.i

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !973, !noalias !10231
  %i.g = shl i64 %i.b, 3
  %.idx25.i = and i64 %i.g, 1016                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx25.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1907, !noalias !10234 ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %.idx17.i = and i64 %i.k, 1152921504606846968   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx17.i ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !973, !noalias !10237 ; 2 uses
  %i.n = shl i64 %i.j, 3
  %.idx26.i = and i64 %i.n, 1016                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx26.i ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 2 uses
  %i.p = add nuw nsw i64 %.idx.i, 8
  %i.q = icmp samesign ult i64 %i.p, %.idx17.i
  br i1 %i.q, label %.lr.ph.preheader.i.i, label %bb.b

.lr.ph.preheader.i.i:                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.i
  %1 = ptrtoaddr ptr %i.l to i64
  %2 = ptrtoaddr ptr %i.e to i64                  ; 2 uses
  %3 = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, -256
  %4 = add i64 %2, 16
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %1, i64 %4)
  %reass.sub.i = sub i64 %umax.i.i, %2
  %i.r = trunc i64 %reass.sub.i to i32
  %i.s = shl i32 %i.r, 5
  %5 = add i32 %i.s, -288
  %6 = and i32 %5, -256
  %7 = sub i32 %3, %6                             ; 2 uses
  store i32 %7, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i.i, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i.i = phi i32 [ %7, %.lr.ph.preheader.i.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.i ] ; 2 uses
  %.not12.i.i = icmp samesign eq i64 %.idx.i, %.idx17.i
  br i1 %.not12.i.i, label %bb.c, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i: ; preds = %bb.b
  %i.t = sub nuw nsw i64 1016, %.idx25.i
  %sh.diff.i.i.i = lshr exact i64 %i.t, 2
  %tr.sh.diff.i.i.i = trunc nuw nsw i64 %sh.diff.i.i.i to i32
  %i.u = xor i32 %tr.sh.diff.i.i.i, -2
  %i.v = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i.i, %i.u ; 2 uses
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not3.i14.i.i = icmp samesign eq i64 %.idx26.i, 0
  br i1 %.not3.i14.i.i, label %bb.d, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %.not3.i20.i.i = icmp eq ptr %i.h, %i.o
  br i1 %.not3.i20.i.i, label %bb.d, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i.i: ; preds = %bb.c, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i
  %.sink46.i.i = phi ptr [ %i.m, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i ], [ %i.h, %bb.c ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i.i = phi i32 [ %i.v, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i.i, %bb.c ]
  %i.w = ptrtoaddr ptr %i.o to i64
  %i.x = ptrtoaddr ptr %.sink46.i.i to i64
  %reass.sub34.i.i = add i64 %i.w, 17179869176
  %i.y = sub i64 %reass.sub34.i.i, %i.x
  %sh.diff.i23.i.i = lshr i64 %i.y, 2
  %tr.sh.diff.i24.i.i = trunc i64 %sh.diff.i23.i.i to i32
  %tr.sh.diff.i24.not.i.i = and i32 %tr.sh.diff.i24.i.i, -2
  %i.z = xor i32 %tr.sh.diff.i24.not.i.i, -2
  %i.aa = add i32 %i.z, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i.i
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i.i, %bb.c, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i.i
  %.not.i.i3.i = icmp samesign ugt i64 %.idx.i, %.idx17.i
  br i1 %.not.i.i3.i, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.e, %bb.d ] ; 3 uses
  %i.ab = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !973
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef 1024) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ad = icmp ult ptr %.06.i.i.i.i, %i.l
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i, !llvm.loop !10240

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !1895
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i: ; preds = %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i, %bb.d
  %i.ae = phi ptr [ %.pre.i.i, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.loopexit.i.i ], [ %i.c, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !2092
  %i.ah = shl i64 %i.ag, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #23
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvED2Ev.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_deallocate_all_nodesEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5eraseENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEESB_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !1916   ; 12 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !1916   ; 12 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1918 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1918 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !973
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1907 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1905 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 2 uses
  %i.ac = icmp eq i64 %.0.i, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit
  tail call void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #23
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !10241 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.ae = load i64, ptr %i.x, align 8, !tbaa !1907, !noalias !10246
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split

bb.d:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEmiERKS7_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1918 ; 11 uses
  %.not.i.i13 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i13, label %bb.f, label %bb.e, !prof !35

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1895
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = shl i64 %i.ak, 4
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !973
  %i.an = ptrtoint ptr %i.b to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add i64 %i.aq, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.ar, %bb.e ], [ 0, %bb.d ]
  %i.as = sub i64 %.0.i.i, %i.aa                  ; 6 uses
  %i.at = add i64 %.0.i, %i.as
  %i.au = sub i64 %i.ab, %i.at                    ; 3 uses
  %i.av = icmp ult i64 %i.as, %i.au
  %i.aw = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !3115 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null           ; 2 uses
  br i1 %i.av, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.g
  %i.ax = lshr i64 %i.aa, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !973, !noalias !10249
  %i.ba = and i64 %i.aa, 127
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit: ; preds = %bb.g, %.split.i.i.i
  %.sink1.i14 = phi ptr [ %i.bb, %.split.i.i.i ], [ null, %bb.g ] ; 4 uses
  %.sink.i15 = phi ptr [ %i.ay, %.split.i.i.i ], [ null, %bb.g ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1918, !noalias !10256 ; 5 uses
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !973, !noalias !10259
  %i.bf = ptrtoint ptr %i.b to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.as, i64 %i.bi) ; 6 uses
  %.not4.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not4.i.i, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit
  %.pre.i = load ptr, ptr %i.bd, align 8, !tbaa !973, !noalias !10262 ; 3 uses
  %xtraiter197 = and i64 %i.bj, 1
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 3 uses
  %i.bm = icmp eq ptr %i.a, %.pre.i
  br i1 %i.bm, label %bb.i, label %bb.h, !prof !35

bb.h:                                             ; preds = %.lr.ph.i.i.prol
  %i.bn = getelementptr inbounds i8, ptr %i.a, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.prol

bb.i:                                             ; preds = %.lr.ph.i.i.prol
  %i.bo = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !973, !noalias !10262 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.prol

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.prol: ; preds = %bb.i, %bb.h
  %i.br = phi ptr [ %.pre.i, %bb.h ], [ %i.bp, %bb.i ]
  %i.bs = phi ptr [ %i.bd, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %storemerge.i.i.i.prol = phi ptr [ %i.bn, %bb.h ], [ %i.bq, %bb.i ] ; 4 uses
  %i.bt = load i32, ptr %i.bl, align 4, !tbaa !802, !noalias !10262
  store i32 %i.bt, ptr %storemerge.i.i.i.prol, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.bl, align 4, !tbaa !802, !noalias !10262
  %i.bu = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.prol, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !802, !noalias !10262
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.bu, align 4, !tbaa !802, !noalias !10262
end_hunk_0
begin_hunk_1_@_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5eraseENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEESB_:bb.a
  %.035.i.i = phi i64 [ %i.cm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1 ], [ %.035.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ca = getelementptr inbounds i8, ptr %.06.i.i, i64 -8 ; 2 uses
  %i.cb = icmp eq ptr %storemerge.i7.i.i, %i.by
  br i1 %i.cb, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !973, !noalias !10262 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cf = getelementptr inbounds i8, ptr %storemerge.i7.i.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.cg = phi ptr [ %i.by, %bb.k ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ch = phi ptr [ %i.bz, %bb.k ], [ %i.cc, %bb.j ] ; 2 uses
  %storemerge.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %i.ce, %bb.j ] ; 4 uses
  %i.ci = load i32, ptr %i.ca, align 4, !tbaa !802, !noalias !10262
  store i32 %i.ci, ptr %storemerge.i.i.i, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.ca, align 4, !tbaa !802, !noalias !10262
  %i.cj = getelementptr inbounds i8, ptr %.06.i.i, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !802, !noalias !10262
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.cj, align 4, !tbaa !802, !noalias !10262
  %i.cm = add i64 %.035.i.i, -2                   ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.06.i.i, i64 -16 ; 3 uses
  %i.co = icmp eq ptr %storemerge.i.i.i, %i.cg
  br i1 %i.co, label %bb.m, label %bb.l, !prof !35

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.cp = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1

bb.m:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i
  %i.cq = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !973, !noalias !10262 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1: ; preds = %bb.m, %bb.l
  %i.ct = phi ptr [ %i.cg, %bb.l ], [ %i.cr, %bb.m ]
  %i.cu = phi ptr [ %i.ch, %bb.l ], [ %i.cq, %bb.m ] ; 2 uses
  %storemerge.i.i.i.1 = phi ptr [ %i.cp, %bb.l ], [ %i.cs, %bb.m ] ; 4 uses
  %i.cv = load i32, ptr %i.cn, align 4, !tbaa !802, !noalias !10262
  store i32 %i.cv, ptr %storemerge.i.i.i.1, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.cn, align 4, !tbaa !802, !noalias !10262
  %i.cw = getelementptr inbounds i8, ptr %.06.i.i, i64 -12 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.1, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !802, !noalias !10262
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !802, !noalias !10262
  store i32 0, ptr %i.cw, align 4, !tbaa !802, !noalias !10262
  %.not.i.i16.1 = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i16.1, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i.i, !llvm.loop !10265

_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit
  %.promoted40.i = phi ptr [ %i.bd, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit ], [ %.lcssa185.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.cu, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1 ] ; 3 uses
  %.promoted.i = phi ptr [ %i.a, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE5beginEv.exit ], [ %storemerge.i.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %storemerge.i.i.i.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i.i.1 ] ; 2 uses
  %i.cz = sub nuw i64 %i.as, %i.bj                ; 2 uses
  %.not36.i = icmp eq i64 %i.cz, 0
  br i1 %.not36.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %.pre43.i.pre = load ptr, ptr %.promoted40.i, align 8, !tbaa !973, !noalias !10266
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i
  %.pre43.i = phi ptr [ %.pre43.i133.lcssa, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ], [ %.pre43.i.pre, %.lr.ph.i.preheader ] ; 3 uses
  %.lcssa41.i = phi ptr [ %.lcssa, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ], [ %.promoted40.i, %.lr.ph.i.preheader ] ; 3 uses
  %storemerge.i.i27.lcssa39.i = phi ptr [ %storemerge.i.i27.i.lcssa, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ], [ %.promoted.i, %.lr.ph.i.preheader ] ; 3 uses
  %.038.i = phi ptr [ %i.da, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ], [ %i.ag, %.lr.ph.i.preheader ]
  %.01737.i = phi i64 [ %i.et, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ], [ %i.cz, %.lr.ph.i.preheader ] ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %.038.i, i64 -8 ; 2 uses
  %i.db = tail call i64 @llvm.umin.i64(i64 %.01737.i, i64 128) ; 4 uses
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !973, !noalias !10259 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1024
  %xtraiter201 = and i64 %i.db, 1
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br i1 %lcmp.mod202.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i
  %i.de = add nsw i64 %i.db, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1016 ; 3 uses
  %i.dg = icmp eq ptr %storemerge.i.i27.lcssa39.i, %.pre43.i
  br i1 %i.dg, label %bb.o, label %bb.n, !prof !35

bb.n:                                             ; preds = %.lr.ph.i22.i.prol
  %i.dh = getelementptr inbounds i8, ptr %storemerge.i.i27.lcssa39.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

bb.o:                                             ; preds = %.lr.ph.i22.i.prol
  %i.di = getelementptr inbounds i8, ptr %.lcssa41.i, i64 -8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !973, !noalias !10266 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol: ; preds = %bb.o, %bb.n
  %i.dl = phi ptr [ %.pre43.i, %bb.n ], [ %i.dj, %bb.o ] ; 2 uses
  %i.dm = phi ptr [ %.lcssa41.i, %bb.n ], [ %i.di, %bb.o ] ; 2 uses
  %storemerge.i.i27.i.prol = phi ptr [ %i.dh, %bb.n ], [ %i.dk, %bb.o ] ; 4 uses
  %i.dn = load i32, ptr %i.df, align 4, !tbaa !802, !noalias !10266
  store i32 %i.dn, ptr %storemerge.i.i27.i.prol, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.df, align 4, !tbaa !802, !noalias !10266
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 1020 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i.prol, i64 4
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !802, !noalias !10266
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.do, align 4, !tbaa !802, !noalias !10266
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol, %.lr.ph.i
  %.pre43.i133.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.dl, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.dm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i.i27.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.unr203 = phi ptr [ %.pre43.i, %.lr.ph.i ], [ %i.dl, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ] ; 2 uses
  %.unr204 = phi ptr [ %.lcssa41.i, %.lr.ph.i ], [ %i.dm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i7.i23.i.unr = phi ptr [ %storemerge.i.i27.lcssa39.i, %.lr.ph.i ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.06.i24.i.unr = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.df, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.035.i25.i.unr = phi i64 [ %i.db, %.lr.ph.i ], [ %i.de, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %i.dr = icmp eq i64 %.01737.i, 1
  br i1 %i.dr, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1
  %.pre43.i134 = phi ptr [ %.pre43.i133.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr203, %.lr.ph.i22.i.prol.loopexit ]
  %i.ds = phi ptr [ %i.en, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr203, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.dt = phi ptr [ %i.eo, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr204, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %storemerge.i7.i23.i = phi ptr [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %storemerge.i7.i23.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.06.i24.i = phi ptr [ %i.eh, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.06.i24.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 4 uses
  %.035.i25.i = phi i64 [ %i.eg, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.035.i25.i.unr, %.lr.ph.i22.i.prol.loopexit ]
  %i.du = getelementptr inbounds i8, ptr %.06.i24.i, i64 -8 ; 2 uses
  %i.dv = icmp eq ptr %storemerge.i7.i23.i, %i.ds
  br i1 %i.dv, label %bb.p, label %bb.q, !prof !35

bb.p:                                             ; preds = %.lr.ph.i22.i
  %i.dw = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !973, !noalias !10266 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i

bb.q:                                             ; preds = %.lr.ph.i22.i
  %i.dz = getelementptr inbounds i8, ptr %storemerge.i7.i23.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i: ; preds = %bb.q, %bb.p
  %.pre43.i133 = phi ptr [ %.pre43.i134, %bb.q ], [ %i.dx, %bb.p ]
  %i.ea = phi ptr [ %i.ds, %bb.q ], [ %i.dx, %bb.p ] ; 2 uses
  %i.eb = phi ptr [ %i.dt, %bb.q ], [ %i.dw, %bb.p ] ; 2 uses
  %storemerge.i.i27.i = phi ptr [ %i.dz, %bb.q ], [ %i.dy, %bb.p ] ; 4 uses
  %i.ec = load i32, ptr %i.du, align 4, !tbaa !802, !noalias !10266
  store i32 %i.ec, ptr %storemerge.i.i27.i, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.du, align 4, !tbaa !802, !noalias !10266
  %i.ed = getelementptr inbounds i8, ptr %.06.i24.i, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i, i64 4
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !802, !noalias !10266
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.ed, align 4, !tbaa !802, !noalias !10266
  %i.eg = add nsw i64 %.035.i25.i, -2             ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.06.i24.i, i64 -16 ; 3 uses
  %i.ei = icmp eq ptr %storemerge.i.i27.i, %i.ea
  br i1 %i.ei, label %bb.s, label %bb.r, !prof !35

bb.r:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.ej = getelementptr inbounds i8, ptr %storemerge.i.i27.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1

bb.s:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.ek = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !973, !noalias !10266 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1: ; preds = %bb.s, %bb.r
  %.pre43.i133.1 = phi ptr [ %.pre43.i133, %bb.r ], [ %i.el, %bb.s ] ; 2 uses
  %i.en = phi ptr [ %i.ea, %bb.r ], [ %i.el, %bb.s ]
  %i.eo = phi ptr [ %i.eb, %bb.r ], [ %i.ek, %bb.s ] ; 2 uses
  %storemerge.i.i27.i.1 = phi ptr [ %i.ej, %bb.r ], [ %i.em, %bb.s ] ; 4 uses
  %i.ep = load i32, ptr %i.eh, align 4, !tbaa !802, !noalias !10266
  store i32 %i.ep, ptr %storemerge.i.i27.i.1, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.eh, align 4, !tbaa !802, !noalias !10266
  %i.eq = getelementptr inbounds i8, ptr %.06.i24.i, i64 -12 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i.1, i64 4
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !802, !noalias !10266
  store i32 %i.es, ptr %i.er, align 4, !tbaa !802, !noalias !10266
  store i32 0, ptr %i.eq, align 4, !tbaa !802, !noalias !10266
  %.not.i28.i.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i28.i.1, label %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i, label %.lr.ph.i22.i, !llvm.loop !10265

_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1, %.lr.ph.i22.i.prol.loopexit
  %.pre43.i133.lcssa = phi ptr [ %.pre43.i133.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %.pre43.i133.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %i.eo, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ] ; 2 uses
  %storemerge.i.i27.i.lcssa = phi ptr [ %storemerge.i.i27.i.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ] ; 2 uses
  %i.et = sub nuw i64 %.01737.i, %i.db            ; 2 uses
  %.not.i = icmp eq i64 %i.et, 0
  br i1 %.not.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmSB_.exit, label %.lr.ph.i, !llvm.loop !10269

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmSB_.exit: ; preds = %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %i.eu = phi ptr [ %.promoted40.i, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i ], [ %.lcssa, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ] ; 6 uses
  %i.ev = phi ptr [ %.promoted.i, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i ], [ %storemerge.i.i27.i.lcssa, %_ZN5boost9container15move_backward_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit29.i ] ; 3 uses
  %i.ew = ptrtoaddr ptr %.sink.i15 to i64         ; 2 uses
  %i.ex = ptrtoaddr ptr %i.eu to i64
  %.not.i17 = icmp eq ptr %.sink.i15, null
  br i1 %.not.i17, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmSB_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 2 uses
  %.031.i = getelementptr inbounds nuw i8, ptr %.sink.i15, i64 8
  %i.ey = icmp ult ptr %.031.i, %i.eu
  br i1 %i.ey, label %.lr.ph.preheader.i, label %bb.t

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %4 = add i64 %i.ew, 16
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 %4)
  %reass.sub121.neg = sub i64 %i.ew, %umax.i
  %.neg122 = trunc i64 %reass.sub121.neg to i32
  %.neg123 = shl i32 %.neg122, 5
  %i.ez = and i32 %.neg123, -256
  %i.fa = add i32 %i.ez, 256
  %i.fb = add i32 %i.fa, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i ; 2 uses
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.preheader.i, %.preheader.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i = phi i32 [ %i.fb, %.lr.ph.preheader.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.preheader.i ] ; 3 uses
  %.not12.i = icmp eq ptr %.sink.i15, %i.eu
  br i1 %.not12.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = load ptr, ptr %.sink.i15, align 8, !tbaa !973
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1024 ; 2 uses
  %.not3.i.i = icmp eq ptr %.sink1.i14, %i.fd
  br i1 %.not3.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.fe = ptrtoaddr ptr %i.fd to i64
  %i.ff = ptrtoaddr ptr %.sink1.i14 to i64
  %reass.sub124 = sub i64 %i.fe, %i.ff
  %i.fg = add i64 %reass.sub124, 17179869176
  %sh.diff.i.i = lshr i64 %i.fg, 2
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %tr.sh.diff.i.not.i = and i32 %tr.sh.diff.i.i, -2
  %i.fh = xor i32 %tr.sh.diff.i.not.i, -2
  %i.fi = add i32 %i.fh, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i ; 2 uses
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.u
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i, %bb.u ], [ %i.fi, %.lr.ph.preheader.i.i ]
  %i.fj = load ptr, ptr %i.eu, align 8, !tbaa !973 ; 2 uses
  %.not3.i14.i = icmp eq ptr %i.fj, %i.ev
  br i1 %.not3.i14.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i

bb.v:                                             ; preds = %bb.t
  %.not3.i20.i = icmp eq ptr %.sink1.i14, %i.ev
  br i1 %.not3.i20.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i: ; preds = %bb.v, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i
  %.sink46.i = phi ptr [ %i.fj, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i ], [ %.sink1.i14, %bb.v ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i, %bb.v ]
  %i.fk = ptrtoaddr ptr %i.ev to i64
  %i.fl = ptrtoaddr ptr %.sink46.i to i64
  %reass.sub34.i = add i64 %i.fk, 17179869176
  %i.fm = sub i64 %reass.sub34.i, %i.fl
  %sh.diff.i23.i = lshr i64 %i.fm, 2
  %tr.sh.diff.i24.i = trunc i64 %sh.diff.i23.i to i32
  %tr.sh.diff.i24.not.i = and i32 %tr.sh.diff.i24.i, -2
  %i.fn = xor i32 %tr.sh.diff.i24.not.i, -2
  %i.fo = add i32 %i.fn, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i, %bb.v, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmSB_.exit
  %i.fp = icmp ult ptr %.sink.i15, %i.eu
  br i1 %i.fp, label %.lr.ph.i.i18, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit

.lr.ph.i.i18:                                     ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, %.lr.ph.i.i18
  %.06.i.i19 = phi ptr [ %i.fr, %.lr.ph.i.i18 ], [ %.sink.i15, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit ] ; 2 uses
  %i.fq = load ptr, ptr %.06.i.i19, align 8, !tbaa !973
  tail call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef 1024) #23
  %i.fr = getelementptr inbounds nuw i8, ptr %.06.i.i19, i64 8 ; 2 uses
  %i.fs = icmp ult ptr %i.fr, %i.eu
  br i1 %i.fs, label %.lr.ph.i.i18, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit, !llvm.loop !10240

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit: ; preds = %.lr.ph.i.i18, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit
  %i.ft = load i64, ptr %i.z, align 8, !tbaa !1905
  %i.fu = add i64 %i.ft, %.0.i                    ; 2 uses
  store i64 %i.fu, ptr %i.z, align 8, !tbaa !1905
  %i.fv = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !10270 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i20, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit, label %.split.i.i.i21

.split.i.i.i21:                                   ; preds = %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit
  %i.fw = add i64 %i.fu, %i.as
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split

bb.w:                                             ; preds = %bb.f
  br i1 %.not.i.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28, label %.split.i.i25

.split.i.i25:                                     ; preds = %bb.w
  %i.fx = lshr i64 %i.y, 7
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.fx ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !973, !noalias !10277
  %i.ga = and i64 %i.y, 127
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28: ; preds = %bb.w, %.split.i.i25
  %.sink1.i26 = phi ptr [ %i.gb, %.split.i.i25 ], [ null, %bb.w ] ; 3 uses
  %.sink.i27 = phi ptr [ %i.fy, %.split.i.i25 ], [ null, %bb.w ] ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1918, !noalias !10282 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !973, !noalias !10285
  %i.gf = ptrtoint ptr %i.a to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 3
  %i.gj = sub nsw i64 128, %i.gi
  %i.gk = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.gj) ; 6 uses
  %.not4.i.i29 = icmp eq i64 %i.gk, 0
  br i1 %.not4.i.i29, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i.preheader.i30

.lr.ph.i.preheader.i30:                           ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28
  %.pre.i31 = load ptr, ptr %i.ag, align 8, !tbaa !973, !noalias !10288 ; 3 uses
  %xtraiter = and i64 %i.gk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i32.prol.loopexit, label %.lr.ph.i.i32.prol

.lr.ph.i.i32.prol:                                ; preds = %.lr.ph.i.preheader.i30
  %i.gl = add nsw i64 %i.gk, -1                   ; 2 uses
  %i.gm = load i32, ptr %i.a, align 4, !tbaa !802, !noalias !10288
  store i32 %i.gm, ptr %i.b, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %i.a, align 4, !tbaa !802, !noalias !10288
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !802, !noalias !10288
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %i.gn, align 4, !tbaa !802, !noalias !10288
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre.i31, i64 1024
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.x, label %.lr.ph.i.i32.prol.loopexit, !prof !35

bb.x:                                             ; preds = %.lr.ph.i.i32.prol
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !973, !noalias !10288 ; 3 uses
  br label %.lr.ph.i.i32.prol.loopexit

.lr.ph.i.i32.prol.loopexit:                       ; preds = %.lr.ph.i.i32.prol, %bb.x, %.lr.ph.i.preheader.i30
  %.lcssa189.unr = phi ptr [ poison, %.lr.ph.i.preheader.i30 ], [ %i.ag, %.lr.ph.i.i32.prol ], [ %i.gu, %bb.x ]
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph.i.preheader.i30 ], [ %i.gr, %.lr.ph.i.i32.prol ], [ %i.gv, %bb.x ]
  %.unr = phi ptr [ %.pre.i31, %.lr.ph.i.preheader.i30 ], [ %.pre.i31, %.lr.ph.i.i32.prol ], [ %i.gv, %bb.x ]
  %.unr190 = phi ptr [ %i.ag, %.lr.ph.i.preheader.i30 ], [ %i.ag, %.lr.ph.i.i32.prol ], [ %i.gu, %bb.x ]
  %.unr191 = phi ptr [ %i.b, %.lr.ph.i.preheader.i30 ], [ %i.gr, %.lr.ph.i.i32.prol ], [ %i.gv, %bb.x ]
  %.06.i.i33.unr = phi ptr [ %i.a, %.lr.ph.i.preheader.i30 ], [ %i.gq, %bb.x ], [ %i.gq, %.lr.ph.i.i32.prol ]
  %.035.i.i34.unr = phi i64 [ %i.gk, %.lr.ph.i.preheader.i30 ], [ %i.gl, %bb.x ], [ %i.gl, %.lr.ph.i.i32.prol ]
  %i.gw = icmp eq i64 %i.gk, 1
  br i1 %i.gw, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph.i.i32.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1
  %i.gx = phi ptr [ %i.hy, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i32.prol.loopexit ] ; 2 uses
  %i.gy = phi ptr [ %i.hz, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr190, %.lr.ph.i.i32.prol.loopexit ] ; 2 uses
  %i.gz = phi ptr [ %i.ia, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.unr191, %.lr.ph.i.i32.prol.loopexit ] ; 3 uses
  %.06.i.i33 = phi ptr [ %i.hs, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.06.i.i33.unr, %.lr.ph.i.i32.prol.loopexit ] ; 6 uses
  %.035.i.i34 = phi i64 [ %i.hn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ], [ %.035.i.i34.unr, %.lr.ph.i.i32.prol.loopexit ]
  %i.ha = load i32, ptr %.06.i.i33, align 4, !tbaa !802, !noalias !10288
  store i32 %i.ha, ptr %i.gz, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %.06.i.i33, align 4, !tbaa !802, !noalias !10288
  %i.hb = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !802, !noalias !10288
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %i.hb, align 4, !tbaa !802, !noalias !10288
  %i.he = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 1024
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %bb.y, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i, !prof !35

bb.y:                                             ; preds = %.lr.ph.i.i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !973, !noalias !10288 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.y, %.lr.ph.i.i32
  %i.hk = phi ptr [ %i.gx, %.lr.ph.i.i32 ], [ %i.hj, %bb.y ] ; 2 uses
  %i.hl = phi ptr [ %i.gy, %.lr.ph.i.i32 ], [ %i.hi, %bb.y ] ; 2 uses
  %i.hm = phi ptr [ %i.hf, %.lr.ph.i.i32 ], [ %i.hj, %bb.y ] ; 3 uses
  %i.hn = add i64 %.035.i.i34, -2                 ; 2 uses
  %i.ho = load i32, ptr %i.he, align 4, !tbaa !802, !noalias !10288
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %i.he, align 4, !tbaa !802, !noalias !10288
  %i.hp = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 12 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !802, !noalias !10288
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !802, !noalias !10288
  store i32 0, ptr %i.hp, align 4, !tbaa !802, !noalias !10288
  %i.hs = getelementptr inbounds nuw i8, ptr %.06.i.i33, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 1024
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %bb.z, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1, !prof !35

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !973, !noalias !10288 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1: ; preds = %bb.z, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i
  %i.hy = phi ptr [ %i.hk, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.hx, %bb.z ]
  %i.hz = phi ptr [ %i.hl, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.hw, %bb.z ] ; 2 uses
  %i.ia = phi ptr [ %i.ht, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.hx, %bb.z ] ; 2 uses
  %.not.i.i35.1 = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i35.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i.i32, !llvm.loop !10291

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i: ; preds = %.lr.ph.i.i32.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28
  %.promoted41.i = phi ptr [ %i.ag, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28 ], [ %.lcssa189.unr, %.lr.ph.i.i32.prol.loopexit ], [ %i.hz, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ] ; 3 uses
  %.promoted.i36 = phi ptr [ %i.b, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit28 ], [ %.lcssa188.unr, %.lr.ph.i.i32.prol.loopexit ], [ %i.ia, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i.i.1 ] ; 2 uses
  %i.ib = sub nuw i64 %i.au, %i.gk                ; 2 uses
  %.not37.i = icmp eq i64 %i.ib, 0
  br i1 %.not37.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEmNS9_ISA_Lb0ELj0ELj0EmEE.exit, label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %.pre46.i.pre = load ptr, ptr %.promoted41.i, align 8, !tbaa !973, !noalias !10292
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.preheader, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i
  %.pre46.i = phi ptr [ %.pre46.i130.lcssa, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ], [ %.pre46.i.pre, %.lr.ph.i37.preheader ] ; 4 uses
  %.lcssa3442.i = phi ptr [ %.lcssa187, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ], [ %.promoted41.i, %.lr.ph.i37.preheader ] ; 4 uses
  %.lcssa40.i = phi ptr [ %.lcssa186, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ], [ %.promoted.i36, %.lr.ph.i37.preheader ] ; 4 uses
  %.039.i = phi ptr [ %i.ic, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ], [ %i.gd, %.lr.ph.i37.preheader ]
  %.01738.i = phi i64 [ %i.jv, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ], [ %i.ib, %.lr.ph.i37.preheader ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.039.i, i64 8 ; 2 uses
  %i.id = tail call i64 @llvm.umin.i64(i64 %.01738.i, i64 128) ; 4 uses
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !973, !noalias !10285 ; 5 uses
  %xtraiter192 = and i64 %i.id, 1
  %lcmp.mod193.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %.lr.ph.i22.i38.prol.loopexit, label %.lr.ph.i22.i38.prol

.lr.ph.i22.i38.prol:                              ; preds = %.lr.ph.i37
  %i.if = add nsw i64 %i.id, -1                   ; 2 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !802, !noalias !10292
  store i32 %i.ig, ptr %.lcssa40.i, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %i.ie, align 4, !tbaa !802, !noalias !10292
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.lcssa40.i, i64 4
  %i.ij = load i32, ptr %i.ih, align 4, !tbaa !802, !noalias !10292
  store i32 %i.ij, ptr %i.ii, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %i.ih, align 4, !tbaa !802, !noalias !10292
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.lcssa40.i, i64 8 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.pre46.i, i64 1024
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %bb.aa, label %.lr.ph.i22.i38.prol.loopexit, !prof !35

bb.aa:                                            ; preds = %.lr.ph.i22.i38.prol
  %i.io = getelementptr inbounds nuw i8, ptr %.lcssa3442.i, i64 8 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !973, !noalias !10292 ; 4 uses
  br label %.lr.ph.i22.i38.prol.loopexit

.lr.ph.i22.i38.prol.loopexit:                     ; preds = %.lr.ph.i22.i38.prol, %bb.aa, %.lr.ph.i37
  %.pre46.i130.lcssa.unr = phi ptr [ poison, %.lr.ph.i37 ], [ %.pre46.i, %.lr.ph.i22.i38.prol ], [ %i.ip, %bb.aa ]
  %.lcssa187.unr = phi ptr [ poison, %.lr.ph.i37 ], [ %.lcssa3442.i, %.lr.ph.i22.i38.prol ], [ %i.io, %bb.aa ]
  %.lcssa186.unr = phi ptr [ poison, %.lr.ph.i37 ], [ %i.il, %.lr.ph.i22.i38.prol ], [ %i.ip, %bb.aa ]
  %.unr194.a = phi ptr [ %.pre46.i, %.lr.ph.i37 ], [ %.pre46.i, %.lr.ph.i22.i38.prol ], [ %i.ip, %bb.aa ] ; 2 uses
  %.unr195 = phi ptr [ %.lcssa3442.i, %.lr.ph.i37 ], [ %.lcssa3442.i, %.lr.ph.i22.i38.prol ], [ %i.io, %bb.aa ]
  %.unr196 = phi ptr [ %.lcssa40.i, %.lr.ph.i37 ], [ %i.il, %.lr.ph.i22.i38.prol ], [ %i.ip, %bb.aa ]
  %.06.i23.i.unr = phi ptr [ %i.ie, %.lr.ph.i37 ], [ %i.ik, %bb.aa ], [ %i.ik, %.lr.ph.i22.i38.prol ]
  %.035.i24.i.unr = phi i64 [ %i.id, %.lr.ph.i37 ], [ %i.if, %bb.aa ], [ %i.if, %.lr.ph.i22.i38.prol ]
  %i.iq = icmp eq i64 %.01738.i, 1
  br i1 %i.iq, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i, label %.lr.ph.i22.i38

.lr.ph.i22.i38:                                   ; preds = %.lr.ph.i22.i38.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1
  %.pre46.i131 = phi ptr [ %.pre46.i130.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr194.a, %.lr.ph.i22.i38.prol.loopexit ]
  %i.ir = phi ptr [ %i.js, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr194.a, %.lr.ph.i22.i38.prol.loopexit ] ; 2 uses
  %i.is = phi ptr [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr195, %.lr.ph.i22.i38.prol.loopexit ] ; 2 uses
  %i.it = phi ptr [ %i.ju, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr196, %.lr.ph.i22.i38.prol.loopexit ] ; 3 uses
  %.06.i23.i = phi ptr [ %i.jm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.06.i23.i.unr, %.lr.ph.i22.i38.prol.loopexit ] ; 6 uses
  %.035.i24.i = phi i64 [ %i.jh, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.035.i24.i.unr, %.lr.ph.i22.i38.prol.loopexit ]
  %i.iu = load i32, ptr %.06.i23.i, align 4, !tbaa !802, !noalias !10292
  store i32 %i.iu, ptr %i.it, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %.06.i23.i, align 4, !tbaa !802, !noalias !10292
  %i.iv = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 4 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.ix = load i32, ptr %i.iv, align 4, !tbaa !802, !noalias !10292
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %i.iv, align 4, !tbaa !802, !noalias !10292
  %i.iy = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 1024
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %bb.ab, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i, !prof !35

bb.ab:                                            ; preds = %.lr.ph.i22.i38
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !973, !noalias !10292 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i: ; preds = %bb.ab, %.lr.ph.i22.i38
  %.pre46.i130 = phi ptr [ %.pre46.i131, %.lr.ph.i22.i38 ], [ %i.jd, %bb.ab ]
  %i.je = phi ptr [ %i.ir, %.lr.ph.i22.i38 ], [ %i.jd, %bb.ab ] ; 2 uses
  %i.jf = phi ptr [ %i.is, %.lr.ph.i22.i38 ], [ %i.jc, %bb.ab ] ; 2 uses
  %i.jg = phi ptr [ %i.iz, %.lr.ph.i22.i38 ], [ %i.jd, %bb.ab ] ; 3 uses
  %i.jh = add nsw i64 %.035.i24.i, -2             ; 2 uses
  %i.ji = load i32, ptr %i.iy, align 4, !tbaa !802, !noalias !10292
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %i.iy, align 4, !tbaa !802, !noalias !10292
  %i.jj = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 12 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jl = load i32, ptr %i.jj, align 4, !tbaa !802, !noalias !10292
  store i32 %i.jl, ptr %i.jk, align 4, !tbaa !802, !noalias !10292
  store i32 0, ptr %i.jj, align 4, !tbaa !802, !noalias !10292
  %i.jm = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 1024
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %bb.ac, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1, !prof !35

bb.ac:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !973, !noalias !10292 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1: ; preds = %bb.ac, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i
  %.pre46.i130.1 = phi ptr [ %.pre46.i130, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.jr, %bb.ac ] ; 2 uses
  %i.js = phi ptr [ %i.je, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.jr, %bb.ac ]
  %i.jt = phi ptr [ %i.jf, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.jq, %bb.ac ] ; 2 uses
  %i.ju = phi ptr [ %i.jn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.jr, %bb.ac ] ; 2 uses
  %.not.i26.i.1 = icmp eq i64 %i.jh, 0
  br i1 %.not.i26.i.1, label %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i, label %.lr.ph.i22.i38, !llvm.loop !10291

_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1, %.lr.ph.i22.i38.prol.loopexit
  %.pre46.i130.lcssa = phi ptr [ %.pre46.i130.lcssa.unr, %.lr.ph.i22.i38.prol.loopexit ], [ %.pre46.i130.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ]
  %.lcssa187 = phi ptr [ %.lcssa187.unr, %.lr.ph.i22.i38.prol.loopexit ], [ %i.jt, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ] ; 2 uses
  %.lcssa186 = phi ptr [ %.lcssa186.unr, %.lr.ph.i22.i38.prol.loopexit ], [ %i.ju, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i25.i.1 ] ; 2 uses
  %i.jv = sub nuw i64 %.01738.i, %i.id            ; 2 uses
  %.not.i39 = icmp eq i64 %i.jv, 0
  br i1 %.not.i39, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEmNS9_ISA_Lb0ELj0ELj0EmEE.exit, label %.lr.ph.i37, !llvm.loop !10295

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEmNS9_ISA_Lb0ELj0ELj0EmEE.exit: ; preds = %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %i.jw = phi ptr [ %.promoted41.i, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i ], [ %.lcssa187, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ] ; 7 uses
  %i.jx = phi ptr [ %.promoted.i36, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i ], [ %.lcssa186, %_ZN5boost9container6move_nIPSt4pairINS0_4test24movable_and_copyable_intES4_ENS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit27.i ] ; 4 uses
  %i.jy = ptrtoaddr ptr %i.jw to i64              ; 2 uses
  %i.jz = ptrtoaddr ptr %.sink.i27 to i64
  %.not.i40 = icmp eq ptr %i.jw, null
  br i1 %.not.i40, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66, label %.preheader.i41

.preheader.i41:                                   ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEmNS9_ISA_Lb0ELj0ELj0EmEE.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i42 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 2 uses
  %.031.i43 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = icmp ult ptr %.031.i43, %.sink.i27
  br i1 %i.ka, label %.lr.ph.preheader.i64, label %bb.ad

.lr.ph.preheader.i64:                             ; preds = %.preheader.i41
  %i.kb = add i64 %i.jy, 16
  %umax.i65 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 %i.kb)
  %reass.sub.neg = sub i64 %i.jy, %umax.i65
  %.neg = trunc i64 %reass.sub.neg to i32
  %.neg120 = shl i32 %.neg, 5
  %i.kc = and i32 %.neg120, -256
  %5 = add i32 %i.kc, 256
  %i.kd = add i32 %5, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i42 ; 2 uses
  store i32 %i.kd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.preheader.i64, %.preheader.i41
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i44 = phi i32 [ %i.kd, %.lr.ph.preheader.i64 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i42, %.preheader.i41 ] ; 3 uses
  %.not12.i45 = icmp eq ptr %i.jw, %.sink.i27
  br i1 %.not12.i45, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ke = load ptr, ptr %i.jw, align 8, !tbaa !973
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1024 ; 2 uses
  %.not3.i.i46 = icmp eq ptr %i.jx, %i.kf
  br i1 %.not3.i.i46, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52, label %.lr.ph.preheader.i.i47

.lr.ph.preheader.i.i47:                           ; preds = %bb.ae
  %i.kg = ptrtoaddr ptr %i.kf to i64
  %i.kh = ptrtoaddr ptr %i.jx to i64
  %reass.sub = sub i64 %i.kg, %i.kh
  %i.ki = add i64 %reass.sub, 17179869176
  %sh.diff.i.i49 = lshr i64 %i.ki, 2
  %tr.sh.diff.i.i50 = trunc i64 %sh.diff.i.i49 to i32
  %tr.sh.diff.i.not.i51 = and i32 %tr.sh.diff.i.i50, -2
  %i.kj = xor i32 %tr.sh.diff.i.not.i51, -2
  %i.kk = add i32 %i.kj, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i44 ; 2 uses
  store i32 %i.kk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52: ; preds = %.lr.ph.preheader.i.i47, %bb.ae
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i53 = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i44, %bb.ae ], [ %i.kk, %.lr.ph.preheader.i.i47 ]
  %i.kl = load ptr, ptr %.sink.i27, align 8, !tbaa !973 ; 2 uses
  %.not3.i14.i54 = icmp eq ptr %i.kl, %.sink1.i26
  br i1 %.not3.i14.i54, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i55

bb.af:                                            ; preds = %bb.ad
  %.not3.i20.i63 = icmp eq ptr %i.jx, %.sink1.i26
  br i1 %.not3.i20.i63, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i55

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i55: ; preds = %bb.af, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52
  %.sink46.i57 = phi ptr [ %i.kl, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52 ], [ %i.jx, %bb.af ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i58 = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i53, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i44, %bb.af ]
  %i.km = ptrtoaddr ptr %.sink1.i26 to i64
  %i.kn = ptrtoaddr ptr %.sink46.i57 to i64
  %reass.sub34.i59 = add i64 %i.km, 17179869176
  %i.ko = sub i64 %reass.sub34.i59, %i.kn
  %sh.diff.i23.i60 = lshr i64 %i.ko, 2
  %tr.sh.diff.i24.i61 = trunc i64 %sh.diff.i23.i60 to i32
  %tr.sh.diff.i24.not.i62 = and i32 %tr.sh.diff.i24.i61, -2
  %i.kp = xor i32 %tr.sh.diff.i24.not.i62, -2
  %i.kq = add i32 %i.kp, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i58
  store i32 %i.kq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i55, %bb.af, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i52, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEmNS9_ISA_Lb0ELj0ELj0EmEE.exit
  %i.kr = icmp ult ptr %i.jw, %.sink.i27
  br i1 %i.kr, label %.lr.ph.i.i67, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69

.lr.ph.i.i67:                                     ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66, %.lr.ph.i.i67
  %.06.i.i68.pn = phi ptr [ %.06.i.i68, %.lr.ph.i.i67 ], [ %i.jw, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66 ]
  %.06.i.i68 = getelementptr inbounds nuw i8, ptr %.06.i.i68.pn, i64 8 ; 3 uses
  %i.ks = load ptr, ptr %.06.i.i68, align 8, !tbaa !973
  tail call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef 1024) #23
  %i.kt = icmp ult ptr %.06.i.i68, %.sink.i27
  br i1 %i.kt, label %.lr.ph.i.i67, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69.loopexit, !llvm.loop !10240

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69.loopexit: ; preds = %.lr.ph.i.i67
  %.pre = load i64, ptr %i.x, align 8, !tbaa !1907
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69: ; preds = %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69.loopexit, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66
  %i.ku = phi i64 [ %.pre, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69.loopexit ], [ %i.y, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit66 ]
  %i.kv = sub i64 %i.ku, %.0.i
  store i64 %i.kv, ptr %i.x, align 8, !tbaa !1907
  %i.kw = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !10296 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i.i70, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit, label %.split.i.i.i71

.split.i.i.i71:                                   ; preds = %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69
  %i.kx = load i64, ptr %i.z, align 8, !tbaa !1905, !noalias !10303
  %i.ky = add i64 %i.kx, %i.as
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split: ; preds = %.split.i.i, %.split.i.i.i21, %.split.i.i.i71
  %.sink179 = phi i64 [ %i.ky, %.split.i.i.i71 ], [ %i.fw, %.split.i.i.i21 ], [ %i.ae, %.split.i.i ] ; 2 uses
  %.sink = phi ptr [ %i.kw, %.split.i.i.i71 ], [ %i.fv, %.split.i.i.i21 ], [ %i.ad, %.split.i.i ]
  %i.kz = lshr i64 %.sink179, 7
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.kz ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !973, !noalias !3115
  %i.lc = and i64 %.sink179, 127
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lc
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit, %bb.c
  %.sink1.i22.sink = phi ptr [ null, %bb.c ], [ null, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit ], [ null, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69 ], [ %i.ld, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split ]
  %.sink.i23.sink = phi ptr [ null, %bb.c ], [ null, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit ], [ null, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit69 ], [ %i.la, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE3endEv.exit.sink.split ]
  store ptr %.sink1.i22.sink, ptr %0, align 8, !tbaa !1931
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i23.sink, ptr %i.le, align 8, !tbaa !1934
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyIS7_PKS5_EEEENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1895
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 127
  %i.e = xor i64 %i.d, 127                        ; 2 uses
  %i.f = select i1 %.not.i.i, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESD_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1907, !noalias !10304
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1905
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !10307 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit, label %.split.i

.split.i:                                         ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit
  %i.m = lshr i64 %i.k, 7
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !973, !noalias !10307
  %i.p = and i64 %i.k, 127
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  br label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit, %.split.i
  %i.r = phi ptr [ %i.q, %.split.i ], [ null, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit ] ; 7 uses
  %.sink = phi ptr [ %i.n, %.split.i ], [ null, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !1931
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.s, align 8, !tbaa !1934
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS7_PKS5_EEEEvNS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !35

bb.e:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit
  %i.t = load ptr, ptr %.sink, align 8, !tbaa !973
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub nsw i64 128, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.y) ; 5 uses
  %.not17.i.i.i.i = icmp eq i64 %i.w, 1024
  br i1 %.not17.i.i.i.i, label %.loopexit37.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.aa = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.aa, ptr %i.r, align 4, !tbaa !802
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !802
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !802
  %i.af = add i32 %i.ab, 2
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ai = add nsw i64 %i.z, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa13.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %i.aj = icmp eq i64 %i.z, 1
  br i1 %i.aj, label %.loopexit37.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ak = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !802
  store i32 %i.ak, ptr %.01618.i.i.i.i, align 4, !tbaa !802
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
end_hunk_1
begin_hunk_2_@_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyIS7_NS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEEEEENSC_ISD_Lb0ELj0ELj0EmEEmT_:bb.a

.lr.ph.i.preheader.i30.i.i.preheader:             ; preds = %.loopexit38.i.i
  %.pre.i31.i.i.pre = load ptr, ptr %.promoted46.i.i, align 8, !tbaa !973, !noalias !11947
  br label %.lr.ph.i.preheader.i30.i.i

.lr.ph.i.preheader.i30.i.i:                       ; preds = %.lr.ph.i.preheader.i30.i.i.preheader, %.unr-lcssa
  %.pre.i31.i.i = phi ptr [ %.pre.i31.i.i12.lcssa, %.unr-lcssa ], [ %.pre.i31.i.i.pre, %.lr.ph.i.preheader.i30.i.i.preheader ] ; 3 uses
  %i.cc = phi ptr [ %.lcssa28, %.unr-lcssa ], [ %.promoted46.i.i, %.lr.ph.i.preheader.i30.i.i.preheader ] ; 3 uses
  %.lcssa45.i.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.promoted.i.i, %.lr.ph.i.preheader.i30.i.i.preheader ] ; 4 uses
  %.044.i.i = phi ptr [ %i.cd, %.unr-lcssa ], [ %.sink, %.lr.ph.i.preheader.i30.i.i.preheader ]
  %.02643.i.i = phi i64 [ %i.ef, %.unr-lcssa ], [ %i.cb, %.lr.ph.i.preheader.i30.i.i.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8 ; 2 uses
  %i.ce = tail call i64 @llvm.umin.i64(i64 %.02643.i.i, i64 128) ; 4 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !973 ; 5 uses
  %xtraiter33 = and i64 %i.ce, 1
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %.lr.ph.i.i32.i.i.prol.loopexit, label %.lr.ph.i.i32.i.i.prol

.lr.ph.i.i32.i.i.prol:                            ; preds = %.lr.ph.i.preheader.i30.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  %i.cg = load i32, ptr %.lcssa45.i.i, align 4, !tbaa !802, !noalias !11947
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !802, !noalias !11947
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa45.i.i, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !802, !noalias !11947
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !802, !noalias !11947
  %i.cl = add i32 %i.ch, 2
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.cm = getelementptr inbounds nuw i8, ptr %.lcssa45.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i31.i.i, i64 1024
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %bb.i, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol, !prof !35

bb.i:                                             ; preds = %.lr.ph.i.i32.i.i.prol
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !973, !noalias !11947 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol: ; preds = %bb.i, %.lr.ph.i.i32.i.i.prol
  %i.cr = phi ptr [ %.pre.i31.i.i, %.lr.ph.i.i32.i.i.prol ], [ %i.cq, %bb.i ] ; 2 uses
  %i.cs = phi ptr [ %i.cc, %.lr.ph.i.i32.i.i.prol ], [ %i.cp, %bb.i ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %.lr.ph.i.i32.i.i.prol ], [ %i.cq, %bb.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cv = add nsw i64 %i.ce, -1
  br label %.lr.ph.i.i32.i.i.prol.loopexit

.lr.ph.i.i32.i.i.prol.loopexit:                   ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol, %.lr.ph.i.preheader.i30.i.i
  %.pre.i31.i.i12.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader.i30.i.i ], [ %i.cr, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.lcssa28.unr = phi ptr [ poison, %.lr.ph.i.preheader.i30.i.i ], [ %i.cs, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader.i30.i.i ], [ %i.ct, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.unr35 = phi ptr [ %.pre.i31.i.i, %.lr.ph.i.preheader.i30.i.i ], [ %i.cr, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ] ; 2 uses
  %.unr36 = phi ptr [ %i.cc, %.lr.ph.i.preheader.i30.i.i ], [ %i.cs, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.unr37 = phi ptr [ %.lcssa45.i.i, %.lr.ph.i.preheader.i30.i.i ], [ %i.ct, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.015.i.i33.i.i.unr = phi i64 [ %i.ce, %.lr.ph.i.preheader.i30.i.i ], [ %i.cv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %.01214.i.i34.i.i.unr = phi ptr [ %i.cf, %.lr.ph.i.preheader.i30.i.i ], [ %i.cu, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.prol ]
  %i.cw = icmp eq i64 %.02643.i.i, 1
  br i1 %i.cw, label %.unr-lcssa, label %.lr.ph.i.i32.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %.lr.ph.i.i32.i.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1
  %.pre.i31.i.i13 = phi ptr [ %.pre.i31.i.i12.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.unr35, %.lr.ph.i.i32.i.i.prol.loopexit ]
  %i.cx = phi ptr [ %i.ea, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.unr35, %.lr.ph.i.i32.i.i.prol.loopexit ] ; 2 uses
  %i.cy = phi ptr [ %i.eb, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.unr36, %.lr.ph.i.i32.i.i.prol.loopexit ] ; 2 uses
  %i.cz = phi ptr [ %i.ec, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.unr37, %.lr.ph.i.i32.i.i.prol.loopexit ] ; 3 uses
  %.015.i.i33.i.i = phi i64 [ %i.ee, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.015.i.i33.i.i.unr, %.lr.ph.i.i32.i.i.prol.loopexit ]
  %.01214.i.i34.i.i = phi ptr [ %i.ed, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ], [ %.01214.i.i34.i.i.unr, %.lr.ph.i.i32.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i34.i.i) ]
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !802, !noalias !11947
  store i32 %i.da, ptr %.01214.i.i34.i.i, align 4, !tbaa !802, !noalias !11947
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i.i34.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !802, !noalias !11947
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !802, !noalias !11947
  %i.df = add i32 %i.db, 2
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 1024
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %bb.j, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i, !prof !35

bb.j:                                             ; preds = %.lr.ph.i.i32.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !973, !noalias !11947 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i: ; preds = %bb.j, %.lr.ph.i.i32.i.i
  %.pre.i31.i.i12 = phi ptr [ %.pre.i31.i.i13, %.lr.ph.i.i32.i.i ], [ %i.dk, %bb.j ]
  %i.dl = phi ptr [ %i.cx, %.lr.ph.i.i32.i.i ], [ %i.dk, %bb.j ] ; 2 uses
  %i.dm = phi ptr [ %i.cy, %.lr.ph.i.i32.i.i ], [ %i.dj, %bb.j ] ; 2 uses
  %i.dn = phi ptr [ %i.dg, %.lr.ph.i.i32.i.i ], [ %i.dk, %bb.j ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01214.i.i34.i.i, i64 8
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !802, !noalias !11947
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !802, !noalias !11947
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i34.i.i, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !802, !noalias !11947
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !802, !noalias !11947
  %i.du = add i32 %i.dq, 2
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !11947
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 1024
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %bb.k, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1, !prof !35

bb.k:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !973, !noalias !11947 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1: ; preds = %bb.k, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i
  %.pre.i31.i.i12.1 = phi ptr [ %.pre.i31.i.i12, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i ], [ %i.dz, %bb.k ] ; 2 uses
  %i.ea = phi ptr [ %i.dl, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i ], [ %i.dz, %bb.k ]
  %i.eb = phi ptr [ %i.dm, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i ], [ %i.dy, %bb.k ] ; 2 uses
  %i.ec = phi ptr [ %i.dv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i ], [ %i.dz, %bb.k ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i34.i.i, i64 16
  %i.ee = add nsw i64 %.015.i.i33.i.i, -2         ; 2 uses
  %.not.i.i36.i.i.1 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i36.i.i.1, label %.unr-lcssa, label %.lr.ph.i.i32.i.i, !llvm.loop !11946

.unr-lcssa:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1, %.lr.ph.i.i32.i.i.prol.loopexit
  %.pre.i31.i.i12.lcssa = phi ptr [ %.pre.i31.i.i12.lcssa.unr, %.lr.ph.i.i32.i.i.prol.loopexit ], [ %.pre.i31.i.i12.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ]
  %.lcssa28 = phi ptr [ %.lcssa28.unr, %.lr.ph.i.i32.i.i.prol.loopexit ], [ %i.eb, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i32.i.i.prol.loopexit ], [ %i.ec, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb1ELj0ELj0EmEppEv.exit.i.i35.i.i.1 ]
  %i.ef = sub nuw i64 %.02643.i.i, %i.ce          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS7_NS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEEEEEvNSC_ISD_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.preheader.i30.i.i, !llvm.loop !11950

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyIS7_NS0_14deque_iteratorIPS5_Lb1ELj0ELj0EmEEEEEEvNSC_ISD_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.unr-lcssa, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit, %.loopexit38.i.i
  %i.eg = add i64 %i.k, %2
  store i64 %i.eg, ptr %i.b, align 8, !tbaa !1907
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE17priv_erase_last_nEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1907 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1905
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1895, !noalias !11951 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.thread, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit: ; preds = %bb.b
  %i.f = lshr i64 %i.b, 7
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !973, !noalias !11951
  %i.i = and i64 %i.b, 127
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = sub nsw i64 0, %1
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %.preheader.i, label %bb.c

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.thread: ; preds = %bb.b
  %.not.i.i.i29 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !973, !noalias !11954
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = sub nsw i64 %i.p, %1                     ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.q, 128
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k
  br label %.preheader.i

bb.e:                                             ; preds = %bb.c
  %i.s = icmp sgt i64 %i.q, 0
  %i.t = lshr i64 %i.q, 7                         ; 2 uses
  %i.u = or disjoint i64 %i.t, -144115188075855872
  %i.v = select i1 %i.s, i64 %i.t, i64 %i.u       ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !973, !noalias !11954
  %i.y = shl nsw i64 %i.v, 7
  %i.z = sub nsw i64 %i.q, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.z
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit, %bb.e, %bb.d
  %.sroa.0.0.i17 = phi ptr [ %i.r, %bb.d ], [ %i.aa, %bb.e ], [ %i.j, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit ] ; 4 uses
  %.sroa.6.1.i15 = phi ptr [ %i.g, %bb.d ], [ %i.w, %bb.e ], [ %i.g, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit ] ; 6 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4 ; 2 uses
  %.031.i = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i15, i64 8
  %i.ab = icmp ult ptr %.031.i, %i.g
  br i1 %i.ab, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ac = ptrtoaddr ptr %.sroa.6.1.i15 to i64     ; 2 uses
  %i.ad = ptrtoaddr ptr %i.g to i64
  %i.ae = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, -256
  %i.af = add i64 %i.ac, 16
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.af)
  %reass.sub.a = sub i64 %umax.i, %i.ac
  %i.ag = trunc i64 %reass.sub.a to i32
  %i.ah = shl i32 %i.ag, 5
  %2 = add i32 %i.ah, -288
  %i.ai = and i32 %2, -256
  %i.aj = sub i32 %i.ae, %i.ai                    ; 2 uses
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.preheader.i, %.preheader.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i = phi i32 [ %i.aj, %.lr.ph.preheader.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.preheader.i ] ; 3 uses
  %.not12.i = icmp eq ptr %.sroa.6.1.i15, %i.g
  br i1 %.not12.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.6.1.i15, align 8, !tbaa !973
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1024 ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.0.0.i17, %i.al
  br i1 %.not3.i.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = ptrtoaddr ptr %.sroa.0.0.i17 to i64
  %reass.sub21 = sub i64 %i.am, %i.an
  %i.ao = add i64 %reass.sub21, 17179869176
  %sh.diff.i.i = lshr i64 %i.ao, 2
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %tr.sh.diff.i.not.i = and i32 %tr.sh.diff.i.i, -2
  %i.ap = xor i32 %tr.sh.diff.i.not.i, -2
  %i.aq = add i32 %i.ap, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i ; 2 uses
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.g
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i, %bb.g ], [ %i.aq, %.lr.ph.preheader.i.i ]
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !973 ; 2 uses
  %.not3.i14.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not3.i14.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i

bb.h:                                             ; preds = %bb.f
  %.not3.i20.i = icmp eq ptr %.sroa.0.0.i17, %i.j
  br i1 %.not3.i20.i, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i: ; preds = %bb.h, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i
  %.sink46.i = phi ptr [ %i.ar, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i ], [ %.sroa.0.0.i17, %bb.h ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i16.i, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.i, %bb.h ]
  %i.as = ptrtoaddr ptr %i.j to i64
  %i.at = ptrtoaddr ptr %.sink46.i to i64
  %reass.sub34.i = add i64 %i.as, 17179869176
  %i.au = sub i64 %reass.sub34.i, %i.at
  %sh.diff.i23.i = lshr i64 %i.au, 2
  %tr.sh.diff.i24.i = trunc i64 %sh.diff.i23.i to i32
  %tr.sh.diff.i24.not.i = and i32 %tr.sh.diff.i24.i, -2
  %i.av = xor i32 %tr.sh.diff.i24.not.i, -2
  %i.aw = add i32 %i.av, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i22.sink.i
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit: ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit.i, %bb.h, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeEPS5_S9_.exit19.sink.split.i
  %i.ax = icmp ult ptr %.sroa.6.1.i15, %i.g
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit, %.lr.ph.i.i
  %.06.i.i.pn = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.sroa.6.1.i15, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.pn, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %.06.i.i, align 8, !tbaa !973
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef 1024) #23
  %i.az = icmp ult ptr %.06.i.i, %i.g
  br i1 %i.az, label %.lr.ph.i.i, label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit.loopexit, !llvm.loop !10240

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1907
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit

_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit: ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.thread, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit.loopexit, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit
  %i.ba = phi i64 [ %.pre, %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit.loopexit ], [ %i.b, %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE18prot_destroy_rangeENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEESB_.exit ], [ %i.b, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit.thread ]
  %i.bb = sub i64 %i.ba, %1
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !1907
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS6_SC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE7emplaceIJRKS5_EEENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEENSC_ISD_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1918 ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.b, null
  br i1 %.not.i.i7, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEE.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1916
  %i.d = load ptr, ptr %1, align 8, !tbaa !1895
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 4
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !973
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %i.h
  br label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEE.exit

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1905 ; 2 uses
  %i.q = sub i64 %.0.i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1907
  %i.t = icmp eq i64 %.0.i.i, %i.s
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEE.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !1895   ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i.i8, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %.0.i.i, 127                     ; 2 uses
  %.not11.i.i = icmp eq i64 %i.v, 127
  br i1 %.not11.i.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i, !prof !35

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i: ; preds = %bb.d
  %i.w = lshr i64 %.0.i.i, 7
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !973  ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i, label %bb.e, !prof !11957

bb.e:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !802
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !802
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !802
  %i.af = add i32 %i.ab, 2
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ag = add i64 %.0.i.i, 1
  store i64 %i.ag, ptr %i.r, align 8, !tbaa !1907
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i: ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyIS7_JRKS5_EEEEENS0_14deque_iteratorIPS5_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.e, %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i
  %i.ah = load ptr, ptr %1, align 8, !tbaa !1895, !noalias !11958 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.split5.i.i, label %.split.i.i

.split5.i.i:                                      ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE12prot_back_itEv.exit

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implISt4pairINS0_4test24movable_and_copyable_intES4_ENS3_16simple_allocatorIS5_EELb0EvE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !1907, !noalias !11963
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 7
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !973, !noalias !11958
  %i.an = and i64 %i.aj, 127
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  store ptr %i.ao, ptr %0, align 8, !tbaa !1931
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !1934
  br label %_ZN5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE12prot_back_itEv.exit

bb.f:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPS6_Lb1ELj0ELj0EmEE.exit
  %.not = icmp eq i64 %.0.i.i, %i.p
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = and i64 %.0.i.i, 127                    ; 2 uses
  %.not.i.i9 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i9, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE26prot_push_front_simple_posEv.exit.thread.i, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE26prot_push_front_simple_posEv.exit.i, !prof !35

_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE26prot_push_front_simple_posEv.exit.i: ; preds = %bb.g
  %i.ar = load ptr, ptr %1, align 8, !tbaa !1895
  %i.as = lshr i64 %.0.i.i, 7
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !973
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %i.aq ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 -8     ; 2 uses
  %.not.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i10, label %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE26prot_push_front_simple_posEv.exit.thread.i, label %bb.h, !prof !11957

bb.h:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_4test16simple_allocatorISt4pairINS2_24movable_and_copyable_intES5_EEENS0_9deque_optILm0ELm0EmLb0EEELb0EE26prot_push_front_simple_posEv.exit.i
  %i.ax = load i32, ptr %3, align 4, !tbaa !802
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !802
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.az = getelementptr i8, ptr %i.av, i64 -4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !802
end_hunk_2
