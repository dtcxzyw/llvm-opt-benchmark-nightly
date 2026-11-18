Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE7emplaceIJS3_EEEPS3_PKS3_DpOT_:bb.a
  store i32 0, ptr %i.ai, align 4, !tbaa !65
  %.not.i.i = icmp eq ptr %1, %i.ai
  br i1 %.not.i.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i, %bb.i
  %i.al = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.al, ptr %1, align 4, !tbaa !65
  store i32 0, ptr %2, align 4, !tbaa !65
  %i.am = add i16 %i.c, 1
  store i16 %i.am, ptr %i.b, align 2, !tbaa !69
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  store i32 0, ptr %i.p, align 4, !tbaa !65
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not8.i.i28 = icmp eq ptr %i.ar, %1
  br i1 %.not8.i.i28, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.k, %.lr.ph.i.i29
  %.010.i.i30 = phi ptr [ %i.au, %.lr.ph.i.i29 ], [ %i.p, %bb.k ] ; 2 uses
  %.079.i.i31 = phi ptr [ %i.at, %.lr.ph.i.i29 ], [ %i.ar, %bb.k ] ; 3 uses
  %i.as = load i32, ptr %.079.i.i31, align 4, !tbaa !65
  store i32 %i.as, ptr %.010.i.i30, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i31, align 4, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %.079.i.i31, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i.i30, i64 4 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.at, %1
  br i1 %.not.i.i32, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i29, !llvm.loop !13

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i29, %bb.k
  %.0.lcssa.i.i = phi ptr [ %i.p, %bb.k ], [ %i.au, %.lr.ph.i.i29 ]
  %i.av = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.av, ptr %.0.lcssa.i.i, align 4, !tbaa !65
  store i32 0, ptr %2, align 4, !tbaa !65
  %i.aw = add i16 %i.n, -1
  store i16 %i.aw, ptr %i.m, align 8, !tbaa !63
  %i.ax = getelementptr inbounds i8, ptr %1, i64 -4
  br label %bb.l

.thread:                                          ; preds = %bb.h, %bb.j, %bb.e, %bb.b
  %i.ay = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef 1, ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %bb.f, %bb.c
  %.1 = phi ptr [ %i.e, %bb.c ], [ %i.ay, %.thread ], [ %i.r, %bb.f ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.ax, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEENS_11move_detail11enable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.20", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69   ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 5 uses
  %i.k = add nsw i64 %i.g, %i.j                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j ; 3 uses
  %.not = icmp ult i64 %i.k, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.k, %2
  %i.o = udiv i16 %i.b, 10
  %.zext = zext nneg i16 %i.o to i64
  %.not52 = icmp ult i64 %i.n, %.zext
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i64 %i.f, %i.j                   ; 3 uses
  %i.q = add i64 %i.p, %2                         ; 2 uses
  %i.r = sub i64 %i.c, %i.q
  %i.s = lshr i64 %i.r, 1                         ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !69
  store i16 0, ptr %i.h, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.262.0..sroa_idx, align 8
  %i.u = icmp samesign ult i64 %i.s, %i.j
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.20") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.20") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.v = trunc i64 %i.s to i16
  store i16 %i.v, ptr %i.h, align 8, !tbaa !81
  %i.w = add i64 %i.s, %i.q
  %i.x = trunc i64 %i.w to i16
  store i16 %i.x, ptr %i.d, align 2, !tbaa !73
  %.pre69 = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.y = xor i64 %i.c, 65535
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %bb.g, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.1) #20
  unreachable

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit: ; preds = %bb.f
  %i.aa = add nuw nsw i64 %2, %i.c                ; 2 uses
  %.tr.i = zext i16 %i.b to i32
  %.lhs.trunc.i = shl nuw nsw i32 %.tr.i, 3
  %i.ab = udiv i32 %.lhs.trunc.i, 5
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 65535)
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ad) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit
  %i.af = icmp samesign ugt i64 %i.aa, 65535
  br i1 %i.af, label %bb.i, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.h
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
  %.pre = load i16, ptr %i.d, align 2, !tbaa !69  ; 2 uses
  %.pre66 = load i16, ptr %i.h, align 8, !tbaa !63 ; 2 uses
  %.pre67 = load ptr, ptr %0, align 8, !tbaa !62
  %.pre70 = zext i16 %.pre to i64
  %.pre71 = zext i16 %.pre66 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i
  %.pre-phi72 = phi i64 [ %i.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre71, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.f, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre70, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.l, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre67, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 4 uses
  %i.aj = phi i16 [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre66, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %i.ak = phi i16 [ %i.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %.0.i.i = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %i.ah, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 3 uses
  %i.al = sub nsw i64 %.pre-phi, %.pre-phi72
  %i.am = add nsw i64 %2, %i.al                   ; 2 uses
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = lshr i64 %i.an, 1                       ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi72 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi ; 3 uses
  %.not16.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ap, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.as, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.av, %1
  br i1 %.not.i.i53, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.ap, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ], [ %i.aw, %.lr.ph.i.i ] ; 8 uses
  %.not19.i.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.pre68 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ax = shl i64 %2, 2
  %6 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 4         ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %6, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound087 = icmp ult ptr %.015.lcssa.i.i, %i.ay
  %bound188 = icmp ult ptr %3, %6
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx = or i1 %found.conflict, %found.conflict89
  %bound090 = icmp ugt ptr %i.ay, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound191 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx, %found.conflict92
  br i1 %conflict.rdx93, label %.lr.ph.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  %i.az = and i64 %2, 7
  %i.ba = shl i64 %n.vec, 2
  %i.bb = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ba
  %i.bc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre68, i64 0
  %i.bd = load i32, ptr %3, align 4, !tbaa !65, !alias.scope !345
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bc, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi94 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.be = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.be ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65, !alias.scope !346, !noalias !347
  store <4 x i32> %broadcast.splat, ptr %i.bf, align 4, !tbaa !65, !alias.scope !346, !noalias !347
  %i.bg = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bh = add <4 x i32> %vec.phi94, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66, !alias.scope !348, !noalias !345
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader103

.lr.ph.i.i.i.preheader103:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre68, %vector.memcheck ], [ %.pre68, %.lr.ph.i.i.i.preheader ], [ %i.bj, %middle.block ] ; 2 uses
  %.022.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.az, %middle.block ] ; 4 uses
  %.01821.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block ] ; 2 uses
  %i.bk = add nsw i64 %.022.i.i.i.ph, -1
  %xtraiter = and i64 %.022.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader103, %.lr.ph.i.i.i.prol
  %i.bl = phi i32 [ %i.bn, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader103 ]
  %.022.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.i.prol ], [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ]
  %.01821.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.prol ], [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader103 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.bm = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.bm, ptr %.01821.i.i.i.prol, align 4, !tbaa !65
  %i.bn = add i32 %i.bl, 1                        ; 3 uses
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.bp = add nsw i64 %.022.i.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !343

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader103
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.bn, %.lr.ph.i.i.i.prol ]
  %.022.i.i.i.unr = phi i64 [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.bp, %.lr.ph.i.i.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.bo, %.lr.ph.i.i.i.prol ]
  %i.bq = icmp ult i64 %i.bk, 3
  br i1 %i.bq, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.br = phi i32 [ %i.cc, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.022.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.bs = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.bs, ptr %.01821.i.i.i, align 4, !tbaa !65
  %i.bt = add i32 %i.br, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.bv = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !65
  %i.bw = add i32 %i.br, 2
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.by = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !65
  %i.bz = add i32 %i.br, 3
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.cb = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !65
  %i.cc = add i32 %i.br, 4                        ; 2 uses
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cd = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.ce = add nsw i64 %.022.i.i.i, -4             ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !344

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.ar
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %._crit_edge.loopexit.i.i.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i, i64 %2
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.cj, %.lr.ph.i20.i ], [ %1, %.lr.ph.i20.preheader.i ] ; 3 uses
  %.01517.i22.i = phi ptr [ %i.ck, %.lr.ph.i20.i ], [ %i.cf, %.lr.ph.i20.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.cg = load i32, ptr %.018.i21.i, align 4, !tbaa !65
  store i32 %i.cg, ptr %.01517.i22.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !65
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.cj, %i.ar
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !8

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %._crit_edge.loopexit.i.i.i
  %.not5.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %i.aq, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !65
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cm = add i32 %i.cl, -1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.ar
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.ai, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  %i.co = load i16, ptr %i.a, align 4, !tbaa !70
  %i.cp = zext i16 %i.co to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.cq) #19
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, %bb.j
  %i.cr = trunc nuw i64 %i.ae to i16
  store i16 %i.cr, ptr %i.a, align 4, !tbaa !74
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !62
  %i.cs = add i64 %i.am, %i.ao
  %i.ct = trunc i64 %i.cs to i16
  store i16 %i.ct, ptr %i.d, align 2, !tbaa !73
  %i.cu = trunc i64 %i.ao to i16
  store i16 %i.cu, ptr %i.h, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.cv = phi i64 [ %i.ao, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %i.s, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.cw = phi ptr [ %.0.i.i, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %.pre69, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.cx = ptrtoint ptr %1 to i64
  %i.cy = ptrtoint ptr %i.m to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = and i64 %i.cv, 65535
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  ret ptr %i.dc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef byval(%"struct.boost::container::dtl::insert_range_proxy.20") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr [4 x i8], ptr %0, i64 %1   ; 27 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 10 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 13 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 12 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 10 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 3 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeIPKS3_EEPS3_SB_T_SD_:bb.a

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %.lr.ph.i.i53.i.preheader236
  %.011.i.i54.i.unr = phi ptr [ %.011.i.i54.i.ph, %.lr.ph.i.i53.i.preheader236 ], [ %i.mm, %.lr.ph.i.i53.i.prol ]
  %.0610.i.i55.i.unr = phi i64 [ %.0610.i.i55.i.ph, %.lr.ph.i.i53.i.preheader236 ], [ %i.mj, %.lr.ph.i.i53.i.prol ]
  %.079.i.i56.i.unr = phi ptr [ %.079.i.i56.i.ph, %.lr.ph.i.i53.i.preheader236 ], [ %i.ml, %.lr.ph.i.i53.i.prol ]
  %i.mn = icmp ult i64 %i.mi, 7
  br i1 %i.mn, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.011.i.i54.i = phi ptr [ %i.nm, %.lr.ph.i.i53.i ], [ %.011.i.i54.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 9 uses
  %.0610.i.i55.i = phi i64 [ %i.nj, %.lr.ph.i.i53.i ], [ %.0610.i.i55.i.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.079.i.i56.i = phi ptr [ %i.nl, %.lr.ph.i.i53.i ], [ %.079.i.i56.i.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 9 uses
  %i.mo = load i32, ptr %.079.i.i56.i, align 4, !tbaa !65
  store i32 %i.mo, ptr %.011.i.i54.i, align 4, !tbaa !65
  %i.mp = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 4
  %i.mr = load i32, ptr %i.mp, align 4, !tbaa !65
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !65
  %i.ms = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 8
  %i.mu = load i32, ptr %i.ms, align 4, !tbaa !65
  store i32 %i.mu, ptr %i.mt, align 4, !tbaa !65
  %i.mv = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 12
  %i.mw = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 12
  %i.mx = load i32, ptr %i.mv, align 4, !tbaa !65
  store i32 %i.mx, ptr %i.mw, align 4, !tbaa !65
  %i.my = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 16
  %i.na = load i32, ptr %i.my, align 4, !tbaa !65
  store i32 %i.na, ptr %i.mz, align 4, !tbaa !65
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 20
  %i.nc = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 20
  %i.nd = load i32, ptr %i.nb, align 4, !tbaa !65
  store i32 %i.nd, ptr %i.nc, align 4, !tbaa !65
  %i.ne = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 24
  %i.ng = load i32, ptr %i.ne, align 4, !tbaa !65
  store i32 %i.ng, ptr %i.nf, align 4, !tbaa !65
  %i.nh = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 28
  %i.ni = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 28
  %i.nj = add i64 %.0610.i.i55.i, -8              ; 2 uses
  %i.nk = load i32, ptr %i.nh, align 4, !tbaa !65
  store i32 %i.nk, ptr %i.ni, align 4, !tbaa !65
  %i.nl = getelementptr inbounds nuw i8, ptr %.079.i.i56.i, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %.011.i.i54.i, i64 32
  %.not.i.i57.i.7 = icmp eq i64 %i.nj, 0
  br i1 %.not.i.i57.i.7, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i53.i, !llvm.loop !455

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i68.prol.loopexit, %.lr.ph.i.i.i68, %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i, %middle.block205, %middle.block229
  %i.nn = trunc nuw i64 %i.d to i16
  %i.no = sub i16 %i.af, %i.nn
  store i16 %i.no, ptr %i.ae, align 8, !tbaa !81
  %i.np = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hs
  br label %bb.n

.thread:                                          ; preds = %bb.i, %bb.l, %bb.f, %bb.d
  %i.nq = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEPS3_SD_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.n, %bb.b ], [ %i.r, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.nq, %.thread ], [ %i.at, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit55 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.np, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEPS3_SD_mT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69   ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = sub nsw i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 5 uses
  %i.k = add nsw i64 %i.g, %i.j                   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j ; 3 uses
  %.not = icmp ult i64 %i.k, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw i64 %i.k, %2
  %i.o = udiv i16 %i.b, 10
  %.zext = zext nneg i16 %i.o to i64
  %.not51 = icmp ult i64 %i.n, %.zext
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i64 %i.f, %i.j                   ; 3 uses
  %i.q = add i64 %i.p, %2                         ; 2 uses
  %i.r = sub i64 %i.c, %i.q
  %i.s = lshr i64 %i.r, 1                         ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.s ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !69
  store i16 0, ptr %i.h, align 8, !tbaa !63
  %i.u = icmp samesign ult i64 %i.s, %i.j
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.m, i64 noundef %i.p, ptr noundef %i.t, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  %i.v = trunc i64 %i.s to i16
  store i16 %i.v, ptr %i.h, align 8, !tbaa !81
  %i.w = add i64 %i.s, %i.q
  %i.x = trunc i64 %i.w to i16
  store i16 %i.x, ptr %i.d, align 2, !tbaa !73
  %.pre64 = load ptr, ptr %0, align 8, !tbaa !62
  br label %bb.k

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.y = xor i64 %i.c, 65535
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %bb.g, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.1) #20
  unreachable

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit: ; preds = %bb.f
  %i.aa = add nuw nsw i64 %2, %i.c                ; 2 uses
  %.tr.i = zext i16 %i.b to i32
  %.lhs.trunc.i = shl nuw nsw i32 %.tr.i, 3
  %i.ab = udiv i32 %.lhs.trunc.i, 5
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 65535)
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ad) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit
  %i.af = icmp samesign ugt i64 %i.aa, 65535
  br i1 %i.af, label %bb.i, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #20
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.h
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
  %.pre = load i16, ptr %i.d, align 2, !tbaa !69  ; 2 uses
  %.pre61 = load i16, ptr %i.h, align 8, !tbaa !63 ; 2 uses
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !62
  %.pre65 = zext i16 %.pre to i64
  %.pre66 = zext i16 %.pre61 to i64
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i
  %.pre-phi67 = phi i64 [ %i.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre66, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.f, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre65, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.l, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre62, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 4 uses
  %i.aj = phi i16 [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %i.ak = phi i16 [ %i.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ]
  %.0.i.i = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22calculate_new_capacityEm.exit ], [ %i.ah, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE8allocateERS5_m.exit.i.i ] ; 3 uses
  %i.al = sub nsw i64 %.pre-phi, %.pre-phi67
  %i.am = add nsw i64 %2, %i.al                   ; 2 uses
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = lshr i64 %i.an, 1                       ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi67 ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.pre-phi ; 3 uses
  %.not16.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ap, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.as = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.as, ptr %.01517.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i, align 4, !tbaa !65
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.av, %1
  br i1 %.not.i.i52, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.ap, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE8allocateEm.exit ], [ %i.aw, %.lr.ph.i.i ] ; 8 uses
  %.not17.i.i.i = icmp eq i64 %2, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.pre63 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ax = shl i64 %2, 2                           ; 2 uses
  %4 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax     ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %4, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %.015.lcssa.i.i, %i.ay
  %bound183 = icmp ult ptr %3, %4
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085 = icmp ugt ptr %i.ay, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx, %found.conflict87
  br i1 %conflict.rdx88, label %.lr.ph.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  %i.az = and i64 %2, 7
  %i.ba = shl i64 %n.vec, 2                       ; 2 uses
  %i.bb = getelementptr i8, ptr %3, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ba
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre63, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bd, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi89 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.be = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.be ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.be ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep90) ]
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !467
  %wide.load98 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !65, !alias.scope !467
  %i.bg = getelementptr i8, ptr %next.gep90, i64 16
  store <4 x i32> %wide.load, ptr %next.gep90, align 4, !tbaa !65, !alias.scope !468, !noalias !469
  store <4 x i32> %wide.load98, ptr %i.bg, align 4, !tbaa !65, !alias.scope !468, !noalias !469
  %i.bh = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bi = add <4 x i32> %vec.phi89, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66, !alias.scope !470, !noalias !467
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader101

.lr.ph.i.i.i.preheader101:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre63, %vector.memcheck ], [ %.pre63, %.lr.ph.i.i.i.preheader ], [ %i.bk, %middle.block ] ; 2 uses
  %.020.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.az, %middle.block ] ; 4 uses
  %.0919.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block ] ; 2 uses
  %.01618.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block ] ; 2 uses
  %i.bl = add nsw i64 %.020.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader101, %.lr.ph.i.i.i.prol
  %i.bm = phi i32 [ %i.bo, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader101 ]
  %.020.i.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.i.prol ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ]
  %.0919.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.prol ], [ %.0919.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.01618.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader101 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.prol) ]
  %i.bn = load i32, ptr %.0919.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.bn, ptr %.01618.i.i.i.prol, align 4, !tbaa !65
  %i.bo = add i32 %i.bm, 1                        ; 3 uses
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.prol, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %i.br = add nsw i64 %.020.i.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !465

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader101
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bo, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi i64 [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.br, %.lr.ph.i.i.i.prol ]
  %.0919.i.i.i.unr = phi ptr [ %.0919.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bp, %.lr.ph.i.i.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %.01618.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %i.bs = icmp ult i64 %i.bl, 3
  br i1 %i.bs, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.bt = phi i32 [ %i.ch, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i) ]
  %i.bu = load i32, ptr %.0919.i.i.i, align 4, !tbaa !65
  store i32 %i.bu, ptr %.01618.i.i.i, align 4, !tbaa !65
  %i.bv = add i32 %i.bt, 1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !65
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !65
  %i.bz = add i32 %i.bt, 2
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !65
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !65
  %i.cd = add i32 %i.bt, 3
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ce = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !65
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !65
  %i.ch = add i32 %i.bt, 4                        ; 2 uses
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ci = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.ck = add nsw i64 %.020.i.i.i, -4             ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !466

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.ar
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i, i64 %2
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.cp, %.lr.ph.i20.i ], [ %1, %.lr.ph.i20.preheader.i ] ; 3 uses
  %.01517.i22.i = phi ptr [ %i.cq, %.lr.ph.i20.i ], [ %i.cl, %.lr.ph.i20.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.cm = load i32, ptr %.018.i21.i, align 4, !tbaa !65
  store i32 %i.cm, ptr %.01517.i22.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !65
  %i.cn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cp = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.cp, %i.ar
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !8

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %.not5.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %i.aq, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !65
  %i.cr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cs = add i32 %i.cr, -1
  store i32 %i.cs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ct, %i.ar
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  %.not.i53 = icmp eq ptr %i.ai, null
  br i1 %.not.i53, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  %i.cu = load i16, ptr %i.a, align 4, !tbaa !70
  %i.cv = zext i16 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.cw) #19
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, %bb.j
  %i.cx = trunc nuw i64 %i.ae to i16
  store i16 %i.cx, ptr %i.a, align 4, !tbaa !74
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !62
  %i.cy = add i64 %i.am, %i.ao
  %i.cz = trunc i64 %i.cy to i16
  store i16 %i.cz, ptr %i.d, align 2, !tbaa !73
  %i.da = trunc i64 %i.ao to i16
  store i16 %i.da, ptr %i.h, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.db = phi i64 [ %i.ao, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %i.s, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.dc = phi ptr [ %.0.i.i, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %.pre64, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.dd = ptrtoint ptr %1 to i64
  %i.de = ptrtoint ptr %i.m to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = and i64 %i.db, 65535
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  ret ptr %i.di
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %1   ; 27 uses
  %i.c = ptrtoint ptr %3 to i64                   ; 12 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 15 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 13 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.h = sub i64 %i.d, %i.g                       ; 10 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 13 uses
  %i.j = add i64 %i.f, %4                         ; 7 uses
  %.not = icmp ult i64 %i.i, %i.j
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
end_hunk_1
