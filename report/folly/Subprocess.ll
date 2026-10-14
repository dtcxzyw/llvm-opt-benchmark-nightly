Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Subprocess?download=true
inline.NumInlined: 2346
inline.NumDeleted: 1250
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5folly11toAppendFitIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_:bb.a
  %i.ad = load i8, ptr %0, align 1, !tbaa !39
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !39
  br label %_ZN5folly8toAppendIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 dereferenceable(45) %0, i64 %i.q, i1 false)
  br label %_ZN5folly8toAppendIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(45) %0, i64 noundef %i.q)
  br label %_ZN5folly8toAppendIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit

_ZN5folly8toAppendIJA45_ciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXaagesZT_Li3Esr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.v, ptr %i.r, align 8, !tbaa !43
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i8 0, ptr %i.af, align 1, !tbaa !39
  %i.ag = load i32, ptr %1, align 4, !tbaa !33
  tail call void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %i.ag, ptr noundef nonnull %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE13insert_uniqueENS0_12vec_iteratorIPS4_Lb1EEEOS4_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !58     ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !58, !noalias !349 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61, !noalias !349 ; 4 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.d ; 9 uses
  %i.f = icmp eq ptr %i.a, %i.e
  br i1 %i.f, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !33     ; 3 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !33
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.critedge.i, label %.lr.ph.i.i15.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.j = icmp eq ptr %i.a, %i.b
  br i1 %i.j, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 2 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !33     ; 4 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.m, %i.l
  br i1 %i.o, label %bb.e, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread19

bb.e:                                             ; preds = %bb.d
  %.not12.i.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.q, %i.p
  %i.s = ashr exact i64 %i.r, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.t = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.f ] ; 2 uses
  %i.u = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !33, !noalias !350
  %i.x = icmp slt i32 %i.w, %i.m                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.neg.i.i.i = xor i64 %i.u, -1
  %i.z = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.aa = select i1 %i.x, ptr %i.y, ptr %i.t      ; 2 uses
  %.1.i.i.i = select i1 %i.x, i64 %i.z, i64 %i.u  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i, label %bb.f, !llvm.loop !1

_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.b, %bb.e ], [ %i.aa, %bb.f ] ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %.split

.split:                                           ; preds = %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !33
  %i.ae = icmp slt i32 %i.m, %i.ad
  br i1 %i.ae, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread19

.lr.ph.i.i15.i:                                   ; preds = %bb.b
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.e to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 3
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i15.i
  %i.aj = phi ptr [ %i.a, %.lr.ph.i.i15.i ], [ %i.aq, %bb.g ] ; 2 uses
  %.013.i.i16.i = phi i64 [ %i.ai, %.lr.ph.i.i15.i ], [ %.1.i.i18.i, %bb.g ] ; 2 uses
  %i.ak = lshr i64 %.013.i.i16.i, 1               ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33, !noalias !351
  %i.an = icmp slt i32 %i.am, %i.g                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.neg.i.i17.i = xor i64 %i.ak, -1
  %i.ap = add i64 %.013.i.i16.i, %.neg.i.i17.i
  %i.aq = select i1 %i.an, ptr %i.ao, ptr %i.aj   ; 6 uses
  %.1.i.i18.i = select i1 %i.an, i64 %i.ap, i64 %i.ak ; 2 uses
  %.not.i.i19.i = icmp eq i64 %.1.i.i18.i, 0
  br i1 %.not.i.i19.i, label %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i20.i, label %bb.g, !llvm.loop !1

_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i20.i: ; preds = %bb.g
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit

_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i20.i
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.at = icmp slt i32 %i.g, %i.as
  br i1 %i.at, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread19

_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i20.i, %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i, %bb.c, %.critedge.i, %.split, %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit
  %.sroa.08.018 = phi ptr [ %i.ab, %.split ], [ %i.aq, %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit ], [ %i.aq, %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i20.i ], [ %i.ab, %_ZNK5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE16priv_lower_boundINS0_12vec_iteratorIPS4_Lb1EEEiEET_SG_SG_RKT0_.exit.i.i ], [ %i.a, %bb.c ], [ %i.a, %.critedge.i ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !66, !noalias !352
  %.not.i = icmp eq i64 %i.av, %i.d
  br i1 %.not.i, label %bb.k, label %bb.h, !prof !46

bb.h:                                             ; preds = %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread
  %i.aw = icmp eq ptr %i.e, %.sroa.08.018
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %3, align 4, !tbaa !33, !noalias !352
  store i32 %i.ax, ptr %i.e, align 4, !tbaa !63, !noalias !352
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33, !noalias !352
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !64, !noalias !352
  %i.bb = add i64 %i.d, 1
  store i64 %i.bb, ptr %i.c, align 8, !tbaa !61, !noalias !352
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_expand_forwardINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 3 uses
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !33, !noalias !352
  store <2 x i32> %i.bd, ptr %i.e, align 4, !tbaa !33, !noalias !352
  %i.be = add i64 %i.d, 1
  store i64 %i.be, ptr %i.c, align 8, !tbaa !61, !noalias !352
  %.not8.i = icmp eq ptr %.sroa.08.018, %i.bc
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIPNS0_3dtl4pairIiiEES5_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.010.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.e, %bb.j ] ; 2 uses
  %.079.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.bc, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.079.i, i64 -8 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.010.i, i64 -8 ; 2 uses
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !33, !noalias !352
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !63, !noalias !352
  %i.bi = getelementptr inbounds i8, ptr %.079.i, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !33, !noalias !352
  %i.bk = getelementptr inbounds i8, ptr %.010.i, i64 -4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !64, !noalias !352
  %.not.i3 = icmp eq ptr %.sroa.08.018, %i.bf
  br i1 %.not.i3, label %_ZN5boost9container13move_backwardIPNS0_3dtl4pairIiiEES5_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i, !llvm.loop !346

_ZN5boost9container13move_backwardIPNS0_3dtl4pairIiiEES5_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %bb.j
  %i.bl = load i32, ptr %3, align 4, !tbaa !33, !noalias !352
  store i32 %i.bl, ptr %.sroa.08.018, align 4, !tbaa !63, !noalias !352
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33, !noalias !352
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 4
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !64, !noalias !352
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_expand_forwardINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_expand_forwardINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %bb.i, %_ZN5boost9container13move_backwardIPNS0_3dtl4pairIiiEES5_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  store ptr %.sroa.08.018, ptr %0, align 8, !tbaa !68, !alias.scope !352
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE25priv_insert_forward_rangeINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSC_mT_.exit

bb.k:                                             ; preds = %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread
  tail call void @_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE37priv_insert_forward_range_no_capacityINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.sroa.08.018, i64 noundef 1, ptr nonnull %3)
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE25priv_insert_forward_rangeINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSC_mT_.exit

_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread19: ; preds = %bb.d, %.split, %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit
  %.sroa.08.022 = phi ptr [ %i.ab, %.split ], [ %i.aq, %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit ], [ %i.k, %bb.d ]
  %i.bp = ptrtoint ptr %.sroa.08.022 to i64
  %i.bq = ptrtoint ptr %i.b to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.b, i64 %i.br
  store ptr %i.bs, ptr %0, align 8, !tbaa !68, !alias.scope !353
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE25priv_insert_forward_rangeINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSC_mT_.exit

_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE25priv_insert_forward_rangeINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSC_mT_.exit: ; preds = %bb.k, %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_expand_forwardINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE.exit, %_ZN5boost9container3dtl9flat_treeINS1_4pairIiiEENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE26priv_insert_unique_prepareENS0_12vec_iteratorIPS4_Lb1EEERKiRNSB_18insert_commit_dataE.exit.thread19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE37priv_insert_forward_range_no_capacityINS2_20insert_emplace_proxyIS6_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.46") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = ptrtoaddr ptr %2 to i64                    ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !66   ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.31) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container13new_allocatorINS0_3dtl4pairIiiEEE8allocateEm.exit, !prof !46

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.31) #49
  unreachable

_ZN5boost9container13new_allocatorINS0_3dtl4pairIiiEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_3dtl4pairIiiEEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #54 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !58     ; 9 uses
  %6 = ptrtoaddr ptr %i.t to i64                  ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !61   ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container13new_allocatorINS0_3dtl4pairIiiEEE8allocateEm.exit
  %i.w = add i64 %5, -8
  %i.x = sub i64 %i.w, %6                         ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad
  %next.gep14 = getelementptr i8, ptr %i.t, i64 %i.ae
  %next.gep15 = getelementptr i8, ptr %i.s, i64 %i.ad
  %next.gep16 = getelementptr i8, ptr %i.s, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.vec18 = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !33
  store <4 x i32> %wide.vec, ptr %next.gep15, align 4, !tbaa !33
  store <4 x i32> %wide.vec18, ptr %next.gep16, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader47

.lr.ph.i.i.i.preheader47:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.018.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader47, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader47 ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader47 ] ; 3 uses
  %i.ag = load i32, ptr %.018.i.i.i, align 4, !tbaa !33
  store i32 %i.ag, ptr %.01517.i.i.i, align 4, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !355

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container13new_allocatorINS0_3dtl4pairIiiEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container13new_allocatorINS0_3dtl4pairIiiEEE8allocateEm.exit ], [ %i.ac, %middle.block ], [ %i.al, %.lr.ph.i.i.i ] ; 3 uses
  %i.am = load <2 x i32>, ptr %4, align 4, !tbaa !33
  store <2 x i32> %i.am, ptr %.015.lcssa.i.i.i, align 4, !tbaa !33
  %.not16.i17.i.i = icmp eq ptr %2, %i.v
  br i1 %.not16.i17.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i18.preheader.i.i

.lr.ph.i18.preheader.i.i:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %i.an = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.ao = shl i64 %i.u, 3
  %i.ap = add i64 %i.ao, %6
  %i.aq = add i64 %i.ap, -8
  %i.ar = sub i64 %i.aq, %5                       ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check25 = icmp ult i64 %i.ar, 200
  br i1 %min.iters.check25, label %.lr.ph.i18.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i18.preheader.i.i
  %i.au = shl i64 %3, 3
  %i.av = shl i64 %i.u, 3
  %i.aw = add i64 %i.av, %6
  %i.ax = add i64 %i.aw, -8
  %i.ay = sub i64 %i.ax, %5
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.au
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr i8, ptr %2, i64 %i.az
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %bound0 = icmp ult ptr %i.an, %i.be
  %bound1 = icmp ult ptr %2, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i18.i.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck
  %n.vec27 = and i64 %i.at, 4611686018427387900   ; 3 uses
  %i.bf = shl i64 %n.vec27, 3                     ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next42, %vector.body28 ] ; 2 uses
  %i.bi = shl i64 %index29, 3                     ; 3 uses
  %i.bj = or disjoint i64 %i.bi, 16               ; 2 uses
  %next.gep30 = getelementptr i8, ptr %2, i64 %i.bi
  %next.gep31 = getelementptr i8, ptr %2, i64 %i.bj
  %next.gep32 = getelementptr i8, ptr %i.an, i64 %i.bi
  %next.gep33 = getelementptr i8, ptr %i.an, i64 %i.bj
  %wide.vec34 = load <4 x i32>, ptr %next.gep30, align 4, !tbaa !33, !alias.scope !361
  %wide.vec37 = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !33, !alias.scope !361
  store <4 x i32> %wide.vec34, ptr %next.gep32, align 4, !tbaa !33, !alias.scope !362, !noalias !361
  store <4 x i32> %wide.vec37, ptr %next.gep33, align 4, !tbaa !33, !alias.scope !362, !noalias !361
  %index.next42 = add nuw i64 %index29, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next42, %n.vec27
  br i1 %i.bk, label %middle.block43, label %vector.body28, !llvm.loop !359

middle.block43:                                   ; preds = %vector.body28
  %cmp.n44 = icmp eq i64 %i.at, %n.vec27
  br i1 %cmp.n44, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i18.i.i.preheader

.lr.ph.i18.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i18.preheader.i.i, %middle.block43
  %.018.i19.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i18.preheader.i.i ], [ %i.bg, %middle.block43 ]
  %.01517.i20.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i18.preheader.i.i ], [ %i.bh, %middle.block43 ]
  br label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %.lr.ph.i18.i.i.preheader, %.lr.ph.i18.i.i
  %.018.i19.i.i = phi ptr [ %i.bm, %.lr.ph.i18.i.i ], [ %.018.i19.i.i.ph, %.lr.ph.i18.i.i.preheader ] ; 2 uses
  %.01517.i20.i.i = phi ptr [ %i.bn, %.lr.ph.i18.i.i ], [ %.01517.i20.i.i.ph, %.lr.ph.i18.i.i.preheader ] ; 2 uses
  %i.bl = load <2 x i32>, ptr %.018.i19.i.i, align 4, !tbaa !33
  store <2 x i32> %i.bl, ptr %.01517.i20.i.i, align 4, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i19.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i20.i.i, i64 8
  %.not.i21.i.i = icmp eq ptr %i.bm, %i.v
  br i1 %.not.i21.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i18.i.i, !llvm.loop !360

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i18.i.i, %middle.block43, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_new_allocationINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mSB_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !66
  %i.bp = shl i64 %i.bo, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bp) #48
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_new_allocationINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mSB_mT_.exit

_ZN5boost9container6vectorINS0_3dtl4pairIiiEENS0_13new_allocatorIS4_EEvE40priv_insert_forward_range_new_allocationINS2_20insert_emplace_proxyIS6_JS4_EEEEEvPS4_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.g
  %i.bq = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_3dtl4pairIiiEEEEPS5_S7_NS3_20insert_emplace_proxyIS6_JS5_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %bb.g ]
  %i.br = ptrtoint ptr %2 to i64
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = sub i64 %i.br, %i.bs
  store ptr %i.s, ptr %1, align 8, !tbaa !72
  %i.bu = add i64 %i.bq, %3
  store i64 %i.bu, ptr %i.e, align 8, !tbaa !69
  store i64 %i.p, ptr %i.b, align 8, !tbaa !66
  %i.bv = getelementptr inbounds i8, ptr %i.s, i64 %i.bt
  store ptr %i.bv, ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !74
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !55
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #49
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #48
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.32, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(736) ptr @_ZN5folly10Subprocess7Options16setLinuxCGroupFdEiSt10shared_ptrIiE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(736) %0, i32 noundef %1, ptr nofree noundef align 8 captures(none) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !112
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #48 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.34)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #49
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #48
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load <2 x ptr>, ptr %2, align 8, !tbaa !113
  %i.l = load ptr, ptr %2, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 %1, ptr %i.a, align 8, !tbaa !115
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !116  ; 8 uses
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly10Subprocess7Options12AttrWithMetaIiED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !119
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #48, !call_target !124, !inline_history !363
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #48, !call_target !126, !inline_history !363
  br label %_ZN5folly10Subprocess7Options12AttrWithMetaIiED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %_ZN5folly10Subprocess7Options12AttrWithMetaIiED2Ev.exit, !prof !46

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #48
  br label %_ZN5folly10Subprocess7Options12AttrWithMetaIiED2Ev.exit

_ZN5folly10Subprocess7Options12AttrWithMetaIiED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !127
end_hunk_0
