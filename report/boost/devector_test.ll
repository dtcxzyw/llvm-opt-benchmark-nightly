Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container8devectorIiSaIiEvE12insert_rangeINS_13move_iteratorIPiEEEES6_PKiT_SA_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !596  ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !599
  %i.s = sub i64 %i.r, %i.n
  %.not49 = icmp ult i64 %i.s, %i.d
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, !prof !262

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre80 = load i64, ptr %i.m, align 8, !tbaa !596
  br label %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit

_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre80, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !589
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !597  ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp ult i64 %i.y, %i.d
  br i1 %.not48, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not77 = icmp eq ptr %2, null
  br i1 %.not77, label %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit53, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !597
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !598
  br label %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit53

_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit53: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre79, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !588
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not72 = icmp ult i64 %i.ak, %i.am
  br i1 %.not72, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !599
  %i.ap = sub i64 %i.ao, %i.n
  %.not47 = icmp ult i64 %i.ap, %i.d
  br i1 %.not47, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i, label %bb.o, !prof !370

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

bb.r:                                             ; preds = %bb.m
  %.not94 = icmp eq ptr %1, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i, !prof !267

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i

_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i
  %.not78 = icmp eq ptr %i.e, null
  br i1 %.not78, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE17copy_n_and_updateIS5_EEvRS3_T_m.exit41.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !596
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !589
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not46 = icmp ult i64 %i.y, %i.d
  br i1 %.not46, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i54 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not75 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not73 = icmp eq ptr %i.bk, %1
  br i1 %.not73, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.x, !prof !585

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i ]
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58.thread, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58, !prof !267

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58.thread: ; preds = %bb.z
  %.not52.not.i67 = icmp eq ptr %2, null
  br i1 %.not52.not.i67, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58.thread, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i58, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !597
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !588
  %i.bw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIPiEEEEEES8_PKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit53, %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocISaIiENS_13move_iteratorIPiEES4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit53 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIPiEEEEEES8_PKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !599  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !596  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !597  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !598    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyISaIiENS_13move_iteratorIS2_EEEES5_EEvT_mS9_S9_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS_13move_iteratorIS2_EEEES5_EEvT_mS9_S9_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEEvT0_mS9_S9_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS_13move_iteratorIS2_EEEES5_EEvT_mS9_S9_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS_13move_iteratorIS2_EEEES5_EEvT_mS9_S9_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !588
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !589
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !598
  br label %bb.t

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !596
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !597
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !598
  br label %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit

_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i
  %i.ai = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ null, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !692
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !692
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.av = icmp ne ptr %i.at, %1
  %i.aw = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.aw, %i.av
  %i.ax = icmp ne ptr %i.ai, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.ax, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.o, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i, !prof !262

bb.o:                                             ; preds = %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit
  %i.ay = ptrtoint ptr %1 to i64
  %i.az = ptrtoint ptr %i.at to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 4 %i.at, i64 %i.ba, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 %i.ba
  br label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i: ; preds = %bb.o, %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.bb, %bb.o ], [ %i.as, %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i
  %i.bc = icmp ne ptr %.0.i.i.i, null
  %i.bd = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.bd, %i.bc
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i

bb.q:                                             ; preds = %bb.p
  %i.be = shl i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.be, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i
  %i.bf = icmp ne ptr %1, %i.au
  %i.bg = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.bf, %i.bg
  %i.bh = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bh, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.r, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaIiEPiS3_NS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEEvRT_T0_SB_SB_T1_mT2_.exit, !prof !262

bb.r:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %2
  %i.bj = ptrtoint ptr %i.au to i64
  %i.bk = ptrtoint ptr %1 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 4 %1, i64 %i.bl, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocISaIiEPiS3_NS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEEvRT_T0_SB_SB_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocISaIiEPiS3_NS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEEvRT_T0_SB_SB_T1_mT2_.exit: ; preds = %bb.r, %_ZN5boost9container3dtl18insert_range_proxyISaIiENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS5_EEvRS3_T_m.exit.i
  br i1 %i.ax, label %bb.s, label %_ZN5boost9container6detail16allocation_guardISaIiEED2Ev.exit

bb.s:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaIiEPiS3_NS0_3dtl18insert_range_proxyIS2_NS_13move_iteratorIS3_EEEEEEvRT_T0_SB_SB_T1_mT2_.exit
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !599
  %i.bn = shl i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.bn) #30
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12insert_rangeINS_13move_iteratorIPiEEEES7_PKiT_SB_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !726  ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !782
  %i.s = sub i64 %i.r, %i.n
  %.not49 = icmp ult i64 %i.s, %i.d
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !262

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre80 = load i64, ptr %i.m, align 8, !tbaa !726
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre80, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !719
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !727  ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not48 = icmp ult i64 %i.y, %i.d
  br i1 %.not48, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not77 = icmp eq ptr %2, null
  br i1 %.not77, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit53, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !727
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !728
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit53

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit53: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre79, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !718
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not72 = icmp ult i64 %i.ak, %i.am
  br i1 %.not72, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !782
  %i.ap = sub i64 %i.ao, %i.n
  %.not47 = icmp ult i64 %i.ap, %i.d
  br i1 %.not47, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not76 = icmp eq ptr %i.e, null
  br i1 %.not76, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i, label %bb.o, !prof !370

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.r:                                             ; preds = %bb.m
  %.not94 = icmp eq ptr %1, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i, !prof !267

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not95 = icmp eq ptr %2, null
  br i1 %.not95, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %.not78 = icmp eq ptr %i.e, null
  br i1 %.not78, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE17copy_n_and_updateIS6_EEvRS4_T_m.exit41.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !726
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !719
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not46 = icmp ult i64 %i.y, %i.d
  br i1 %.not46, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i54 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not75 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i54, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not73 = icmp eq ptr %i.bk, %1
  br i1 %.not73, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.x, !prof !585

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i ]
  %.not74 = icmp eq ptr %2, null
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not75, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58, !prof !267

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58.thread: ; preds = %bb.z
  %.not52.not.i67 = icmp eq ptr %2, null
  br i1 %.not52.not.i67, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58.thread, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i58, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !727
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !718
  %i.bw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIPiEEEEEES9_PKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit53, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEES5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit53 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIPiEEEEEES9_PKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !782  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !726  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !727  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !728    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIS2_EEEES6_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIS2_EEEES6_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIS2_EEEES6_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIS2_EEEES6_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !718
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !719
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !728
  br label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ae, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.n, label %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge

._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.c, align 8, !tbaa !726
  %.pre57 = load i64, ptr %i.f, align 8, !tbaa !727
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !728
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit: ; preds = %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ag = phi ptr [ %i.i, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre58, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.ah = phi i64 [ %i.g, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre57, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.d, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 2 uses
  %.0.i.i52 = phi ptr [ null, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %i.af, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !783
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !783
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.at = icmp ne ptr %i.ar, %1
  %i.au = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.au, %i.at
  %i.av = icmp ne ptr %i.ag, null
  %spec.select.i.i.i = and i1 %i.av, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.o, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i, !prof !262

bb.o:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 4 %i.ar, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.ay
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i: ; preds = %bb.o, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.az, %bb.o ], [ %i.aq, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i53 = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i53, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %i.ba = icmp ne ptr %.0.i.i.i, null
  %i.bb = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bc = shl i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.bc, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %i.bd = icmp ne ptr %1, %i.as
  %i.be = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.bd, %i.be
  %i.bf = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bf, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.r, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEEvRT_T0_SC_SC_T1_mT2_.exit, !prof !262

bb.r:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %2
  %i.bh = ptrtoint ptr %i.as to i64
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 4 %1, i64 %i.bj, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEEvRT_T0_SC_SC_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %bb.r, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS_13move_iteratorIPiEEE31uninitialized_copy_n_and_updateIS6_EEvRS4_T_m.exit.i
  %i.bk = load ptr, ptr %0, align 8, !tbaa !728   ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorIiLj2ELj0EEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_9allocatorIiLj2ELj0EEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_13move_iteratorIS4_EEEEEEvRT_T0_SC_SC_T1_mT2_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.bk)
end_hunk_1
begin_hunk_2_@_ZN5boost9container8devectorIivvE12insert_rangeIPKiEEPiS5_T_S7_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !317  ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.n ; 8 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !316
  %i.s = sub i64 %i.r, %i.n
  %.not48 = icmp ult i64 %i.s, %i.d
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ne ptr %i.e, null
  %i.u = icmp ne ptr %2, null
  %spec.select.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i, label %bb.f, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !262

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre79 = load i64, ptr %i.m, align 8, !tbaa !317
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.n, %bb.e ], [ %.pre79, %bb.f ]
  %i.w = add i64 %i.v, %i.d
  store i64 %i.w, ptr %i.m, align 8, !tbaa !314
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !313  ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 11 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not47 = icmp ult i64 %i.y, %i.d
  br i1 %.not47, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.ab = sub nsw i64 0, %i.d
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %2, i64 %i.c, i1 false)
  %.pre = load i64, ptr %i.x, align 8, !tbaa !313
  %.pre78 = load ptr, ptr %0, align 8, !tbaa !312
  br label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52: ; preds = %bb.i, %bb.j
  %i.ad = phi ptr [ %i.e, %bb.i ], [ %.pre78, %bb.j ]
  %i.ae = phi i64 [ %i.y, %bb.i ], [ %.pre, %bb.j ]
  %i.af = sub i64 %i.ae, %i.d                     ; 2 uses
  store i64 %i.af, ptr %i.x, align 8, !tbaa !318
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.ah = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 2                 ; 4 uses
  %i.al = sub i64 %i.n, %i.y
  %i.am = lshr i64 %i.al, 1
  %.not71 = icmp ult i64 %i.ak, %i.am
  br i1 %.not71, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !316
  %i.ap = sub i64 %i.ao, %i.n
  %.not46 = icmp ult i64 %i.ap, %i.d
  br i1 %.not46, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.o to i64
  %i.ar = sub i64 %i.aq, %i.ah                    ; 4 uses
  %i.as = ashr exact i64 %i.ar, 2                 ; 2 uses
  %.not.i = icmp ult i64 %i.as, %i.d
  br i1 %.not.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = sub nsw i64 0, %i.d
  %i.au = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.at ; 3 uses
  %.not75 = icmp eq ptr %i.e, null
  br i1 %.not75, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i, label %bb.o, !prof !370

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.au, i64 %i.c, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.o, %bb.n
  %.not.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i, label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah                    ; 2 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.az, ptr align 4 %1, i64 %i.aw, i1 false)
  br label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i, %bb.p
  %i.ba = icmp ne ptr %1, null
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i.i.i = and i1 %i.ba, %i.bb
  br i1 %or.cond.i.i.i.i, label %bb.q, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.q:                                             ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.r:                                             ; preds = %bb.m
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i, !prof !267

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i: ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 4 %1, i64 %i.ar, i1 false)
  %.not94 = icmp eq ptr %2, null
  br i1 %.not94, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i, label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %.not77 = icmp eq ptr %i.e, null
  br i1 %.not77, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.be = sub nuw nsw i64 %i.d, %i.as
  %i.bf = shl i64 %i.be, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.q, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS4_T_m.exit40.i, %bb.t
  %i.bg = load i64, ptr %i.m, align 8, !tbaa !317
  %i.bh = add i64 %i.bg, %i.d
  store i64 %i.bh, ptr %i.m, align 8, !tbaa !314
  br label %bb.ab

bb.u:                                             ; preds = %bb.k
  %.not45 = icmp ult i64 %i.y, %i.d
  br i1 %.not45, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i53 = icmp ult i64 %i.ak, %i.d
  %i.bi = sub nsw i64 0, %i.d                     ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bi ; 4 uses
  %.not74 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i53, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.z, i64 %i.c, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.z, i64 %i.c ; 3 uses
  %.not72 = icmp eq ptr %i.bk, %1
  br i1 %.not72, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.x, !prof !585

bb.x:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.ah, %i.bl                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.bk, i64 %i.bm, i1 false)
  %i.bn = getelementptr inbounds i8, ptr %i.z, i64 %i.bm
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i, %bb.x
  %.0.i.i36.i = phi ptr [ %i.bn, %bb.x ], [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i ]
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i.i36.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.z:                                             ; preds = %bb.v
  br i1 %.not74, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57.thread, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57, !prof !267

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57: ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 4 %i.z, i64 %i.aj, i1 false)
  %.not52.not.i = icmp eq ptr %2, null
  br i1 %.not52.not.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %bb.aa

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57.thread: ; preds = %bb.z
  %.not52.not.i66 = icmp eq ptr %2, null
  br i1 %.not52.not.i66, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.thread

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.thread: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57.thread
  %i.bo = sub nuw nsw i64 %i.d, %i.ak
  %i.bp = shl i64 %i.bo, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %2, i64 %i.bp, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57
  %i.bq = sub nuw nsw i64 %i.d, %i.ak             ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %i.aj
  %i.bs = shl i64 %i.bq, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %2, i64 %i.bs, i1 false)
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.bt, i64 %i.aj, i1 false)
  br label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %bb.w, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.thread, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57.thread, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, %bb.y, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i57, %bb.aa
  %i.bu = load i64, ptr %i.x, align 8, !tbaa !313
  %i.bv = sub i64 %i.bu, %i.d
  store i64 %i.bv, ptr %i.x, align 8, !tbaa !318
  %i.bw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi
  br label %bb.ab

.thread:                                          ; preds = %bb.l, %bb.u, %bb.h, %bb.d
  %i.bx = tail call noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEEEEPiS9_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.bx, %.thread ], [ %i.ag, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEEPKiPiEENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit52 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.bw, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEEEEPiS9_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !316  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !313  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !312    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEES6_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEES6_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorIiEEPiNS0_3dtl18insert_range_proxyIS3_PKiEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEES6_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiEES6_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !318
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !314
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !312
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIivvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #27
  %.pre = load i64, ptr %i.c, align 8, !tbaa !317
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !313
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE8allocateEm.exit

_ZN5boost9container8devectorIivvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i ], [ null, %_ZN5boost9container8devectorIivvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !310
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !310
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.at = icmp ne ptr %i.ar, %1
  %i.au = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.au, %i.at
  %i.av = icmp ne ptr %i.ag, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.av, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i, !prof !262

bb.m:                                             ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 4 %i.ar, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.ay
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorIivvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.az, %bb.m ], [ %i.aq, %_ZN5boost9container8devectorIivvE8allocateEm.exit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i, label %bb.n, !prof !267

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %i.ba = icmp ne ptr %.0.i.i.i, null
  %i.bb = icmp ne ptr %3, null
  %or.cond.i.i.i.i = and i1 %i.bb, %i.ba
  br i1 %or.cond.i.i.i.i, label %bb.o, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bc = shl i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i.i, ptr nonnull align 1 %3, i64 %i.bc, i1 false)
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i: ; preds = %bb.o, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i
  %i.bd = icmp ne ptr %1, %i.as
  %i.be = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.bd, %i.be
  %i.bf = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bf, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.p, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_PKiEEEEvRT_T0_SC_SC_T1_mT2_.exit, !prof !262

bb.p:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %2
  %i.bh = ptrtoint ptr %i.as to i64
  %i.bi = ptrtoint ptr %1 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 4 %1, i64 %i.bj, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_PKiEEEEvRT_T0_SC_SC_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_PKiEEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %bb.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEEPKiE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i
  br i1 %i.av, label %bb.q, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit

bb.q:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_PKiEEEEvRT_T0_SC_SC_T1_mT2_.exit
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !316
  %i.bl = shl i64 %i.bk, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bl) #26
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_PKiEEEEvRT_T0_SC_SC_T1_mT2_.exit, %bb.q
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !311
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !312
  %i.bm = add i64 %i.an, %i.ap
  store i64 %i.bm, ptr %i.c, align 8, !tbaa !314
  store i64 %i.ap, ptr %i.f, align 8, !tbaa !318
end_hunk_2
