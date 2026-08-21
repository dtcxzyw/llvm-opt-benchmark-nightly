Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/deque_test?download=true
inline.NumInlined: 21722
inline.NumDeleted: 3892
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 1494
loop-unroll.NumUnrolled: 1710
begin_hunk_0_@_ZNSt5dequeIiSaIiEE6insertESt15_Deque_iteratorIiRKiPS3_EmS4_:bb.a
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.p                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2685)
  store ptr %i.q, ptr %5, align 8, !tbaa !219, !alias.scope !2685
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !2685 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !230, !alias.scope !2685
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !231, !alias.scope !2685
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.i, ptr %i.ah, align 8, !tbaa !196, !alias.scope !2685
  call void @_ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !219, !noalias !2688 ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !196, !noalias !2688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load <2 x ptr>, ptr %i.c, align 8, !tbaa !49, !noalias !2688
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !230, !noalias !2688
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !49, !alias.scope !2691
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !196, !alias.scope !2691
  %i.ap = ptrtoint ptr %i.ai to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, %i.ac                ; 5 uses
  %i.au = icmp sgt i64 %i.at, -1
  br i1 %i.au, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.av = icmp samesign ult i64 %i.at, 128
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ac
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.d:                                             ; preds = %bb.b
  %i.ax = lshr i64 %i.at, 7
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ay = ashr i64 %i.at, 7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = phi i64 [ %i.ax, %bb.d ], [ %i.ay, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.az ; 2 uses
  store ptr %i.ba, ptr %i.ao, align 8, !tbaa !196, !alias.scope !2691
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49, !noalias !2691 ; 3 uses
  store ptr %i.bb, ptr %i.ak, align 8, !tbaa !230, !alias.scope !2691
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !231, !alias.scope !2691
  %i.bd = shl nsw i64 %i.az, 7
  %i.be = sub nsw i64 %i.at, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit:         ; preds = %bb.c, %bb.f
  %storemerge.i.i = phi ptr [ %i.bf, %bb.f ], [ %i.aw, %bb.c ]
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !219, !alias.scope !2691
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE6insertENS0_14deque_iteratorIPiLb1ELj0ELj0EmEEmRKi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !178
  %i.d = load ptr, ptr %1, align 8, !tbaa !35, !noalias !2694
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 5
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !49, !noalias !2694
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add i64 %i.m, %i.h
  br label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45, !noalias !2694 ; 2 uses
  %i.q = sub i64 %.0.i.i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59, !noalias !2694
  %i.t = icmp eq i64 %.0.i.i.i, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i
  tail call void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %3, ptr nonnull %4)
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE20priv_insert_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEENSB_ISC_Lb1ELj0ELj0EmEEmT_.exit

bb.d:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i
  %.not.i = icmp eq i64 %.0.i.i.i, %i.p
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE26priv_insert_front_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %3, ptr nonnull %4)
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE20priv_insert_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEENSB_ISC_Lb1ELj0ELj0EmEEmT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE27priv_insert_middle_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmmT_(ptr dead_on_unwind writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.q, i64 noundef %3, ptr nonnull %4)
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE20priv_insert_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEENSB_ISC_Lb1ELj0ELj0EmEEmT_.exit

_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE20priv_insert_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEENSB_ISC_Lb1ELj0ELj0EmEEmT_.exit: ; preds = %bb.c, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !219    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1951 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1976, !noalias !2697 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %2, %i.j
  tail call void @_ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.l), !noalias !2697
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !219, !noalias !2700 ; 2 uses
  %.pre6.i = load ptr, ptr %i.e, align 8, !tbaa !230, !noalias !2700 ; 2 uses
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  %.pre8.i = ptrtoint ptr %.pre6.i to i64
  %.pre10.i = sub i64 %.pre7.i, %.pre8.i
  %.pre12.i = ashr exact i64 %.pre10.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi13.i = phi i64 [ %.pre12.i, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre6.i, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231, !noalias !2700
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !196, !noalias !2700 ; 3 uses
  %i.s = sub nsw i64 0, %2
  %i.t = sub nsw i64 %.pre-phi13.i, %2            ; 5 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.t, 128
  br i1 %i.v, label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread, label %bb.f

_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread: ; preds = %bb.e
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.s
  %i.x = load i32, ptr %3, align 4, !tbaa !51
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.t, 7
  br label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit

bb.g:                                             ; preds = %bb.d
  %i.z = ashr i64 %i.t, 7
  br label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit

_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit: ; preds = %bb.f, %bb.g
  %i.aa = phi i64 [ %i.y, %bb.f ], [ %i.z, %bb.g ] ; 4 uses
  %.idx115 = shl nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 %.idx115 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49, !noalias !2700 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 512 ; 4 uses
  %i.ae = shl i64 %i.aa, 9                        ; 2 uses
  %i.af = shl i64 %i.t, 2
  %.idx116 = sub i64 %i.af, %i.ae                 ; 5 uses
  %.ptr118 = getelementptr inbounds i8, ptr %i.ac, i64 %.idx116 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ag = load i32, ptr %3, align 4, !tbaa !51    ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %.not5.i.i.i.i.i.i.i = icmp eq i64 %.idx116, 512
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.h
  %i.ah = shl i64 %2, 2
  %5 = add i64 %i.ae, %i.ah
  %i.ai = add i64 %5, 508
  %6 = shl nsw i64 %.pre-phi13.i, 2
  %i.aj = sub i64 %i.ai, %6                       ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.aj, 28
  br i1 %min.iters.check156, label %.lr.ph.i.i.i.i.i.i.i.preheader204, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec158 = and i64 %i.al, 9223372036854775800  ; 3 uses
  %i.am = shl i64 %n.vec158, 2
  %i.an = add i64 %.idx116, %i.am
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %.idx116
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next163, %vector.body161 ] ; 2 uses
  %i.ap = shl i64 %index162, 2
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x i32> %broadcast.splat160, ptr %i.aq, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat160, ptr %i.ar, align 4, !tbaa !51
  %index.next163 = add nuw i64 %index162, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.as, label %middle.block164, label %vector.body161, !llvm.loop !2703

middle.block164:                                  ; preds = %vector.body161
  %cmp.n165 = icmp eq i64 %i.al, %n.vec158
  br i1 %cmp.n165, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader204

.lr.ph.i.i.i.i.i.i.i.preheader204:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block164
  %.06.i.i.i.i.i.i.i.idx.ph = phi i64 [ %.idx116, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block164 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader204, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.idx = phi i64 [ %.06.i.i.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.idx.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 2 uses
  %.06.i.i.i.i.i.i.i.ptr = getelementptr inbounds i8, ptr %i.ac, i64 %.06.i.i.i.i.i.i.i.idx
  store i32 %i.ag, ptr %.06.i.i.i.i.i.i.i.ptr, align 4, !tbaa !51
  %.06.i.i.i.i.i.i.i.add = add nsw i64 %.06.i.i.i.i.i.i.i.idx, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.06.i.i.i.i.i.i.i.add, 512
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2704

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block164, %bb.h
  %i.at = icmp slt i64 %i.aa, -1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %.034.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %i.au = load i32, ptr %3, align 4, !tbaa !51    ; 2 uses
  %.not5.i18.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not5.i18.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.av = ptrtoaddr ptr %i.n to i64
  %i.aw = ptrtoaddr ptr %i.m to i64
  %i.ax = add i64 %i.av, -4
  %i.ay = sub i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.ay, 28
  br i1 %min.iters.check176, label %.lr.ph.i19.i.i.i.i.i.i.preheader202, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader
  %n.vec178 = and i64 %i.ba, 9223372036854775800  ; 3 uses
  %i.bb = shl i64 %n.vec178, 2
  %i.bc = getelementptr i8, ptr %i.m, i64 %i.bb
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.bd = shl i64 %index182, 2
  %next.gep183 = getelementptr i8, ptr %i.m, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %broadcast.splat180, ptr %next.gep183, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat180, ptr %i.be, align 4, !tbaa !51
  %index.next184 = add nuw i64 %index182, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.bf, label %middle.block185, label %vector.body181, !llvm.loop !2705

middle.block185:                                  ; preds = %vector.body181
  %cmp.n186 = icmp eq i64 %i.ba, %n.vec178
  br i1 %cmp.n186, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader202

.lr.ph.i19.i.i.i.i.i.i.preheader202:              ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader, %middle.block185
  %.06.i20.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i19.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block185 ]
  br label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader202, %.lr.ph.i19.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i19.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.preheader202 ] ; 2 uses
  store i32 %i.au, ptr %.06.i20.i.i.i.i.i.i, align 4, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.n
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !2706

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.035.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !51
  %broadcast.splatinsert169 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat170 = shufflevector <4 x i32> %broadcast.splatinsert169, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.bi = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !49 ; 32 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %broadcast.splat170, ptr %i.bi, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bj, align 4, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store <4 x i32> %broadcast.splat170, ptr %i.bk, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bl, align 4, !tbaa !51
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store <4 x i32> %broadcast.splat170, ptr %i.bm, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bn, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store <4 x i32> %broadcast.splat170, ptr %i.bo, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bp, align 4, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  store <4 x i32> %broadcast.splat170, ptr %i.bq, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.br, align 4, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store <4 x i32> %broadcast.splat170, ptr %i.bs, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bt, align 4, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  store <4 x i32> %broadcast.splat170, ptr %i.bu, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bv, align 4, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  store <4 x i32> %broadcast.splat170, ptr %i.bw, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bx, align 4, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store <4 x i32> %broadcast.splat170, ptr %i.by, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.bz, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 288
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 304
  store <4 x i32> %broadcast.splat170, ptr %i.ca, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cb, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 336
  store <4 x i32> %broadcast.splat170, ptr %i.cc, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cd, align 4, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 368
  store <4 x i32> %broadcast.splat170, ptr %i.ce, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cf, align 4, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 384
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 400
  store <4 x i32> %broadcast.splat170, ptr %i.cg, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.ch, align 4, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 416
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 432
  store <4 x i32> %broadcast.splat170, ptr %i.ci, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cj, align 4, !tbaa !51
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 464
  store <4 x i32> %broadcast.splat170, ptr %i.ck, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cl, align 4, !tbaa !51
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 480
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 496
  store <4 x i32> %broadcast.splat170, ptr %i.cm, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat170, ptr %i.cn, align 4, !tbaa !51
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = icmp ult ptr %.0.i.i.i.i.i.i, %i.r
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !2707

bb.i:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %i.cp = phi i32 [ %i.x, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ag, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 2 uses
  %storemerge.i.i.i.i96 = phi ptr [ %i.w, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %.ptr118, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 8 uses
  %.sroa.1261.095 = phi ptr [ %i.r, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ab, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.sroa.960.093 = phi ptr [ %i.p, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ad, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.sroa.659.091 = phi ptr [ %i.m, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ac, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.not5.i28.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i96, %i.n
  br i1 %.not5.i28.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.i.i.preheader:                 ; preds = %bb.i
  %i.cq = ptrtoaddr ptr %i.n to i64
  %i.cr = ptrtoaddr ptr %storemerge.i.i.i.i96 to i64
  %i.cs = add i64 %i.cq, -4
  %i.ct = sub i64 %i.cs, %i.cr                    ; 2 uses
  %i.cu = lshr i64 %i.ct, 2
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.ct, 28
  br i1 %min.iters.check189, label %.lr.ph.i29.i.i.i.i.i.i.preheader201, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader
  %n.vec191 = and i64 %i.cv, 9223372036854775800  ; 3 uses
  %i.cw = shl i64 %n.vec191, 2
  %i.cx = getelementptr i8, ptr %storemerge.i.i.i.i96, i64 %i.cw
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph190
  %index195 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.cy = shl i64 %index195, 2
  %next.gep196 = getelementptr i8, ptr %storemerge.i.i.i.i96, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %broadcast.splat193, ptr %next.gep196, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat193, ptr %i.cz, align 4, !tbaa !51
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.da, label %middle.block198, label %vector.body194, !llvm.loop !2708

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %i.cv, %n.vec191
  br i1 %cmp.n199, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader201

.lr.ph.i29.i.i.i.i.i.i.preheader201:              ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader, %middle.block198
  %.06.i30.i.i.i.i.i.i.ph = phi ptr [ %storemerge.i.i.i.i96, %.lr.ph.i29.i.i.i.i.i.i.preheader ], [ %i.cx, %middle.block198 ]
  br label %.lr.ph.i29.i.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i.i:                           ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader201, %.lr.ph.i29.i.i.i.i.i.i
  %.06.i30.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i29.i.i.i.i.i.i ], [ %.06.i30.i.i.i.i.i.i.ph, %.lr.ph.i29.i.i.i.i.i.i.preheader201 ] ; 2 uses
  store i32 %i.cp, ptr %.06.i30.i.i.i.i.i.i, align 4, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i = icmp eq ptr %i.db, %i.n
  br i1 %.not.i31.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i, !llvm.loop !2709

_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.i.i.i, %middle.block185, %middle.block198, %bb.i, %._crit_edge.i.i.i.i.i.i
  %storemerge.i.i.i.i97 = phi ptr [ %storemerge.i.i.i.i96, %middle.block198 ], [ %.ptr118, %._crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i96, %bb.i ], [ %.ptr118, %middle.block185 ], [ %storemerge.i.i.i.i96, %.lr.ph.i29.i.i.i.i.i.i ], [ %.ptr118, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.1261.094 = phi ptr [ %.sroa.1261.095, %middle.block198 ], [ %i.ab, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.1261.095, %bb.i ], [ %i.ab, %middle.block185 ], [ %.sroa.1261.095, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.960.092 = phi ptr [ %.sroa.960.093, %middle.block198 ], [ %i.ad, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.960.093, %bb.i ], [ %i.ad, %middle.block185 ], [ %.sroa.960.093, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.659.090 = phi ptr [ %.sroa.659.091, %middle.block198 ], [ %i.ac, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.659.091, %bb.i ], [ %i.ac, %middle.block185 ], [ %.sroa.659.091, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i19.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i.i97, ptr %i.b, align 8, !tbaa !49
  store ptr %.sroa.659.090, ptr %i.e, align 8, !tbaa !49
  store ptr %.sroa.960.092, ptr %i.o, align 8, !tbaa !49
  store ptr %.sroa.1261.094, ptr %i.q, align 8, !tbaa !2223
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !201 ; 2 uses
  %i.de = icmp eq ptr %i.a, %i.dd
  br i1 %i.de, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !202, !noalias !2710 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 2
  %i.dl = add nsw i64 %i.dk, -1                   ; 2 uses
  %i.dm = icmp ugt i64 %2, %i.dl
  br i1 %i.dm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dn = sub nuw i64 %2, %i.dl
  tail call void @_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.dn), !noalias !2710
  %.pre.i13 = load ptr, ptr %i.dc, align 8, !tbaa !219, !noalias !2713 ; 2 uses
  %.pre6.i14 = load ptr, ptr %i.df, align 8, !tbaa !231, !noalias !2713
  %.pre7.i15 = ptrtoint ptr %.pre.i13 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %.pre7.i15, %bb.l ], [ %i.di, %bb.k ]
  %i.do = phi ptr [ %.pre6.i14, %bb.l ], [ %i.dg, %bb.k ] ; 4 uses
  %i.dp = phi ptr [ %.pre.i13, %bb.l ], [ %i.dd, %bb.k ] ; 11 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !230, !noalias !2713 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !196, !noalias !2713 ; 4 uses
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %.pre-phi.i, %i.du
  %i.dw = ashr exact i64 %i.dv, 2
  %i.dx = add nsw i64 %i.dw, %2                   ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  br i1 %i.dy, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dz = icmp samesign ult i64 %i.dx, 128
  br i1 %i.dz, label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread, label %bb.o

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread: ; preds = %bb.n
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %2
  %i.eb = load i32, ptr %3, align 4, !tbaa !51
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ec = lshr i64 %i.dx, 7
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

bb.p:                                             ; preds = %bb.m
  %i.ed = ashr i64 %i.dx, 7
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.o, %bb.p
  %i.ee = phi i64 [ %i.ec, %bb.o ], [ %i.ed, %bb.p ] ; 5 uses
  %.idx = shl nsw i64 %i.ee, 3                    ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.dt, i64 %.idx
  %i.ef = load ptr, ptr %.ptr, align 8, !tbaa !49, !noalias !2713 ; 9 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 512 ; 4 uses
  %i.eh = shl i64 %i.ee, 9                        ; 2 uses
  %i.ei = shl i64 %i.dx, 2                        ; 3 uses
  %.idx114 = sub i64 %i.ei, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %.idx114 ; 5 uses
  %.sroa.12.0.ptr = getelementptr inbounds i8, ptr %i.dt, i64 %.idx ; 5 uses
  %.not.i.i.i.i.i.i16 = icmp eq i64 %i.ee, 0
  %i.ek = load i32, ptr %3, align 4, !tbaa !51    ; 3 uses
  br i1 %.not.i.i.i.i.i.i16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %.not5.i.i.i.i.i.i.i17 = icmp eq ptr %i.dp, %i.do
  br i1 %.not5.i.i.i.i.i.i.i17, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i.i.i18.preheader:                 ; preds = %bb.q
  %i.el = ptrtoaddr ptr %i.do to i64
  %i.em = ptrtoaddr ptr %i.dp to i64
  %i.en = add i64 %i.el, -4
  %i.eo = sub i64 %i.en, %i.em                    ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i18.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader
  %n.vec = and i64 %i.eq, 9223372036854775800     ; 3 uses
  %i.er = shl i64 %n.vec, 2
  %i.es = getelementptr i8, ptr %i.dp, i64 %i.er
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.et ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat, ptr %i.eu, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !2716

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18.preheader208

.lr.ph.i.i.i.i.i.i.i18.preheader208:              ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader, %middle.block
  %.06.i.i.i.i.i.i.i19.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i18.preheader ], [ %i.es, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader208, %.lr.ph.i.i.i.i.i.i.i18
  %.06.i.i.i.i.i.i.i19 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i18 ], [ %.06.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i18.preheader208 ] ; 2 uses
  store i32 %i.ek, ptr %.06.i.i.i.i.i.i.i19, align 4, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.ew, %i.do
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18, !llvm.loop !2717

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i18, %middle.block, %bb.q
  %i.ex = icmp sgt i64 %i.ee, 1
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i28.preheader, label %._crit_edge.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i28.preheader:                   ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21
  %.034.i.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  br label %.lr.ph.i.i.i.i.i.i28

._crit_edge.i.i.i.i.i.i23:                        ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21
  %i.ey = load i32, ptr %3, align 4, !tbaa !51    ; 2 uses
  %.not5.i18.i.i.i.i.i.i24 = icmp eq i64 %i.ei, %i.eh
  br i1 %.not5.i18.i.i.i.i.i.i24, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25.preheader

.lr.ph.i19.i.i.i.i.i.i25.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i23
  %i.ez = add i64 %i.ei, -4
  %7 = shl i64 %i.ee, 9
  %i.fa = sub i64 %i.ez, %7                       ; 2 uses
  %i.fb = lshr exact i64 %i.fa, 2
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.fa, 28
  br i1 %min.iters.check130, label %.lr.ph.i19.i.i.i.i.i.i25.preheader206, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader
  %n.vec132 = and i64 %i.fc, 9223372036854775800  ; 3 uses
  %i.fd = shl i64 %n.vec132, 2
  %i.fe = getelementptr i8, ptr %i.ef, i64 %i.fd
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.ff = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %i.ef, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> %broadcast.splat134, ptr %next.gep137, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat134, ptr %i.fg, align 4, !tbaa !51
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.fh, label %middle.block139, label %vector.body135, !llvm.loop !2718

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.fc, %n.vec132
  br i1 %cmp.n140, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25.preheader206

.lr.ph.i19.i.i.i.i.i.i25.preheader206:            ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader, %middle.block139
  %.06.i20.i.i.i.i.i.i26.ph = phi ptr [ %i.ef, %.lr.ph.i19.i.i.i.i.i.i25.preheader ], [ %i.fe, %middle.block139 ]
  br label %.lr.ph.i19.i.i.i.i.i.i25

.lr.ph.i19.i.i.i.i.i.i25:                         ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader206, %.lr.ph.i19.i.i.i.i.i.i25
  %.06.i20.i.i.i.i.i.i26 = phi ptr [ %i.fi, %.lr.ph.i19.i.i.i.i.i.i25 ], [ %.06.i20.i.i.i.i.i.i26.ph, %.lr.ph.i19.i.i.i.i.i.i25.preheader206 ] ; 2 uses
  store i32 %i.ey, ptr %.06.i20.i.i.i.i.i.i26, align 4, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i26, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i27 = icmp eq ptr %i.fi, %i.ej
  br i1 %.not.i21.i.i.i.i.i.i27, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25, !llvm.loop !2719

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.lr.ph.i.i.i.i.i.i28.preheader, %.lr.ph.i.i.i.i.i.i28
  %.035.i.i.i.i.i.i29 = phi ptr [ %.0.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i28 ], [ %.034.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i28.preheader ] ; 2 uses
  %i.fj = load i32, ptr %3, align 4, !tbaa !51
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.fk = load ptr, ptr %.035.i.i.i.i.i.i29, align 8, !tbaa !49 ; 32 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %broadcast.splat124, ptr %i.fk, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fl, align 4, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store <4 x i32> %broadcast.splat124, ptr %i.fm, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fn, align 4, !tbaa !51
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  store <4 x i32> %broadcast.splat124, ptr %i.fo, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fp, align 4, !tbaa !51
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 112
  store <4 x i32> %broadcast.splat124, ptr %i.fq, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fr, align 4, !tbaa !51
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 144
  store <4 x i32> %broadcast.splat124, ptr %i.fs, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.ft, align 4, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 160
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  store <4 x i32> %broadcast.splat124, ptr %i.fu, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fv, align 4, !tbaa !51
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fk, i64 192
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 208
  store <4 x i32> %broadcast.splat124, ptr %i.fw, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fx, align 4, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 224
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  store <4 x i32> %broadcast.splat124, ptr %i.fy, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.fz, align 4, !tbaa !51
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 256
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 272
  store <4 x i32> %broadcast.splat124, ptr %i.ga, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gb, align 4, !tbaa !51
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 288
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fk, i64 304
  store <4 x i32> %broadcast.splat124, ptr %i.gc, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gd, align 4, !tbaa !51
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 320
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 336
  store <4 x i32> %broadcast.splat124, ptr %i.ge, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gf, align 4, !tbaa !51
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fk, i64 352
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 368
  store <4 x i32> %broadcast.splat124, ptr %i.gg, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gh, align 4, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fk, i64 384
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 400
  store <4 x i32> %broadcast.splat124, ptr %i.gi, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gj, align 4, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 416
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fk, i64 432
  store <4 x i32> %broadcast.splat124, ptr %i.gk, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gl, align 4, !tbaa !51
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fk, i64 448
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 464
  store <4 x i32> %broadcast.splat124, ptr %i.gm, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gn, align 4, !tbaa !51
  %i.go = getelementptr inbounds nuw i8, ptr %i.fk, i64 480
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fk, i64 496
  store <4 x i32> %broadcast.splat124, ptr %i.go, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat124, ptr %i.gp, align 4, !tbaa !51
  %.0.i.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.gq = icmp ult ptr %.0.i.i.i.i.i.i36, %.sroa.12.0.ptr
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i28, label %._crit_edge.i.i.i.i.i.i23, !llvm.loop !2707

bb.r:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.gr = phi i32 [ %i.eb, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ek, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 2 uses
  %.sroa.12.0.ptr111 = phi ptr [ %i.dt, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %.sroa.12.0.ptr, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %storemerge.i.i.i108 = phi ptr [ %i.ea, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ej, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 6 uses
  %.sroa.9.0107 = phi ptr [ %i.do, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.eg, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %.sroa.6.0105 = phi ptr [ %i.dr, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ef, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %.not5.i28.i.i.i.i.i.i37 = icmp eq ptr %i.dp, %storemerge.i.i.i108
  br i1 %.not5.i28.i.i.i.i.i.i37, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38.preheader

.lr.ph.i29.i.i.i.i.i.i38.preheader:               ; preds = %bb.r
  %i.gs = ptrtoaddr ptr %storemerge.i.i.i108 to i64
  %i.gt = ptrtoaddr ptr %i.dp to i64
  %i.gu = add i64 %i.gs, -4
  %i.gv = sub i64 %i.gu, %i.gt                    ; 2 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.gv, 28
  br i1 %min.iters.check143, label %.lr.ph.i29.i.i.i.i.i.i38.preheader205, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader
  %n.vec145 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.gy = shl i64 %n.vec145, 2
  %i.gz = getelementptr i8, ptr %i.dp, i64 %i.gy
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body148 ] ; 2 uses
  %i.ha = shl i64 %index149, 2
  %next.gep150 = getelementptr i8, ptr %i.dp, i64 %i.ha ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x i32> %broadcast.splat147, ptr %next.gep150, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat147, ptr %i.hb, align 4, !tbaa !51
  %index.next151 = add nuw i64 %index149, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.hc, label %middle.block152, label %vector.body148, !llvm.loop !2720

middle.block152:                                  ; preds = %vector.body148
  %cmp.n153 = icmp eq i64 %i.gx, %n.vec145
  br i1 %cmp.n153, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38.preheader205

.lr.ph.i29.i.i.i.i.i.i38.preheader205:            ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader, %middle.block152
  %.06.i30.i.i.i.i.i.i39.ph = phi ptr [ %i.dp, %.lr.ph.i29.i.i.i.i.i.i38.preheader ], [ %i.gz, %middle.block152 ]
  br label %.lr.ph.i29.i.i.i.i.i.i38

.lr.ph.i29.i.i.i.i.i.i38:                         ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader205, %.lr.ph.i29.i.i.i.i.i.i38
  %.06.i30.i.i.i.i.i.i39 = phi ptr [ %i.hd, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %.06.i30.i.i.i.i.i.i39.ph, %.lr.ph.i29.i.i.i.i.i.i38.preheader205 ] ; 2 uses
  store i32 %i.gr, ptr %.06.i30.i.i.i.i.i.i39, align 4, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i39, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i40 = icmp eq ptr %i.hd, %storemerge.i.i.i108
  br i1 %.not.i31.i.i.i.i.i.i40, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38, !llvm.loop !2721

_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41: ; preds = %.lr.ph.i19.i.i.i.i.i.i25, %.lr.ph.i29.i.i.i.i.i.i38, %middle.block139, %middle.block152, %bb.r, %._crit_edge.i.i.i.i.i.i23
  %.sroa.12.0.ptr110 = phi ptr [ %.sroa.12.0.ptr111, %middle.block152 ], [ %.sroa.12.0.ptr, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.12.0.ptr111, %bb.r ], [ %.sroa.12.0.ptr, %middle.block139 ], [ %.sroa.12.0.ptr111, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %.sroa.12.0.ptr, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %storemerge.i.i.i109 = phi ptr [ %storemerge.i.i.i108, %middle.block152 ], [ %i.ej, %._crit_edge.i.i.i.i.i.i23 ], [ %storemerge.i.i.i108, %bb.r ], [ %i.ej, %middle.block139 ], [ %storemerge.i.i.i108, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.ej, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %.sroa.9.0106 = phi ptr [ %.sroa.9.0107, %middle.block152 ], [ %i.eg, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.9.0107, %bb.r ], [ %i.eg, %middle.block139 ], [ %.sroa.9.0107, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.eg, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %.sroa.6.0104 = phi ptr [ %.sroa.6.0105, %middle.block152 ], [ %i.ef, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.6.0105, %bb.r ], [ %i.ef, %middle.block139 ], [ %.sroa.6.0105, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.ef, %.lr.ph.i19.i.i.i.i.i.i25 ]
  store ptr %storemerge.i.i.i109, ptr %i.dc, align 8, !tbaa !49
  store ptr %.sroa.6.0104, ptr %i.dq, align 8, !tbaa !49
  store ptr %.sroa.9.0106, ptr %i.df, align 8, !tbaa !49
  store ptr %.sroa.12.0.ptr110, ptr %i.ds, align 8, !tbaa !2223
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  store ptr %i.a, ptr %4, align 8, !tbaa !219
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hg = load <2 x ptr>, ptr %i.hf, align 8, !tbaa !49
  store <2 x ptr> %i.hg, ptr %i.he, align 8, !tbaa !49
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !196
  store ptr %i.hj, ptr %i.hh, align 8, !tbaa !196
  call void @_ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %4, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.t

bb.t:                                             ; preds = %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, %bb.s, %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEmRKi:bb.a
  %i.oi = phi i64 [ %i.og, %bb.aq ], [ %i.oh, %bb.ar ] ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.oi ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !49, !noalias !2804 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 512
  %i.om = shl nsw i64 %i.oi, 7
  %i.on = sub nsw i64 %i.oc, %i.om
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.on
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.ap, %bb.as
  %.sroa.6187.0 = phi ptr [ %i.nz, %bb.ap ], [ %i.ok, %bb.as ] ; 2 uses
  %.sroa.8190.0 = phi ptr [ %i.oa, %bb.ap ], [ %i.ol, %bb.as ] ; 2 uses
  %.sroa.10193.0 = phi ptr [ %i.ny, %bb.ap ], [ %i.oj, %bb.as ] ; 4 uses
  %storemerge.i.i.i59 = phi ptr [ %i.of, %bb.ap ], [ %i.oo, %bb.as ] ; 2 uses
  %i.op = sub nsw i64 %i.at, %i.u                 ; 3 uses
  %i.oq = sub nsw i64 0, %i.op
  %i.or = ptrtoint ptr %i.ob to i64               ; 3 uses
  %i.os = sub i64 %i.or, %.pre-phi
  %i.ot = ashr exact i64 %i.os, 2
  %i.ou = sub nsw i64 %i.ot, %i.op                ; 5 uses
  %i.ov = icmp sgt i64 %i.ou, -1
  br i1 %i.ov, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.ow = icmp samesign ult i64 %i.ou, 128
  br i1 %i.ow, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.oq
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64

bb.av:                                            ; preds = %bb.at
  %i.oy = lshr i64 %i.ou, 7
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.oz = ashr i64 %i.ou, 7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.pa = phi i64 [ %i.oy, %bb.av ], [ %i.oz, %bb.aw ] ; 2 uses
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.ny, i64 %i.pa ; 2 uses
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !49, !noalias !2807 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 512
  %i.pe = shl nsw i64 %i.pa, 7
  %i.pf = sub nsw i64 %i.ou, %i.pe
  %i.pg = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.pf
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64

_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64:       ; preds = %bb.au, %bb.ax
  %.sroa.4177.0 = phi ptr [ %i.nz, %bb.au ], [ %i.pc, %bb.ax ] ; 4 uses
  %.sroa.6178.0 = phi ptr [ %i.oa, %bb.au ], [ %i.pd, %bb.ax ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.ny, %bb.au ], [ %i.pb, %bb.ax ] ; 4 uses
  %storemerge.i.i.i63 = phi ptr [ %i.ox, %bb.au ], [ %i.pg, %bb.ax ] ; 4 uses
  store ptr %storemerge.i.i.i63, ptr %1, align 8, !tbaa !49
  store ptr %.sroa.4177.0, ptr %i.o, align 8, !tbaa !49
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %.sroa.6178.0, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !49
  store ptr %.sroa.8.0, ptr %i.c, align 8, !tbaa !2223
  %i.ph = icmp sgt i64 %i.op, %2
  %i.pi = load ptr, ptr %i.ad, align 8, !tbaa !219 ; 6 uses
  br i1 %i.ph, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64
  %i.pj = load ptr, ptr %i.an, align 8, !tbaa !230, !noalias !2810 ; 4 uses
  %i.pk = load ptr, ptr %i.nq, align 8, !tbaa !231, !noalias !2810 ; 3 uses
  %i.pl = load ptr, ptr %i.ae, align 8, !tbaa !196, !noalias !2810 ; 4 uses
  %i.pm = sub nsw i64 0, %2
  %i.pn = ptrtoint ptr %i.pi to i64
  %i.po = ptrtoint ptr %i.pj to i64
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = ashr exact i64 %i.pp, 2
  %i.pr = sub nsw i64 %i.pq, %2                   ; 5 uses
  %i.ps = icmp sgt i64 %i.pr, -1
  br i1 %i.ps, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.pt = icmp samesign ult i64 %i.pr, 128
  br i1 %i.pt, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pm
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66

bb.bb:                                            ; preds = %bb.az
  %i.pv = lshr i64 %i.pr, 7
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.pw = ashr i64 %i.pr, 7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.px = phi i64 [ %i.pv, %bb.bb ], [ %i.pw, %bb.bc ] ; 2 uses
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %i.px ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !49, !noalias !2810 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 512
  %i.qb = shl nsw i64 %i.px, 7
  %i.qc = sub nsw i64 %i.pr, %i.qb
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.pz, i64 %i.qc
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66

_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66:       ; preds = %bb.ba, %bb.bd
  %.sroa.14.0 = phi ptr [ %i.pl, %bb.ba ], [ %i.py, %bb.bd ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %i.pk, %bb.ba ], [ %i.qa, %bb.bd ] ; 2 uses
  %.sroa.6172.0 = phi ptr [ %i.pj, %bb.ba ], [ %i.pz, %bb.bd ] ; 2 uses
  %storemerge.i.i.i65 = phi ptr [ %i.pu, %bb.ba ], [ %i.qd, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !2813
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !2824
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !2824
  store ptr %storemerge.i.i.i65, ptr %8, align 8, !tbaa !219, !noalias !2827
  %i.qe = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.6172.0, ptr %i.qe, align 8, !tbaa !230, !noalias !2827
  %i.qf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.10.0, ptr %i.qf, align 8, !tbaa !231, !noalias !2827
  %i.qg = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sroa.14.0, ptr %i.qg, align 8, !tbaa !196, !noalias !2827
  store ptr %i.pi, ptr %9, align 8, !tbaa !219, !noalias !2827
  %i.qh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.pj, ptr %i.qh, align 8, !tbaa !230, !noalias !2827
  %i.qi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.pk, ptr %i.qi, align 8, !tbaa !231, !noalias !2827
  %i.qj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.pl, ptr %i.qj, align 8, !tbaa !196, !noalias !2827
  store ptr %i.pi, ptr %10, align 8, !tbaa !219, !noalias !2827
  %i.qk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.pj, ptr %i.qk, align 8, !tbaa !230, !noalias !2827
  %i.ql = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.pk, ptr %i.ql, align 8, !tbaa !231, !noalias !2827
  %i.qm = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.pl, ptr %i.qm, align 8, !tbaa !196, !noalias !2827
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !2824
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !2813
  store ptr %storemerge.i.i.i59, ptr %i.ad, align 8, !tbaa !49
  store ptr %.sroa.6187.0, ptr %i.an, align 8, !tbaa !49
  store ptr %.sroa.8190.0, ptr %i.nq, align 8, !tbaa !49
  store ptr %.sroa.10193.0, ptr %i.ae, align 8, !tbaa !2223
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !2830
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2833
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2833
  %i.qn = load <2 x ptr>, ptr %1, align 8, !tbaa !49
  store <2 x ptr> %i.qn, ptr %4, align 16, !tbaa !49, !noalias !2836
  %i.qo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qp = load <2 x ptr>, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !187
  store <2 x ptr> %i.qp, ptr %i.qo, align 16, !tbaa !187, !noalias !2836
  store ptr %storemerge.i.i.i65, ptr %5, align 8, !tbaa !219, !noalias !2836
  %i.qq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.6172.0, ptr %i.qq, align 8, !tbaa !230, !noalias !2836
  %i.qr = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.10.0, ptr %i.qr, align 8, !tbaa !231, !noalias !2836
  %i.qs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.14.0, ptr %i.qs, align 8, !tbaa !196, !noalias !2836
  store ptr %i.ob, ptr %6, align 8, !tbaa !219, !noalias !2836
  %i.qt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.nz, ptr %i.qt, align 8, !tbaa !230, !noalias !2836
  %i.qu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.oa, ptr %i.qu, align 8, !tbaa !231, !noalias !2836
  %i.qv = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.ny, ptr %i.qv, align 8, !tbaa !196, !noalias !2836
  invoke void @_ZSt24__copy_move_backward_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
          to label %bb.bf unwind label %bb.bm

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2833
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !2830
  %i.qw = load ptr, ptr %1, align 8, !tbaa !219   ; 9 uses
  %i.qx = load ptr, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !231 ; 3 uses
  %i.qy = load ptr, ptr %i.c, align 8, !tbaa !196 ; 2 uses
  %i.qz = load ptr, ptr %i.o, align 8, !tbaa !230, !noalias !2839
  %i.ra = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = ashr exact i64 %i.rc, 2
  %i.re = add nsw i64 %i.rd, %2                   ; 5 uses
  %i.rf = icmp sgt i64 %i.re, -1
  br i1 %i.rf, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.rg = icmp samesign ult i64 %i.re, 128
  br i1 %i.rg, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.rh = lshr i64 %i.re, 7
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.ri = ashr i64 %i.re, 7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.rj = phi i64 [ %i.rh, %bb.bh ], [ %i.ri, %bb.bi ] ; 4 uses
  %.idx = shl nsw i64 %i.rj, 3
  %i.rk = getelementptr inbounds i8, ptr %i.qy, i64 %.idx ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !49, !noalias !2839 ; 4 uses
  %i.rm = shl i64 %i.rj, 9                        ; 2 uses
  %i.rn = shl i64 %i.re, 2                        ; 3 uses
  %.idx305 = sub i64 %i.rn, %i.rm
  %i.ro = getelementptr inbounds i8, ptr %i.rl, i64 %.idx305
  %.not5.i.i.i.i73 = icmp eq ptr %i.qw, %i.qx
  br i1 %.not5.i.i.i.i73, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.bj
  %i.rp = ptrtoaddr ptr %i.qx to i64
  %i.rq = add i64 %i.rp, -4
  %i.rr = sub i64 %i.rq, %i.ra                    ; 2 uses
  %i.rs = lshr i64 %i.rr, 2
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.rr, 28
  br i1 %min.iters.check445, label %.lr.ph.i.i.i.i74.preheader648, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i.i.i.i74.preheader
  %n.vec447 = and i64 %i.rt, 9223372036854775800  ; 3 uses
  %i.ru = shl i64 %n.vec447, 2
  %i.rv = getelementptr i8, ptr %i.qw, i64 %i.ru
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph446
  %index451 = phi i64 [ 0, %vector.ph446 ], [ %index.next453, %vector.body450 ] ; 2 uses
  %i.rw = shl i64 %index451, 2
  %next.gep452 = getelementptr i8, ptr %i.qw, i64 %i.rw ; 2 uses
  %i.rx = getelementptr i8, ptr %next.gep452, i64 16
  store <4 x i32> %broadcast.splat449, ptr %next.gep452, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat449, ptr %i.rx, align 4, !tbaa !51
  %index.next453 = add nuw i64 %index451, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next453, %n.vec447
  br i1 %i.ry, label %middle.block454, label %vector.body450, !llvm.loop !2842

middle.block454:                                  ; preds = %vector.body450
  %cmp.n455 = icmp eq i64 %i.rt, %n.vec447
  br i1 %cmp.n455, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74.preheader648

.lr.ph.i.i.i.i74.preheader648:                    ; preds = %.lr.ph.i.i.i.i74.preheader, %middle.block454
  %.06.i.i.i.i75.ph = phi ptr [ %i.qw, %.lr.ph.i.i.i.i74.preheader ], [ %i.rv, %middle.block454 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader648, %.lr.ph.i.i.i.i74
  %.06.i.i.i.i75 = phi ptr [ %i.rz, %.lr.ph.i.i.i.i74 ], [ %.06.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader648 ] ; 2 uses
  store i32 %i.av, ptr %.06.i.i.i.i75, align 4, !tbaa !51
  %i.rz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.rz, %i.qx
  br i1 %.not.i.i.i.i76, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74, !llvm.loop !2843

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i.i74, %middle.block454, %bb.bj
  %i.sa = icmp sgt i64 %i.rj, 1
  br i1 %i.sa, label %.lr.ph.i.i.i84.preheader, label %._crit_edge.i.i.i79

.lr.ph.i.i.i84.preheader:                         ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77
  %.034.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %broadcast.splatinsert459 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat460 = shufflevector <4 x i32> %broadcast.splatinsert459, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.lr.ph.i.i.i84

._crit_edge.i.i.i79:                              ; preds = %.lr.ph.i.i.i84, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77
  %.not5.i18.i.i.i80 = icmp eq i64 %i.rn, %i.rm
  br i1 %.not5.i18.i.i.i80, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81.preheader

.lr.ph.i19.i.i.i81.preheader:                     ; preds = %._crit_edge.i.i.i79
  %i.sb = add i64 %i.rn, -4
  %29 = shl i64 %i.rj, 9
  %i.sc = sub i64 %i.sb, %29                      ; 2 uses
  %i.sd = lshr exact i64 %i.sc, 2
  %i.se = add nuw nsw i64 %i.sd, 1                ; 2 uses
  %min.iters.check466 = icmp ult i64 %i.sc, 28
  br i1 %min.iters.check466, label %.lr.ph.i19.i.i.i81.preheader646, label %vector.ph467

vector.ph467:                                     ; preds = %.lr.ph.i19.i.i.i81.preheader
  %n.vec468 = and i64 %i.se, 9223372036854775800  ; 3 uses
  %i.sf = shl i64 %n.vec468, 2
  %i.sg = getelementptr i8, ptr %i.rl, i64 %i.sf
  %broadcast.splatinsert469 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat470 = shufflevector <4 x i32> %broadcast.splatinsert469, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body471

vector.body471:                                   ; preds = %vector.body471, %vector.ph467
  %index472 = phi i64 [ 0, %vector.ph467 ], [ %index.next474, %vector.body471 ] ; 2 uses
  %i.sh = shl i64 %index472, 2
  %next.gep473 = getelementptr i8, ptr %i.rl, i64 %i.sh ; 2 uses
  %i.si = getelementptr i8, ptr %next.gep473, i64 16
  store <4 x i32> %broadcast.splat470, ptr %next.gep473, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat470, ptr %i.si, align 4, !tbaa !51
  %index.next474 = add nuw i64 %index472, 8       ; 2 uses
  %i.sj = icmp eq i64 %index.next474, %n.vec468
  br i1 %i.sj, label %middle.block475, label %vector.body471, !llvm.loop !2844

middle.block475:                                  ; preds = %vector.body471
  %cmp.n476 = icmp eq i64 %i.se, %n.vec468
  br i1 %cmp.n476, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81.preheader646

.lr.ph.i19.i.i.i81.preheader646:                  ; preds = %.lr.ph.i19.i.i.i81.preheader, %middle.block475
  %.06.i20.i.i.i82.ph = phi ptr [ %i.rl, %.lr.ph.i19.i.i.i81.preheader ], [ %i.sg, %middle.block475 ]
  br label %.lr.ph.i19.i.i.i81

.lr.ph.i19.i.i.i81:                               ; preds = %.lr.ph.i19.i.i.i81.preheader646, %.lr.ph.i19.i.i.i81
  %.06.i20.i.i.i82 = phi ptr [ %i.sk, %.lr.ph.i19.i.i.i81 ], [ %.06.i20.i.i.i82.ph, %.lr.ph.i19.i.i.i81.preheader646 ] ; 2 uses
  store i32 %i.av, ptr %.06.i20.i.i.i82, align 4, !tbaa !51
  %i.sk = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i82, i64 4 ; 2 uses
  %.not.i21.i.i.i83 = icmp eq ptr %i.sk, %i.ro
  br i1 %.not.i21.i.i.i83, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81, !llvm.loop !2845

.lr.ph.i.i.i84:                                   ; preds = %.lr.ph.i.i.i84.preheader, %.lr.ph.i.i.i84
  %.035.i.i.i85 = phi ptr [ %.0.i.i.i92, %.lr.ph.i.i.i84 ], [ %.034.i.i.i78, %.lr.ph.i.i.i84.preheader ] ; 2 uses
  %i.sl = load ptr, ptr %.035.i.i.i85, align 8, !tbaa !49 ; 32 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store <4 x i32> %broadcast.splat460, ptr %i.sl, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.sm, align 4, !tbaa !51
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  store <4 x i32> %broadcast.splat460, ptr %i.sn, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.so, align 4, !tbaa !51
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 80
  store <4 x i32> %broadcast.splat460, ptr %i.sp, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.sq, align 4, !tbaa !51
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 96
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sl, i64 112
  store <4 x i32> %broadcast.splat460, ptr %i.sr, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.ss, align 4, !tbaa !51
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 128
  %i.su = getelementptr inbounds nuw i8, ptr %i.sl, i64 144
  store <4 x i32> %broadcast.splat460, ptr %i.st, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.su, align 4, !tbaa !51
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sl, i64 160
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sl, i64 176
  store <4 x i32> %broadcast.splat460, ptr %i.sv, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.sw, align 4, !tbaa !51
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sl, i64 192
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sl, i64 208
  store <4 x i32> %broadcast.splat460, ptr %i.sx, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.sy, align 4, !tbaa !51
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sl, i64 224
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sl, i64 240
  store <4 x i32> %broadcast.splat460, ptr %i.sz, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.ta, align 4, !tbaa !51
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sl, i64 256
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sl, i64 272
  store <4 x i32> %broadcast.splat460, ptr %i.tb, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.tc, align 4, !tbaa !51
  %i.td = getelementptr inbounds nuw i8, ptr %i.sl, i64 288
  %i.te = getelementptr inbounds nuw i8, ptr %i.sl, i64 304
  store <4 x i32> %broadcast.splat460, ptr %i.td, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.te, align 4, !tbaa !51
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sl, i64 320
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sl, i64 336
  store <4 x i32> %broadcast.splat460, ptr %i.tf, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.tg, align 4, !tbaa !51
  %i.th = getelementptr inbounds nuw i8, ptr %i.sl, i64 352
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sl, i64 368
  store <4 x i32> %broadcast.splat460, ptr %i.th, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.ti, align 4, !tbaa !51
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sl, i64 384
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sl, i64 400
  store <4 x i32> %broadcast.splat460, ptr %i.tj, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.tk, align 4, !tbaa !51
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sl, i64 416
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sl, i64 432
  store <4 x i32> %broadcast.splat460, ptr %i.tl, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.tm, align 4, !tbaa !51
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sl, i64 448
  %i.to = getelementptr inbounds nuw i8, ptr %i.sl, i64 464
  store <4 x i32> %broadcast.splat460, ptr %i.tn, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.to, align 4, !tbaa !51
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sl, i64 480
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sl, i64 496
  store <4 x i32> %broadcast.splat460, ptr %i.tp, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat460, ptr %i.tq, align 4, !tbaa !51
  %.0.i.i.i92 = getelementptr inbounds nuw i8, ptr %.035.i.i.i85, i64 8 ; 2 uses
  %i.tr = icmp ult ptr %.0.i.i.i92, %i.rk
  br i1 %i.tr, label %.lr.ph.i.i.i84, label %._crit_edge.i.i.i79, !llvm.loop !2707

bb.bk:                                            ; preds = %bb.bg
  %.idx400 = shl i64 %2, 2                        ; 2 uses
  %i.ts = getelementptr inbounds i8, ptr %i.qw, i64 %.idx400
  %.not5.i28.i.i.i93 = icmp eq i64 %2, 0
  br i1 %.not5.i28.i.i.i93, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94.preheader

.lr.ph.i29.i.i.i94.preheader:                     ; preds = %bb.bk
  %i.tt = add i64 %.idx400, -4                    ; 2 uses
  %i.tu = lshr exact i64 %i.tt, 2
  %i.tv = add nuw nsw i64 %i.tu, 1                ; 2 uses
  %min.iters.check479 = icmp ult i64 %i.tt, 28
  br i1 %min.iters.check479, label %.lr.ph.i29.i.i.i94.preheader644, label %vector.ph480

vector.ph480:                                     ; preds = %.lr.ph.i29.i.i.i94.preheader
  %n.vec481 = and i64 %i.tv, 9223372036854775800  ; 3 uses
  %i.tw = shl i64 %n.vec481, 2
  %i.tx = getelementptr i8, ptr %i.qw, i64 %i.tw
  %broadcast.splatinsert482 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat483 = shufflevector <4 x i32> %broadcast.splatinsert482, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph480
  %index485 = phi i64 [ 0, %vector.ph480 ], [ %index.next487, %vector.body484 ] ; 2 uses
  %i.ty = shl i64 %index485, 2
  %next.gep486 = getelementptr i8, ptr %i.qw, i64 %i.ty ; 2 uses
  %i.tz = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %broadcast.splat483, ptr %next.gep486, align 4, !tbaa !51
  store <4 x i32> %broadcast.splat483, ptr %i.tz, align 4, !tbaa !51
  %index.next487 = add nuw i64 %index485, 8       ; 2 uses
  %i.ua = icmp eq i64 %index.next487, %n.vec481
  br i1 %i.ua, label %middle.block488, label %vector.body484, !llvm.loop !2846

middle.block488:                                  ; preds = %vector.body484
  %cmp.n489 = icmp eq i64 %i.tv, %n.vec481
  br i1 %cmp.n489, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94.preheader644

.lr.ph.i29.i.i.i94.preheader644:                  ; preds = %.lr.ph.i29.i.i.i94.preheader, %middle.block488
  %.06.i30.i.i.i95.ph = phi ptr [ %i.qw, %.lr.ph.i29.i.i.i94.preheader ], [ %i.tx, %middle.block488 ]
  br label %.lr.ph.i29.i.i.i94

.lr.ph.i29.i.i.i94:                               ; preds = %.lr.ph.i29.i.i.i94.preheader644, %.lr.ph.i29.i.i.i94
  %.06.i30.i.i.i95 = phi ptr [ %i.ub, %.lr.ph.i29.i.i.i94 ], [ %.06.i30.i.i.i95.ph, %.lr.ph.i29.i.i.i94.preheader644 ] ; 2 uses
  store i32 %i.av, ptr %.06.i30.i.i.i95, align 4, !tbaa !51
  %i.ub = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i95, i64 4 ; 2 uses
  %.not.i31.i.i.i96 = icmp eq ptr %i.ub, %i.ts
  br i1 %.not.i31.i.i.i96, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94, !llvm.loop !2847

bb.bl:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66
  %i.uc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

bb.bm:                                            ; preds = %bb.be
  %i.ud = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

bb.bn:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64
  store ptr %i.pi, ptr %24, align 8, !tbaa !219
  %i.ue = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.uf = load ptr, ptr %i.an, align 8, !tbaa !230 ; 2 uses
  store ptr %i.uf, ptr %i.ue, align 8, !tbaa !230
  %i.ug = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.uh = load ptr, ptr %i.nq, align 8, !tbaa !231 ; 2 uses
  store ptr %i.uh, ptr %i.ug, align 8, !tbaa !231
  %i.ui = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.uj = load ptr, ptr %i.ae, align 8, !tbaa !196 ; 2 uses
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.uk = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.sroa.4177.0, ptr %i.uk, align 8, !tbaa !230, !alias.scope !2848
  %i.ul = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %.sroa.6178.0, ptr %i.ul, align 8, !tbaa !231, !alias.scope !2848
  %i.um = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  store ptr %.sroa.8.0, ptr %i.um, align 8, !tbaa !196, !alias.scope !2848
  %i.un = ptrtoint ptr %storemerge.i.i.i63 to i64
  %i.uo = ptrtoint ptr %.sroa.4177.0 to i64
  %i.up = sub i64 %i.un, %i.uo
  %i.uq = ashr exact i64 %i.up, 2
  %i.ur = add nsw i64 %i.uq, %2                   ; 5 uses
  %i.us = icmp sgt i64 %i.ur, -1
  br i1 %i.us, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.ut = icmp samesign ult i64 %i.ur, 128
  br i1 %i.ut, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.uu = getelementptr inbounds [4 x i8], ptr %storemerge.i.i.i63, i64 %2
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99

end_hunk_1
