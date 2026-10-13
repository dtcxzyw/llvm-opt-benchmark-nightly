Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/deque_test?download=true
inline.NumInlined: 21721
inline.NumDeleted: 3891
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 1494
loop-unroll.NumUnrolled: 1710
begin_hunk_0_@_ZSt25__uninitialized_copy_moveIPiSt15_Deque_iteratorIiRiS0_ES3_SaIiEET1_T_S6_T0_S7_S5_RT2_:bb.a

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bk

bb.n:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #23
  unreachable

bb.o:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIiSaIiEE6insertESt15_Deque_iteratorIiRKiPS3_EmS4_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425, !noalias !3171
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427, !noalias !3171
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !420, !noalias !3171
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !432  ; 4 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ne ptr %i.i, null
  %.neg.i = sext i1 %i.n to i64
  %i.o = add nsw i64 %i.m, %.neg.i
  %i.p = shl nsw i64 %i.o, 7
  %i.q = load ptr, ptr %2, align 8, !tbaa !429    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !430
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %i.x = ptrtoint ptr %i.e to i64
  %i.y = ptrtoint ptr %i.b to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  %i.ab = add nsw i64 %i.w, %i.aa
  %i.ac = add i64 %i.ab, %i.p                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  store ptr %i.q, ptr %5, align 8, !tbaa !425, !alias.scope !3172
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !369, !noalias !3172 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !426, !alias.scope !3172
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !427, !alias.scope !3172
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.i, ptr %i.ah, align 8, !tbaa !420, !alias.scope !3172
  call void @_ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !425, !noalias !3173 ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !420, !noalias !3173 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load <2 x ptr>, ptr %i.c, align 8, !tbaa !369, !noalias !3173
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !426, !noalias !3173
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !369, !alias.scope !3174
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !420, !alias.scope !3174
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
  store ptr %i.ba, ptr %i.ao, align 8, !tbaa !420, !alias.scope !3174
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !369, !noalias !3174 ; 3 uses
  store ptr %i.bb, ptr %i.ak, align 8, !tbaa !426, !alias.scope !3174
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !427, !alias.scope !3174
  %i.bd = shl nsw i64 %i.az, 7
  %i.be = sub nsw i64 %i.at, %i.bd
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit:         ; preds = %bb.c, %bb.f
  %storemerge.i.i = phi ptr [ %i.bf, %bb.f ], [ %i.aw, %bb.c ]
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !425, !alias.scope !3174
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE6insertENS0_14deque_iteratorIPiLb1ELj0ELj0EmEEmRKi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i, label %bb.b, !prof !375

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !416
  %i.d = load ptr, ptr %1, align 8, !tbaa !365, !noalias !3177
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 5
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !369, !noalias !3177
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add i64 %i.m, %i.h
  br label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE20prot_it_to_start_offENS0_14deque_iteratorIPiLb1ELj0ELj0EmEE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !367, !noalias !3177 ; 2 uses
  %i.q = sub i64 %.0.i.i.i, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !374, !noalias !3177
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !425    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !551  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !552, !noalias !3198 ; 2 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %2, %i.j
  tail call void @_ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.l), !noalias !3198
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !425, !noalias !3199 ; 2 uses
  %.pre6.i = load ptr, ptr %i.e, align 8, !tbaa !426, !noalias !3199 ; 2 uses
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  %.pre8.i = ptrtoint ptr %.pre6.i to i64
  %.pre10.i = sub i64 %.pre7.i, %.pre8.i
  %.pre12.i = ashr exact i64 %.pre10.i, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi13.i = phi i64 [ %.pre12.i, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre6.i, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %i.n = phi ptr [ %.pre.i, %bb.c ], [ %i.c, %bb.b ] ; 6 uses
  %5 = ptrtoaddr ptr %i.m to i64
  %6 = ptrtoaddr ptr %i.n to i64                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !427, !noalias !3199
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !420, !noalias !3199 ; 3 uses
  %i.s = sub nsw i64 0, %2
  %i.t = sub nsw i64 %.pre-phi13.i, %2            ; 5 uses
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %i.t, 128
  br i1 %i.v, label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread, label %bb.f

_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread: ; preds = %bb.e
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.s
  %i.x = load i32, ptr %3, align 4, !tbaa !370
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !369, !noalias !3199 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 512 ; 4 uses
  %i.ae = shl i64 %i.aa, 9                        ; 2 uses
  %i.af = shl i64 %i.t, 2
  %.idx116 = sub i64 %i.af, %i.ae                 ; 5 uses
  %.ptr118 = getelementptr inbounds i8, ptr %i.ac, i64 %.idx116 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ag = load i32, ptr %3, align 4, !tbaa !370   ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %.not5.i.i.i.i.i.i.i = icmp eq i64 %.idx116, 512
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.h
  %i.ah = shl i64 %2, 2
  %i.ai = shl nsw i64 %.pre-phi13.i, 2
  %i.aj = add i64 %i.ae, %i.ah
  %i.ak = add i64 %i.aj, 508
  %i.al = sub i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.al, 28
  br i1 %min.iters.check156, label %.lr.ph.i.i.i.i.i.i.i.preheader204, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec158 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.ao = shl i64 %n.vec158, 2
  %i.ap = add i64 %.idx116, %i.ao
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 %.idx116
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next163, %vector.body161 ] ; 2 uses
  %i.ar = shl i64 %index162, 2
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <4 x i32> %broadcast.splat160, ptr %i.as, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat160, ptr %i.at, align 4, !tbaa !370
  %index.next163 = add nuw i64 %index162, 8       ; 2 uses
  %i.au = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.au, label %middle.block164, label %vector.body161, !llvm.loop !3182

middle.block164:                                  ; preds = %vector.body161
  %cmp.n165 = icmp eq i64 %i.an, %n.vec158
  br i1 %cmp.n165, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader204

.lr.ph.i.i.i.i.i.i.i.preheader204:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block164
  %.06.i.i.i.i.i.i.i.idx.ph = phi i64 [ %.idx116, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block164 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader204, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.idx = phi i64 [ %.06.i.i.i.i.i.i.i.add, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.idx.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 2 uses
  %.06.i.i.i.i.i.i.i.ptr = getelementptr inbounds i8, ptr %i.ac, i64 %.06.i.i.i.i.i.i.i.idx
  store i32 %i.ag, ptr %.06.i.i.i.i.i.i.i.ptr, align 4, !tbaa !370
  %.06.i.i.i.i.i.i.i.add = add nsw i64 %.06.i.i.i.i.i.i.i.idx, 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.06.i.i.i.i.i.i.i.add, 512
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3183

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block164, %bb.h
  %i.av = icmp slt i64 %i.aa, -1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %.034.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %i.aw = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %.not5.i18.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not5.i18.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ax = add i64 %6, -4
  %i.ay = sub i64 %i.ax, %5                       ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.ay, 28
  br i1 %min.iters.check176, label %.lr.ph.i19.i.i.i.i.i.i.preheader202, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader
  %n.vec178 = and i64 %i.ba, 9223372036854775800  ; 3 uses
  %i.bb = shl i64 %n.vec178, 2
  %i.bc = getelementptr i8, ptr %i.m, i64 %i.bb
  %broadcast.splatinsert179 = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat180 = shufflevector <4 x i32> %broadcast.splatinsert179, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph177
  %index182 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body181 ] ; 2 uses
  %i.bd = shl i64 %index182, 2
  %next.gep183 = getelementptr i8, ptr %i.m, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep183, i64 16
  store <4 x i32> %broadcast.splat180, ptr %next.gep183, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat180, ptr %i.be, align 4, !tbaa !370
  %index.next184 = add nuw i64 %index182, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.bf, label %middle.block185, label %vector.body181, !llvm.loop !3184

middle.block185:                                  ; preds = %vector.body181
  %cmp.n186 = icmp eq i64 %i.ba, %n.vec178
  br i1 %cmp.n186, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader202

.lr.ph.i19.i.i.i.i.i.i.preheader202:              ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader, %middle.block185
  %.06.i20.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i19.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block185 ]
  br label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader202, %.lr.ph.i19.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i19.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.preheader202 ] ; 2 uses
  store i32 %i.aw, ptr %.06.i20.i.i.i.i.i.i, align 4, !tbaa !370
  %i.bg = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.n
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !3185

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.035.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !370
  %broadcast.splatinsert169 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat170 = shufflevector <4 x i32> %broadcast.splatinsert169, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.bi = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %broadcast.splat170, ptr %i.bi, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bj, align 4, !tbaa !370
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store <4 x i32> %broadcast.splat170, ptr %i.bk, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bl, align 4, !tbaa !370
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  store <4 x i32> %broadcast.splat170, ptr %i.bm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bn, align 4, !tbaa !370
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  store <4 x i32> %broadcast.splat170, ptr %i.bo, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bp, align 4, !tbaa !370
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  store <4 x i32> %broadcast.splat170, ptr %i.bq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.br, align 4, !tbaa !370
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store <4 x i32> %broadcast.splat170, ptr %i.bs, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bt, align 4, !tbaa !370
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  store <4 x i32> %broadcast.splat170, ptr %i.bu, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bv, align 4, !tbaa !370
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 224
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  store <4 x i32> %broadcast.splat170, ptr %i.bw, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bx, align 4, !tbaa !370
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store <4 x i32> %broadcast.splat170, ptr %i.by, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.bz, align 4, !tbaa !370
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 288
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 304
  store <4 x i32> %broadcast.splat170, ptr %i.ca, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cb, align 4, !tbaa !370
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 336
  store <4 x i32> %broadcast.splat170, ptr %i.cc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cd, align 4, !tbaa !370
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 352
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 368
  store <4 x i32> %broadcast.splat170, ptr %i.ce, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cf, align 4, !tbaa !370
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 384
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 400
  store <4 x i32> %broadcast.splat170, ptr %i.cg, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.ch, align 4, !tbaa !370
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 416
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 432
  store <4 x i32> %broadcast.splat170, ptr %i.ci, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cj, align 4, !tbaa !370
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bi, i64 448
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 464
  store <4 x i32> %broadcast.splat170, ptr %i.ck, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cl, align 4, !tbaa !370
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 480
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 496
  store <4 x i32> %broadcast.splat170, ptr %i.cm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat170, ptr %i.cn, align 4, !tbaa !370
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = icmp ult ptr %.0.i.i.i.i.i.i, %i.r
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !27

bb.i:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %i.cp = phi i32 [ %i.x, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ag, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 2 uses
  %storemerge.i.i.i.i96 = phi ptr [ %i.w, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %.ptr118, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 8 uses
  %.sroa.1261.095 = phi ptr [ %i.r, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ab, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.sroa.960.093 = phi ptr [ %i.p, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ad, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.sroa.659.091 = phi ptr [ %i.m, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit.thread ], [ %i.ac, %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.not5.i28.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i96, %i.n
  br i1 %.not5.i28.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.i.i.preheader:                 ; preds = %bb.i
  %i.cq = ptrtoaddr ptr %storemerge.i.i.i.i96 to i64
  %i.cr = add i64 %6, -4
  %i.cs = sub i64 %i.cr, %i.cq                    ; 2 uses
  %i.ct = lshr i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check189, label %.lr.ph.i29.i.i.i.i.i.i.preheader201, label %vector.ph190

vector.ph190:                                     ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader
  %n.vec191 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = shl i64 %n.vec191, 2
  %i.cw = getelementptr i8, ptr %storemerge.i.i.i.i96, i64 %i.cv
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph190
  %index195 = phi i64 [ 0, %vector.ph190 ], [ %index.next197, %vector.body194 ] ; 2 uses
  %i.cx = shl i64 %index195, 2
  %next.gep196 = getelementptr i8, ptr %storemerge.i.i.i.i96, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep196, i64 16
  store <4 x i32> %broadcast.splat193, ptr %next.gep196, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat193, ptr %i.cy, align 4, !tbaa !370
  %index.next197 = add nuw i64 %index195, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next197, %n.vec191
  br i1 %i.cz, label %middle.block198, label %vector.body194, !llvm.loop !3186

middle.block198:                                  ; preds = %vector.body194
  %cmp.n199 = icmp eq i64 %i.cu, %n.vec191
  br i1 %cmp.n199, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader201

.lr.ph.i29.i.i.i.i.i.i.preheader201:              ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader, %middle.block198
  %.06.i30.i.i.i.i.i.i.ph = phi ptr [ %storemerge.i.i.i.i96, %.lr.ph.i29.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block198 ]
  br label %.lr.ph.i29.i.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i.i:                           ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader201, %.lr.ph.i29.i.i.i.i.i.i
  %.06.i30.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i29.i.i.i.i.i.i ], [ %.06.i30.i.i.i.i.i.i.ph, %.lr.ph.i29.i.i.i.i.i.i.preheader201 ] ; 2 uses
  store i32 %i.cp, ptr %.06.i30.i.i.i.i.i.i, align 4, !tbaa !370
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i = icmp eq ptr %i.da, %i.n
  br i1 %.not.i31.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i, !llvm.loop !3187

_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.i.i.i, %middle.block185, %middle.block198, %bb.i, %._crit_edge.i.i.i.i.i.i
  %storemerge.i.i.i.i97 = phi ptr [ %storemerge.i.i.i.i96, %middle.block198 ], [ %.ptr118, %._crit_edge.i.i.i.i.i.i ], [ %storemerge.i.i.i.i96, %bb.i ], [ %.ptr118, %middle.block185 ], [ %storemerge.i.i.i.i96, %.lr.ph.i29.i.i.i.i.i.i ], [ %.ptr118, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.1261.094 = phi ptr [ %.sroa.1261.095, %middle.block198 ], [ %i.ab, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.1261.095, %bb.i ], [ %i.ab, %middle.block185 ], [ %.sroa.1261.095, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.960.092 = phi ptr [ %.sroa.960.093, %middle.block198 ], [ %i.ad, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.960.093, %bb.i ], [ %i.ad, %middle.block185 ], [ %.sroa.960.093, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i19.i.i.i.i.i.i ]
  %.sroa.659.090 = phi ptr [ %.sroa.659.091, %middle.block198 ], [ %i.ac, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.659.091, %bb.i ], [ %i.ac, %middle.block185 ], [ %.sroa.659.091, %.lr.ph.i29.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i19.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i.i97, ptr %i.b, align 8, !tbaa !369
  store ptr %.sroa.659.090, ptr %i.e, align 8, !tbaa !369
  store ptr %.sroa.960.092, ptr %i.o, align 8, !tbaa !369
  store ptr %.sroa.1261.094, ptr %i.q, align 8, !tbaa !554
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !423 ; 2 uses
  %i.dd = icmp eq ptr %i.a, %i.dc
  br i1 %i.dd, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !424, !noalias !3200 ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = add nsw i64 %i.dj, -1                   ; 2 uses
  %i.dl = icmp ugt i64 %2, %i.dk
  br i1 %i.dl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dm = sub nuw i64 %2, %i.dk
  tail call void @_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.dm), !noalias !3200
  %.pre.i13 = load ptr, ptr %i.db, align 8, !tbaa !425, !noalias !3201 ; 2 uses
  %.pre6.i14 = load ptr, ptr %i.de, align 8, !tbaa !427, !noalias !3201
  %.pre7.i15 = ptrtoint ptr %.pre.i13 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi.i = phi i64 [ %.pre7.i15, %bb.l ], [ %i.dh, %bb.k ]
  %i.dn = phi ptr [ %.pre6.i14, %bb.l ], [ %i.df, %bb.k ] ; 4 uses
  %i.do = phi ptr [ %.pre.i13, %bb.l ], [ %i.dc, %bb.k ] ; 10 uses
  %7 = ptrtoaddr ptr %i.do to i64                 ; 2 uses
  %8 = ptrtoaddr ptr %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !426, !noalias !3201 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !420, !noalias !3201 ; 4 uses
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %.pre-phi.i, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = add nsw i64 %i.dv, %2                   ; 5 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  br i1 %i.dx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dy = icmp samesign ult i64 %i.dw, 128
  br i1 %i.dy, label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread, label %bb.o

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread: ; preds = %bb.n
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.do, i64 %2
  %i.ea = load i32, ptr %3, align 4, !tbaa !370
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.eb = lshr i64 %i.dw, 7
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

bb.p:                                             ; preds = %bb.m
  %i.ec = ashr i64 %i.dw, 7
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.o, %bb.p
  %i.ed = phi i64 [ %i.eb, %bb.o ], [ %i.ec, %bb.p ] ; 4 uses
  %.idx = shl nsw i64 %i.ed, 3                    ; 2 uses
  %.ptr = getelementptr inbounds i8, ptr %i.ds, i64 %.idx
  %i.ee = load ptr, ptr %.ptr, align 8, !tbaa !369, !noalias !3201 ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 512 ; 4 uses
  %i.eg = shl i64 %i.ed, 9                        ; 3 uses
  %i.eh = shl i64 %i.dw, 2                        ; 3 uses
  %.idx114 = sub i64 %i.eh, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %.idx114 ; 5 uses
  %.sroa.12.0.ptr = getelementptr inbounds i8, ptr %i.ds, i64 %.idx ; 5 uses
  %.not.i.i.i.i.i.i16 = icmp eq i64 %i.ed, 0
  %i.ej = load i32, ptr %3, align 4, !tbaa !370   ; 3 uses
  br i1 %.not.i.i.i.i.i.i16, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %.not5.i.i.i.i.i.i.i17 = icmp eq ptr %i.do, %i.dn
  br i1 %.not5.i.i.i.i.i.i.i17, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i.i.i18.preheader:                 ; preds = %bb.q
  %i.ek = add i64 %8, -4
  %i.el = sub i64 %i.ek, %7                       ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.el, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i18.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader
  %n.vec = and i64 %i.en, 9223372036854775800     ; 3 uses
  %i.eo = shl i64 %n.vec, 2
  %i.ep = getelementptr i8, ptr %i.do, i64 %i.eo
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.do, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.er, align 4, !tbaa !370
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !3192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, %n.vec
  br i1 %cmp.n, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18.preheader208

.lr.ph.i.i.i.i.i.i.i18.preheader208:              ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader, %middle.block
  %.06.i.i.i.i.i.i.i19.ph = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i18.preheader ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %.lr.ph.i.i.i.i.i.i.i18.preheader208, %.lr.ph.i.i.i.i.i.i.i18
  %.06.i.i.i.i.i.i.i19 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i18 ], [ %.06.i.i.i.i.i.i.i19.ph, %.lr.ph.i.i.i.i.i.i.i18.preheader208 ] ; 2 uses
  store i32 %i.ej, ptr %.06.i.i.i.i.i.i.i19, align 4, !tbaa !370
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.et, %i.dn
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i18, !llvm.loop !3193

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i18, %middle.block, %bb.q
  %i.eu = icmp sgt i64 %i.ed, 1
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i28.preheader, label %._crit_edge.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i28.preheader:                   ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21
  %.034.i.i.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  br label %.lr.ph.i.i.i.i.i.i28

._crit_edge.i.i.i.i.i.i23:                        ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i21
  %i.ev = load i32, ptr %3, align 4, !tbaa !370   ; 2 uses
  %.not5.i18.i.i.i.i.i.i24 = icmp eq i64 %i.eh, %i.eg
  br i1 %.not5.i18.i.i.i.i.i.i24, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25.preheader

.lr.ph.i19.i.i.i.i.i.i25.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i23
  %i.ew = add i64 %i.eh, -4
  %i.ex = sub i64 %i.ew, %i.eg                    ; 2 uses
  %i.ey = lshr exact i64 %i.ex, 2
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.ex, 28
  br i1 %min.iters.check130, label %.lr.ph.i19.i.i.i.i.i.i25.preheader206, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader
  %n.vec132 = and i64 %i.ez, 9223372036854775800  ; 3 uses
  %i.fa = shl i64 %n.vec132, 2
  %i.fb = getelementptr i8, ptr %i.ee, i64 %i.fa
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph131
  %index136 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body135 ] ; 2 uses
  %i.fc = shl i64 %index136, 2
  %next.gep137 = getelementptr i8, ptr %i.ee, i64 %i.fc ; 2 uses
  %i.fd = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> %broadcast.splat134, ptr %next.gep137, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat134, ptr %i.fd, align 4, !tbaa !370
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.fe, label %middle.block139, label %vector.body135, !llvm.loop !3194

middle.block139:                                  ; preds = %vector.body135
  %cmp.n140 = icmp eq i64 %i.ez, %n.vec132
  br i1 %cmp.n140, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25.preheader206

.lr.ph.i19.i.i.i.i.i.i25.preheader206:            ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader, %middle.block139
  %.06.i20.i.i.i.i.i.i26.ph = phi ptr [ %i.ee, %.lr.ph.i19.i.i.i.i.i.i25.preheader ], [ %i.fb, %middle.block139 ]
  br label %.lr.ph.i19.i.i.i.i.i.i25

.lr.ph.i19.i.i.i.i.i.i25:                         ; preds = %.lr.ph.i19.i.i.i.i.i.i25.preheader206, %.lr.ph.i19.i.i.i.i.i.i25
  %.06.i20.i.i.i.i.i.i26 = phi ptr [ %i.ff, %.lr.ph.i19.i.i.i.i.i.i25 ], [ %.06.i20.i.i.i.i.i.i26.ph, %.lr.ph.i19.i.i.i.i.i.i25.preheader206 ] ; 2 uses
  store i32 %i.ev, ptr %.06.i20.i.i.i.i.i.i26, align 4, !tbaa !370
  %i.ff = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i26, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i27 = icmp eq ptr %i.ff, %i.ei
  br i1 %.not.i21.i.i.i.i.i.i27, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i19.i.i.i.i.i.i25, !llvm.loop !3195

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.lr.ph.i.i.i.i.i.i28.preheader, %.lr.ph.i.i.i.i.i.i28
  %.035.i.i.i.i.i.i29 = phi ptr [ %.0.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i28 ], [ %.034.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i28.preheader ] ; 2 uses
  %i.fg = load i32, ptr %3, align 4, !tbaa !370
  %broadcast.splatinsert123 = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat124 = shufflevector <4 x i32> %broadcast.splatinsert123, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.fh = load ptr, ptr %.035.i.i.i.i.i.i29, align 8, !tbaa !369 ; 32 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store <4 x i32> %broadcast.splat124, ptr %i.fh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fi, align 4, !tbaa !370
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store <4 x i32> %broadcast.splat124, ptr %i.fj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fk, align 4, !tbaa !370
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 80
  store <4 x i32> %broadcast.splat124, ptr %i.fl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fm, align 4, !tbaa !370
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 112
  store <4 x i32> %broadcast.splat124, ptr %i.fn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fo, align 4, !tbaa !370
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  store <4 x i32> %broadcast.splat124, ptr %i.fp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fq, align 4, !tbaa !370
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 160
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 176
  store <4 x i32> %broadcast.splat124, ptr %i.fr, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fs, align 4, !tbaa !370
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 208
  store <4 x i32> %broadcast.splat124, ptr %i.ft, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fu, align 4, !tbaa !370
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 240
  store <4 x i32> %broadcast.splat124, ptr %i.fv, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fw, align 4, !tbaa !370
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 256
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 272
  store <4 x i32> %broadcast.splat124, ptr %i.fx, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.fy, align 4, !tbaa !370
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fh, i64 288
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fh, i64 304
  store <4 x i32> %broadcast.splat124, ptr %i.fz, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.ga, align 4, !tbaa !370
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fh, i64 320
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fh, i64 336
  store <4 x i32> %broadcast.splat124, ptr %i.gb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.gc, align 4, !tbaa !370
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fh, i64 352
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 368
  store <4 x i32> %broadcast.splat124, ptr %i.gd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.ge, align 4, !tbaa !370
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fh, i64 384
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fh, i64 400
  store <4 x i32> %broadcast.splat124, ptr %i.gf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.gg, align 4, !tbaa !370
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fh, i64 416
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fh, i64 432
  store <4 x i32> %broadcast.splat124, ptr %i.gh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.gi, align 4, !tbaa !370
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fh, i64 448
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fh, i64 464
  store <4 x i32> %broadcast.splat124, ptr %i.gj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.gk, align 4, !tbaa !370
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fh, i64 480
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fh, i64 496
  store <4 x i32> %broadcast.splat124, ptr %i.gl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat124, ptr %i.gm, align 4, !tbaa !370
  %.0.i.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.gn = icmp ult ptr %.0.i.i.i.i.i.i36, %.sroa.12.0.ptr
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i28, label %._crit_edge.i.i.i.i.i.i23, !llvm.loop !27

bb.r:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.go = phi i32 [ %i.ea, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ej, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 2 uses
  %.sroa.12.0.ptr111 = phi ptr [ %i.ds, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %.sroa.12.0.ptr, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %storemerge.i.i.i108 = phi ptr [ %i.dz, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ei, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 6 uses
  %.sroa.9.0107 = phi ptr [ %i.dn, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ef, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %.sroa.6.0105 = phi ptr [ %i.dq, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit.thread ], [ %i.ee, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit ] ; 3 uses
  %.not5.i28.i.i.i.i.i.i37 = icmp eq ptr %i.do, %storemerge.i.i.i108
  br i1 %.not5.i28.i.i.i.i.i.i37, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38.preheader

.lr.ph.i29.i.i.i.i.i.i38.preheader:               ; preds = %bb.r
  %i.gp = ptrtoaddr ptr %storemerge.i.i.i108 to i64
  %i.gq = add i64 %i.gp, -4
  %i.gr = sub i64 %i.gq, %7                       ; 2 uses
  %i.gs = lshr i64 %i.gr, 2
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.gr, 28
  br i1 %min.iters.check143, label %.lr.ph.i29.i.i.i.i.i.i38.preheader205, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader
  %n.vec145 = and i64 %i.gt, 9223372036854775800  ; 3 uses
  %i.gu = shl i64 %n.vec145, 2
  %i.gv = getelementptr i8, ptr %i.do, i64 %i.gu
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body148 ] ; 2 uses
  %i.gw = shl i64 %index149, 2
  %next.gep150 = getelementptr i8, ptr %i.do, i64 %i.gw ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep150, i64 16
  store <4 x i32> %broadcast.splat147, ptr %next.gep150, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat147, ptr %i.gx, align 4, !tbaa !370
  %index.next151 = add nuw i64 %index149, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.gy, label %middle.block152, label %vector.body148, !llvm.loop !3196

middle.block152:                                  ; preds = %vector.body148
  %cmp.n153 = icmp eq i64 %i.gt, %n.vec145
  br i1 %cmp.n153, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38.preheader205

.lr.ph.i29.i.i.i.i.i.i38.preheader205:            ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader, %middle.block152
  %.06.i30.i.i.i.i.i.i39.ph = phi ptr [ %i.do, %.lr.ph.i29.i.i.i.i.i.i38.preheader ], [ %i.gv, %middle.block152 ]
  br label %.lr.ph.i29.i.i.i.i.i.i38

.lr.ph.i29.i.i.i.i.i.i38:                         ; preds = %.lr.ph.i29.i.i.i.i.i.i38.preheader205, %.lr.ph.i29.i.i.i.i.i.i38
  %.06.i30.i.i.i.i.i.i39 = phi ptr [ %i.gz, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %.06.i30.i.i.i.i.i.i39.ph, %.lr.ph.i29.i.i.i.i.i.i38.preheader205 ] ; 2 uses
  store i32 %i.go, ptr %.06.i30.i.i.i.i.i.i39, align 4, !tbaa !370
  %i.gz = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i39, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i40 = icmp eq ptr %i.gz, %storemerge.i.i.i108
  br i1 %.not.i31.i.i.i.i.i.i40, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41, label %.lr.ph.i29.i.i.i.i.i.i38, !llvm.loop !3197

_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit41: ; preds = %.lr.ph.i19.i.i.i.i.i.i25, %.lr.ph.i29.i.i.i.i.i.i38, %middle.block139, %middle.block152, %bb.r, %._crit_edge.i.i.i.i.i.i23
  %.sroa.12.0.ptr110 = phi ptr [ %.sroa.12.0.ptr111, %middle.block152 ], [ %.sroa.12.0.ptr, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.12.0.ptr111, %bb.r ], [ %.sroa.12.0.ptr, %middle.block139 ], [ %.sroa.12.0.ptr111, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %.sroa.12.0.ptr, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %storemerge.i.i.i109 = phi ptr [ %storemerge.i.i.i108, %middle.block152 ], [ %i.ei, %._crit_edge.i.i.i.i.i.i23 ], [ %storemerge.i.i.i108, %bb.r ], [ %i.ei, %middle.block139 ], [ %storemerge.i.i.i108, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.ei, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %.sroa.9.0106 = phi ptr [ %.sroa.9.0107, %middle.block152 ], [ %i.ef, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.9.0107, %bb.r ], [ %i.ef, %middle.block139 ], [ %.sroa.9.0107, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.ef, %.lr.ph.i19.i.i.i.i.i.i25 ]
  %.sroa.6.0104 = phi ptr [ %.sroa.6.0105, %middle.block152 ], [ %i.ee, %._crit_edge.i.i.i.i.i.i23 ], [ %.sroa.6.0105, %bb.r ], [ %i.ee, %middle.block139 ], [ %.sroa.6.0105, %.lr.ph.i29.i.i.i.i.i.i38 ], [ %i.ee, %.lr.ph.i19.i.i.i.i.i.i25 ]
  store ptr %storemerge.i.i.i109, ptr %i.db, align 8, !tbaa !369
  store ptr %.sroa.6.0104, ptr %i.dp, align 8, !tbaa !369
  store ptr %.sroa.9.0106, ptr %i.de, align 8, !tbaa !369
  store ptr %.sroa.12.0.ptr110, ptr %i.dr, align 8, !tbaa !554
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  store ptr %i.a, ptr %4, align 8, !tbaa !425
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hc = load <2 x ptr>, ptr %i.hb, align 8, !tbaa !369
  store <2 x ptr> %i.hc, ptr %i.ha, align 8, !tbaa !369
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !420
  store ptr %i.hf, ptr %i.hd, align 8, !tbaa !420
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
  %8 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %9 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %11 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %12 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %13 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %14 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %15 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %16 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %17 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %18 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %19 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %20 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %21 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %22 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %23 = alloca %"struct.std::_Deque_iterator", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %24 = alloca %"struct.std::_Deque_iterator", align 8 ; 5 uses
  %25 = alloca %"struct.std::_Deque_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.std::_Deque_iterator", align 8 ; 5 uses
  %27 = alloca %"struct.std::_Deque_iterator", align 8 ; 5 uses
  %28 = alloca %"struct.std::_Deque_iterator", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !420  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !420  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %1, align 8, !tbaa !425
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !426
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !427  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !425  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2                 ; 2 uses
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !420 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.h
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = icmp ne ptr %i.af, null
  %.neg.i.i = sext i1 %i.aj to i64
  %i.ak = add nsw i64 %i.ai, %.neg.i.i
  %i.al = shl nsw i64 %i.ak, 7
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !425 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !426 ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %i.at = add nsw i64 %i.al, %i.as                ; 2 uses
  %i.au = add nsw i64 %i.at, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.av = load i32, ptr %3, align 4, !tbaa !370   ; 29 uses
  store i32 %i.av, ptr %i.a, align 4, !tbaa !370
  %i.aw = lshr i64 %i.au, 1
  %i.ax = icmp slt i64 %i.ac, %i.aw
  br i1 %i.ax, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !552, !noalias !3310 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.z, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 3 uses
  %i.bd = icmp ugt i64 %2, %i.bc
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.be = sub nuw i64 %2, %i.bc
  tail call void @_ZNSt5dequeIiSaIiEE24_M_new_elements_at_frontEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.be), !noalias !3310
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !425, !noalias !3311 ; 2 uses
  %.pre6.i = load ptr, ptr %i.ay, align 8, !tbaa !426, !noalias !3311 ; 2 uses
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  %.pre8.i = ptrtoint ptr %.pre6.i to i64
  %.pre10.i = sub i64 %.pre7.i, %.pre8.i
  %.pre12.i = ashr exact i64 %.pre10.i, 2
  %.pre326 = load ptr, ptr %i.v, align 8, !tbaa !427, !noalias !3311
  %.pre327 = load ptr, ptr %i.e, align 8, !tbaa !420, !noalias !3311
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bf = phi ptr [ %.pre327, %bb.c ], [ %i.f, %bb.b ] ; 7 uses
  %i.bg = phi ptr [ %.pre326, %bb.c ], [ %i.w, %bb.b ] ; 6 uses
  %.pre-phi13.i = phi i64 [ %.pre12.i, %bb.c ], [ %i.bc, %bb.b ]
  %i.bh = phi ptr [ %.pre6.i, %bb.c ], [ %i.az, %bb.b ] ; 4 uses
  %i.bi = phi ptr [ %.pre.i, %bb.c ], [ %i.x, %bb.b ] ; 12 uses
  %29 = ptrtoaddr ptr %i.bg to i64
  %i.bj = sub nsw i64 0, %2                       ; 2 uses
  %i.bk = sub nsw i64 %.pre-phi13.i, %2           ; 5 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  br i1 %i.bl, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp samesign ult i64 %i.bk, 128
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj
  br label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit

bb.g:                                             ; preds = %bb.e
  %i.bo = lshr i64 %i.bk, 7
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bp = ashr i64 %i.bk, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bq = phi i64 [ %i.bo, %bb.g ], [ %i.bp, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !369, !noalias !3311 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 512
  %i.bu = shl nsw i64 %i.bq, 7
  %i.bv = sub nsw i64 %i.bk, %i.bu
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  br label %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit

_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit: ; preds = %bb.f, %bb.i
  %.sroa.8283.0 = phi ptr [ %i.bh, %bb.f ], [ %i.bs, %bb.i ] ; 4 uses
  %.sroa.12287.0 = phi ptr [ %i.bg, %bb.f ], [ %i.bt, %bb.i ] ; 4 uses
  %.sroa.16.0 = phi ptr [ %i.bf, %bb.f ], [ %i.br, %bb.i ] ; 6 uses
  %storemerge.i.i.i.i = phi ptr [ %i.bn, %bb.f ], [ %i.bw, %bb.i ] ; 4 uses
  %i.bx = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bh to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = add nsw i64 %i.ca, %i.ac                ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  br i1 %i.cc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %i.cd = icmp samesign ult i64 %i.cb, 128
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ac
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.l:                                             ; preds = %bb.j
  %i.cf = lshr i64 %i.cb, 7
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt5dequeIiSaIiEE28_M_reserve_elements_at_frontEm.exit
  %i.cg = ashr i64 %i.cb, 7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ch = phi i64 [ %i.cf, %bb.l ], [ %i.cg, %bb.m ] ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !369, !noalias !3312 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 512
  %i.cl = shl nsw i64 %i.ch, 7
  %i.cm = sub nsw i64 %i.cb, %i.cl
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cm
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit:         ; preds = %bb.k, %bb.n
  %.sroa.4269.0 = phi ptr [ %i.bh, %bb.k ], [ %i.cj, %bb.n ] ; 2 uses
  %.sroa.6270.0 = phi ptr [ %i.bg, %bb.k ], [ %i.ck, %bb.n ] ; 2 uses
  %.sroa.8271.0 = phi ptr [ %i.bf, %bb.k ], [ %i.ci, %bb.n ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.ce, %bb.k ], [ %i.cn, %bb.n ] ; 2 uses
  store ptr %storemerge.i.i, ptr %1, align 8, !tbaa !369
  store ptr %.sroa.4269.0, ptr %i.o, align 8, !tbaa !369
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %.sroa.6270.0, ptr %.sroa.6270.0..sroa_idx, align 8, !tbaa !369
  store ptr %.sroa.8271.0, ptr %i.c, align 8, !tbaa !554
  %.not = icmp slt i64 %i.ac, %2
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !425 ; 9 uses
  %30 = ptrtoaddr ptr %i.co to i64                ; 2 uses
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !426 ; 9 uses
  %31 = ptrtoaddr ptr %i.cp to i64
  %i.cq = load ptr, ptr %i.v, align 8, !tbaa !427 ; 3 uses
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !420 ; 7 uses
  br i1 %.not, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  %i.cw = add nsw i64 %i.cv, %2                   ; 5 uses
  %i.cx = icmp sgt i64 %i.cw, -1
  br i1 %i.cx, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp samesign ult i64 %i.cw, 128
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.co, i64 %2
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit32

bb.r:                                             ; preds = %bb.p
  %i.da = lshr i64 %i.cw, 7
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.db = ashr i64 %i.cw, 7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dc = phi i64 [ %i.da, %bb.r ], [ %i.db, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dc ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !369, !noalias !3313 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 512
  %i.dg = shl nsw i64 %i.dc, 7
  %i.dh = sub nsw i64 %i.cw, %i.dg
  %i.di = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dh
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit32

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit32:       ; preds = %bb.q, %bb.t
  %.sroa.6262.0 = phi ptr [ %i.cp, %bb.q ], [ %i.de, %bb.t ] ; 2 uses
  %.sroa.10264.0 = phi ptr [ %i.cq, %bb.q ], [ %i.df, %bb.t ] ; 2 uses
  %.sroa.14266.0 = phi ptr [ %i.cr, %bb.q ], [ %i.dd, %bb.t ] ; 2 uses
  %storemerge.i.i31 = phi ptr [ %i.cz, %bb.q ], [ %i.di, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !3314
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !3315
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !3315
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !3315
  store ptr %i.co, ptr %20, align 8, !tbaa !425, !noalias !3316
  %i.dj = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.cp, ptr %i.dj, align 8, !tbaa !426, !noalias !3316
  %i.dk = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %i.cq, ptr %i.dk, align 8, !tbaa !427, !noalias !3316
  %i.dl = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.cr, ptr %i.dl, align 8, !tbaa !420, !noalias !3316
  store ptr %storemerge.i.i31, ptr %21, align 8, !tbaa !425, !noalias !3316
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %.sroa.6262.0, ptr %i.dm, align 8, !tbaa !426, !noalias !3316
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %.sroa.10264.0, ptr %i.dn, align 8, !tbaa !427, !noalias !3316
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %.sroa.14266.0, ptr %i.do, align 8, !tbaa !420, !noalias !3316
  store ptr %storemerge.i.i.i.i, ptr %22, align 8, !tbaa !425, !noalias !3316
  %i.dp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.sroa.8283.0, ptr %i.dp, align 8, !tbaa !426, !noalias !3316
  %i.dq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %.sroa.12287.0, ptr %i.dq, align 8, !tbaa !427, !noalias !3316
  %i.dr = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %.sroa.16.0, ptr %i.dr, align 8, !tbaa !420, !noalias !3316
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %23, ptr noundef nonnull align 8 dead_on_return %20, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !3314
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8, !tbaa !369
  store ptr %.sroa.8283.0, ptr %i.ay, align 8, !tbaa !369
  store ptr %.sroa.12287.0, ptr %i.v, align 8, !tbaa !369
  store ptr %.sroa.16.0, ptr %i.e, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !3318
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !3318
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !3318
  store ptr %storemerge.i.i31, ptr %16, align 8, !tbaa !425, !noalias !3319
  %i.ds = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.6262.0, ptr %i.ds, align 8, !tbaa !426, !noalias !3319
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.sroa.10264.0, ptr %i.dt, align 8, !tbaa !427, !noalias !3319
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %.sroa.14266.0, ptr %i.du, align 8, !tbaa !420, !noalias !3319
  %i.dv = load <2 x ptr>, ptr %1, align 8, !tbaa !369
  store <2 x ptr> %i.dv, ptr %17, align 16, !tbaa !369, !noalias !3319
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dx = load <2 x ptr>, ptr %.sroa.6270.0..sroa_idx, align 8, !tbaa !418
  store <2 x ptr> %i.dx, ptr %i.dw, align 16, !tbaa !418, !noalias !3319
  store ptr %i.bi, ptr %18, align 8, !tbaa !425, !noalias !3319
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bh, ptr %i.dy, align 8, !tbaa !426, !noalias !3319
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.bg, ptr %i.dz, align 8, !tbaa !427, !noalias !3319
  %i.ea = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.bf, ptr %i.ea, align 8, !tbaa !420, !noalias !3319
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %19, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !3318
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !3317
  %i.eb = load ptr, ptr %1, align 8, !tbaa !425, !noalias !3320 ; 5 uses
  %i.ec = load ptr, ptr %i.o, align 8, !tbaa !426, !noalias !3320 ; 5 uses
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !420, !noalias !3320 ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = ashr exact i64 %i.eg, 2
  %i.ei = sub nsw i64 %i.eh, %2                   ; 5 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  br i1 %i.ej, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ek = icmp samesign ult i64 %i.ei, 128
  br i1 %i.ek, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = lshr i64 %i.ei, 7
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.em = ashr i64 %i.ei, 7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.en = phi i64 [ %i.el, %bb.x ], [ %i.em, %bb.y ] ; 3 uses
  %.idx306 = shl nsw i64 %i.en, 3
  %i.eo = getelementptr inbounds i8, ptr %i.ed, i64 %.idx306 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !369, !noalias !3320 ; 2 uses
  %i.eq = shl i64 %i.en, 9                        ; 2 uses
  %i.er = shl i64 %i.ei, 2
  %.idx307 = sub i64 %i.er, %i.eq                 ; 4 uses
  %.not5.i.i.i.i = icmp eq i64 %.idx307, 512
  br i1 %.not5.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.z
  %i.es = shl i64 %2, 2
  %i.et = add i64 %i.eq, %i.es
  %i.eu = add i64 %i.et, 508
  %i.ev = sub i64 %i.eu, %i.eg                    ; 2 uses
  %i.ew = lshr i64 %i.ev, 2
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check492 = icmp ult i64 %i.ev, 28
  br i1 %min.iters.check492, label %.lr.ph.i.i.i.i.preheader643, label %vector.ph493

vector.ph493:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec494 = and i64 %i.ex, 9223372036854775800  ; 3 uses
  %i.ey = shl i64 %n.vec494, 2
  %i.ez = add i64 %.idx307, %i.ey
  %broadcast.splatinsert495 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat496 = shufflevector <4 x i32> %broadcast.splatinsert495, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ep, i64 %.idx307
  br label %vector.body497

vector.body497:                                   ; preds = %vector.body497, %vector.ph493
  %index498 = phi i64 [ 0, %vector.ph493 ], [ %index.next499, %vector.body497 ] ; 2 uses
  %i.fb = shl i64 %index498, 2
  %i.fc = getelementptr i8, ptr %i.fa, i64 %i.fb  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %broadcast.splat496, ptr %i.fc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat496, ptr %i.fd, align 4, !tbaa !370
  %index.next499 = add nuw i64 %index498, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.fe, label %middle.block500, label %vector.body497, !llvm.loop !3232

middle.block500:                                  ; preds = %vector.body497
  %cmp.n501 = icmp eq i64 %i.ex, %n.vec494
  br i1 %cmp.n501, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader643

.lr.ph.i.i.i.i.preheader643:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block500
  %.06.i.i.i.i.idx.ph = phi i64 [ %.idx307, %.lr.ph.i.i.i.i.preheader ], [ %i.ez, %middle.block500 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader643, %.lr.ph.i.i.i.i
  %.06.i.i.i.i.idx = phi i64 [ %.06.i.i.i.i.add, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.idx.ph, %.lr.ph.i.i.i.i.preheader643 ] ; 2 uses
  %.06.i.i.i.i.ptr = getelementptr inbounds i8, ptr %i.ep, i64 %.06.i.i.i.i.idx
  store i32 %i.av, ptr %.06.i.i.i.i.ptr, align 4, !tbaa !370
  %.06.i.i.i.i.add = add nsw i64 %.06.i.i.i.i.idx, 4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.06.i.i.i.i.add, 512
  br i1 %.not.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3233

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block500, %bb.z
  %i.ff = icmp slt i64 %i.en, -1
  br i1 %i.ff, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i
  %.034.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %broadcast.splatinsert505 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat506 = shufflevector <4 x i32> %broadcast.splatinsert505, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIiSaIiEE13_M_insert_auxESt15_Deque_iteratorIiRiPiEmRKi:bb.a
  %i.fh = sub i64 %i.fg, %i.ef                    ; 2 uses
  %i.fi = lshr i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check512 = icmp ult i64 %i.fh, 28
  br i1 %min.iters.check512, label %.lr.ph.i19.i.i.i.preheader641, label %vector.ph513

vector.ph513:                                     ; preds = %.lr.ph.i19.i.i.i.preheader
  %n.vec514 = and i64 %i.fj, 9223372036854775800  ; 3 uses
  %i.fk = shl i64 %n.vec514, 2
  %i.fl = getelementptr i8, ptr %i.ec, i64 %i.fk
  %broadcast.splatinsert515 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat516 = shufflevector <4 x i32> %broadcast.splatinsert515, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body517

vector.body517:                                   ; preds = %vector.body517, %vector.ph513
  %index518 = phi i64 [ 0, %vector.ph513 ], [ %index.next520, %vector.body517 ] ; 2 uses
  %i.fm = shl i64 %index518, 2
  %next.gep519 = getelementptr i8, ptr %i.ec, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep519, i64 16
  store <4 x i32> %broadcast.splat516, ptr %next.gep519, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat516, ptr %i.fn, align 4, !tbaa !370
  %index.next520 = add nuw i64 %index518, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next520, %n.vec514
  br i1 %i.fo, label %middle.block521, label %vector.body517, !llvm.loop !3234

middle.block521:                                  ; preds = %vector.body517
  %cmp.n522 = icmp eq i64 %i.fj, %n.vec514
  br i1 %cmp.n522, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i.preheader641

.lr.ph.i19.i.i.i.preheader641:                    ; preds = %.lr.ph.i19.i.i.i.preheader, %middle.block521
  %.06.i20.i.i.i.ph = phi ptr [ %i.ec, %.lr.ph.i19.i.i.i.preheader ], [ %i.fl, %middle.block521 ]
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i.preheader641, %.lr.ph.i19.i.i.i
  %.06.i20.i.i.i = phi ptr [ %i.fp, %.lr.ph.i19.i.i.i ], [ %.06.i20.i.i.i.ph, %.lr.ph.i19.i.i.i.preheader641 ] ; 2 uses
  store i32 %i.av, ptr %.06.i20.i.i.i, align 4, !tbaa !370
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %i.fp, %i.eb
  br i1 %.not.i21.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i, !llvm.loop !3235

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.035.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.034.i.i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.fq = load ptr, ptr %.035.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x i32> %broadcast.splat506, ptr %i.fq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.fr, align 4, !tbaa !370
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  store <4 x i32> %broadcast.splat506, ptr %i.fs, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.ft, align 4, !tbaa !370
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <4 x i32> %broadcast.splat506, ptr %i.fu, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.fv, align 4, !tbaa !370
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  store <4 x i32> %broadcast.splat506, ptr %i.fw, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.fx, align 4, !tbaa !370
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 144
  store <4 x i32> %broadcast.splat506, ptr %i.fy, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.fz, align 4, !tbaa !370
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 160
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 176
  store <4 x i32> %broadcast.splat506, ptr %i.ga, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gb, align 4, !tbaa !370
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 192
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 208
  store <4 x i32> %broadcast.splat506, ptr %i.gc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gd, align 4, !tbaa !370
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 224
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 240
  store <4 x i32> %broadcast.splat506, ptr %i.ge, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gf, align 4, !tbaa !370
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 256
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 272
  store <4 x i32> %broadcast.splat506, ptr %i.gg, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gh, align 4, !tbaa !370
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 288
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fq, i64 304
  store <4 x i32> %broadcast.splat506, ptr %i.gi, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gj, align 4, !tbaa !370
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 320
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 336
  store <4 x i32> %broadcast.splat506, ptr %i.gk, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gl, align 4, !tbaa !370
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 352
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 368
  store <4 x i32> %broadcast.splat506, ptr %i.gm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gn, align 4, !tbaa !370
  %i.go = getelementptr inbounds nuw i8, ptr %i.fq, i64 384
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 400
  store <4 x i32> %broadcast.splat506, ptr %i.go, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gp, align 4, !tbaa !370
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 416
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fq, i64 432
  store <4 x i32> %broadcast.splat506, ptr %i.gq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gr, align 4, !tbaa !370
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 448
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fq, i64 464
  store <4 x i32> %broadcast.splat506, ptr %i.gs, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gt, align 4, !tbaa !370
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fq, i64 480
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fq, i64 496
  store <4 x i32> %broadcast.splat506, ptr %i.gu, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat506, ptr %i.gv, align 4, !tbaa !370
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 8 ; 2 uses
  %i.gw = icmp ult ptr %.0.i.i.i, %i.ed
  br i1 %i.gw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !27

bb.aa:                                            ; preds = %bb.w
  %.idx401 = shl nsw i64 %i.bj, 2
  %i.gx = getelementptr inbounds i8, ptr %i.eb, i64 %.idx401 ; 3 uses
  %.not5.i28.i.i.i = icmp eq i64 %2, 0
  br i1 %.not5.i28.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i.preheader

.lr.ph.i29.i.i.i.preheader:                       ; preds = %bb.aa
  %i.gy = add i64 %2, 4611686018427387903
  %i.gz = and i64 %i.gy, 4611686018427387903      ; 2 uses
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check525 = icmp samesign ult i64 %i.gz, 7
  br i1 %min.iters.check525, label %.lr.ph.i29.i.i.i.preheader639, label %vector.ph526

vector.ph526:                                     ; preds = %.lr.ph.i29.i.i.i.preheader
  %n.vec527 = and i64 %i.ha, 9223372036854775800  ; 3 uses
  %i.hb = shl i64 %n.vec527, 2
  %i.hc = getelementptr i8, ptr %i.gx, i64 %i.hb
  %broadcast.splatinsert528 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat529 = shufflevector <4 x i32> %broadcast.splatinsert528, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %vector.ph526
  %index531 = phi i64 [ 0, %vector.ph526 ], [ %index.next533, %vector.body530 ] ; 2 uses
  %i.hd = shl i64 %index531, 2
  %next.gep532 = getelementptr i8, ptr %i.gx, i64 %i.hd ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep532, i64 16
  store <4 x i32> %broadcast.splat529, ptr %next.gep532, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat529, ptr %i.he, align 4, !tbaa !370
  %index.next533 = add nuw i64 %index531, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next533, %n.vec527
  br i1 %i.hf, label %middle.block534, label %vector.body530, !llvm.loop !3236

middle.block534:                                  ; preds = %vector.body530
  %cmp.n535 = icmp eq i64 %i.ha, %n.vec527
  br i1 %cmp.n535, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i.preheader639

.lr.ph.i29.i.i.i.preheader639:                    ; preds = %.lr.ph.i29.i.i.i.preheader, %middle.block534
  %.06.i30.i.i.i.ph = phi ptr [ %i.gx, %.lr.ph.i29.i.i.i.preheader ], [ %i.hc, %middle.block534 ]
  br label %.lr.ph.i29.i.i.i

.lr.ph.i29.i.i.i:                                 ; preds = %.lr.ph.i29.i.i.i.preheader639, %.lr.ph.i29.i.i.i
  %.06.i30.i.i.i = phi ptr [ %i.hg, %.lr.ph.i29.i.i.i ], [ %.06.i30.i.i.i.ph, %.lr.ph.i29.i.i.i.preheader639 ] ; 2 uses
  store i32 %i.av, ptr %.06.i30.i.i.i, align 4, !tbaa !370
  %i.hg = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.hg, %i.eb
  br i1 %.not.i31.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i, !llvm.loop !3237

bb.ab:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit32
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.ac:                                            ; preds = %bb.u
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.ad:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !3321
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !3322
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !3322
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !3322
  store ptr %i.co, ptr %12, align 8, !tbaa !425, !noalias !3323
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cp, ptr %i.hj, align 8, !tbaa !426, !noalias !3323
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.cq, ptr %i.hk, align 8, !tbaa !427, !noalias !3323
  %i.hl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.cr, ptr %i.hl, align 8, !tbaa !420, !noalias !3323
  store ptr %storemerge.i.i, ptr %13, align 8, !tbaa !425, !noalias !3323
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.4269.0, ptr %i.hm, align 8, !tbaa !426, !noalias !3323
  %i.hn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.6270.0, ptr %i.hn, align 8, !tbaa !427, !noalias !3323
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %.sroa.8271.0, ptr %i.ho, align 8, !tbaa !420, !noalias !3323
  store ptr %storemerge.i.i.i.i, ptr %14, align 8, !tbaa !425, !noalias !3323
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.8283.0, ptr %i.hp, align 8, !tbaa !426, !noalias !3323
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.sroa.12287.0, ptr %i.hq, align 8, !tbaa !427, !noalias !3323
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %.sroa.16.0, ptr %i.hr, align 8, !tbaa !420, !noalias !3323
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %15, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !3322
  %i.hs = load ptr, ptr %15, align 8, !tbaa !425, !noalias !3324 ; 9 uses
  %32 = ptrtoaddr ptr %i.hs to i64                ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !427, !noalias !3324 ; 3 uses
  %33 = ptrtoaddr ptr %i.hu to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !420, !noalias !3324 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !3321
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hw, %i.cr
  br i1 %.not.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.noexc
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.hu
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ae
  %i.hx = add i64 %33, -4
  %i.hy = sub i64 %i.hx, %32                      ; 2 uses
  %i.hz = lshr i64 %i.hy, 2
  %i.ia = add nuw nsw i64 %i.hz, 1                ; 2 uses
  %min.iters.check538 = icmp ult i64 %i.hy, 28
  br i1 %min.iters.check538, label %.lr.ph.i.i.i.i.i.i.i.i.preheader638, label %vector.ph539

vector.ph539:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec540 = and i64 %i.ia, 9223372036854775800  ; 3 uses
  %i.ib = shl i64 %n.vec540, 2
  %i.ic = getelementptr i8, ptr %i.hs, i64 %i.ib
  %broadcast.splatinsert541 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat542 = shufflevector <4 x i32> %broadcast.splatinsert541, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph539
  %index544 = phi i64 [ 0, %vector.ph539 ], [ %index.next546, %vector.body543 ] ; 2 uses
  %i.id = shl i64 %index544, 2
  %next.gep545 = getelementptr i8, ptr %i.hs, i64 %i.id ; 2 uses
  %i.ie = getelementptr i8, ptr %next.gep545, i64 16
  store <4 x i32> %broadcast.splat542, ptr %next.gep545, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat542, ptr %i.ie, align 4, !tbaa !370
  %index.next546 = add nuw i64 %index544, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next546, %n.vec540
  br i1 %i.if, label %middle.block547, label %vector.body543, !llvm.loop !3254

middle.block547:                                  ; preds = %vector.body543
  %cmp.n548 = icmp eq i64 %i.ia, %n.vec540
  br i1 %cmp.n548, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader638

.lr.ph.i.i.i.i.i.i.i.i.preheader638:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block547
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ic, %middle.block547 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader638, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader638 ] ; 2 uses
  store i32 %i.av, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !370
  %i.ig = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ig, %i.hu
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !3255

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block547, %bb.ae
  %.034.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.ih = icmp ult ptr %.034.i.i.i.i.i.i.i, %i.cr
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i
  %broadcast.splatinsert552 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat553 = shufflevector <4 x i32> %broadcast.splatinsert552, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i.i
  %.not5.i18.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.co
  br i1 %.not5.i18.i.i.i.i.i.i.i, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i19.i.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ii = add i64 %30, -4
  %i.ij = sub i64 %i.ii, %31                      ; 2 uses
  %i.ik = lshr i64 %i.ij, 2
  %i.il = add nuw nsw i64 %i.ik, 1                ; 2 uses
  %min.iters.check559 = icmp ult i64 %i.ij, 28
  br i1 %min.iters.check559, label %.lr.ph.i19.i.i.i.i.i.i.i.preheader636, label %vector.ph560

vector.ph560:                                     ; preds = %.lr.ph.i19.i.i.i.i.i.i.i.preheader
  %n.vec561 = and i64 %i.il, 9223372036854775800  ; 3 uses
  %i.im = shl i64 %n.vec561, 2
  %i.in = getelementptr i8, ptr %i.cp, i64 %i.im
  %broadcast.splatinsert562 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat563 = shufflevector <4 x i32> %broadcast.splatinsert562, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph560
  %index565 = phi i64 [ 0, %vector.ph560 ], [ %index.next567, %vector.body564 ] ; 2 uses
  %i.io = shl i64 %index565, 2
  %next.gep566 = getelementptr i8, ptr %i.cp, i64 %i.io ; 2 uses
  %i.ip = getelementptr i8, ptr %next.gep566, i64 16
  store <4 x i32> %broadcast.splat563, ptr %next.gep566, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat563, ptr %i.ip, align 4, !tbaa !370
  %index.next567 = add nuw i64 %index565, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next567, %n.vec561
  br i1 %i.iq, label %middle.block568, label %vector.body564, !llvm.loop !3256

middle.block568:                                  ; preds = %vector.body564
  %cmp.n569 = icmp eq i64 %i.il, %n.vec561
  br i1 %cmp.n569, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i19.i.i.i.i.i.i.i.preheader636

.lr.ph.i19.i.i.i.i.i.i.i.preheader636:            ; preds = %.lr.ph.i19.i.i.i.i.i.i.i.preheader, %middle.block568
  %.06.i20.i.i.i.i.i.i.i.ph = phi ptr [ %i.cp, %.lr.ph.i19.i.i.i.i.i.i.i.preheader ], [ %i.in, %middle.block568 ]
  br label %.lr.ph.i19.i.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i19.i.i.i.i.i.i.i.preheader636, %.lr.ph.i19.i.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i.i = phi ptr [ %i.ir, %.lr.ph.i19.i.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.i.preheader636 ] ; 2 uses
  store i32 %i.av, ptr %.06.i20.i.i.i.i.i.i.i, align 4, !tbaa !370
  %i.ir = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.ir, %i.co
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i19.i.i.i.i.i.i.i, !llvm.loop !3257

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.035.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.is = load ptr, ptr %.035.i.i.i.i.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <4 x i32> %broadcast.splat553, ptr %i.is, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.it, align 4, !tbaa !370
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  store <4 x i32> %broadcast.splat553, ptr %i.iu, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.iv, align 4, !tbaa !370
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store <4 x i32> %broadcast.splat553, ptr %i.iw, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.ix, align 4, !tbaa !370
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 96
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 112
  store <4 x i32> %broadcast.splat553, ptr %i.iy, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.iz, align 4, !tbaa !370
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 128
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 144
  store <4 x i32> %broadcast.splat553, ptr %i.ja, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jb, align 4, !tbaa !370
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 160
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  store <4 x i32> %broadcast.splat553, ptr %i.jc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jd, align 4, !tbaa !370
  %i.je = getelementptr inbounds nuw i8, ptr %i.is, i64 192
  %i.jf = getelementptr inbounds nuw i8, ptr %i.is, i64 208
  store <4 x i32> %broadcast.splat553, ptr %i.je, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jf, align 4, !tbaa !370
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 224
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 240
  store <4 x i32> %broadcast.splat553, ptr %i.jg, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jh, align 4, !tbaa !370
  %i.ji = getelementptr inbounds nuw i8, ptr %i.is, i64 256
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 272
  store <4 x i32> %broadcast.splat553, ptr %i.ji, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jj, align 4, !tbaa !370
  %i.jk = getelementptr inbounds nuw i8, ptr %i.is, i64 288
  %i.jl = getelementptr inbounds nuw i8, ptr %i.is, i64 304
  store <4 x i32> %broadcast.splat553, ptr %i.jk, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jl, align 4, !tbaa !370
  %i.jm = getelementptr inbounds nuw i8, ptr %i.is, i64 320
  %i.jn = getelementptr inbounds nuw i8, ptr %i.is, i64 336
  store <4 x i32> %broadcast.splat553, ptr %i.jm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jn, align 4, !tbaa !370
  %i.jo = getelementptr inbounds nuw i8, ptr %i.is, i64 352
  %i.jp = getelementptr inbounds nuw i8, ptr %i.is, i64 368
  store <4 x i32> %broadcast.splat553, ptr %i.jo, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jp, align 4, !tbaa !370
  %i.jq = getelementptr inbounds nuw i8, ptr %i.is, i64 384
  %i.jr = getelementptr inbounds nuw i8, ptr %i.is, i64 400
  store <4 x i32> %broadcast.splat553, ptr %i.jq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jr, align 4, !tbaa !370
  %i.js = getelementptr inbounds nuw i8, ptr %i.is, i64 416
  %i.jt = getelementptr inbounds nuw i8, ptr %i.is, i64 432
  store <4 x i32> %broadcast.splat553, ptr %i.js, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jt, align 4, !tbaa !370
  %i.ju = getelementptr inbounds nuw i8, ptr %i.is, i64 448
  %i.jv = getelementptr inbounds nuw i8, ptr %i.is, i64 464
  store <4 x i32> %broadcast.splat553, ptr %i.ju, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jv, align 4, !tbaa !370
  %i.jw = getelementptr inbounds nuw i8, ptr %i.is, i64 480
  %i.jx = getelementptr inbounds nuw i8, ptr %i.is, i64 496
  store <4 x i32> %broadcast.splat553, ptr %i.jw, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat553, ptr %i.jx, align 4, !tbaa !370
  %.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jy = icmp ult ptr %.0.i.i.i.i.i.i.i, %i.cr
  br i1 %i.jy, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !27

bb.af:                                            ; preds = %.noexc
  %.not5.i28.i.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.co
  br i1 %.not5.i28.i.i.i.i.i.i.i, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i29.i.i.i.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.i.i.i.preheader:               ; preds = %bb.af
  %i.jz = add i64 %30, -4
  %i.ka = sub i64 %i.jz, %32                      ; 2 uses
  %i.kb = lshr i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check572 = icmp ult i64 %i.ka, 28
  br i1 %min.iters.check572, label %.lr.ph.i29.i.i.i.i.i.i.i.preheader635, label %vector.ph573

vector.ph573:                                     ; preds = %.lr.ph.i29.i.i.i.i.i.i.i.preheader
  %n.vec574 = and i64 %i.kc, 9223372036854775800  ; 3 uses
  %i.kd = shl i64 %n.vec574, 2
  %i.ke = getelementptr i8, ptr %i.hs, i64 %i.kd
  %broadcast.splatinsert575 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat576 = shufflevector <4 x i32> %broadcast.splatinsert575, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %vector.ph573
  %index578 = phi i64 [ 0, %vector.ph573 ], [ %index.next580, %vector.body577 ] ; 2 uses
  %i.kf = shl i64 %index578, 2
  %next.gep579 = getelementptr i8, ptr %i.hs, i64 %i.kf ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep579, i64 16
  store <4 x i32> %broadcast.splat576, ptr %next.gep579, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat576, ptr %i.kg, align 4, !tbaa !370
  %index.next580 = add nuw i64 %index578, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next580, %n.vec574
  br i1 %i.kh, label %middle.block581, label %vector.body577, !llvm.loop !3258

middle.block581:                                  ; preds = %vector.body577
  %cmp.n582 = icmp eq i64 %i.kc, %n.vec574
  br i1 %cmp.n582, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i29.i.i.i.i.i.i.i.preheader635

.lr.ph.i29.i.i.i.i.i.i.i.preheader635:            ; preds = %.lr.ph.i29.i.i.i.i.i.i.i.preheader, %middle.block581
  %.06.i30.i.i.i.i.i.i.i.ph = phi ptr [ %i.hs, %.lr.ph.i29.i.i.i.i.i.i.i.preheader ], [ %i.ke, %middle.block581 ]
  br label %.lr.ph.i29.i.i.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i29.i.i.i.i.i.i.i.preheader635, %.lr.ph.i29.i.i.i.i.i.i.i
  %.06.i30.i.i.i.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i29.i.i.i.i.i.i.i ], [ %.06.i30.i.i.i.i.i.i.i.ph, %.lr.ph.i29.i.i.i.i.i.i.i.preheader635 ] ; 2 uses
  store i32 %i.av, ptr %.06.i30.i.i.i.i.i.i.i, align 4, !tbaa !370
  %i.ki = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i.i = icmp eq ptr %i.ki, %i.co
  br i1 %.not.i31.i.i.i.i.i.i.i, label %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit, label %.lr.ph.i29.i.i.i.i.i.i.i, !llvm.loop !3259

_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.i.i.i.i, %middle.block568, %middle.block581, %bb.af, %._crit_edge.i.i.i.i.i.i.i
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8, !tbaa !369
  store ptr %.sroa.8283.0, ptr %i.ay, align 8, !tbaa !369
  store ptr %.sroa.12287.0, ptr %i.v, align 8, !tbaa !369
  store ptr %.sroa.16.0, ptr %i.e, align 8, !tbaa !554
  %i.kj = load ptr, ptr %1, align 8, !tbaa !425   ; 5 uses
  %34 = ptrtoaddr ptr %i.kj to i64                ; 2 uses
  %i.kk = load ptr, ptr %i.o, align 8, !tbaa !426 ; 5 uses
  %35 = ptrtoaddr ptr %i.kk to i64
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !420 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bf, %i.kl
  br i1 %.not.i.i.i33, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit
  %.not5.i.i.i.i34 = icmp eq ptr %i.bi, %i.bg
  br i1 %.not5.i.i.i.i34, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38, label %.lr.ph.i.i.i.i35.preheader

.lr.ph.i.i.i.i35.preheader:                       ; preds = %bb.ag
  %i.km = add i64 %29, -4
  %i.kn = sub i64 %i.km, %i.bx                    ; 2 uses
  %i.ko = lshr i64 %i.kn, 2
  %i.kp = add nuw nsw i64 %i.ko, 1                ; 2 uses
  %min.iters.check585 = icmp ult i64 %i.kn, 28
  br i1 %min.iters.check585, label %.lr.ph.i.i.i.i35.preheader634, label %vector.ph586

vector.ph586:                                     ; preds = %.lr.ph.i.i.i.i35.preheader
  %n.vec587 = and i64 %i.kp, 9223372036854775800  ; 3 uses
  %i.kq = shl i64 %n.vec587, 2
  %i.kr = getelementptr i8, ptr %i.bi, i64 %i.kq
  %broadcast.splatinsert588 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat589 = shufflevector <4 x i32> %broadcast.splatinsert588, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph586
  %index591 = phi i64 [ 0, %vector.ph586 ], [ %index.next593, %vector.body590 ] ; 2 uses
  %i.ks = shl i64 %index591, 2
  %next.gep592 = getelementptr i8, ptr %i.bi, i64 %i.ks ; 2 uses
  %i.kt = getelementptr i8, ptr %next.gep592, i64 16
  store <4 x i32> %broadcast.splat589, ptr %next.gep592, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat589, ptr %i.kt, align 4, !tbaa !370
  %index.next593 = add nuw i64 %index591, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next593, %n.vec587
  br i1 %i.ku, label %middle.block594, label %vector.body590, !llvm.loop !3260

middle.block594:                                  ; preds = %vector.body590
  %cmp.n595 = icmp eq i64 %i.kp, %n.vec587
  br i1 %cmp.n595, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38, label %.lr.ph.i.i.i.i35.preheader634

.lr.ph.i.i.i.i35.preheader634:                    ; preds = %.lr.ph.i.i.i.i35.preheader, %middle.block594
  %.06.i.i.i.i36.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i35.preheader ], [ %i.kr, %middle.block594 ]
  br label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %.lr.ph.i.i.i.i35.preheader634, %.lr.ph.i.i.i.i35
  %.06.i.i.i.i36 = phi ptr [ %i.kv, %.lr.ph.i.i.i.i35 ], [ %.06.i.i.i.i36.ph, %.lr.ph.i.i.i.i35.preheader634 ] ; 2 uses
  store i32 %i.av, ptr %.06.i.i.i.i36, align 4, !tbaa !370
  %i.kv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i36, i64 4 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.kv, %i.bg
  br i1 %.not.i.i.i.i37, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38, label %.lr.ph.i.i.i.i35, !llvm.loop !3261

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38: ; preds = %.lr.ph.i.i.i.i35, %middle.block594, %bb.ag
  %.034.i.i.i39 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.kw = icmp ult ptr %.034.i.i.i39, %i.kl
  br i1 %i.kw, label %.lr.ph.i.i.i45.preheader, label %._crit_edge.i.i.i40

.lr.ph.i.i.i45.preheader:                         ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38
  %broadcast.splatinsert599 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat600 = shufflevector <4 x i32> %broadcast.splatinsert599, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.lr.ph.i.i.i45

._crit_edge.i.i.i40:                              ; preds = %.lr.ph.i.i.i45, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i38
  %.not5.i18.i.i.i41 = icmp eq ptr %i.kk, %i.kj
  br i1 %.not5.i18.i.i.i41, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i42.preheader

.lr.ph.i19.i.i.i42.preheader:                     ; preds = %._crit_edge.i.i.i40
  %i.kx = add i64 %34, -4
  %i.ky = sub i64 %i.kx, %35                      ; 2 uses
  %i.kz = lshr i64 %i.ky, 2
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check606 = icmp ult i64 %i.ky, 28
  br i1 %min.iters.check606, label %.lr.ph.i19.i.i.i42.preheader632, label %vector.ph607

vector.ph607:                                     ; preds = %.lr.ph.i19.i.i.i42.preheader
  %n.vec608 = and i64 %i.la, 9223372036854775800  ; 3 uses
  %i.lb = shl i64 %n.vec608, 2
  %i.lc = getelementptr i8, ptr %i.kk, i64 %i.lb
  %broadcast.splatinsert609 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat610 = shufflevector <4 x i32> %broadcast.splatinsert609, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph607
  %index612 = phi i64 [ 0, %vector.ph607 ], [ %index.next614, %vector.body611 ] ; 2 uses
  %i.ld = shl i64 %index612, 2
  %next.gep613 = getelementptr i8, ptr %i.kk, i64 %i.ld ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep613, i64 16
  store <4 x i32> %broadcast.splat610, ptr %next.gep613, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat610, ptr %i.le, align 4, !tbaa !370
  %index.next614 = add nuw i64 %index612, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next614, %n.vec608
  br i1 %i.lf, label %middle.block615, label %vector.body611, !llvm.loop !3262

middle.block615:                                  ; preds = %vector.body611
  %cmp.n616 = icmp eq i64 %i.la, %n.vec608
  br i1 %cmp.n616, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i42.preheader632

.lr.ph.i19.i.i.i42.preheader632:                  ; preds = %.lr.ph.i19.i.i.i42.preheader, %middle.block615
  %.06.i20.i.i.i43.ph = phi ptr [ %i.kk, %.lr.ph.i19.i.i.i42.preheader ], [ %i.lc, %middle.block615 ]
  br label %.lr.ph.i19.i.i.i42

.lr.ph.i19.i.i.i42:                               ; preds = %.lr.ph.i19.i.i.i42.preheader632, %.lr.ph.i19.i.i.i42
  %.06.i20.i.i.i43 = phi ptr [ %i.lg, %.lr.ph.i19.i.i.i42 ], [ %.06.i20.i.i.i43.ph, %.lr.ph.i19.i.i.i42.preheader632 ] ; 2 uses
  store i32 %i.av, ptr %.06.i20.i.i.i43, align 4, !tbaa !370
  %i.lg = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i43, i64 4 ; 2 uses
  %.not.i21.i.i.i44 = icmp eq ptr %i.lg, %i.kj
  br i1 %.not.i21.i.i.i44, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i42, !llvm.loop !3263

.lr.ph.i.i.i45:                                   ; preds = %.lr.ph.i.i.i45.preheader, %.lr.ph.i.i.i45
  %.035.i.i.i46 = phi ptr [ %.0.i.i.i53, %.lr.ph.i.i.i45 ], [ %.034.i.i.i39, %.lr.ph.i.i.i45.preheader ] ; 2 uses
  %i.lh = load ptr, ptr %.035.i.i.i46, align 8, !tbaa !369 ; 32 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x i32> %broadcast.splat600, ptr %i.lh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.li, align 4, !tbaa !370
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 48
  store <4 x i32> %broadcast.splat600, ptr %i.lj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lk, align 4, !tbaa !370
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 80
  store <4 x i32> %broadcast.splat600, ptr %i.ll, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lm, align 4, !tbaa !370
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 112
  store <4 x i32> %broadcast.splat600, ptr %i.ln, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lo, align 4, !tbaa !370
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 128
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 144
  store <4 x i32> %broadcast.splat600, ptr %i.lp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lq, align 4, !tbaa !370
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lh, i64 160
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 176
  store <4 x i32> %broadcast.splat600, ptr %i.lr, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.ls, align 4, !tbaa !370
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 192
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lh, i64 208
  store <4 x i32> %broadcast.splat600, ptr %i.lt, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lu, align 4, !tbaa !370
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lh, i64 224
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 240
  store <4 x i32> %broadcast.splat600, ptr %i.lv, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.lw, align 4, !tbaa !370
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lh, i64 256
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lh, i64 272
  store <4 x i32> %broadcast.splat600, ptr %i.lx, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.ly, align 4, !tbaa !370
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lh, i64 288
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 304
  store <4 x i32> %broadcast.splat600, ptr %i.lz, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.ma, align 4, !tbaa !370
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 320
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lh, i64 336
  store <4 x i32> %broadcast.splat600, ptr %i.mb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.mc, align 4, !tbaa !370
  %i.md = getelementptr inbounds nuw i8, ptr %i.lh, i64 352
  %i.me = getelementptr inbounds nuw i8, ptr %i.lh, i64 368
  store <4 x i32> %broadcast.splat600, ptr %i.md, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.me, align 4, !tbaa !370
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lh, i64 384
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lh, i64 400
  store <4 x i32> %broadcast.splat600, ptr %i.mf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.mg, align 4, !tbaa !370
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lh, i64 416
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 432
  store <4 x i32> %broadcast.splat600, ptr %i.mh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.mi, align 4, !tbaa !370
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lh, i64 448
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lh, i64 464
  store <4 x i32> %broadcast.splat600, ptr %i.mj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.mk, align 4, !tbaa !370
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lh, i64 480
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lh, i64 496
  store <4 x i32> %broadcast.splat600, ptr %i.ml, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat600, ptr %i.mm, align 4, !tbaa !370
  %.0.i.i.i53 = getelementptr inbounds nuw i8, ptr %.035.i.i.i46, i64 8 ; 2 uses
  %i.mn = icmp ult ptr %.0.i.i.i53, %i.kl
  br i1 %i.mn, label %.lr.ph.i.i.i45, label %._crit_edge.i.i.i40, !llvm.loop !27

bb.ah:                                            ; preds = %_ZSt25__uninitialized_move_fillISt15_Deque_iteratorIiRiPiES3_iSaIiEEvT_S5_T0_S6_RKT1_RT2_.exit
  %.not5.i28.i.i.i54 = icmp eq ptr %i.bi, %i.kj
  br i1 %.not5.i28.i.i.i54, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i55.preheader

.lr.ph.i29.i.i.i55.preheader:                     ; preds = %bb.ah
  %i.mo = add i64 %34, -4
  %i.mp = sub i64 %i.mo, %i.bx                    ; 2 uses
  %i.mq = lshr i64 %i.mp, 2
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 2 uses
  %min.iters.check619 = icmp ult i64 %i.mp, 28
  br i1 %min.iters.check619, label %.lr.ph.i29.i.i.i55.preheader631, label %vector.ph620

vector.ph620:                                     ; preds = %.lr.ph.i29.i.i.i55.preheader
  %n.vec621 = and i64 %i.mr, 9223372036854775800  ; 3 uses
  %i.ms = shl i64 %n.vec621, 2
  %i.mt = getelementptr i8, ptr %i.bi, i64 %i.ms
  %broadcast.splatinsert622 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat623 = shufflevector <4 x i32> %broadcast.splatinsert622, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body624

vector.body624:                                   ; preds = %vector.body624, %vector.ph620
  %index625 = phi i64 [ 0, %vector.ph620 ], [ %index.next627, %vector.body624 ] ; 2 uses
  %i.mu = shl i64 %index625, 2
  %next.gep626 = getelementptr i8, ptr %i.bi, i64 %i.mu ; 2 uses
  %i.mv = getelementptr i8, ptr %next.gep626, i64 16
  store <4 x i32> %broadcast.splat623, ptr %next.gep626, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat623, ptr %i.mv, align 4, !tbaa !370
  %index.next627 = add nuw i64 %index625, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next627, %n.vec621
  br i1 %i.mw, label %middle.block628, label %vector.body624, !llvm.loop !3264

middle.block628:                                  ; preds = %vector.body624
  %cmp.n629 = icmp eq i64 %i.mr, %n.vec621
  br i1 %cmp.n629, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i55.preheader631

.lr.ph.i29.i.i.i55.preheader631:                  ; preds = %.lr.ph.i29.i.i.i55.preheader, %middle.block628
  %.06.i30.i.i.i56.ph = phi ptr [ %i.bi, %.lr.ph.i29.i.i.i55.preheader ], [ %i.mt, %middle.block628 ]
  br label %.lr.ph.i29.i.i.i55

.lr.ph.i29.i.i.i55:                               ; preds = %.lr.ph.i29.i.i.i55.preheader631, %.lr.ph.i29.i.i.i55
  %.06.i30.i.i.i56 = phi ptr [ %i.mx, %.lr.ph.i29.i.i.i55 ], [ %.06.i30.i.i.i56.ph, %.lr.ph.i29.i.i.i55.preheader631 ] ; 2 uses
  store i32 %i.av, ptr %.06.i30.i.i.i56, align 4, !tbaa !370
  %i.mx = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i56, i64 4 ; 2 uses
  %.not.i31.i.i.i57 = icmp eq ptr %i.mx, %i.kj
  br i1 %.not.i31.i.i.i57, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i55, !llvm.loop !3265

bb.ai:                                            ; preds = %bb.ad
  %i.my = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %bb.ac, %bb.ai
  %.pn28.pn = phi { ptr, i32 } [ %i.my, %bb.ai ], [ %i.hh, %bb.ab ], [ %i.hi, %bb.ac ]
  %.1 = extractvalue { ptr, i32 } %.pn28.pn, 0
  %i.mz = call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  %i.na = load ptr, ptr %i.e, align 8, !tbaa !439 ; 2 uses
  %i.nb = icmp ult ptr %.sroa.16.0, %i.na
  br i1 %i.nb, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.i
  %.06.i = phi ptr [ %i.nd, %.lr.ph.i ], [ %.sroa.16.0, %bb.aj ] ; 2 uses
  %i.nc = load ptr, ptr %.06.i, align 8, !tbaa !369
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef 512) #25
  %i.nd = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.ne = icmp ult ptr %i.nd, %i.na
  br i1 %i.ne, label %.lr.ph.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit, !llvm.loop !4

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit: ; preds = %.lr.ph.i, %bb.aj
  invoke void @__cxa_rethrow() #26
          to label %bb.cb unwind label %bb.ak

bb.ak:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit
  %i.nf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.ca

bb.al:                                            ; preds = %bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !424, !noalias !3325 ; 2 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ni, %i.ap
  %i.nk = ashr exact i64 %i.nj, 2
  %i.nl = add nsw i64 %i.nk, -1                   ; 2 uses
  %i.nm = icmp ugt i64 %2, %i.nl
  br i1 %i.nm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.nn = sub nuw i64 %2, %i.nl
  tail call void @_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.nn), !noalias !3325
  %.pre.i60 = load ptr, ptr %i.ad, align 8, !tbaa !425, !noalias !3326 ; 2 uses
  %.pre6.i61 = load ptr, ptr %i.ng, align 8, !tbaa !427, !noalias !3326
  %.pre7.i62 = ptrtoint ptr %.pre.i60 to i64
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !426, !noalias !3326 ; 2 uses
  %.pre325 = load ptr, ptr %i.ae, align 8, !tbaa !420, !noalias !3326
  %.pre328 = ptrtoint ptr %.pre to i64            ; 2 uses
  %.pre329 = sub i64 %.pre7.i62, %.pre328
  %.pre331 = ashr exact i64 %.pre329, 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pre-phi332 = phi i64 [ %.pre331, %bb.am ], [ %i.as, %bb.al ]
  %.pre-phi = phi i64 [ %.pre328, %bb.am ], [ %i.aq, %bb.al ]
  %i.no = phi ptr [ %.pre325, %bb.am ], [ %i.af, %bb.al ] ; 8 uses
  %i.np = phi ptr [ %.pre, %bb.am ], [ %i.ao, %bb.al ] ; 8 uses
  %i.nq = phi ptr [ %.pre6.i61, %bb.am ], [ %i.nh, %bb.al ] ; 3 uses
  %i.nr = phi ptr [ %.pre.i60, %bb.am ], [ %i.am, %bb.al ] ; 8 uses
  %36 = ptrtoaddr ptr %i.np to i64
  %i.ns = add nsw i64 %.pre-phi332, %2            ; 5 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  br i1 %i.nt, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.nu = icmp samesign ult i64 %i.ns, 128
  br i1 %i.nu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %2
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

bb.aq:                                            ; preds = %bb.ao
  %i.nw = lshr i64 %i.ns, 7
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.nx = ashr i64 %i.ns, 7
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ny = phi i64 [ %i.nw, %bb.aq ], [ %i.nx, %bb.ar ] ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.ny ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !369, !noalias !3326 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 512
  %i.oc = shl nsw i64 %i.ny, 7
  %i.od = sub nsw i64 %i.ns, %i.oc
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.oa, i64 %i.od
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.ap, %bb.as
  %.sroa.6187.0 = phi ptr [ %i.np, %bb.ap ], [ %i.oa, %bb.as ] ; 2 uses
  %.sroa.8190.0 = phi ptr [ %i.nq, %bb.ap ], [ %i.ob, %bb.as ] ; 2 uses
  %.sroa.10193.0 = phi ptr [ %i.no, %bb.ap ], [ %i.nz, %bb.as ] ; 4 uses
  %storemerge.i.i.i59 = phi ptr [ %i.nv, %bb.ap ], [ %i.oe, %bb.as ] ; 2 uses
  %i.of = sub nsw i64 %i.at, %i.u                 ; 3 uses
  %i.og = sub nsw i64 0, %i.of
  %i.oh = ptrtoint ptr %i.nr to i64               ; 3 uses
  %i.oi = sub i64 %i.oh, %.pre-phi
  %i.oj = ashr exact i64 %i.oi, 2
  %i.ok = sub nsw i64 %i.oj, %i.of                ; 5 uses
  %i.ol = icmp sgt i64 %i.ok, -1
  br i1 %i.ol, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.om = icmp samesign ult i64 %i.ok, 128
  br i1 %i.om, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.on = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.og
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64

bb.av:                                            ; preds = %bb.at
  %i.oo = lshr i64 %i.ok, 7
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  %i.op = ashr i64 %i.ok, 7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.oq = phi i64 [ %i.oo, %bb.av ], [ %i.op, %bb.aw ] ; 2 uses
  %i.or = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.oq ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !369, !noalias !3327 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 512
  %i.ou = shl nsw i64 %i.oq, 7
  %i.ov = sub nsw i64 %i.ok, %i.ou
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ov
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64

_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64:       ; preds = %bb.au, %bb.ax
  %.sroa.4177.0 = phi ptr [ %i.np, %bb.au ], [ %i.os, %bb.ax ] ; 4 uses
  %.sroa.6178.0 = phi ptr [ %i.nq, %bb.au ], [ %i.ot, %bb.ax ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.no, %bb.au ], [ %i.or, %bb.ax ] ; 4 uses
  %storemerge.i.i.i63 = phi ptr [ %i.on, %bb.au ], [ %i.ow, %bb.ax ] ; 4 uses
  store ptr %storemerge.i.i.i63, ptr %1, align 8, !tbaa !369
  store ptr %.sroa.4177.0, ptr %i.o, align 8, !tbaa !369
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %.sroa.6178.0, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !369
  store ptr %.sroa.8.0, ptr %i.c, align 8, !tbaa !554
  %i.ox = icmp sgt i64 %i.of, %2
  %i.oy = load ptr, ptr %i.ad, align 8, !tbaa !425 ; 6 uses
  br i1 %i.ox, label %bb.ay, label %bb.bn

bb.ay:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64
  %i.oz = load ptr, ptr %i.an, align 8, !tbaa !426, !noalias !3328 ; 4 uses
  %i.pa = load ptr, ptr %i.ng, align 8, !tbaa !427, !noalias !3328 ; 3 uses
  %i.pb = load ptr, ptr %i.ae, align 8, !tbaa !420, !noalias !3328 ; 4 uses
  %i.pc = sub nsw i64 0, %2
  %i.pd = ptrtoint ptr %i.oy to i64
  %i.pe = ptrtoint ptr %i.oz to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = ashr exact i64 %i.pf, 2
  %i.ph = sub nsw i64 %i.pg, %2                   ; 5 uses
  %i.pi = icmp sgt i64 %i.ph, -1
  br i1 %i.pi, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.pj = icmp samesign ult i64 %i.ph, 128
  br i1 %i.pj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.pc
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66

bb.bb:                                            ; preds = %bb.az
  %i.pl = lshr i64 %i.ph, 7
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.pm = ashr i64 %i.ph, 7
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.pn = phi i64 [ %i.pl, %bb.bb ], [ %i.pm, %bb.bc ] ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %i.pb, i64 %i.pn ; 2 uses
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !369, !noalias !3328 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 512
  %i.pr = shl nsw i64 %i.pn, 7
  %i.ps = sub nsw i64 %i.ph, %i.pr
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.ps
  br label %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66

_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66:       ; preds = %bb.ba, %bb.bd
  %.sroa.14.0 = phi ptr [ %i.pb, %bb.ba ], [ %i.po, %bb.bd ] ; 2 uses
  %.sroa.10.0 = phi ptr [ %i.pa, %bb.ba ], [ %i.pq, %bb.bd ] ; 2 uses
  %.sroa.6172.0 = phi ptr [ %i.oz, %bb.ba ], [ %i.pp, %bb.bd ] ; 2 uses
  %storemerge.i.i.i65 = phi ptr [ %i.pk, %bb.ba ], [ %i.pt, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !3329
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !3330
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !3330
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !3330
  store ptr %storemerge.i.i.i65, ptr %8, align 8, !tbaa !425, !noalias !3331
  %i.pu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.6172.0, ptr %i.pu, align 8, !tbaa !426, !noalias !3331
  %i.pv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.10.0, ptr %i.pv, align 8, !tbaa !427, !noalias !3331
  %i.pw = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.sroa.14.0, ptr %i.pw, align 8, !tbaa !420, !noalias !3331
  store ptr %i.oy, ptr %9, align 8, !tbaa !425, !noalias !3331
  %i.px = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.oz, ptr %i.px, align 8, !tbaa !426, !noalias !3331
  %i.py = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.pa, ptr %i.py, align 8, !tbaa !427, !noalias !3331
  %i.pz = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.pb, ptr %i.pz, align 8, !tbaa !420, !noalias !3331
  store ptr %i.oy, ptr %10, align 8, !tbaa !425, !noalias !3331
  %i.qa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.oz, ptr %i.qa, align 8, !tbaa !426, !noalias !3331
  %i.qb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.pa, ptr %i.qb, align 8, !tbaa !427, !noalias !3331
  %i.qc = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.pb, ptr %i.qc, align 8, !tbaa !420, !noalias !3331
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
          to label %bb.be unwind label %bb.bl

bb.be:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !3330
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !3330
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !3330
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !3329
  store ptr %storemerge.i.i.i59, ptr %i.ad, align 8, !tbaa !369
  store ptr %.sroa.6187.0, ptr %i.an, align 8, !tbaa !369
  store ptr %.sroa.8190.0, ptr %i.ng, align 8, !tbaa !369
  store ptr %.sroa.10193.0, ptr %i.ae, align 8, !tbaa !554
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !3332
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !3333
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !3333
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !3333
  %i.qd = load <2 x ptr>, ptr %1, align 8, !tbaa !369
  store <2 x ptr> %i.qd, ptr %4, align 16, !tbaa !369, !noalias !3334
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qf = load <2 x ptr>, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !418
  store <2 x ptr> %i.qf, ptr %i.qe, align 16, !tbaa !418, !noalias !3334
  store ptr %storemerge.i.i.i65, ptr %5, align 8, !tbaa !425, !noalias !3334
  %i.qg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.6172.0, ptr %i.qg, align 8, !tbaa !426, !noalias !3334
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.10.0, ptr %i.qh, align 8, !tbaa !427, !noalias !3334
  %i.qi = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.14.0, ptr %i.qi, align 8, !tbaa !420, !noalias !3334
  store ptr %i.nr, ptr %6, align 8, !tbaa !425, !noalias !3334
  %i.qj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.np, ptr %i.qj, align 8, !tbaa !426, !noalias !3334
  %i.qk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.nq, ptr %i.qk, align 8, !tbaa !427, !noalias !3334
  %i.ql = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.no, ptr %i.ql, align 8, !tbaa !420, !noalias !3334
  invoke void @_ZSt24__copy_move_backward_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6)
          to label %bb.bf unwind label %bb.bm

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !3333
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !3332
  %i.qm = load ptr, ptr %1, align 8, !tbaa !425   ; 9 uses
  %i.qn = load ptr, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !427 ; 3 uses
  %37 = ptrtoaddr ptr %i.qn to i64
  %i.qo = load ptr, ptr %i.c, align 8, !tbaa !420 ; 2 uses
  %i.qp = load ptr, ptr %i.o, align 8, !tbaa !426, !noalias !3335
  %i.qq = ptrtoint ptr %i.qm to i64               ; 2 uses
  %i.qr = ptrtoint ptr %i.qp to i64
  %i.qs = sub i64 %i.qq, %i.qr
  %i.qt = ashr exact i64 %i.qs, 2
  %i.qu = add nsw i64 %i.qt, %2                   ; 5 uses
  %i.qv = icmp sgt i64 %i.qu, -1
  br i1 %i.qv, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.qw = icmp samesign ult i64 %i.qu, 128
  br i1 %i.qw, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qx = lshr i64 %i.qu, 7
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf
  %i.qy = ashr i64 %i.qu, 7
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.qz = phi i64 [ %i.qx, %bb.bh ], [ %i.qy, %bb.bi ] ; 3 uses
  %.idx = shl nsw i64 %i.qz, 3
  %i.ra = getelementptr inbounds i8, ptr %i.qo, i64 %.idx ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !369, !noalias !3335 ; 4 uses
  %i.rc = shl i64 %i.qz, 9                        ; 3 uses
  %i.rd = shl i64 %i.qu, 2                        ; 3 uses
  %.idx305 = sub i64 %i.rd, %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.rb, i64 %.idx305
  %.not5.i.i.i.i73 = icmp eq ptr %i.qm, %i.qn
  br i1 %.not5.i.i.i.i73, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader:                       ; preds = %bb.bj
  %i.rf = add i64 %37, -4
  %i.rg = sub i64 %i.rf, %i.qq                    ; 2 uses
  %i.rh = lshr i64 %i.rg, 2
  %i.ri = add nuw nsw i64 %i.rh, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.rg, 28
  br i1 %min.iters.check445, label %.lr.ph.i.i.i.i74.preheader648, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i.i.i.i74.preheader
  %n.vec447 = and i64 %i.ri, 9223372036854775800  ; 3 uses
  %i.rj = shl i64 %n.vec447, 2
  %i.rk = getelementptr i8, ptr %i.qm, i64 %i.rj
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph446
  %index451 = phi i64 [ 0, %vector.ph446 ], [ %index.next453, %vector.body450 ] ; 2 uses
  %i.rl = shl i64 %index451, 2
  %next.gep452 = getelementptr i8, ptr %i.qm, i64 %i.rl ; 2 uses
  %i.rm = getelementptr i8, ptr %next.gep452, i64 16
  store <4 x i32> %broadcast.splat449, ptr %next.gep452, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat449, ptr %i.rm, align 4, !tbaa !370
  %index.next453 = add nuw i64 %index451, 8       ; 2 uses
  %i.rn = icmp eq i64 %index.next453, %n.vec447
  br i1 %i.rn, label %middle.block454, label %vector.body450, !llvm.loop !3296

middle.block454:                                  ; preds = %vector.body450
  %cmp.n455 = icmp eq i64 %i.ri, %n.vec447
  br i1 %cmp.n455, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74.preheader648

.lr.ph.i.i.i.i74.preheader648:                    ; preds = %.lr.ph.i.i.i.i74.preheader, %middle.block454
  %.06.i.i.i.i75.ph = phi ptr [ %i.qm, %.lr.ph.i.i.i.i74.preheader ], [ %i.rk, %middle.block454 ]
  br label %.lr.ph.i.i.i.i74

.lr.ph.i.i.i.i74:                                 ; preds = %.lr.ph.i.i.i.i74.preheader648, %.lr.ph.i.i.i.i74
  %.06.i.i.i.i75 = phi ptr [ %i.ro, %.lr.ph.i.i.i.i74 ], [ %.06.i.i.i.i75.ph, %.lr.ph.i.i.i.i74.preheader648 ] ; 2 uses
  store i32 %i.av, ptr %.06.i.i.i.i75, align 4, !tbaa !370
  %i.ro = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i75, i64 4 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.ro, %i.qn
  br i1 %.not.i.i.i.i76, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i74, !llvm.loop !3297

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i.i74, %middle.block454, %bb.bj
  %i.rp = icmp sgt i64 %i.qz, 1
  br i1 %i.rp, label %.lr.ph.i.i.i84.preheader, label %._crit_edge.i.i.i79

.lr.ph.i.i.i84.preheader:                         ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77
  %.034.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %broadcast.splatinsert459 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat460 = shufflevector <4 x i32> %broadcast.splatinsert459, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.lr.ph.i.i.i84

._crit_edge.i.i.i79:                              ; preds = %.lr.ph.i.i.i84, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i77
  %.not5.i18.i.i.i80 = icmp eq i64 %i.rd, %i.rc
  br i1 %.not5.i18.i.i.i80, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81.preheader

.lr.ph.i19.i.i.i81.preheader:                     ; preds = %._crit_edge.i.i.i79
  %i.rq = add i64 %i.rd, -4
  %i.rr = sub i64 %i.rq, %i.rc                    ; 2 uses
  %i.rs = lshr exact i64 %i.rr, 2
  %i.rt = add nuw nsw i64 %i.rs, 1                ; 2 uses
  %min.iters.check466 = icmp ult i64 %i.rr, 28
  br i1 %min.iters.check466, label %.lr.ph.i19.i.i.i81.preheader646, label %vector.ph467

vector.ph467:                                     ; preds = %.lr.ph.i19.i.i.i81.preheader
  %n.vec468 = and i64 %i.rt, 9223372036854775800  ; 3 uses
  %i.ru = shl i64 %n.vec468, 2
  %i.rv = getelementptr i8, ptr %i.rb, i64 %i.ru
  %broadcast.splatinsert469 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat470 = shufflevector <4 x i32> %broadcast.splatinsert469, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body471

vector.body471:                                   ; preds = %vector.body471, %vector.ph467
  %index472 = phi i64 [ 0, %vector.ph467 ], [ %index.next474, %vector.body471 ] ; 2 uses
  %i.rw = shl i64 %index472, 2
  %next.gep473 = getelementptr i8, ptr %i.rb, i64 %i.rw ; 2 uses
  %i.rx = getelementptr i8, ptr %next.gep473, i64 16
  store <4 x i32> %broadcast.splat470, ptr %next.gep473, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat470, ptr %i.rx, align 4, !tbaa !370
  %index.next474 = add nuw i64 %index472, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next474, %n.vec468
  br i1 %i.ry, label %middle.block475, label %vector.body471, !llvm.loop !3298

middle.block475:                                  ; preds = %vector.body471
  %cmp.n476 = icmp eq i64 %i.rt, %n.vec468
  br i1 %cmp.n476, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81.preheader646

.lr.ph.i19.i.i.i81.preheader646:                  ; preds = %.lr.ph.i19.i.i.i81.preheader, %middle.block475
  %.06.i20.i.i.i82.ph = phi ptr [ %i.rb, %.lr.ph.i19.i.i.i81.preheader ], [ %i.rv, %middle.block475 ]
  br label %.lr.ph.i19.i.i.i81

.lr.ph.i19.i.i.i81:                               ; preds = %.lr.ph.i19.i.i.i81.preheader646, %.lr.ph.i19.i.i.i81
  %.06.i20.i.i.i82 = phi ptr [ %i.rz, %.lr.ph.i19.i.i.i81 ], [ %.06.i20.i.i.i82.ph, %.lr.ph.i19.i.i.i81.preheader646 ] ; 2 uses
  store i32 %i.av, ptr %.06.i20.i.i.i82, align 4, !tbaa !370
  %i.rz = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i82, i64 4 ; 2 uses
  %.not.i21.i.i.i83 = icmp eq ptr %i.rz, %i.re
  br i1 %.not.i21.i.i.i83, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i81, !llvm.loop !3299

.lr.ph.i.i.i84:                                   ; preds = %.lr.ph.i.i.i84.preheader, %.lr.ph.i.i.i84
  %.035.i.i.i85 = phi ptr [ %.0.i.i.i92, %.lr.ph.i.i.i84 ], [ %.034.i.i.i78, %.lr.ph.i.i.i84.preheader ] ; 2 uses
  %i.sa = load ptr, ptr %.035.i.i.i85, align 8, !tbaa !369 ; 32 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  store <4 x i32> %broadcast.splat460, ptr %i.sa, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sb, align 4, !tbaa !370
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 48
  store <4 x i32> %broadcast.splat460, ptr %i.sc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sd, align 4, !tbaa !370
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 80
  store <4 x i32> %broadcast.splat460, ptr %i.se, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sf, align 4, !tbaa !370
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sa, i64 96
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 112
  store <4 x i32> %broadcast.splat460, ptr %i.sg, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sh, align 4, !tbaa !370
  %i.si = getelementptr inbounds nuw i8, ptr %i.sa, i64 128
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 144
  store <4 x i32> %broadcast.splat460, ptr %i.si, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sj, align 4, !tbaa !370
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 160
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sa, i64 176
  store <4 x i32> %broadcast.splat460, ptr %i.sk, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sl, align 4, !tbaa !370
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sa, i64 192
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sa, i64 208
  store <4 x i32> %broadcast.splat460, ptr %i.sm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sn, align 4, !tbaa !370
  %i.so = getelementptr inbounds nuw i8, ptr %i.sa, i64 224
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sa, i64 240
  store <4 x i32> %broadcast.splat460, ptr %i.so, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sp, align 4, !tbaa !370
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sa, i64 256
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sa, i64 272
  store <4 x i32> %broadcast.splat460, ptr %i.sq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sr, align 4, !tbaa !370
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sa, i64 288
  %i.st = getelementptr inbounds nuw i8, ptr %i.sa, i64 304
  store <4 x i32> %broadcast.splat460, ptr %i.ss, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.st, align 4, !tbaa !370
  %i.su = getelementptr inbounds nuw i8, ptr %i.sa, i64 320
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sa, i64 336
  store <4 x i32> %broadcast.splat460, ptr %i.su, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sv, align 4, !tbaa !370
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sa, i64 352
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sa, i64 368
  store <4 x i32> %broadcast.splat460, ptr %i.sw, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sx, align 4, !tbaa !370
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sa, i64 384
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sa, i64 400
  store <4 x i32> %broadcast.splat460, ptr %i.sy, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.sz, align 4, !tbaa !370
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sa, i64 416
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sa, i64 432
  store <4 x i32> %broadcast.splat460, ptr %i.ta, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.tb, align 4, !tbaa !370
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sa, i64 448
  %i.td = getelementptr inbounds nuw i8, ptr %i.sa, i64 464
  store <4 x i32> %broadcast.splat460, ptr %i.tc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.td, align 4, !tbaa !370
  %i.te = getelementptr inbounds nuw i8, ptr %i.sa, i64 480
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sa, i64 496
  store <4 x i32> %broadcast.splat460, ptr %i.te, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat460, ptr %i.tf, align 4, !tbaa !370
  %.0.i.i.i92 = getelementptr inbounds nuw i8, ptr %.035.i.i.i85, i64 8 ; 2 uses
  %i.tg = icmp ult ptr %.0.i.i.i92, %i.ra
  br i1 %i.tg, label %.lr.ph.i.i.i84, label %._crit_edge.i.i.i79, !llvm.loop !27

bb.bk:                                            ; preds = %bb.bg
  %.idx400 = shl i64 %2, 2                        ; 2 uses
  %i.th = getelementptr inbounds i8, ptr %i.qm, i64 %.idx400
  %.not5.i28.i.i.i93 = icmp eq i64 %2, 0
  br i1 %.not5.i28.i.i.i93, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94.preheader

.lr.ph.i29.i.i.i94.preheader:                     ; preds = %bb.bk
  %i.ti = add i64 %.idx400, -4                    ; 2 uses
  %i.tj = lshr exact i64 %i.ti, 2
  %i.tk = add nuw nsw i64 %i.tj, 1                ; 2 uses
  %min.iters.check479 = icmp ult i64 %i.ti, 28
  br i1 %min.iters.check479, label %.lr.ph.i29.i.i.i94.preheader644, label %vector.ph480

vector.ph480:                                     ; preds = %.lr.ph.i29.i.i.i94.preheader
  %n.vec481 = and i64 %i.tk, 9223372036854775800  ; 3 uses
  %i.tl = shl i64 %n.vec481, 2
  %i.tm = getelementptr i8, ptr %i.qm, i64 %i.tl
  %broadcast.splatinsert482 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat483 = shufflevector <4 x i32> %broadcast.splatinsert482, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph480
  %index485 = phi i64 [ 0, %vector.ph480 ], [ %index.next487, %vector.body484 ] ; 2 uses
  %i.tn = shl i64 %index485, 2
  %next.gep486 = getelementptr i8, ptr %i.qm, i64 %i.tn ; 2 uses
  %i.to = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %broadcast.splat483, ptr %next.gep486, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat483, ptr %i.to, align 4, !tbaa !370
  %index.next487 = add nuw i64 %index485, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next487, %n.vec481
  br i1 %i.tp, label %middle.block488, label %vector.body484, !llvm.loop !3300

middle.block488:                                  ; preds = %vector.body484
  %cmp.n489 = icmp eq i64 %i.tk, %n.vec481
  br i1 %cmp.n489, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94.preheader644

.lr.ph.i29.i.i.i94.preheader644:                  ; preds = %.lr.ph.i29.i.i.i94.preheader, %middle.block488
  %.06.i30.i.i.i95.ph = phi ptr [ %i.qm, %.lr.ph.i29.i.i.i94.preheader ], [ %i.tm, %middle.block488 ]
  br label %.lr.ph.i29.i.i.i94

.lr.ph.i29.i.i.i94:                               ; preds = %.lr.ph.i29.i.i.i94.preheader644, %.lr.ph.i29.i.i.i94
  %.06.i30.i.i.i95 = phi ptr [ %i.tq, %.lr.ph.i29.i.i.i94 ], [ %.06.i30.i.i.i95.ph, %.lr.ph.i29.i.i.i94.preheader644 ] ; 2 uses
  store i32 %i.av, ptr %.06.i30.i.i.i95, align 4, !tbaa !370
  %i.tq = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i95, i64 4 ; 2 uses
  %.not.i31.i.i.i96 = icmp eq ptr %i.tq, %i.th
  br i1 %.not.i31.i.i.i96, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i94, !llvm.loop !3301

bb.bl:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit66
  %i.tr = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

bb.bm:                                            ; preds = %bb.be
  %i.ts = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bx

bb.bn:                                            ; preds = %_ZStmiRKSt15_Deque_iteratorIiRiPiEl.exit64
  store ptr %i.oy, ptr %24, align 8, !tbaa !425
  %i.tt = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.tu = load ptr, ptr %i.an, align 8, !tbaa !426 ; 2 uses
  store ptr %i.tu, ptr %i.tt, align 8, !tbaa !426
  %i.tv = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.tw = load ptr, ptr %i.ng, align 8, !tbaa !427 ; 2 uses
  store ptr %i.tw, ptr %i.tv, align 8, !tbaa !427
  %i.tx = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ty = load ptr, ptr %i.ae, align 8, !tbaa !420 ; 2 uses
  store ptr %i.ty, ptr %i.tx, align 8, !tbaa !420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  %i.tz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  store ptr %.sroa.4177.0, ptr %i.tz, align 8, !tbaa !426, !alias.scope !3336
  %i.ua = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  store ptr %.sroa.6178.0, ptr %i.ua, align 8, !tbaa !427, !alias.scope !3336
  %i.ub = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  store ptr %.sroa.8.0, ptr %i.ub, align 8, !tbaa !420, !alias.scope !3336
  %i.uc = ptrtoint ptr %storemerge.i.i.i63 to i64
  %i.ud = ptrtoint ptr %.sroa.4177.0 to i64
  %i.ue = sub i64 %i.uc, %i.ud
  %i.uf = ashr exact i64 %i.ue, 2
  %i.ug = add nsw i64 %i.uf, %2                   ; 5 uses
  %i.uh = icmp sgt i64 %i.ug, -1
  br i1 %i.uh, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.ui = icmp samesign ult i64 %i.ug, 128
  br i1 %i.ui, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.uj = getelementptr inbounds [4 x i8], ptr %storemerge.i.i.i63, i64 %2
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99

bb.bq:                                            ; preds = %bb.bo
  %i.uk = lshr i64 %i.ug, 7
  br label %bb.bs

bb.br:                                            ; preds = %bb.bn
  %i.ul = ashr i64 %i.ug, 7
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.um = phi i64 [ %i.uk, %bb.bq ], [ %i.ul, %bb.br ] ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %.sroa.8.0, i64 %i.um ; 2 uses
  store ptr %i.un, ptr %i.ub, align 8, !tbaa !420, !alias.scope !3336
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !369, !noalias !3336 ; 3 uses
  store ptr %i.uo, ptr %i.tz, align 8, !tbaa !426, !alias.scope !3336
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 512
  store ptr %i.up, ptr %i.ua, align 8, !tbaa !427, !alias.scope !3336
  %i.uq = shl nsw i64 %i.um, 7
  %i.ur = sub nsw i64 %i.ug, %i.uq
  %i.us = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ur
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99:       ; preds = %bb.bp, %bb.bs
  %storemerge.i.i98 = phi ptr [ %i.us, %bb.bs ], [ %i.uj, %bb.bp ]
  store ptr %storemerge.i.i98, ptr %25, align 8, !tbaa !425, !alias.scope !3336
  store ptr %storemerge.i.i.i63, ptr %26, align 8, !tbaa !425
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.4177.0, ptr %i.ut, align 8, !tbaa !426
  %i.uu = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr %.sroa.6178.0, ptr %i.uu, align 8, !tbaa !427
  %i.uv = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %.sroa.8.0, ptr %i.uv, align 8, !tbaa !420
  store ptr %i.oy, ptr %27, align 8, !tbaa !425
  %i.uw = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.tu, ptr %i.uw, align 8, !tbaa !426
  %i.ux = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.tw, ptr %i.ux, align 8, !tbaa !427
  %i.uy = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.ty, ptr %i.uy, align 8, !tbaa !420
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  invoke void @_ZSt25__uninitialized_fill_moveISt15_Deque_iteratorIiRiPiEiS3_SaIiEET_S5_S5_RKT0_T1_S9_RT2_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %28, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  store ptr %storemerge.i.i.i59, ptr %i.ad, align 8, !tbaa !369
  store ptr %.sroa.6187.0, ptr %i.an, align 8, !tbaa !369
  store ptr %.sroa.8190.0, ptr %i.ng, align 8, !tbaa !369
  store ptr %.sroa.10193.0, ptr %i.ae, align 8, !tbaa !554
  %i.uz = load ptr, ptr %1, align 8, !tbaa !425   ; 9 uses
  %38 = ptrtoaddr ptr %i.uz to i64                ; 2 uses
  %i.va = load ptr, ptr %.sroa.6178.0..sroa_idx, align 8, !tbaa !427 ; 3 uses
  %39 = ptrtoaddr ptr %i.va to i64
  %i.vb = load ptr, ptr %i.c, align 8, !tbaa !420 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.vb, %i.no
  %i.vc = load i32, ptr %i.a, align 4, !tbaa !370 ; 4 uses
  br i1 %.not.i.i.i100, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.not5.i.i.i.i101 = icmp eq ptr %i.uz, %i.va
  br i1 %.not5.i.i.i.i101, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105, label %.lr.ph.i.i.i.i102.preheader

.lr.ph.i.i.i.i102.preheader:                      ; preds = %bb.bu
  %i.vd = add i64 %39, -4
  %i.ve = sub i64 %i.vd, %38                      ; 2 uses
  %i.vf = lshr i64 %i.ve, 2
  %i.vg = add nuw nsw i64 %i.vf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ve, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i102.preheader653, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i102.preheader
  %n.vec = and i64 %i.vg, 9223372036854775800     ; 3 uses
  %i.vh = shl i64 %n.vec, 2
  %i.vi = getelementptr i8, ptr %i.uz, i64 %i.vh
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.vc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.uz, i64 %i.vj ; 2 uses
  %i.vk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.vk, align 4, !tbaa !370
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vl = icmp eq i64 %index.next, %n.vec
  br i1 %i.vl, label %middle.block, label %vector.body, !llvm.loop !3304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vg, %n.vec
  br i1 %cmp.n, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105, label %.lr.ph.i.i.i.i102.preheader653

.lr.ph.i.i.i.i102.preheader653:                   ; preds = %.lr.ph.i.i.i.i102.preheader, %middle.block
  %.06.i.i.i.i103.ph = phi ptr [ %i.uz, %.lr.ph.i.i.i.i102.preheader ], [ %i.vi, %middle.block ]
  br label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.preheader653, %.lr.ph.i.i.i.i102
  %.06.i.i.i.i103 = phi ptr [ %i.vm, %.lr.ph.i.i.i.i102 ], [ %.06.i.i.i.i103.ph, %.lr.ph.i.i.i.i102.preheader653 ] ; 2 uses
  store i32 %i.vc, ptr %.06.i.i.i.i103, align 4, !tbaa !370
  %i.vm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i103, i64 4 ; 2 uses
  %.not.i.i.i.i104 = icmp eq ptr %i.vm, %i.va
  br i1 %.not.i.i.i.i104, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105, label %.lr.ph.i.i.i.i102, !llvm.loop !3305

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105: ; preds = %.lr.ph.i.i.i.i102, %middle.block, %bb.bu
  %.034.i.i.i106 = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %i.vn = icmp ult ptr %.034.i.i.i106, %i.no
  br i1 %i.vn, label %.lr.ph.i.i.i112.preheader, label %._crit_edge.i.i.i107

.lr.ph.i.i.i112.preheader:                        ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105
  %i.vo = load i32, ptr %i.a, align 4, !tbaa !370
  %broadcast.splatinsert412 = insertelement <4 x i32> poison, i32 %i.vo, i64 0
  %broadcast.splat413 = shufflevector <4 x i32> %broadcast.splatinsert412, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  br label %.lr.ph.i.i.i112

._crit_edge.i.i.i107:                             ; preds = %.lr.ph.i.i.i112, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i105
  %i.vp = load i32, ptr %i.a, align 4, !tbaa !370 ; 2 uses
  %.not5.i18.i.i.i108 = icmp eq ptr %i.np, %i.nr
  br i1 %.not5.i18.i.i.i108, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i109.preheader

.lr.ph.i19.i.i.i109.preheader:                    ; preds = %._crit_edge.i.i.i107
  %i.vq = add i64 %i.oh, -4
  %i.vr = sub i64 %i.vq, %36                      ; 2 uses
  %i.vs = lshr i64 %i.vr, 2
  %i.vt = add nuw nsw i64 %i.vs, 1                ; 2 uses
  %min.iters.check419 = icmp ult i64 %i.vr, 28
  br i1 %min.iters.check419, label %.lr.ph.i19.i.i.i109.preheader651, label %vector.ph420

vector.ph420:                                     ; preds = %.lr.ph.i19.i.i.i109.preheader
  %n.vec421 = and i64 %i.vt, 9223372036854775800  ; 3 uses
  %i.vu = shl i64 %n.vec421, 2
  %i.vv = getelementptr i8, ptr %i.np, i64 %i.vu
  %broadcast.splatinsert422 = insertelement <4 x i32> poison, i32 %i.vp, i64 0
  %broadcast.splat423 = shufflevector <4 x i32> %broadcast.splatinsert422, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body424

vector.body424:                                   ; preds = %vector.body424, %vector.ph420
  %index425 = phi i64 [ 0, %vector.ph420 ], [ %index.next427, %vector.body424 ] ; 2 uses
  %i.vw = shl i64 %index425, 2
  %next.gep426 = getelementptr i8, ptr %i.np, i64 %i.vw ; 2 uses
  %i.vx = getelementptr i8, ptr %next.gep426, i64 16
  store <4 x i32> %broadcast.splat423, ptr %next.gep426, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat423, ptr %i.vx, align 4, !tbaa !370
  %index.next427 = add nuw i64 %index425, 8       ; 2 uses
  %i.vy = icmp eq i64 %index.next427, %n.vec421
  br i1 %i.vy, label %middle.block428, label %vector.body424, !llvm.loop !3306

middle.block428:                                  ; preds = %vector.body424
  %cmp.n429 = icmp eq i64 %i.vt, %n.vec421
  br i1 %cmp.n429, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i109.preheader651

.lr.ph.i19.i.i.i109.preheader651:                 ; preds = %.lr.ph.i19.i.i.i109.preheader, %middle.block428
  %.06.i20.i.i.i110.ph = phi ptr [ %i.np, %.lr.ph.i19.i.i.i109.preheader ], [ %i.vv, %middle.block428 ]
  br label %.lr.ph.i19.i.i.i109

.lr.ph.i19.i.i.i109:                              ; preds = %.lr.ph.i19.i.i.i109.preheader651, %.lr.ph.i19.i.i.i109
  %.06.i20.i.i.i110 = phi ptr [ %i.vz, %.lr.ph.i19.i.i.i109 ], [ %.06.i20.i.i.i110.ph, %.lr.ph.i19.i.i.i109.preheader651 ] ; 2 uses
  store i32 %i.vp, ptr %.06.i20.i.i.i110, align 4, !tbaa !370
  %i.vz = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i110, i64 4 ; 2 uses
  %.not.i21.i.i.i111 = icmp eq ptr %i.vz, %i.nr
  br i1 %.not.i21.i.i.i111, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i109, !llvm.loop !3307

.lr.ph.i.i.i112:                                  ; preds = %.lr.ph.i.i.i112.preheader, %.lr.ph.i.i.i112
  %.035.i.i.i113 = phi ptr [ %.0.i.i.i120, %.lr.ph.i.i.i112 ], [ %.034.i.i.i106, %.lr.ph.i.i.i112.preheader ] ; 2 uses
  %i.wa = load ptr, ptr %.035.i.i.i113, align 8, !tbaa !369 ; 32 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <4 x i32> %broadcast.splat413, ptr %i.wa, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wb, align 4, !tbaa !370
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 48
  store <4 x i32> %broadcast.splat413, ptr %i.wc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wd, align 4, !tbaa !370
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 80
  store <4 x i32> %broadcast.splat413, ptr %i.we, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wf, align 4, !tbaa !370
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wa, i64 96
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 112
  store <4 x i32> %broadcast.splat413, ptr %i.wg, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wh, align 4, !tbaa !370
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wa, i64 128
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wa, i64 144
  store <4 x i32> %broadcast.splat413, ptr %i.wi, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wj, align 4, !tbaa !370
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wa, i64 160
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wa, i64 176
  store <4 x i32> %broadcast.splat413, ptr %i.wk, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wl, align 4, !tbaa !370
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wa, i64 192
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wa, i64 208
  store <4 x i32> %broadcast.splat413, ptr %i.wm, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wn, align 4, !tbaa !370
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wa, i64 224
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wa, i64 240
  store <4 x i32> %broadcast.splat413, ptr %i.wo, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wp, align 4, !tbaa !370
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wa, i64 256
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wa, i64 272
  store <4 x i32> %broadcast.splat413, ptr %i.wq, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wr, align 4, !tbaa !370
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wa, i64 288
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wa, i64 304
  store <4 x i32> %broadcast.splat413, ptr %i.ws, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wt, align 4, !tbaa !370
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wa, i64 320
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wa, i64 336
  store <4 x i32> %broadcast.splat413, ptr %i.wu, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wv, align 4, !tbaa !370
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wa, i64 352
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wa, i64 368
  store <4 x i32> %broadcast.splat413, ptr %i.ww, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wx, align 4, !tbaa !370
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wa, i64 384
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wa, i64 400
  store <4 x i32> %broadcast.splat413, ptr %i.wy, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.wz, align 4, !tbaa !370
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wa, i64 416
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wa, i64 432
  store <4 x i32> %broadcast.splat413, ptr %i.xa, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.xb, align 4, !tbaa !370
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wa, i64 448
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wa, i64 464
  store <4 x i32> %broadcast.splat413, ptr %i.xc, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.xd, align 4, !tbaa !370
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wa, i64 480
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wa, i64 496
  store <4 x i32> %broadcast.splat413, ptr %i.xe, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat413, ptr %i.xf, align 4, !tbaa !370
  %.0.i.i.i120 = getelementptr inbounds nuw i8, ptr %.035.i.i.i113, i64 8 ; 2 uses
  %i.xg = icmp ult ptr %.0.i.i.i120, %i.no
  br i1 %i.xg, label %.lr.ph.i.i.i112, label %._crit_edge.i.i.i107, !llvm.loop !27

bb.bv:                                            ; preds = %bb.bt
  %.not5.i28.i.i.i121 = icmp eq ptr %i.uz, %i.nr
  br i1 %.not5.i28.i.i.i121, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i122.preheader

.lr.ph.i29.i.i.i122.preheader:                    ; preds = %bb.bv
  %i.xh = add i64 %i.oh, -4
  %i.xi = sub i64 %i.xh, %38                      ; 2 uses
  %i.xj = lshr i64 %i.xi, 2
  %i.xk = add nuw nsw i64 %i.xj, 1                ; 2 uses
  %min.iters.check432 = icmp ult i64 %i.xi, 28
  br i1 %min.iters.check432, label %.lr.ph.i29.i.i.i122.preheader649, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph.i29.i.i.i122.preheader
  %n.vec434 = and i64 %i.xk, 9223372036854775800  ; 3 uses
  %i.xl = shl i64 %n.vec434, 2
  %i.xm = getelementptr i8, ptr %i.uz, i64 %i.xl
  %broadcast.splatinsert435 = insertelement <4 x i32> poison, i32 %i.vc, i64 0
  %broadcast.splat436 = shufflevector <4 x i32> %broadcast.splatinsert435, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body437

vector.body437:                                   ; preds = %vector.body437, %vector.ph433
  %index438 = phi i64 [ 0, %vector.ph433 ], [ %index.next440, %vector.body437 ] ; 2 uses
  %i.xn = shl i64 %index438, 2
  %next.gep439 = getelementptr i8, ptr %i.uz, i64 %i.xn ; 2 uses
  %i.xo = getelementptr i8, ptr %next.gep439, i64 16
  store <4 x i32> %broadcast.splat436, ptr %next.gep439, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat436, ptr %i.xo, align 4, !tbaa !370
  %index.next440 = add nuw i64 %index438, 8       ; 2 uses
  %i.xp = icmp eq i64 %index.next440, %n.vec434
  br i1 %i.xp, label %middle.block441, label %vector.body437, !llvm.loop !3308

middle.block441:                                  ; preds = %vector.body437
  %cmp.n442 = icmp eq i64 %i.xk, %n.vec434
  br i1 %cmp.n442, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i122.preheader649

.lr.ph.i29.i.i.i122.preheader649:                 ; preds = %.lr.ph.i29.i.i.i122.preheader, %middle.block441
  %.06.i30.i.i.i123.ph = phi ptr [ %i.uz, %.lr.ph.i29.i.i.i122.preheader ], [ %i.xm, %middle.block441 ]
  br label %.lr.ph.i29.i.i.i122

.lr.ph.i29.i.i.i122:                              ; preds = %.lr.ph.i29.i.i.i122.preheader649, %.lr.ph.i29.i.i.i122
  %.06.i30.i.i.i123 = phi ptr [ %i.xq, %.lr.ph.i29.i.i.i122 ], [ %.06.i30.i.i.i123.ph, %.lr.ph.i29.i.i.i122.preheader649 ] ; 2 uses
  store i32 %i.vc, ptr %.06.i30.i.i.i123, align 4, !tbaa !370
  %i.xq = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i123, i64 4 ; 2 uses
  %.not.i31.i.i.i124 = icmp eq ptr %i.xq, %i.nr
  br i1 %.not.i31.i.i.i124, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i122, !llvm.loop !3309

bb.bw:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit99
  %i.xr = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bl, %bb.bm, %bb.bw
  %.pn.pn = phi { ptr, i32 } [ %i.xr, %bb.bw ], [ %i.ts, %bb.bm ], [ %i.tr, %bb.bl ]
  %.3 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.xs = call ptr @__cxa_begin_catch(ptr %.3) #22 ; 0 uses
  %i.xt = load ptr, ptr %i.ae, align 8, !tbaa !422 ; 2 uses
  %i.xu = icmp ult ptr %i.xt, %.sroa.10193.0
  br i1 %i.xu, label %.lr.ph.i126, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit128

.lr.ph.i126:                                      ; preds = %bb.bx, %.lr.ph.i126
  %.06.i127.pn = phi ptr [ %.06.i127, %.lr.ph.i126 ], [ %i.xt, %bb.bx ]
  %.06.i127 = getelementptr inbounds nuw i8, ptr %.06.i127.pn, i64 8 ; 3 uses
  %i.xv = load ptr, ptr %.06.i127, align 8, !tbaa !369
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef 512) #25
  %i.xw = icmp ult ptr %.06.i127, %.sroa.10193.0
  br i1 %i.xw, label %.lr.ph.i126, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit128, !llvm.loop !4

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit128: ; preds = %.lr.ph.i126, %bb.bx
  invoke void @__cxa_rethrow() #26
          to label %bb.cb unwind label %bb.by

bb.by:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit128
  %i.xx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bz unwind label %bb.ca

_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit: ; preds = %.lr.ph.i19.i.i.i109, %.lr.ph.i29.i.i.i122, %.lr.ph.i19.i.i.i81, %.lr.ph.i29.i.i.i94, %.lr.ph.i19.i.i.i, %.lr.ph.i29.i.i.i, %.lr.ph.i19.i.i.i42, %.lr.ph.i29.i.i.i55, %middle.block428, %middle.block441, %middle.block475, %middle.block488, %middle.block521, %middle.block534, %middle.block615, %middle.block628, %bb.bk, %._crit_edge.i.i.i79, %._crit_edge.i.i.i107, %bb.bv, %bb.aa, %._crit_edge.i.i.i, %._crit_edge.i.i.i40, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.bz:                                            ; preds = %bb.by, %bb.ak
  %.pn29 = phi { ptr, i32 } [ %i.nf, %bb.ak ], [ %i.xx, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn29

bb.ca:                                            ; preds = %bb.by, %bb.ak
  %i.xy = landingpad { ptr, i32 }
          catch ptr null
  %i.xz = extractvalue { ptr, i32 } %i.xy, 0
  call void @__clang_call_terminate(ptr %i.xz) #23
  unreachable

bb.cb:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit128, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__uninitialized_fill_moveISt15_Deque_iteratorIiRiPiEiS3_SaIiEET_S5_S5_RKT0_T1_S9_RT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %9 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %10 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !425    ; 9 uses
  %11 = ptrtoaddr ptr %i.a to i64                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !427  ; 3 uses
  %12 = ptrtoaddr ptr %i.c to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !425    ; 6 uses
  %13 = ptrtoaddr ptr %i.f to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !426  ; 6 uses
  %14 = ptrtoaddr ptr %i.h to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !420  ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, %i.k
  %i.l = load i32, ptr %3, align 4, !tbaa !370    ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b
  %i.m = add i64 %12, -4
  %i.n = sub i64 %i.m, %11                        ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !370
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.i.i.preheader83:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader83 ] ; 2 uses
  store i32 %i.l, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !370
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3338

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.b
  %.034.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.w = icmp ult ptr %.034.i.i.i.i.i.i, %i.k
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %i.x = load i32, ptr %3, align 4, !tbaa !370    ; 2 uses
  %.not5.i18.i.i.i.i.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not5.i18.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.y = add i64 %13, -4
  %i.z = sub i64 %i.y, %14                        ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.z, 28
  br i1 %min.iters.check55, label %.lr.ph.i19.i.i.i.i.i.i.preheader81, label %vector.ph56

vector.ph56:                                      ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader
  %n.vec57 = and i64 %i.ab, 9223372036854775800   ; 3 uses
  %i.ac = shl i64 %n.vec57, 2
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.ac
  %broadcast.splatinsert58 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat59 = shufflevector <4 x i32> %broadcast.splatinsert58, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph56
  %index61 = phi i64 [ 0, %vector.ph56 ], [ %index.next63, %vector.body60 ] ; 2 uses
  %i.ae = shl i64 %index61, 2
  %next.gep62 = getelementptr i8, ptr %i.h, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep62, i64 16
  store <4 x i32> %broadcast.splat59, ptr %next.gep62, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat59, ptr %i.af, align 4, !tbaa !370
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next63, %n.vec57
  br i1 %i.ag, label %middle.block64, label %vector.body60, !llvm.loop !3339

middle.block64:                                   ; preds = %vector.body60
  %cmp.n65 = icmp eq i64 %i.ab, %n.vec57
  br i1 %cmp.n65, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader81

.lr.ph.i19.i.i.i.i.i.i.preheader81:               ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader, %middle.block64
  %.06.i20.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i19.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block64 ]
  br label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader81, %.lr.ph.i19.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i19.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.preheader81 ] ; 2 uses
  store i32 %i.x, ptr %.06.i20.i.i.i.i.i.i, align 4, !tbaa !370
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.f
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !3340

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.035.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ai = load i32, ptr %3, align 4, !tbaa !370
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.aj = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %broadcast.splat49, ptr %i.aj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.ak, align 4, !tbaa !370
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store <4 x i32> %broadcast.splat49, ptr %i.al, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.am, align 4, !tbaa !370
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store <4 x i32> %broadcast.splat49, ptr %i.an, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.ao, align 4, !tbaa !370
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store <4 x i32> %broadcast.splat49, ptr %i.ap, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.aq, align 4, !tbaa !370
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  store <4 x i32> %broadcast.splat49, ptr %i.ar, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.as, align 4, !tbaa !370
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store <4 x i32> %broadcast.splat49, ptr %i.at, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.au, align 4, !tbaa !370
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  store <4 x i32> %broadcast.splat49, ptr %i.av, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.aw, align 4, !tbaa !370
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  store <4 x i32> %broadcast.splat49, ptr %i.ax, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.ay, align 4, !tbaa !370
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 272
  store <4 x i32> %broadcast.splat49, ptr %i.az, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.ba, align 4, !tbaa !370
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 288
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 304
  store <4 x i32> %broadcast.splat49, ptr %i.bb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bc, align 4, !tbaa !370
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 320
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 336
  store <4 x i32> %broadcast.splat49, ptr %i.bd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.be, align 4, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 368
  store <4 x i32> %broadcast.splat49, ptr %i.bf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bg, align 4, !tbaa !370
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 384
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 400
  store <4 x i32> %broadcast.splat49, ptr %i.bh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bi, align 4, !tbaa !370
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 416
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 432
  store <4 x i32> %broadcast.splat49, ptr %i.bj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bk, align 4, !tbaa !370
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 448
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 464
  store <4 x i32> %broadcast.splat49, ptr %i.bl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bm, align 4, !tbaa !370
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 480
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  store <4 x i32> %broadcast.splat49, ptr %i.bn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat49, ptr %i.bo, align 4, !tbaa !370
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %.0.i.i.i.i.i.i, %i.k
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !27

bb.c:                                             ; preds = %bb.a
  %.not5.i28.i.i.i.i.i.i = icmp eq ptr %i.a, %i.f
  br i1 %.not5.i28.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader

.lr.ph.i29.i.i.i.i.i.i.preheader:                 ; preds = %bb.c
  %i.bq = add i64 %13, -4
  %i.br = sub i64 %i.bq, %11                      ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.br, 28
  br i1 %min.iters.check68, label %.lr.ph.i29.i.i.i.i.i.i.preheader80, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader
  %n.vec70 = and i64 %i.bt, 9223372036854775800   ; 3 uses
  %i.bu = shl i64 %n.vec70, 2
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu
  %broadcast.splatinsert71 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat72 = shufflevector <4 x i32> %broadcast.splatinsert71, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph69
  %index74 = phi i64 [ 0, %vector.ph69 ], [ %index.next76, %vector.body73 ] ; 2 uses
  %i.bw = shl i64 %index74, 2
  %next.gep75 = getelementptr i8, ptr %i.a, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %broadcast.splat72, ptr %next.gep75, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat72, ptr %i.bx, align 4, !tbaa !370
  %index.next76 = add nuw i64 %index74, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next76, %n.vec70
  br i1 %i.by, label %middle.block77, label %vector.body73, !llvm.loop !3341

middle.block77:                                   ; preds = %vector.body73
  %cmp.n78 = icmp eq i64 %i.bt, %n.vec70
  br i1 %cmp.n78, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i.preheader80

.lr.ph.i29.i.i.i.i.i.i.preheader80:               ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader, %middle.block77
  %.06.i30.i.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i29.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block77 ]
  br label %.lr.ph.i29.i.i.i.i.i.i

.lr.ph.i29.i.i.i.i.i.i:                           ; preds = %.lr.ph.i29.i.i.i.i.i.i.preheader80, %.lr.ph.i29.i.i.i.i.i.i
  %.06.i30.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i29.i.i.i.i.i.i ], [ %.06.i30.i.i.i.i.i.i.ph, %.lr.ph.i29.i.i.i.i.i.i.preheader80 ] ; 2 uses
  store i32 %i.l, ptr %.06.i30.i.i.i.i.i.i, align 4, !tbaa !370
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.f
  br i1 %.not.i31.i.i.i.i.i.i, label %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit, label %.lr.ph.i29.i.i.i.i.i.i, !llvm.loop !3342

_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.i.i.i, %middle.block64, %middle.block77, %._crit_edge.i.i.i.i.i.i, %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !3365
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !3366
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !3366
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !3366
  %i.cd = load <2 x ptr>, ptr %4, align 8, !tbaa !369
  store <2 x ptr> %i.cd, ptr %7, align 16, !tbaa !369, !noalias !3367
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !418
  store <2 x ptr> %i.cf, ptr %i.ce, align 16, !tbaa !418, !noalias !3367
  %i.cg = load <2 x ptr>, ptr %5, align 8, !tbaa !369
  store <2 x ptr> %i.cg, ptr %8, align 16, !tbaa !369, !noalias !3367
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ci = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !418
  store <2 x ptr> %i.ci, ptr %i.ch, align 16, !tbaa !418, !noalias !3367
  store ptr %i.f, ptr %9, align 8, !tbaa !425, !noalias !3367
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !426, !noalias !3367
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.cc, ptr %i.ck, align 8, !tbaa !427, !noalias !3367
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.k, ptr %i.cl, align 8, !tbaa !420, !noalias !3367
  invoke void @_ZSt15__copy_move_ditILb1EiRiPiSt15_Deque_iteratorIiS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !3366
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !3366
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !3366
  call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  %i.cm = load <2 x ptr>, ptr %10, align 16, !tbaa !369, !noalias !3369
  store <2 x ptr> %i.cm, ptr %0, align 8, !tbaa !369, !alias.scope !3369
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cp = load <2 x ptr>, ptr %i.co, align 16, !tbaa !418, !noalias !3369
  store <2 x ptr> %i.cp, ptr %i.cn, align 8, !tbaa !418, !alias.scope !3369
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !3365
  ret void

bb.e:                                             ; preds = %_ZSt22__uninitialized_fill_aISt15_Deque_iteratorIiRiPiEiiEvT_S4_RKT0_RSaIT1_E.exit
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  %i.cs = call ptr @__cxa_begin_catch(ptr %i.cr) #22 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ct

bb.h:                                             ; preds = %bb.f
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #23
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !365
  %.not.i.i4 = icmp eq ptr %i.a, null             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i4, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !374, !noalias !3378
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !367
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !365, !noalias !3379 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit
  %i.m = lshr i64 %i.k, 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !3379
  %i.p = and i64 %i.k, 255
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %.sink6 = phi ptr [ %i.q, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 5 uses
  %.sink = phi ptr [ %i.n, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %.sink6, ptr %0, align 8, !tbaa !549
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !550
  %.not.i.i5 = icmp eq i64 %2, 0
  br i1 %.not.i.i5, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !375

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit
  %i.s = load ptr, ptr %.sink, align 8, !tbaa !369
  %i.t = ptrtoint ptr %.sink6 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 2
  %i.x = sub nsw i64 256, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.x) ; 6 uses
  %.not15.i.i.i.i = icmp eq i64 %i.v, 1024
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.e
  %.pre.i.i.i.i = load i32, ptr %3, align 4, !tbaa !370 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.z = and i64 %i.y, 7
  %i.aa = shl i64 %n.vec, 2
  %i.ab = getelementptr i8, ptr %.sink6, i64 %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sink6, i64 %i.ac ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4, !tbaa !370
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt5dequeIiSaIiEE14_M_fill_assignEmRKi:bb.a

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next139, %vector.body136 ] ; 2 uses
  %i.ay = shl i64 %index137, 2
  %next.gep138 = getelementptr i8, ptr %i.p, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x i32> %broadcast.splat135, ptr %next.gep138, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat135, ptr %i.az, align 4, !tbaa !370
  %index.next139 = add nuw i64 %index137, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.ba, label %middle.block140, label %vector.body136, !llvm.loop !3499

middle.block140:                                  ; preds = %vector.body136
  %cmp.n141 = icmp eq i64 %i.av, %n.vec133
  br i1 %cmp.n141, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i.preheader157

.lr.ph.i19.i.i.i.preheader157:                    ; preds = %.lr.ph.i19.i.i.i.preheader, %middle.block140
  %.06.i20.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i19.i.i.i.preheader ], [ %i.ax, %middle.block140 ]
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i.preheader157, %.lr.ph.i19.i.i.i
  %.06.i20.i.i.i = phi ptr [ %i.bb, %.lr.ph.i19.i.i.i ], [ %.06.i20.i.i.i.ph, %.lr.ph.i19.i.i.i.preheader157 ] ; 2 uses
  store i32 %i.ar, ptr %.06.i20.i.i.i, align 4, !tbaa !370
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i = icmp eq ptr %i.bb, %i.n
  br i1 %.not.i21.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i19.i.i.i, !llvm.loop !3500

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i, %.lr.ph.i.i.i
  %.035.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %.034.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i ] ; 2 uses
  %i.bc = load i32, ptr %2, align 4, !tbaa !370
  %broadcast.splatinsert124 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat125 = shufflevector <4 x i32> %broadcast.splatinsert124, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.bd = load ptr, ptr %.035.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> %broadcast.splat125, ptr %i.bd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.be, align 4, !tbaa !370
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <4 x i32> %broadcast.splat125, ptr %i.bf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bg, align 4, !tbaa !370
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store <4 x i32> %broadcast.splat125, ptr %i.bh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bi, align 4, !tbaa !370
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  store <4 x i32> %broadcast.splat125, ptr %i.bj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bk, align 4, !tbaa !370
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  store <4 x i32> %broadcast.splat125, ptr %i.bl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bm, align 4, !tbaa !370
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 176
  store <4 x i32> %broadcast.splat125, ptr %i.bn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bo, align 4, !tbaa !370
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 192
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  store <4 x i32> %broadcast.splat125, ptr %i.bp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bq, align 4, !tbaa !370
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  store <4 x i32> %broadcast.splat125, ptr %i.br, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bs, align 4, !tbaa !370
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 256
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 272
  store <4 x i32> %broadcast.splat125, ptr %i.bt, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bu, align 4, !tbaa !370
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 304
  store <4 x i32> %broadcast.splat125, ptr %i.bv, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.bw, align 4, !tbaa !370
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 320
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 336
  store <4 x i32> %broadcast.splat125, ptr %i.bx, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.by, align 4, !tbaa !370
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 352
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 368
  store <4 x i32> %broadcast.splat125, ptr %i.bz, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.ca, align 4, !tbaa !370
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 384
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 400
  store <4 x i32> %broadcast.splat125, ptr %i.cb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.cc, align 4, !tbaa !370
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 416
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 432
  store <4 x i32> %broadcast.splat125, ptr %i.cd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.ce, align 4, !tbaa !370
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bd, i64 448
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 464
  store <4 x i32> %broadcast.splat125, ptr %i.cf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.cg, align 4, !tbaa !370
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 480
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bd, i64 496
  store <4 x i32> %broadcast.splat125, ptr %i.ch, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat125, ptr %i.ci, align 4, !tbaa !370
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 8 ; 2 uses
  %i.cj = icmp ult ptr %.0.i.i.i, %i.d
  br i1 %i.cj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !27

bb.d:                                             ; preds = %bb.b
  %.not5.i28.i.i.i = icmp eq ptr %i.x, %i.n
  br i1 %.not5.i28.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i.preheader

.lr.ph.i29.i.i.i.preheader:                       ; preds = %bb.d
  %i.ck = add i64 %i.q, -4
  %i.cl = sub i64 %i.ck, %i.z                     ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check144 = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check144, label %.lr.ph.i29.i.i.i.preheader156, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i29.i.i.i.preheader
  %n.vec146 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.co = shl i64 %n.vec146, 2
  %i.cp = getelementptr i8, ptr %i.x, i64 %i.co
  %broadcast.splatinsert147 = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat148 = shufflevector <4 x i32> %broadcast.splatinsert147, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph145
  %index150 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body149 ] ; 2 uses
  %i.cq = shl i64 %index150, 2
  %next.gep151 = getelementptr i8, ptr %i.x, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep151, i64 16
  store <4 x i32> %broadcast.splat148, ptr %next.gep151, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat148, ptr %i.cr, align 4, !tbaa !370
  %index.next152 = add nuw i64 %index150, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next152, %n.vec146
  br i1 %i.cs, label %middle.block153, label %vector.body149, !llvm.loop !3501

middle.block153:                                  ; preds = %vector.body149
  %cmp.n154 = icmp eq i64 %i.cn, %n.vec146
  br i1 %cmp.n154, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i.preheader156

.lr.ph.i29.i.i.i.preheader156:                    ; preds = %.lr.ph.i29.i.i.i.preheader, %middle.block153
  %.06.i30.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i29.i.i.i.preheader ], [ %i.cp, %middle.block153 ]
  br label %.lr.ph.i29.i.i.i

.lr.ph.i29.i.i.i:                                 ; preds = %.lr.ph.i29.i.i.i.preheader156, %.lr.ph.i29.i.i.i
  %.06.i30.i.i.i = phi ptr [ %i.ct, %.lr.ph.i29.i.i.i ], [ %.06.i30.i.i.i.ph, %.lr.ph.i29.i.i.i.preheader156 ] ; 2 uses
  store i32 %i.af, ptr %.06.i30.i.i.i, align 4, !tbaa !370
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i, i64 4 ; 2 uses
  %.not.i31.i.i.i = icmp eq ptr %i.ct, %i.n
  br i1 %.not.i31.i.i.i, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit, label %.lr.ph.i29.i.i.i, !llvm.loop !3502

_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit: ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i29.i.i.i, %middle.block140, %middle.block153, %._crit_edge.i.i.i, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  store ptr %i.n, ptr %3, align 8, !tbaa !425, !alias.scope !3517
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.cu, align 8, !tbaa !426, !alias.scope !3517
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !427, !noalias !3517
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !427, !alias.scope !3517
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.cx, align 8, !tbaa !420, !alias.scope !3517
  %i.cy = sub nuw i64 %1, %i.ac
  call void @_ZNSt5dequeIiSaIiEE14_M_fill_insertESt15_Deque_iteratorIiRiPiEmRKi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %3, i64 noundef %i.cy, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32

bb.e:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !426, !noalias !3518 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.z, %i.db
  %i.dd = ashr exact i64 %i.dc, 2
  %i.de = add nsw i64 %i.dd, %1                   ; 5 uses
  %i.df = icmp sgt i64 %i.de, -1
  br i1 %i.df, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.dg = icmp samesign ult i64 %i.de, 128
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.x, i64 %1
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.h:                                             ; preds = %bb.f
  %i.di = lshr i64 %i.de, 7
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.dj = ashr i64 %i.de, 7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dk = phi i64 [ %i.di, %bb.h ], [ %i.dj, %bb.i ] ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.dk ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369, !noalias !3519 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 512
  %i.do = shl nsw i64 %i.dk, 7
  %i.dp = sub nsw i64 %i.de, %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dp
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit:         ; preds = %bb.g, %bb.j
  %.sroa.239.0 = phi ptr [ %i.da, %bb.g ], [ %i.dm, %bb.j ] ; 6 uses
  %.sroa.440.0 = phi ptr [ %i.w, %bb.g ], [ %i.dn, %bb.j ]
  %.sroa.641.0 = phi ptr [ %i.f, %bb.g ], [ %i.dl, %bb.j ] ; 6 uses
  %storemerge.i.i = phi ptr [ %i.dh, %bb.g ], [ %i.dq, %bb.j ] ; 6 uses
  %.sroa.239.083 = ptrtoaddr ptr %.sroa.239.0 to i64
  %storemerge.i.i84 = ptrtoaddr ptr %storemerge.i.i to i64 ; 2 uses
  %i.dr = icmp ult ptr %.sroa.641.0, %i.d
  br i1 %i.dr, label %.lr.ph.i.i, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit

.lr.ph.i.i:                                       ; preds = %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.sroa.641.0, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.ds = load ptr, ptr %.06.i.i, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef 512) #25
  %i.dt = icmp ult ptr %.06.i.i, %i.d
  br i1 %i.dt, label %.lr.ph.i.i, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit, !llvm.loop !4

_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !425, !noalias !3520
  %.pre54 = load ptr, ptr %i.v, align 8, !tbaa !427, !noalias !3520
  %.pre55 = load ptr, ptr %i.e, align 8, !tbaa !420, !noalias !3520
  br label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit

_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit: ; preds = %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit
  %i.du = phi ptr [ %.pre55, %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit ], [ %i.f, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit ] ; 2 uses
  %i.dv = phi ptr [ %.pre54, %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit ], [ %i.w, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit ] ; 3 uses
  %i.dw = phi ptr [ %.pre, %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit.loopexit ], [ %i.x, %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit ] ; 9 uses
  %4 = ptrtoaddr ptr %i.dw to i64                 ; 2 uses
  %5 = ptrtoaddr ptr %i.dv to i64
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !369
  store ptr %.sroa.239.0, ptr %i.o, align 8, !tbaa !369
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.440.0, ptr %.sroa.440.0..sroa_idx, align 8, !tbaa !369
  store ptr %.sroa.641.0, ptr %i.c, align 8, !tbaa !554
  %.not.i.i.i7 = icmp eq ptr %i.du, %.sroa.641.0
  %i.dx = load i32, ptr %2, align 4, !tbaa !370   ; 4 uses
  br i1 %.not.i.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit
  %.not5.i.i.i.i8 = icmp eq ptr %i.dw, %i.dv
  br i1 %.not5.i.i.i.i8, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12, label %.lr.ph.i.i.i.i9.preheader

.lr.ph.i.i.i.i9.preheader:                        ; preds = %bb.k
  %i.dy = add i64 %5, -4
  %i.dz = sub i64 %i.dy, %4                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i9.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i9.preheader
  %n.vec = and i64 %i.eb, 9223372036854775800     ; 3 uses
  %i.ec = shl i64 %n.vec, 2
  %i.ed = getelementptr i8, ptr %i.dw, i64 %i.ec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dw, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ef, align 4, !tbaa !370
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !3511

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12, label %.lr.ph.i.i.i.i9.preheader163

.lr.ph.i.i.i.i9.preheader163:                     ; preds = %.lr.ph.i.i.i.i9.preheader, %middle.block
  %.06.i.i.i.i10.ph = phi ptr [ %i.dw, %.lr.ph.i.i.i.i9.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.preheader163, %.lr.ph.i.i.i.i9
  %.06.i.i.i.i10 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i9 ], [ %.06.i.i.i.i10.ph, %.lr.ph.i.i.i.i9.preheader163 ] ; 2 uses
  store i32 %i.dx, ptr %.06.i.i.i.i10, align 4, !tbaa !370
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i10, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.eh, %i.dv
  br i1 %.not.i.i.i.i11, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12, label %.lr.ph.i.i.i.i9, !llvm.loop !3512

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12: ; preds = %.lr.ph.i.i.i.i9, %middle.block, %bb.k
  %.034.i.i.i13 = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ei = icmp ult ptr %.034.i.i.i13, %.sroa.641.0
  br i1 %i.ei, label %.lr.ph.i.i.i19, label %._crit_edge.i.i.i14

._crit_edge.i.i.i14:                              ; preds = %.lr.ph.i.i.i19, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12
  %i.ej = load i32, ptr %2, align 4, !tbaa !370   ; 2 uses
  %.not5.i18.i.i.i15 = icmp eq ptr %.sroa.239.0, %storemerge.i.i
  br i1 %.not5.i18.i.i.i15, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i19.i.i.i16.preheader

.lr.ph.i19.i.i.i16.preheader:                     ; preds = %._crit_edge.i.i.i14
  %i.ek = add i64 %storemerge.i.i84, -4
  %i.el = sub i64 %i.ek, %.sroa.239.083           ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.el, 28
  br i1 %min.iters.check84, label %.lr.ph.i19.i.i.i16.preheader161, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.i19.i.i.i16.preheader
  %n.vec86 = and i64 %i.en, 9223372036854775800   ; 3 uses
  %i.eo = shl i64 %n.vec86, 2
  %i.ep = getelementptr i8, ptr %.sroa.239.0, i64 %i.eo
  %broadcast.splatinsert87 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat88 = shufflevector <4 x i32> %broadcast.splatinsert87, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph85
  %index90 = phi i64 [ 0, %vector.ph85 ], [ %index.next92, %vector.body89 ] ; 2 uses
  %i.eq = shl i64 %index90, 2
  %next.gep91 = getelementptr i8, ptr %.sroa.239.0, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep91, i64 16
  store <4 x i32> %broadcast.splat88, ptr %next.gep91, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat88, ptr %i.er, align 4, !tbaa !370
  %index.next92 = add nuw i64 %index90, 8         ; 2 uses
  %i.es = icmp eq i64 %index.next92, %n.vec86
  br i1 %i.es, label %middle.block93, label %vector.body89, !llvm.loop !3513

middle.block93:                                   ; preds = %vector.body89
  %cmp.n94 = icmp eq i64 %i.en, %n.vec86
  br i1 %cmp.n94, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i19.i.i.i16.preheader161

.lr.ph.i19.i.i.i16.preheader161:                  ; preds = %.lr.ph.i19.i.i.i16.preheader, %middle.block93
  %.06.i20.i.i.i17.ph = phi ptr [ %.sroa.239.0, %.lr.ph.i19.i.i.i16.preheader ], [ %i.ep, %middle.block93 ]
  br label %.lr.ph.i19.i.i.i16

.lr.ph.i19.i.i.i16:                               ; preds = %.lr.ph.i19.i.i.i16.preheader161, %.lr.ph.i19.i.i.i16
  %.06.i20.i.i.i17 = phi ptr [ %i.et, %.lr.ph.i19.i.i.i16 ], [ %.06.i20.i.i.i17.ph, %.lr.ph.i19.i.i.i16.preheader161 ] ; 2 uses
  store i32 %i.ej, ptr %.06.i20.i.i.i17, align 4, !tbaa !370
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i17, i64 4 ; 2 uses
  %.not.i21.i.i.i18 = icmp eq ptr %i.et, %storemerge.i.i
  br i1 %.not.i21.i.i.i18, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i19.i.i.i16, !llvm.loop !3514

.lr.ph.i.i.i19:                                   ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12, %.lr.ph.i.i.i19
  %.035.i.i.i20 = phi ptr [ %.0.i.i.i27, %.lr.ph.i.i.i19 ], [ %.034.i.i.i13, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i12 ] ; 2 uses
  %i.eu = load i32, ptr %2, align 4, !tbaa !370
  %broadcast.splatinsert77 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat78 = shufflevector <4 x i32> %broadcast.splatinsert77, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.ev = load ptr, ptr %.035.i.i.i20, align 8, !tbaa !369 ; 32 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <4 x i32> %broadcast.splat78, ptr %i.ev, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.ew, align 4, !tbaa !370
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  store <4 x i32> %broadcast.splat78, ptr %i.ex, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.ey, align 4, !tbaa !370
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  store <4 x i32> %broadcast.splat78, ptr %i.ez, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fa, align 4, !tbaa !370
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  store <4 x i32> %broadcast.splat78, ptr %i.fb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fc, align 4, !tbaa !370
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 128
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 144
  store <4 x i32> %broadcast.splat78, ptr %i.fd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fe, align 4, !tbaa !370
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 160
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 176
  store <4 x i32> %broadcast.splat78, ptr %i.ff, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fg, align 4, !tbaa !370
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 192
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 208
  store <4 x i32> %broadcast.splat78, ptr %i.fh, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fi, align 4, !tbaa !370
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ev, i64 224
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ev, i64 240
  store <4 x i32> %broadcast.splat78, ptr %i.fj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fk, align 4, !tbaa !370
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 256
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  store <4 x i32> %broadcast.splat78, ptr %i.fl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fm, align 4, !tbaa !370
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 288
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 304
  store <4 x i32> %broadcast.splat78, ptr %i.fn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fo, align 4, !tbaa !370
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 320
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ev, i64 336
  store <4 x i32> %broadcast.splat78, ptr %i.fp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fq, align 4, !tbaa !370
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ev, i64 352
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 368
  store <4 x i32> %broadcast.splat78, ptr %i.fr, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fs, align 4, !tbaa !370
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 384
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 400
  store <4 x i32> %broadcast.splat78, ptr %i.ft, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fu, align 4, !tbaa !370
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 416
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 432
  store <4 x i32> %broadcast.splat78, ptr %i.fv, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fw, align 4, !tbaa !370
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 448
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ev, i64 464
  store <4 x i32> %broadcast.splat78, ptr %i.fx, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.fy, align 4, !tbaa !370
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ev, i64 480
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ev, i64 496
  store <4 x i32> %broadcast.splat78, ptr %i.fz, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat78, ptr %i.ga, align 4, !tbaa !370
  %.0.i.i.i27 = getelementptr inbounds nuw i8, ptr %.035.i.i.i20, i64 8 ; 2 uses
  %i.gb = icmp ult ptr %.0.i.i.i27, %.sroa.641.0
  br i1 %i.gb, label %.lr.ph.i.i.i19, label %._crit_edge.i.i.i14, !llvm.loop !27

bb.l:                                             ; preds = %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit
  %.not5.i28.i.i.i28 = icmp eq ptr %i.dw, %storemerge.i.i
  br i1 %.not5.i28.i.i.i28, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i29.i.i.i29.preheader

.lr.ph.i29.i.i.i29.preheader:                     ; preds = %bb.l
  %i.gc = add i64 %storemerge.i.i84, -4
  %i.gd = sub i64 %i.gc, %4                       ; 2 uses
  %i.ge = lshr i64 %i.gd, 2
  %i.gf = add nuw nsw i64 %i.ge, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.gd, 28
  br i1 %min.iters.check97, label %.lr.ph.i29.i.i.i29.preheader160, label %vector.ph98

vector.ph98:                                      ; preds = %.lr.ph.i29.i.i.i29.preheader
  %n.vec99 = and i64 %i.gf, 9223372036854775800   ; 3 uses
  %i.gg = shl i64 %n.vec99, 2
  %i.gh = getelementptr i8, ptr %i.dw, i64 %i.gg
  %broadcast.splatinsert100 = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %broadcast.splat101 = shufflevector <4 x i32> %broadcast.splatinsert100, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph98
  %index103 = phi i64 [ 0, %vector.ph98 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %i.gi = shl i64 %index103, 2
  %next.gep104 = getelementptr i8, ptr %i.dw, i64 %i.gi ; 2 uses
  %i.gj = getelementptr i8, ptr %next.gep104, i64 16
  store <4 x i32> %broadcast.splat101, ptr %next.gep104, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat101, ptr %i.gj, align 4, !tbaa !370
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.gk = icmp eq i64 %index.next105, %n.vec99
  br i1 %i.gk, label %middle.block106, label %vector.body102, !llvm.loop !3515

middle.block106:                                  ; preds = %vector.body102
  %cmp.n107 = icmp eq i64 %i.gf, %n.vec99
  br i1 %cmp.n107, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i29.i.i.i29.preheader160

.lr.ph.i29.i.i.i29.preheader160:                  ; preds = %.lr.ph.i29.i.i.i29.preheader, %middle.block106
  %.06.i30.i.i.i30.ph = phi ptr [ %i.dw, %.lr.ph.i29.i.i.i29.preheader ], [ %i.gh, %middle.block106 ]
  br label %.lr.ph.i29.i.i.i29

.lr.ph.i29.i.i.i29:                               ; preds = %.lr.ph.i29.i.i.i29.preheader160, %.lr.ph.i29.i.i.i29
  %.06.i30.i.i.i30 = phi ptr [ %i.gl, %.lr.ph.i29.i.i.i29 ], [ %.06.i30.i.i.i30.ph, %.lr.ph.i29.i.i.i29.preheader160 ] ; 2 uses
  store i32 %i.dx, ptr %.06.i30.i.i.i30, align 4, !tbaa !370
  %i.gl = getelementptr inbounds nuw i8, ptr %.06.i30.i.i.i30, i64 4 ; 2 uses
  %.not.i31.i.i.i31 = icmp eq ptr %i.gl, %storemerge.i.i
  br i1 %.not.i31.i.i.i31, label %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32, label %.lr.ph.i29.i.i.i29, !llvm.loop !3516

_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit32: ; preds = %.lr.ph.i19.i.i.i16, %.lr.ph.i29.i.i.i29, %middle.block93, %middle.block106, %bb.l, %._crit_edge.i.i.i14, %_ZSt4fillISt15_Deque_iteratorIiRiPiEiEvT_S4_RKT0_.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEESt14_List_iteratorIiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !365
  %.not.i.i4 = icmp eq ptr %i.a, null             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i4, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !374, !noalias !3527
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !367
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !365, !noalias !3528 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit
  %i.m = lshr i64 %i.k, 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !3528
  %i.p = and i64 %i.k, 255
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %i.r = phi ptr [ %i.q, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 4 uses
  %.sink = phi ptr [ %i.n, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !549
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.s, align 8, !tbaa !550
  %.not.i.i5 = icmp eq i64 %2, 0
  br i1 %.not.i.i5, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEESt14_List_iteratorIiEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !375

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit
  %i.t = load ptr, ptr %.sink, align 8, !tbaa !369
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub nsw i64 256, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.y) ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %i.w, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.aa = add i64 %i.z, -1
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.i.i.prol ], [ %i.z, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !370
  store i32 %i.ac, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !370
  %i.ad = load ptr, ptr %.sroa.0.016.i.i.i.i.prol, align 8, !tbaa !435 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.af = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3525

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa14.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %i.ag = icmp ult i64 %i.aa, 3
  br i1 %i.ag, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !370
  store i32 %i.ai, ptr %.01417.i.i.i.i, align 4, !tbaa !370
  %i.aj = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !435 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !370
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !370
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !435 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !370
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !370
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !435 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !370
  store i32 %i.au, ptr %i.as, align 4, !tbaa !370
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !435 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ax = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !30

.loopexit40.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %.promoted.i.i = phi ptr [ %3, %bb.e ], [ %.lcssa14.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.av, %.lr.ph.i.i.i.i ]
  %i.ay = sub i64 %2, %i.z                        ; 2 uses
  %.not2842.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not2842.i.i, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEESt14_List_iteratorIiEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit40.i.i, %.unr-lcssa
  %.lcssa45.i.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %.promoted.i.i, %.loopexit40.i.i ] ; 2 uses
  %.044.i.i = phi ptr [ %i.az, %.unr-lcssa ], [ %.sink, %.loopexit40.i.i ]
  %.02643.i.i = phi i64 [ %i.bz, %.unr-lcssa ], [ %i.ay, %.loopexit40.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8 ; 2 uses
  %i.ba = tail call i64 @llvm.umin.i64(i64 %.02643.i.i, i64 256) ; 4 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !369 ; 2 uses
  %xtraiter15 = and i64 %i.ba, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i31.i.i.prol ], [ %i.ba, %.lr.ph.i.i ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i31.i.i.prol ], [ %i.bb, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i31.i.i.prol ], [ %.lcssa45.i.i, %.lr.ph.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !370
  store i32 %i.bd, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !370
  %i.be = load ptr, ptr %.sroa.0.016.i.i34.i.i.prol, align 8, !tbaa !435 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4 ; 2 uses
  %i.bg = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !3526

end_hunk_2
begin_hunk_3_@_ZNSt5dequeIiSaIiEE13_M_assign_auxISt14_List_iteratorIiEEEvT_S5_St20forward_iterator_tag:.preheader.i.i
  %.sroa.11.1.i.i.i.i16 = phi ptr [ %i.cb, %bb.d ], [ %.sroa.11.0.i.i.i.i12, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %.sroa.4.1.i.i.i.i17 = phi ptr [ %i.cc, %bb.d ], [ %.sroa.4.0.i.i.i.i13, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %i.ce = phi ptr [ %i.cd, %bb.d ], [ %i.bv, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %i.cf = phi ptr [ %i.cc, %bb.d ], [ %i.bz, %.lr.ph.i.i.i.i.i11 ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.01.05.i.i.i.i.i14, align 8, !tbaa !435, !noalias !3905 ; 2 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.cg, %2
  br i1 %.not.i.i.i.i.i18, label %_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit21, label %.lr.ph.i.i.i.i.i11, !llvm.loop !35

_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit21: ; preds = %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i.i.i15, %bb.c
  %.sroa.11.2.i.i.i.i19 = phi ptr [ %i.h, %bb.c ], [ %.sroa.11.1.i.i.i.i16, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i.i.i15 ] ; 3 uses
  %.sroa.4.2.i.i.i.i20 = phi ptr [ %i.bu, %bb.c ], [ %.sroa.4.1.i.i.i.i17, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i.i.i15 ]
  %i.ch = phi ptr [ %i.y, %bb.c ], [ %i.ce, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i.i.i15 ]
  %i.ci = phi ptr [ %i.z, %bb.c ], [ %i.cf, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i.i.i15 ]
  %i.cj = icmp ult ptr %.sroa.11.2.i.i.i.i19, %i.f
  br i1 %i.cj, label %.lr.ph.i.i22, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit

.lr.ph.i.i22:                                     ; preds = %_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit21, %.lr.ph.i.i22
  %.06.i.pn.i = phi ptr [ %.06.i.i23, %.lr.ph.i.i22 ], [ %.sroa.11.2.i.i.i.i19, %_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit21 ]
  %.06.i.i23 = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.ck = load ptr, ptr %.06.i.i23, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef 512) #25
  %i.cl = icmp ult ptr %.06.i.i23, %i.f
  br i1 %i.cl, label %.lr.ph.i.i22, label %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit, !llvm.loop !4

_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit: ; preds = %.lr.ph.i.i22, %_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit21
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !369
  store ptr %.sroa.4.2.i.i.i.i20, ptr %i.q, align 8, !tbaa !369
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ch, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !369
  store ptr %.sroa.11.2.i.i.i.i19, ptr %i.e, align 8, !tbaa !554
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIiSaIiEE15_M_erase_at_endESt15_Deque_iteratorIiRiPiE.exit, %_ZSt4copyISt14_List_iteratorIiESt15_Deque_iteratorIiRiPiEET0_T_S7_S6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !365
  %.not.i.i3 = icmp eq ptr %i.a, null             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i3, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEES9_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i1 noundef zeroext false)
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !367
  store i64 %i.j, ptr %i.b, align 8, !tbaa !374
  br label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !365, !noalias !3911 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit
  %i.l = load i64, ptr %i.b, align 8, !tbaa !374, !noalias !3912 ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !369, !noalias !3911
  %i.p = and i64 %i.l, 255
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit: ; preds = %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit, %.split.i.i
  %.sink5 = phi ptr [ %i.q, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  %.sink = phi ptr [ %i.n, %.split.i.i ], [ null, %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %.sink5, ptr %0, align 8, !tbaa !549
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.r, align 8, !tbaa !550
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !375

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit
  %i.s = load ptr, ptr %.sink, align 8, !tbaa !369
  %i.t = ptrtoint ptr %.sink5 to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 2
  %i.x = sub nsw i64 256, %i.w
  %i.y = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.x) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.v, 1024
  br i1 %.not.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %bb.f, !prof !375

bb.f:                                             ; preds = %bb.e
  %i.z = shl i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sink5, i8 0, i64 %i.z, i1 false)
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aa = sub i64 %2, %i.y                        ; 2 uses
  %.not2833.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not2833.i.i, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, %.lr.ph.i.i
  %.035.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sink, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i ]
  %.02634.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %i.aa, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.02634.i.i, i64 256) ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !369
  %i.ae = shl nuw nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i8 0, i64 %i.ae, i1 false)
  %i.af = sub nuw i64 %.02634.i.i, %i.ac          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.af, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !3910

_ZN5boost9container10deque_implIivLb0ENS0_9deque_optILm0ELm0EvLb0EEEE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEEEEEvNS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE11prot_finishEv.exit, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIiEEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !374
  %i.ah = add i64 %i.ag, %2
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !374
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !424, !noalias !3919 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !423, !noalias !3919 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, -1                     ; 2 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i64 %1, %i.i
  tail call void @_ZNSt5dequeIiSaIiEE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.k), !noalias !3919
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !425, !noalias !3920 ; 2 uses
  %.pre6.i = load ptr, ptr %i.b, align 8, !tbaa !427, !noalias !3920
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi.i = phi i64 [ %.pre7.i, %bb.c ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre6.i, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !426, !noalias !3920 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !420, !noalias !3920 ; 4 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %.pre-phi.i, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.t, %1                     ; 5 uses
  %i.v = icmp sgt i64 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = icmp samesign ult i64 %i.u, 128
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds [4 x i8], ptr %i.m, i64 %1
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

bb.g:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.u, 7
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.z = ashr i64 %i.u, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi i64 [ %i.y, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !369, !noalias !3920 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  %i.ae = shl nsw i64 %i.aa, 7
  %i.af = sub nsw i64 %i.u, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.af
  br label %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.f, %bb.i
  %.sroa.6.0 = phi ptr [ %i.o, %bb.f ], [ %i.ac, %bb.i ] ; 6 uses
  %.sroa.9.0 = phi ptr [ %i.l, %bb.f ], [ %i.ad, %bb.i ]
  %.sroa.12.0 = phi ptr [ %i.q, %bb.f ], [ %i.ab, %bb.i ] ; 4 uses
  %storemerge.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.ag, %bb.i ] ; 6 uses
  %.sroa.6.016 = ptrtoaddr ptr %.sroa.6.0 to i64
  %i.ah = icmp eq ptr %i.m, %storemerge.i.i.i
  br i1 %i.ah, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  store i32 0, ptr %i.m, align 4, !tbaa !370
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.l
  br i1 %i.aj, label %bb.k, label %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !369 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  br label %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i

_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i:     ; preds = %bb.k, %bb.j
  %.sroa.9.0.i.i = phi ptr [ %i.ak, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %i.am, %bb.k ], [ %i.l, %bb.j ] ; 2 uses
  %i.ao = phi ptr [ %i.al, %bb.k ], [ %i.ai, %bb.j ] ; 5 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = ptrtoaddr ptr %storemerge.i.i.i to i64  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %storemerge.i.i.i
  br i1 %.not.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i
  %i.ar = ptrtoaddr ptr %i.an to i64
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.9.0.i.i, %.sroa.12.0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i29.i.i.i.preheader.i.i.i, label %bb.m

.lr.ph.i29.i.i.i.preheader.i.i.i:                 ; preds = %bb.l
  %i.as = add i64 %i.aq, -4
  %i.at = sub i64 %i.as, %i.ap
  %i.au = and i64 %i.at, -4
  %i.av = add i64 %i.au, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.av, i1 false), !tbaa !370
  br label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit

bb.m:                                             ; preds = %bb.l
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.m
  %i.aw = add i64 %i.ar, -4
  %i.ax = sub i64 %i.aw, %i.ap
  %i.ay = and i64 %i.ax, -4
  %i.az = add i64 %i.ay, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.az, i1 false), !tbaa !370
  br label %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i

_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.m
  %.034.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i, i64 8 ; 2 uses
  %i.ba = icmp ult ptr %.034.i.i.i.i.i.i, %.sroa.12.0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !370 ; 2 uses
  %.not5.i18.i.i.i.i.i.i = icmp eq ptr %.sroa.6.0, %storemerge.i.i.i
  br i1 %.not5.i18.i.i.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader

.lr.ph.i19.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bc = add i64 %i.aq, -4
  %i.bd = sub i64 %i.bc, %.sroa.6.016             ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28
  br i1 %min.iters.check, label %.lr.ph.i19.i.i.i.i.i.i.preheader23, label %vector.ph16

vector.ph16:                                      ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = shl i64 %n.vec, 2
  %i.bh = getelementptr i8, ptr %.sroa.6.0, i64 %i.bg
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph16
  %index20 = phi i64 [ 0, %vector.ph16 ], [ %index.next21, %vector.body19 ] ; 2 uses
  %i.bi = shl i64 %index20, 2
  %next.gep = getelementptr i8, ptr %.sroa.6.0, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat18, ptr %next.gep, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat18, ptr %i.bj, align 4, !tbaa !370
  %index.next21 = add nuw i64 %index20, 8         ; 2 uses
  %i.bk = icmp eq i64 %index.next21, %n.vec
  br i1 %i.bk, label %middle.block22, label %vector.body19, !llvm.loop !3917

middle.block22:                                   ; preds = %vector.body19
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i.preheader23

.lr.ph.i19.i.i.i.i.i.i.preheader23:               ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader, %middle.block22
  %.06.i20.i.i.i.i.i.i.ph = phi ptr [ %.sroa.6.0, %.lr.ph.i19.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block22 ]
  br label %.lr.ph.i19.i.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i.i:                           ; preds = %.lr.ph.i19.i.i.i.i.i.i.preheader23, %.lr.ph.i19.i.i.i.i.i.i
  %.06.i20.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i19.i.i.i.i.i.i ], [ %.06.i20.i.i.i.i.i.i.ph, %.lr.ph.i19.i.i.i.i.i.i.preheader23 ] ; 2 uses
  store i32 %i.bb, ptr %.06.i20.i.i.i.i.i.i, align 4, !tbaa !370
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i20.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %i.bl, %storemerge.i.i.i
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, label %.lr.ph.i19.i.i.i.i.i.i, !llvm.loop !3918

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.035.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.034.i.i.i.i.i.i, %_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !370
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.bn = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !369 ; 32 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 4, !tbaa !370
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 4, !tbaa !370
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4, !tbaa !370
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.bu, align 4, !tbaa !370
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 4, !tbaa !370
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 176
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.by, align 4, !tbaa !370
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4, !tbaa !370
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 224
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  store <4 x i32> %broadcast.splat, ptr %i.cb, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 4, !tbaa !370
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 272
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 4, !tbaa !370
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 304
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 4, !tbaa !370
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 320
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 336
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 4, !tbaa !370
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bn, i64 368
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !370
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 384
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 400
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4, !tbaa !370
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 416
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 432
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !370
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 448
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 464
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4, !tbaa !370
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 480
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bn, i64 496
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4, !tbaa !370
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4, !tbaa !370
  %.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ct = icmp ult ptr %.0.i.i.i.i.i.i, %.sroa.12.0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !27

_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i19.i.i.i.i.i.i, %middle.block22, %._crit_edge.i.i.i.i.i.i, %.lr.ph.i29.i.i.i.preheader.i.i.i, %_ZNSt15_Deque_iteratorIiRiPiEppEv.exit.i.i.i, %_ZNSt5dequeIiSaIiEE27_M_reserve_elements_at_backEm.exit
  store ptr %storemerge.i.i.i, ptr %i.a, align 8, !tbaa !369
  store ptr %.sroa.6.0, ptr %i.n, align 8, !tbaa !369
  store ptr %.sroa.9.0, ptr %i.b, align 8, !tbaa !369
  store ptr %.sroa.12.0, ptr %i.p, align 8, !tbaa !554
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIiRiPiEiEvT_S4_RSaIT0_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !438    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !439  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !422  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !369
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #25
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i, !llvm.loop !4

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !438
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !440
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #25
  br label %_ZNSt11_Deque_baseIiSaIiEED2Ev.exit

_ZNSt11_Deque_baseIiSaIiEED2Ev.exit:              ; preds = %bb.a, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test11movable_intEvLb0ENS0_9deque_optILm0ELm0EvLb1EEEE5eraseENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEES9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.49") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !455    ; 11 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !455    ; 10 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNK5boost9container14deque_iteratorIPNS0_4test11movable_intELb1ELj0ELj0EmEmiERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !456  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !456  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !453
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !453
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test11movable_intELb1ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPNS0_4test11movable_intELb1ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !451  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !457 ; 5 uses
end_hunk_3
