Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SC_:bb.a

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next210, %vector.body207 ] ; 2 uses
  %i.jo = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %i.ap, i64 %i.jo ; 2 uses
  %i.jp = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %broadcast.splat206, ptr %next.gep209, align 4, !tbaa !629
  store <4 x i32> %broadcast.splat206, ptr %i.jp, align 4, !tbaa !629
  %index.next210 = add nuw i64 %index208, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.jq, label %middle.block211, label %vector.body207, !llvm.loop !4666

middle.block211:                                  ; preds = %vector.body207
  %cmp.n212 = icmp eq i64 %i.bt, %n.vec204
  br i1 %cmp.n212, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block211
  %.012.i.i64.i.ph = phi i64 [ %i.bt, %.lr.ph.preheader.i.i61.i ], [ %i.jl, %middle.block211 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i.i61.i ], [ %i.jn, %middle.block211 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.jr, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.js, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.jr = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !629
  %i.js = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i, !llvm.loop !4667

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block197, %middle.block211
  %i.jt = sub nuw i64 %i.ao, %i.a
  store i64 %i.jt, ptr %i.an, align 8, !tbaa !624
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gc
  br label %bb.n

.thread:                                          ; preds = %bb.i, %bb.l, %bb.f, %bb.d
  %i.jv = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.m, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.jv, %.thread ], [ %i.bp, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.ju, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.331", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !637  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !634  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !635  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !636    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.263.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.331") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.331") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !624
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !625
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !636
  br label %bb.p

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
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !634
  %.pre67 = load i64, ptr %i.f, align 8, !tbaa !635
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !636
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i
  %i.ai = phi ptr [ %.pre68, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = phi i64 [ %.pre67, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %.0.i.i53 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !711
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !711
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i53, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %.not16.i.i = icmp eq ptr %i.at, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.at, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.as, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.av = load i32, ptr %.018.i.i, align 4, !tbaa !629
  store i32 %i.av, ptr %.01517.i.i, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i, align 4, !tbaa !629
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ay = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.ay, %1
  br i1 %.not.i.i54, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !148

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.as, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.az, %.lr.ph.i.i ] ; 8 uses
  %.not19.i.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.pre69 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ba = shl i64 %2, 2
  %i.bb = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ba ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.bb, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %6 = getelementptr i8, ptr %3, i64 4            ; 2 uses
  %bound087 = icmp ult ptr %.015.lcssa.i.i, %6
  %bound188 = icmp ult ptr %3, %i.bb
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx = or i1 %found.conflict, %found.conflict89
  %bound090 = icmp ugt ptr %6, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound191 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx, %found.conflict92
  br i1 %conflict.rdx93, label %.lr.ph.i.i.i.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  %i.bc = and i64 %2, 7
  %i.bd = shl i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bd
  %i.bf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre69, i64 0
  %i.bg = load i32, ptr %3, align 4, !tbaa !629, !alias.scope !4679
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bf, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi94 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %i.bh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !629, !alias.scope !4680, !noalias !4681
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4, !tbaa !629, !alias.scope !4680, !noalias !4681
  %i.bj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bk = add <4 x i32> %vec.phi94, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !4676

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259, !alias.scope !4682, !noalias !4679
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader103

.lr.ph.i.i.i.preheader103:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre69, %vector.memcheck ], [ %.pre69, %.lr.ph.i.i.i.preheader ], [ %i.bm, %middle.block ] ; 2 uses
  %.022.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block ] ; 4 uses
  %.01821.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %i.bn = add i64 %.022.i.i.i.ph, -1
  %xtraiter = and i64 %.022.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader103, %.lr.ph.i.i.i.prol
  %i.bo = phi i32 [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader103 ]
  %.022.i.i.i.prol = phi i64 [ %i.bs, %.lr.ph.i.i.i.prol ], [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ]
  %.01821.i.i.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.prol ], [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader103 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.bp = load i32, ptr %3, align 4, !tbaa !629
  store i32 %i.bp, ptr %.01821.i.i.i.prol, align 4, !tbaa !629
  %i.bq = add i32 %i.bo, 1                        ; 3 uses
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.br = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.bs = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4677

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader103
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %.022.i.i.i.unr = phi i64 [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.bs, %.lr.ph.i.i.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader103 ], [ %i.br, %.lr.ph.i.i.i.prol ]
  %i.bt = icmp ult i64 %i.bn, 3
  br i1 %i.bt, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.bu = phi i32 [ %i.cf, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.022.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.bv = load i32, ptr %3, align 4, !tbaa !629
  store i32 %i.bv, ptr %.01821.i.i.i, align 4, !tbaa !629
  %i.bw = add i32 %i.bu, 1
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.by = load i32, ptr %3, align 4, !tbaa !629
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !629
  %i.bz = add i32 %i.bu, 2
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ca = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.cb = load i32, ptr %3, align 4, !tbaa !629
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !629
  %i.cc = add i32 %i.bu, 3
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cd = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.ce = load i32, ptr %3, align 4, !tbaa !629
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !629
  %i.cf = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.ch = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4678

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.au
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %._crit_edge.loopexit.i.i.i
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i, i64 %2
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.cm, %.lr.ph.i20.i ], [ %1, %.lr.ph.i20.preheader.i ] ; 3 uses
  %.01517.i22.i = phi ptr [ %i.cn, %.lr.ph.i20.i ], [ %i.ci, %.lr.ph.i20.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.cj = load i32, ptr %.018.i21.i, align 4, !tbaa !629
  store i32 %i.cj, ptr %.01517.i22.i, align 4, !tbaa !629
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !629
  %i.ck = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cm = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.cm, %i.au
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !148

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %._crit_edge.loopexit.i.i.i
  %.not5.i = icmp samesign eq i64 %i.aj, %i.ak
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %i.at, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !629
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cp = add i32 %i.co, -1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cq, %i.au
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit
  %.not.i55 = icmp eq ptr %i.ai, null
  br i1 %.not.i55, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !637
  %i.cs = shl i64 %i.cr, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.cs) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !626
  store ptr %.0.i.i53, ptr %0, align 8, !tbaa !636
  %i.ct = add i64 %i.ap, %i.ar
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !625
  store i64 %i.ar, ptr %i.f, align 8, !tbaa !624
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit
  %i.cu = phi i64 [ %i.ar, %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.cv = phi ptr [ %.0.i.i53, %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit ], [ %.pre70, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.cw = ptrtoint ptr %1 to i64
  %i.cx = ptrtoint ptr %i.j to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  ret ptr %i.da
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef byval(%"struct.boost::container::dtl::insert_range_proxy.331") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 3 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !629
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !629
  store i32 0, ptr %.018.i, align 4, !tbaa !629
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !148

end_hunk_0
begin_hunk_1_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPSA_EEEEEPS3_PKS3_mT_:bb.a

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.bp = shl nuw nsw i64 %i.ax, 2
  %i.bq = add i64 %i.a, -4
  %i.br = sub i64 %i.bq, %i.az                    ; 2 uses
  %i.bs = sub i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bv = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  %i.bw = sub i64 %i.br, %i.bv
  %i.bx = and i64 %i.bw, -4
  %i.by = getelementptr i8, ptr %i.aw, i64 %i.bv
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %bound0 = icmp ugt ptr %i.ca, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.bi, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.cb = shl i64 %n.vec, 2                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bi, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.bh, i64 %i.cb  ; 2 uses
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ce, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.cf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.cf ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.bh, i64 %i.cf ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep84) ]
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5215
  %wide.load92 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !646, !alias.scope !5215
  %i.ch = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load, ptr %next.gep84, align 4, !tbaa !646
  store <4 x i32> %wide.load92, ptr %i.ch, align 4, !tbaa !646
  %i.ci = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.cj = add <4 x i32> %vec.phi83, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !5204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5216, !noalias !5215
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader144

.lr.ph.i.i.preheader144:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph145 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.cl, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader144, %.lr.ph.i.i
  %i.cm = phi i32 [ %i.co, %.lr.ph.i.i ], [ %.ph145, %.lr.ph.i.i.preheader144 ]
  %.018.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader144 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader144 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.cn = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.cn, ptr %.01517.i.i, align 4, !tbaa !646
  %i.co = add i32 %i.cm, 1                        ; 2 uses
  store i32 %i.co, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cp = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.cp, %1
  br i1 %.not.i.i51, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !5206

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.bh, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.cd, %middle.block ], [ %i.cq, %.lr.ph.i.i ] ; 6 uses
  %.not13.i.i.i = icmp eq i64 %2, 0
  br i1 %.not13.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.pre69 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5217 ; 2 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.cr = load i32, ptr %i.bk, align 4, !tbaa !259, !noalias !5217
  store i32 %i.cr, ptr %.015.lcssa.i.i, align 4, !tbaa !646, !noalias !5217
  %i.cs = add i32 %.pre69, 1                      ; 2 uses
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5217
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bm
  br i1 %i.cu, label %bb.o, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol

bb.o:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !270, !noalias !5217 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol: ; preds = %bb.o, %.lr.ph.i.i.i.prol
  %.sroa.11.1.i.i.prol = phi ptr [ %i.cv, %bb.o ], [ %i.bo, %.lr.ph.i.i.i.prol ]
  %i.cy = phi ptr [ %i.cx, %bb.o ], [ %i.bm, %.lr.ph.i.i.i.prol ]
  %i.cz = phi ptr [ %i.cw, %bb.o ], [ %i.ct, %.lr.ph.i.i.i.prol ]
  %i.da = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i, i64 4
  %i.db = add nsw i64 %2, -1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.unr = phi i32 [ %.pre69, %.lr.ph.i.i.i.preheader ], [ %i.cs, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %.sroa.11.0.i.i.unr = phi ptr [ %i.bo, %.lr.ph.i.i.i.preheader ], [ %.sroa.11.1.i.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %.unr149 = phi ptr [ %i.bm, %.lr.ph.i.i.i.preheader ], [ %i.cy, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %.unr150 = phi ptr [ %i.bk, %.lr.ph.i.i.i.preheader ], [ %i.cz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %.015.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.preheader ], [ %i.db, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %.01214.i.i.i.unr = phi ptr [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.da, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.prol ]
  %i.dc = icmp eq i64 %2, 1
  br i1 %i.dc, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1
  %i.dd = phi i32 [ %i.dr, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.11.0.i.i = phi ptr [ %.sroa.11.1.i.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.sroa.11.0.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.de = phi ptr [ %i.dx, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.unr149, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.df = phi ptr [ %i.dy, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.unr150, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i = phi i64 [ %i.ea, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01214.i.i.i = phi ptr [ %i.dz, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1 ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i) ]
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !259, !noalias !5217
  store i32 %i.dg, ptr %.01214.i.i.i, align 4, !tbaa !646, !noalias !5217
  %i.dh = add i32 %i.dd, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5217
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.de
  br i1 %i.dj, label %bb.p, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !270, !noalias !5217 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i:  ; preds = %bb.p, %.lr.ph.i.i.i
  %.sroa.11.1.i.i = phi ptr [ %i.dk, %bb.p ], [ %.sroa.11.0.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.dn = phi ptr [ %i.dm, %bb.p ], [ %i.de, %.lr.ph.i.i.i ] ; 2 uses
  %i.do = phi ptr [ %i.dl, %bb.p ], [ %i.di, %.lr.ph.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !259, !noalias !5217
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !646, !noalias !5217
  %i.dr = add i32 %i.dd, 2                        ; 2 uses
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5217
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dn
  br i1 %i.dt, label %bb.q, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1

bb.q:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !270, !noalias !5217 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1: ; preds = %bb.q, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i
  %.sroa.11.1.i.i.1 = phi ptr [ %i.du, %bb.q ], [ %.sroa.11.1.i.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i ]
  %i.dx = phi ptr [ %i.dw, %bb.q ], [ %i.dn, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i ]
  %i.dy = phi ptr [ %i.dv, %bb.q ], [ %i.ds, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8
  %i.ea = add i64 %.015.i.i.i, -2                 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.1, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !170

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.i.1, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.bj
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %.loopexit.i
  %i.eb = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %.pre70 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.ec = shl i64 %i.ay, 2
  %i.ed = add i64 %i.ec, %i.az
  %i.ee = add i64 %i.ed, -4
  %i.ef = sub i64 %i.ee, %i.a                     ; 2 uses
  %i.eg = lshr i64 %i.ef, 2
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.ef, 156
  br i1 %min.iters.check107, label %.lr.ph.i20.i.preheader, label %vector.memcheck108

vector.memcheck108:                               ; preds = %.lr.ph.i20.preheader.i
  %i.ei = shl i64 %2, 2
  %i.ej = shl i64 %i.ay, 2
  %i.ek = add i64 %i.ej, %i.az
  %i.el = add i64 %i.ek, -4
  %i.em = sub i64 %i.el, %i.a
  %i.en = and i64 %i.em, -4                       ; 2 uses
  %i.eo = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ei
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.en
  %i.eq = getelementptr i8, ptr %i.ep, i64 4      ; 2 uses
  %bound0109 = icmp ult ptr %i.eb, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1110 = icmp ugt ptr %i.eq, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict111 = and i1 %bound0109, %bound1110
  %6 = getelementptr i8, ptr %1, i64 %i.en
  %7 = getelementptr i8, ptr %6, i64 4            ; 2 uses
  %bound0112 = icmp ult ptr %i.eb, %7
  %bound1113 = icmp ult ptr %1, %i.eq
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict111, %found.conflict114
  %bound0115 = icmp ugt ptr %7, @_ZN5boost9container4test12copyable_int5countE
  %bound1116 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  br i1 %conflict.rdx118, label %.lr.ph.i20.i.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck108
  %n.vec120 = and i64 %i.eh, 9223372036854775800  ; 3 uses
  %i.er = shl i64 %n.vec120, 2                    ; 2 uses
  %i.es = getelementptr i8, ptr %1, i64 %i.er
  %i.et = getelementptr i8, ptr %i.eb, i64 %i.er
  %i.eu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre70, i64 0
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next136, %vector.body121 ] ; 2 uses
  %vec.phi123 = phi <4 x i32> [ %i.eu, %vector.ph119 ], [ %i.ey, %vector.body121 ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.ez, %vector.body121 ]
  %i.ev = shl i64 %index122, 2                    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %1, i64 %i.ev ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.eb, i64 %i.ev ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep126) ]
  %i.ew = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load134 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !646, !alias.scope !5218
  %wide.load135 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !646, !alias.scope !5218
  %i.ex = getelementptr i8, ptr %next.gep126, i64 16
  store <4 x i32> %wide.load134, ptr %next.gep126, align 4, !tbaa !646, !alias.scope !5219, !noalias !5220
  store <4 x i32> %wide.load135, ptr %i.ex, align 4, !tbaa !646, !alias.scope !5219, !noalias !5220
  %i.ey = add <4 x i32> %vec.phi123, splat (i32 1) ; 2 uses
  %i.ez = add <4 x i32> %vec.phi124, splat (i32 1) ; 2 uses
  %index.next136 = add nuw i64 %index122, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next136, %n.vec120
  br i1 %i.fa, label %middle.block137, label %vector.body121, !llvm.loop !5213

middle.block137:                                  ; preds = %vector.body121
  %bin.rdx138 = add <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx138) ; 2 uses
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5221, !noalias !5218
  %cmp.n139 = icmp eq i64 %i.eh, %n.vec120
  br i1 %cmp.n139, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck108, %.lr.ph.i20.preheader.i, %middle.block137
  %.ph = phi i32 [ %.pre70, %vector.memcheck108 ], [ %.pre70, %.lr.ph.i20.preheader.i ], [ %i.fb, %middle.block137 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck108 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.es, %middle.block137 ]
  %.01517.i22.i.ph = phi ptr [ %i.eb, %vector.memcheck108 ], [ %i.eb, %.lr.ph.i20.preheader.i ], [ %i.et, %middle.block137 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.fc = phi i32 [ %i.fe, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.ff, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.fg, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.fd = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.fd, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.fe = add i32 %i.fc, 1                        ; 2 uses
  store i32 %i.fe, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ff = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.ff, %i.bj
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5214

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block137, %.loopexit.i
  %.not5.i = icmp samesign eq i64 %i.ax, %i.ay
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.fj, %.lr.ph.i ], [ %i.bi, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.fh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fj, %i.bj
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEEvRT_T0_SG_SG_T1_mT2_.exit
  %.not.i52 = icmp eq ptr %i.aw, null
  br i1 %.not.i52, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !654
  %i.fl = shl i64 %i.fk, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.fl) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.r
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i50, ptr %0, align 8, !tbaa !653
  %i.fm = add i64 %i.be, %i.bg
  store i64 %i.fm, ptr %i.d, align 8, !tbaa !642
  store i64 %i.bg, ptr %i.g, align 8, !tbaa !641
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt15_Deque_iteratorIiRKiPS9_EEES7_EEvT_mSE_SE_mT0_RT1_.exit
  %i.fn = phi i64 [ %i.bg, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt15_Deque_iteratorIiRKiPS9_EEES7_EEvT_mSE_SE_mT0_RT1_.exit ]
  %i.fo = phi ptr [ %.0.i.i50, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre71, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt15_Deque_iteratorIiRKiPS9_EEES7_EEvT_mSE_SE_mT0_RT1_.exit ]
  %i.fp = ptrtoint ptr %1 to i64
  %i.fq = ptrtoint ptr %i.k to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fn
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fr
  ret ptr %i.ft
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt15_Deque_iteratorIiRKiPS9_EEES7_EEvT_mSE_SE_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 26 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 9 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 11 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 17 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.not13.i.i = icmp eq i64 %4, 0
  br i1 %.not13.i.i, label %.loopexit444, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !698  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !697  ; 3 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !696    ; 3 uses
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259, !noalias !5251
  store i32 %i.t, ptr %.015.lcssa.i, align 4, !tbaa !646, !noalias !5251
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5251
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5251
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %bb.c, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol

bb.c:                                             ; preds = %.lr.ph.i.i.prol
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !270, !noalias !5251 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol: ; preds = %bb.c, %.lr.ph.i.i.prol
  %.sroa.11.1.i.prol = phi ptr [ %i.y, %bb.c ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.ac = phi ptr [ %i.z, %bb.c ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 4
  %i.ae = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.11.0.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.preheader ], [ %.sroa.11.1.i.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.ab, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.unr692 = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.ac, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.015.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.ae, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.ad, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.prol ]
  %i.af = icmp eq i64 %4, 1
  br i1 %i.af, label %.loopexit444, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.sroa.11.0.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = phi ptr [ %i.bb, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.bc, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.unr692, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.be, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.bd, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1 ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !259, !noalias !5251
  store i32 %i.ai, ptr %.01214.i.i, align 4, !tbaa !646, !noalias !5251
  %i.aj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5251
end_hunk_1
begin_hunk_2_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEPS3_PKS3_mT_:bb.a
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvT0_mS9_S9_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  br i1 %.not16.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre64, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep78) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5301
  %wide.load86 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5301
  %i.bp = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load, ptr %next.gep78, align 4, !tbaa !646
  store <4 x i32> %wide.load86, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi77, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5292

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5302, !noalias !5301
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph132 = phi i32 [ %.pre64, %vector.memcheck ], [ %.pre64, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph132, %.lr.ph.i.i.preheader131 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 3 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5294

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bz = phi i32 [ %.pre64, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bt, %middle.block ], [ %i.bw, %.lr.ph.i.i ]
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.ca = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.ca, ptr %.015.lcssa.i.i, align 4, !tbaa !646
  %i.cb = add i32 %i.bz, 1                        ; 4 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %.loopexit.i
  %i.cc = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %i.cd = shl i64 %i.al, 2
  %i.ce = add i64 %i.cd, %i.am
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cg, 156
  br i1 %min.iters.check101, label %.lr.ph.i20.i.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i20.preheader.i
  %i.cj = shl i64 %2, 2
  %i.ck = shl i64 %i.al, 2
  %i.cl = add i64 %i.ck, %i.am
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %bound0103 = icmp ult ptr %i.cc, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1104 = icmp ugt ptr %i.cr, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict105 = and i1 %bound0103, %bound1104
  %4 = getelementptr i8, ptr %1, i64 %i.co
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound0106 = icmp ult ptr %i.cc, %5
  %bound1107 = icmp ult ptr %1, %i.cr
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict105, %found.conflict108
  %bound0109 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound1110 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.i20.i.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec114, 2                    ; 2 uses
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cb, i64 0
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body115 ] ; 2 uses
  %vec.phi117 = phi <4 x i32> [ %i.cv, %vector.ph113 ], [ %i.cz, %vector.body115 ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph113 ], [ %i.da, %vector.body115 ]
  %i.cw = shl i64 %index116, 2                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cc, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !646, !alias.scope !5303
  %wide.load122 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !646, !alias.scope !5303
  %i.cy = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %wide.load121, ptr %next.gep120, align 4, !tbaa !646, !alias.scope !5304, !noalias !5305
  store <4 x i32> %wide.load122, ptr %i.cy, align 4, !tbaa !646, !alias.scope !5304, !noalias !5305
  %i.cz = add <4 x i32> %vec.phi117, splat (i32 1) ; 2 uses
  %i.da = add <4 x i32> %vec.phi118, splat (i32 1) ; 2 uses
  %index.next123 = add nuw i64 %index116, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.db, label %middle.block124, label %vector.body115, !llvm.loop !5299

middle.block124:                                  ; preds = %vector.body115
  %bin.rdx125 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx125) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5306, !noalias !5303
  %cmp.n126 = icmp eq i64 %i.ci, %n.vec114
  br i1 %cmp.n126, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i20.preheader.i, %middle.block124
  %.ph = phi i32 [ %i.cb, %vector.memcheck102 ], [ %i.cb, %.lr.ph.i20.preheader.i ], [ %i.dc, %middle.block124 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck102 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.ct, %middle.block124 ]
  %.01517.i22.i.ph = phi ptr [ %i.cc, %vector.memcheck102 ], [ %i.cc, %.lr.ph.i20.preheader.i ], [ %i.cu, %middle.block124 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.dd = phi i32 [ %i.df, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.dg, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.dh, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %i.de = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.de, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.dg, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5300

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block124, %.loopexit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !654
  %i.dm = shl i64 %i.dl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.dm) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.dn = add i64 %i.ar, %i.at
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit
  %i.do = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit ]
  %i.dp = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre65, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_.exit ]
  %i.dq = ptrtoint ptr %1 to i64
  %i.dr = ptrtoint ptr %i.k to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  ret ptr %i.du
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJS3_EEES7_EEvT_mS9_S9_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !169

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !646
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !646
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !646
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202, !llvm.loop !169

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter514 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !646
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !646
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPS3_EEEEEESA_PKS3_mT_:bb.a
  %.not = icmp ult i64 %i.i, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw i64 %i.i, %2
  %i.m = udiv i64 %i.c, 10
  %.not51 = icmp ult i64 %i.l, %i.m
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sub i64 %i.e, %i.h                       ; 3 uses
  %i.o = add i64 %i.n, %2                         ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = lshr i64 %i.p, 1                         ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q ; 2 uses
  %i.s = icmp samesign ult i64 %i.q, %i.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader192, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader192, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep76) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5368
  %wide.load84 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5368
  %i.bp = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load, ptr %next.gep76, align 4, !tbaa !646
  store <4 x i32> %wide.load84, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi75, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5352

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5369, !noalias !5368
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader192

.lr.ph.i.i.preheader192:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph193 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader192, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph193, %.lr.ph.i.i.preheader192 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader192 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !5354

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 9 uses
  %.not15.i.i.i = icmp eq i64 %2, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %min.iters.check99 = icmp ult i64 %2, 20
  br i1 %min.iters.check99, label %.lr.ph.i.i.i.preheader188, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.bz = shl i64 %2, 2                           ; 2 uses
  %i.ca = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bz ; 2 uses
  %bound0101 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1102 = icmp ugt ptr %i.ca, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict103 = and i1 %bound0101, %bound1102
  %4 = getelementptr i8, ptr %3, i64 %i.bz        ; 2 uses
  %bound0104 = icmp ult ptr %.015.lcssa.i.i, %4
  %bound1105 = icmp ult ptr %3, %i.ca
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict103, %found.conflict106
  %bound0107 = icmp ugt ptr %4, @_ZN5boost9container4test12copyable_int5countE
  %bound1108 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx, %found.conflict109
  br i1 %conflict.rdx110, label %.lr.ph.i.i.i.preheader188, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck100
  %n.vec112 = and i64 %2, -8                      ; 3 uses
  %i.cb = and i64 %2, 7
  %i.cc = shl i64 %n.vec112, 2                    ; 2 uses
  %i.cd = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cc
  %i.ce = getelementptr i8, ptr %3, i64 %i.cc
  %i.cf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre64, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next128, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i32> [ %i.cf, %vector.ph111 ], [ %i.cj, %vector.body113 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph111 ], [ %i.ck, %vector.body113 ]
  %i.cg = shl i64 %index114, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cg ; 3 uses
  %next.gep125 = getelementptr i8, ptr %3, i64 %i.cg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep117) ]
  %i.ch = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !646, !alias.scope !5370
  %wide.load127 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !646, !alias.scope !5370
  %i.ci = getelementptr i8, ptr %next.gep117, i64 16
  store <4 x i32> %wide.load126, ptr %next.gep117, align 4, !tbaa !646, !alias.scope !5371, !noalias !5372
  store <4 x i32> %wide.load127, ptr %i.ci, align 4, !tbaa !646, !alias.scope !5371, !noalias !5372
  %i.cj = add <4 x i32> %vec.phi115, splat (i32 1) ; 2 uses
  %i.ck = add <4 x i32> %vec.phi116, splat (i32 1) ; 2 uses
  %index.next128 = add nuw i64 %index114, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next128, %n.vec112
  br i1 %i.cl, label %middle.block129, label %vector.body113, !llvm.loop !5359

middle.block129:                                  ; preds = %vector.body113
  %bin.rdx130 = add <4 x i32> %i.ck, %i.cj
  %i.cm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx130) ; 2 uses
  store i32 %i.cm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5373, !noalias !5370
  %cmp.n131 = icmp eq i64 %2, %n.vec112
  br i1 %cmp.n131, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i.preheader188

.lr.ph.i.i.i.preheader188:                        ; preds = %vector.memcheck100, %.lr.ph.i.i.i.preheader, %middle.block129
  %.ph189 = phi i32 [ %.pre64, %vector.memcheck100 ], [ %.pre64, %.lr.ph.i.i.i.preheader ], [ %i.cm, %middle.block129 ] ; 2 uses
  %.018.i.i.i.ph = phi i64 [ %2, %vector.memcheck100 ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cb, %middle.block129 ] ; 4 uses
  %.01417.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck100 ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cd, %middle.block129 ] ; 2 uses
  %.sroa.0.016.i.i.i.ph = phi ptr [ %3, %vector.memcheck100 ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.ce, %middle.block129 ] ; 2 uses
  %i.cn = add i64 %.018.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader188, %.lr.ph.i.i.i.prol
  %i.co = phi i32 [ %i.cq, %.lr.ph.i.i.i.prol ], [ %.ph189, %.lr.ph.i.i.i.preheader188 ]
  %.018.i.i.i.prol = phi i64 [ %i.ct, %.lr.ph.i.i.i.prol ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ]
  %.01417.i.i.i.prol = phi ptr [ %i.cs, %.lr.ph.i.i.i.prol ], [ %.01417.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.cr, %.lr.ph.i.i.i.prol ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader188 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.cp = load i32, ptr %.sroa.0.016.i.i.i.prol, align 4, !tbaa !646
  store i32 %i.cp, ptr %.01417.i.i.i.prol, align 4, !tbaa !646
  %i.cq = add i32 %i.co, 1                        ; 3 uses
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %i.ct = add i64 %.018.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5360

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader188
  %.unr = phi i32 [ %.ph189, %.lr.ph.i.i.i.preheader188 ], [ %i.cq, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi i64 [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ], [ %i.ct, %.lr.ph.i.i.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %.01417.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ], [ %i.cs, %.lr.ph.i.i.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader188 ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %i.cu = icmp ult i64 %i.cn, 3
  br i1 %i.cu, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.cv = phi i32 [ %i.dj, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.cw = load i32, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !646
  store i32 %i.cw, ptr %.01417.i.i.i, align 4, !tbaa !646
  %i.cx = add i32 %i.cv, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !646
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !646
  %i.db = add i32 %i.cv, 2
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !646
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !646
  %i.df = add i32 %i.cv, 3
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !646
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !646
  %i.dj = add i32 %i.cv, 4                        ; 2 uses
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.dm = add i64 %.018.i.i.i, -4                 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5361

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block129, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i
  %i.dn = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %.pre65 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.do = shl i64 %i.al, 2
  %i.dp = add i64 %i.do, %i.am
  %i.dq = add i64 %i.dp, -4
  %i.dr = sub i64 %i.dq, %i.a                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.dr, 156
  br i1 %min.iters.check150, label %.lr.ph.i20.i.preheader, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i20.preheader.i
  %i.du = shl i64 %2, 2
  %i.dv = shl i64 %i.al, 2
  %i.dw = add i64 %i.dv, %i.am
  %i.dx = add i64 %i.dw, -4
  %i.dy = sub i64 %i.dx, %i.a
  %i.dz = and i64 %i.dy, -4                       ; 2 uses
  %i.ea = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.du
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dz
  %i.ec = getelementptr i8, ptr %i.eb, i64 4      ; 2 uses
  %bound0152 = icmp ult ptr %i.dn, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1153 = icmp ugt ptr %i.ec, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict154 = and i1 %bound0152, %bound1153
  %5 = getelementptr i8, ptr %1, i64 %i.dz
  %6 = getelementptr i8, ptr %5, i64 4            ; 2 uses
  %bound0155 = icmp ult ptr %i.dn, %6
  %bound1156 = icmp ult ptr %1, %i.ec
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %found.conflict154, %found.conflict157
  %bound0159 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound1160 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  br i1 %conflict.rdx162, label %.lr.ph.i20.i.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck151
  %n.vec164 = and i64 %i.dt, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec164, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.dn, i64 %i.ed
  %i.eg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre65, i64 0
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next180, %vector.body165 ] ; 2 uses
  %vec.phi167 = phi <4 x i32> [ %i.eg, %vector.ph163 ], [ %i.ek, %vector.body165 ]
  %vec.phi168 = phi <4 x i32> [ zeroinitializer, %vector.ph163 ], [ %i.el, %vector.body165 ]
  %i.eh = shl i64 %index166, 2                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.dn, i64 %i.eh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep170) ]
  %i.ei = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load178 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !646, !alias.scope !5374
  %wide.load179 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !646, !alias.scope !5374
  %i.ej = getelementptr i8, ptr %next.gep170, i64 16
  store <4 x i32> %wide.load178, ptr %next.gep170, align 4, !tbaa !646, !alias.scope !5375, !noalias !5376
  store <4 x i32> %wide.load179, ptr %i.ej, align 4, !tbaa !646, !alias.scope !5375, !noalias !5376
  %i.ek = add <4 x i32> %vec.phi167, splat (i32 1) ; 2 uses
  %i.el = add <4 x i32> %vec.phi168, splat (i32 1) ; 2 uses
  %index.next180 = add nuw i64 %index166, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next180, %n.vec164
  br i1 %i.em, label %middle.block181, label %vector.body165, !llvm.loop !5366

middle.block181:                                  ; preds = %vector.body165
  %bin.rdx182 = add <4 x i32> %i.el, %i.ek
  %i.en = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx182) ; 2 uses
  store i32 %i.en, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5377, !noalias !5374
  %cmp.n183 = icmp eq i64 %i.dt, %n.vec164
  br i1 %cmp.n183, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck151, %.lr.ph.i20.preheader.i, %middle.block181
  %.ph = phi i32 [ %.pre65, %vector.memcheck151 ], [ %.pre65, %.lr.ph.i20.preheader.i ], [ %i.en, %middle.block181 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck151 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.ee, %middle.block181 ]
  %.01517.i22.i.ph = phi ptr [ %i.dn, %vector.memcheck151 ], [ %i.dn, %.lr.ph.i20.preheader.i ], [ %i.ef, %middle.block181 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.eo = phi i32 [ %i.eq, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.er, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.es, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.ep = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.ep, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.eq = add i32 %i.eo, 1                        ; 2 uses
  store i32 %i.eq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.er = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.er, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5367

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block181, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.ev, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.et = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.eu = add i32 %i.et, -1
  store i32 %i.eu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ev, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.ew = load i64, ptr %i.b, align 8, !tbaa !654
  %i.ex = shl i64 %i.ew, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ex) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.ey = add i64 %i.ar, %i.at
  store i64 %i.ey, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit
  %i.ez = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.fa = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre66, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.fb = ptrtoint ptr %1 to i64
  %i.fc = ptrtoint ptr %i.k to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fd
  ret ptr %i.ff
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS_13move_iteratorIS4_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 25 uses
  %i.c = ptrtoint ptr %3 to i64                   ; 11 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 12 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 13 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.h = sub i64 %i.d, %i.g                       ; 5 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 15 uses
  %i.j = add i64 %i.f, %4                         ; 7 uses
  %.not = icmp ult i64 %i.i, %i.j
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.o, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.k = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.k, ptr %.01517.i, align 4, !tbaa !646
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01417.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.p = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !646
  store i32 %i.p, ptr %.01417.i.i.prol, align 4, !tbaa !646
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.018.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5378

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEENS_13move_iteratorIPS4_EEE31uninitialized_copy_n_and_updateIS7_EEvRS5_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !646
  store i32 %i.w, ptr %.01417.i.i, align 4, !tbaa !646
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !646
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !646
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !646
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !646
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
end_hunk_3
begin_hunk_4_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_:bb.a
  %i.m = udiv i64 %i.c, 10
  %.not52 = icmp ult i64 %i.l, %i.m
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sub i64 %i.e, %i.h                       ; 3 uses
  %i.o = add i64 %i.n, %2                         ; 2 uses
  %i.p = sub i64 %i.c, %i.o
  %i.q = lshr i64 %i.p, 1                         ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.263.0..sroa_idx, align 8
  %i.s = icmp samesign ult i64 %i.q, %i.h
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.361") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.361") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre71 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre67 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre68, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre67, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i53 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i53, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader193, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader193, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi80 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep81) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5547
  %wide.load89 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5547
  %i.bp = getelementptr i8, ptr %next.gep81, i64 16
  store <4 x i32> %wide.load, ptr %next.gep81, align 4, !tbaa !646
  store <4 x i32> %wide.load89, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi80, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5531

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5548, !noalias !5547
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader193

.lr.ph.i.i.preheader193:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph194 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader193, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph194, %.lr.ph.i.i.preheader193 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader193 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader193 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i54, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !5533

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 9 uses
  %.not19.i.i.i = icmp eq i64 %2, 0
  br i1 %.not19.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.pre69 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %min.iters.check104 = icmp ult i64 %2, 20
  br i1 %min.iters.check104, label %.lr.ph.i.i.i.preheader189, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.bz = shl i64 %2, 2
  %i.ca = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bz ; 2 uses
  %bound0106 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1107 = icmp ugt ptr %i.ca, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict108 = and i1 %bound0106, %bound1107
  %6 = getelementptr i8, ptr %3, i64 4            ; 2 uses
  %bound0109 = icmp ult ptr %.015.lcssa.i.i, %6
  %bound1110 = icmp ult ptr %3, %i.ca
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict108, %found.conflict111
  %bound0112 = icmp ugt ptr %6, @_ZN5boost9container4test12copyable_int5countE
  %bound1113 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx, %found.conflict114
  br i1 %conflict.rdx115, label %.lr.ph.i.i.i.preheader189, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck105
  %n.vec117 = and i64 %2, -8                      ; 3 uses
  %i.cb = and i64 %2, 7
  %i.cc = shl i64 %n.vec117, 2
  %i.cd = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cc
  %i.ce = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre69, i64 0
  %i.cf = load i32, ptr %3, align 4, !tbaa !646, !alias.scope !5549
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next130, %vector.body118 ] ; 2 uses
  %vec.phi120 = phi <4 x i32> [ %i.ce, %vector.ph116 ], [ %i.ci, %vector.body118 ]
  %vec.phi121 = phi <4 x i32> [ zeroinitializer, %vector.ph116 ], [ %i.cj, %vector.body118 ]
  %i.cg = shl i64 %index119, 2
  %next.gep122 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cg ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep122) ]
  %i.ch = getelementptr i8, ptr %next.gep122, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep122, align 4, !tbaa !646, !alias.scope !5550, !noalias !5551
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 4, !tbaa !646, !alias.scope !5550, !noalias !5551
  %i.ci = add <4 x i32> %vec.phi120, splat (i32 1) ; 2 uses
  %i.cj = add <4 x i32> %vec.phi121, splat (i32 1) ; 2 uses
  %index.next130 = add nuw i64 %index119, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next130, %n.vec117
  br i1 %i.ck, label %middle.block131, label %vector.body118, !llvm.loop !5538

middle.block131:                                  ; preds = %vector.body118
  %bin.rdx132 = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx132) ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5552, !noalias !5549
  %cmp.n133 = icmp eq i64 %2, %n.vec117
  br i1 %cmp.n133, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader189

.lr.ph.i.i.i.preheader189:                        ; preds = %vector.memcheck105, %.lr.ph.i.i.i.preheader, %middle.block131
  %.ph190 = phi i32 [ %.pre69, %vector.memcheck105 ], [ %.pre69, %.lr.ph.i.i.i.preheader ], [ %i.cl, %middle.block131 ] ; 2 uses
  %.022.i.i.i.ph = phi i64 [ %2, %vector.memcheck105 ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cb, %middle.block131 ] ; 4 uses
  %.01821.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck105 ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cd, %middle.block131 ] ; 2 uses
  %i.cm = add i64 %.022.i.i.i.ph, -1
  %xtraiter = and i64 %.022.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader189, %.lr.ph.i.i.i.prol
  %i.cn = phi i32 [ %i.cp, %.lr.ph.i.i.i.prol ], [ %.ph190, %.lr.ph.i.i.i.preheader189 ]
  %.022.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.prol ], [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader189 ]
  %.01821.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.prol ], [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader189 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader189 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.co = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.co, ptr %.01821.i.i.i.prol, align 4, !tbaa !646
  %i.cp = add i32 %i.cn, 1                        ; 3 uses
  store i32 %i.cp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.cr = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5539

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader189
  %.unr = phi i32 [ %.ph190, %.lr.ph.i.i.i.preheader189 ], [ %i.cp, %.lr.ph.i.i.i.prol ]
  %.022.i.i.i.unr = phi i64 [ %.022.i.i.i.ph, %.lr.ph.i.i.i.preheader189 ], [ %i.cr, %.lr.ph.i.i.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %.01821.i.i.i.ph, %.lr.ph.i.i.i.preheader189 ], [ %i.cq, %.lr.ph.i.i.i.prol ]
  %i.cs = icmp ult i64 %i.cm, 3
  br i1 %i.cs, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ct = phi i32 [ %i.de, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.022.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.cu = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.cu, ptr %.01821.i.i.i, align 4, !tbaa !646
  %i.cv = add i32 %i.ct, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cw = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.cx = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !646
  %i.cy = add i32 %i.ct, 2
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cz = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.da = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !646
  %i.db = add i32 %i.ct, 3
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dc = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.dd = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !646
  %i.de = add i32 %i.ct, 4                        ; 2 uses
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.df = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.dg = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5540

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block131, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %._crit_edge.loopexit.i.i.i
  %i.dh = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %.pre70 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.di = shl i64 %i.al, 2
  %i.dj = add i64 %i.di, %i.am
  %i.dk = add i64 %i.dj, -4
  %i.dl = sub i64 %i.dk, %i.a                     ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.dl, 156
  br i1 %min.iters.check151, label %.lr.ph.i20.i.preheader, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i20.preheader.i
  %i.do = shl i64 %2, 2
  %i.dp = shl i64 %i.al, 2
  %i.dq = add i64 %i.dp, %i.am
  %i.dr = add i64 %i.dq, -4
  %i.ds = sub i64 %i.dr, %i.a
  %i.dt = and i64 %i.ds, -4                       ; 2 uses
  %i.du = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.do
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.dt
  %i.dw = getelementptr i8, ptr %i.dv, i64 4      ; 2 uses
  %bound0153 = icmp ult ptr %i.dh, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1154 = icmp ugt ptr %i.dw, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict155 = and i1 %bound0153, %bound1154
  %7 = getelementptr i8, ptr %1, i64 %i.dt
  %8 = getelementptr i8, ptr %7, i64 4            ; 2 uses
  %bound0156 = icmp ult ptr %i.dh, %8
  %bound1157 = icmp ult ptr %1, %i.dw
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %found.conflict155, %found.conflict158
  %bound0160 = icmp ugt ptr %8, @_ZN5boost9container4test12copyable_int5countE
  %bound1161 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  br i1 %conflict.rdx163, label %.lr.ph.i20.i.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck152
  %n.vec165 = and i64 %i.dn, 9223372036854775800  ; 3 uses
  %i.dx = shl i64 %n.vec165, 2                    ; 2 uses
  %i.dy = getelementptr i8, ptr %1, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dh, i64 %i.dx
  %i.ea = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre70, i64 0
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next181, %vector.body166 ] ; 2 uses
  %vec.phi168 = phi <4 x i32> [ %i.ea, %vector.ph164 ], [ %i.ee, %vector.body166 ]
  %vec.phi169 = phi <4 x i32> [ zeroinitializer, %vector.ph164 ], [ %i.ef, %vector.body166 ]
  %i.eb = shl i64 %index167, 2                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.dh, i64 %i.eb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep171) ]
  %i.ec = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load179 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !646, !alias.scope !5553
  %wide.load180 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !646, !alias.scope !5553
  %i.ed = getelementptr i8, ptr %next.gep171, i64 16
  store <4 x i32> %wide.load179, ptr %next.gep171, align 4, !tbaa !646, !alias.scope !5554, !noalias !5555
  store <4 x i32> %wide.load180, ptr %i.ed, align 4, !tbaa !646, !alias.scope !5554, !noalias !5555
  %i.ee = add <4 x i32> %vec.phi168, splat (i32 1) ; 2 uses
  %i.ef = add <4 x i32> %vec.phi169, splat (i32 1) ; 2 uses
  %index.next181 = add nuw i64 %index167, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next181, %n.vec165
  br i1 %i.eg, label %middle.block182, label %vector.body166, !llvm.loop !5545

middle.block182:                                  ; preds = %vector.body166
  %bin.rdx183 = add <4 x i32> %i.ef, %i.ee
  %i.eh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx183) ; 2 uses
  store i32 %i.eh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5556, !noalias !5553
  %cmp.n184 = icmp eq i64 %i.dn, %n.vec165
  br i1 %cmp.n184, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck152, %.lr.ph.i20.preheader.i, %middle.block182
  %.ph = phi i32 [ %.pre70, %vector.memcheck152 ], [ %.pre70, %.lr.ph.i20.preheader.i ], [ %i.eh, %middle.block182 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck152 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.dy, %middle.block182 ]
  %.01517.i22.i.ph = phi ptr [ %i.dh, %vector.memcheck152 ], [ %i.dh, %.lr.ph.i20.preheader.i ], [ %i.dz, %middle.block182 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.ei = phi i32 [ %i.ek, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.el, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.em, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.ej = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.ej, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.ek = add i32 %i.ei, 1                        ; 2 uses
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.el = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.el, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5546

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block182, %._crit_edge.loopexit.i.i.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.en = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.eo = add i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ep = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ep, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit
  %.not.i55 = icmp eq ptr %i.aj, null
  br i1 %.not.i55, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !654
  %i.er = shl i64 %i.eq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.er) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i53, ptr %0, align 8, !tbaa !653
  %i.es = add i64 %i.ar, %i.at
  store i64 %i.es, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit
  %i.et = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.eu = phi ptr [ %.0.i.i53, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre71, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = ptrtoint ptr %i.k to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.et
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  ret ptr %i.ez
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef byval(%"struct.boost::container::dtl::insert_range_proxy.361") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 25 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 9 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 12 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 15 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8 ; 5 uses
  %.not19.i.i = icmp eq i64 %4, 0
  br i1 %.not19.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.022.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.01821.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.prol) ]
  %i.o = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !646
  store i32 %i.o, ptr %.01821.i.i.prol, align 4, !tbaa !646
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %.01821.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.022.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5557

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.022.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %.01821.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.t = icmp ult i64 %4, 4
  br i1 %i.t, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.022.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.022.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01821.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.01821.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i) ]
  %i.u = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !646
  store i32 %i.u, ptr %.01821.i.i, align 4, !tbaa !646
  %i.v = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.x = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 4
  %i.y = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !646
  store i32 %i.y, ptr %i.x, align 4, !tbaa !646
  %i.z = add i32 %i.v, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aa = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 8
  %i.ab = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !646
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !646
  %i.ac = add i32 %i.v, 3
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 12
  %i.ae = load i32, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !646
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !646
  %i.af = add i32 %i.v, 4
  store i32 %i.af, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ag = getelementptr inbounds nuw i8, ptr %.01821.i.i, i64 16
  %i.ah = add i64 %.022.i.i, -4                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEPS3_PS9_mT_:bb.a
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  br i1 %.not16.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre64, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep78) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5628
  %wide.load86 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5628
  %i.bp = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load, ptr %next.gep78, align 4, !tbaa !646
  store <4 x i32> %wide.load86, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi77, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5619

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5629, !noalias !5628
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph132 = phi i32 [ %.pre64, %vector.memcheck ], [ %.pre64, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph132, %.lr.ph.i.i.preheader131 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 3 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5621

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bz = phi i32 [ %.pre64, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bt, %middle.block ], [ %i.bw, %.lr.ph.i.i ]
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.ca = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.ca, ptr %.015.lcssa.i.i, align 4, !tbaa !646
  %i.cb = add i32 %i.bz, 1                        ; 4 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %.loopexit.i
  %i.cc = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %i.cd = shl i64 %i.al, 2
  %i.ce = add i64 %i.cd, %i.am
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cg, 156
  br i1 %min.iters.check101, label %.lr.ph.i20.i.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i20.preheader.i
  %i.cj = shl i64 %2, 2
  %i.ck = shl i64 %i.al, 2
  %i.cl = add i64 %i.ck, %i.am
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %bound0103 = icmp ult ptr %i.cc, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1104 = icmp ugt ptr %i.cr, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict105 = and i1 %bound0103, %bound1104
  %4 = getelementptr i8, ptr %1, i64 %i.co
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound0106 = icmp ult ptr %i.cc, %5
  %bound1107 = icmp ult ptr %1, %i.cr
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict105, %found.conflict108
  %bound0109 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound1110 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.i20.i.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec114, 2                    ; 2 uses
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cb, i64 0
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body115 ] ; 2 uses
  %vec.phi117 = phi <4 x i32> [ %i.cv, %vector.ph113 ], [ %i.cz, %vector.body115 ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph113 ], [ %i.da, %vector.body115 ]
  %i.cw = shl i64 %index116, 2                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cc, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !646, !alias.scope !5630
  %wide.load122 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !646, !alias.scope !5630
  %i.cy = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %wide.load121, ptr %next.gep120, align 4, !tbaa !646, !alias.scope !5631, !noalias !5632
  store <4 x i32> %wide.load122, ptr %i.cy, align 4, !tbaa !646, !alias.scope !5631, !noalias !5632
  %i.cz = add <4 x i32> %vec.phi117, splat (i32 1) ; 2 uses
  %i.da = add <4 x i32> %vec.phi118, splat (i32 1) ; 2 uses
  %index.next123 = add nuw i64 %index116, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.db, label %middle.block124, label %vector.body115, !llvm.loop !5626

middle.block124:                                  ; preds = %vector.body115
  %bin.rdx125 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx125) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5633, !noalias !5630
  %cmp.n126 = icmp eq i64 %i.ci, %n.vec114
  br i1 %cmp.n126, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i20.preheader.i, %middle.block124
  %.ph = phi i32 [ %i.cb, %vector.memcheck102 ], [ %i.cb, %.lr.ph.i20.preheader.i ], [ %i.dc, %middle.block124 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck102 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.ct, %middle.block124 ]
  %.01517.i22.i.ph = phi ptr [ %i.cc, %vector.memcheck102 ], [ %i.cc, %.lr.ph.i20.preheader.i ], [ %i.cu, %middle.block124 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.dd = phi i32 [ %i.df, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.dg, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.dh, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %i.de = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.de, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.dg, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5627

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block124, %.loopexit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !654
  %i.dm = shl i64 %i.dl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.dm) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.dn = add i64 %i.ar, %i.at
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit
  %i.do = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.dp = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre65, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.dq = ptrtoint ptr %1 to i64
  %i.dr = ptrtoint ptr %i.k to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  ret ptr %i.du
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRKS3_EEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !169

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !646
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !646
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !646
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202, !llvm.loop !169

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter514 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !646
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !646
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEPS3_PKS3_mT_:bb.a
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  br i1 %.not16.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre64, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep78) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5670
  %wide.load86 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5670
  %i.bp = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load, ptr %next.gep78, align 4, !tbaa !646
  store <4 x i32> %wide.load86, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi77, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5661

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5671, !noalias !5670
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph132 = phi i32 [ %.pre64, %vector.memcheck ], [ %.pre64, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph132, %.lr.ph.i.i.preheader131 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 3 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5663

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bz = phi i32 [ %.pre64, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bt, %middle.block ], [ %i.bw, %.lr.ph.i.i ]
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.ca = load i32, ptr %3, align 4, !tbaa !646
  store i32 %i.ca, ptr %.015.lcssa.i.i, align 4, !tbaa !646
  %i.cb = add i32 %i.bz, 1                        ; 4 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %.loopexit.i
  %i.cc = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %i.cd = shl i64 %i.al, 2
  %i.ce = add i64 %i.cd, %i.am
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cg, 156
  br i1 %min.iters.check101, label %.lr.ph.i20.i.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i20.preheader.i
  %i.cj = shl i64 %2, 2
  %i.ck = shl i64 %i.al, 2
  %i.cl = add i64 %i.ck, %i.am
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %bound0103 = icmp ult ptr %i.cc, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1104 = icmp ugt ptr %i.cr, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict105 = and i1 %bound0103, %bound1104
  %4 = getelementptr i8, ptr %1, i64 %i.co
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound0106 = icmp ult ptr %i.cc, %5
  %bound1107 = icmp ult ptr %1, %i.cr
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict105, %found.conflict108
  %bound0109 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound1110 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.i20.i.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec114, 2                    ; 2 uses
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cb, i64 0
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body115 ] ; 2 uses
  %vec.phi117 = phi <4 x i32> [ %i.cv, %vector.ph113 ], [ %i.cz, %vector.body115 ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph113 ], [ %i.da, %vector.body115 ]
  %i.cw = shl i64 %index116, 2                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cc, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !646, !alias.scope !5672
  %wide.load122 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !646, !alias.scope !5672
  %i.cy = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %wide.load121, ptr %next.gep120, align 4, !tbaa !646, !alias.scope !5673, !noalias !5674
  store <4 x i32> %wide.load122, ptr %i.cy, align 4, !tbaa !646, !alias.scope !5673, !noalias !5674
  %i.cz = add <4 x i32> %vec.phi117, splat (i32 1) ; 2 uses
  %i.da = add <4 x i32> %vec.phi118, splat (i32 1) ; 2 uses
  %index.next123 = add nuw i64 %index116, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.db, label %middle.block124, label %vector.body115, !llvm.loop !5668

middle.block124:                                  ; preds = %vector.body115
  %bin.rdx125 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx125) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5675, !noalias !5672
  %cmp.n126 = icmp eq i64 %i.ci, %n.vec114
  br i1 %cmp.n126, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i20.preheader.i, %middle.block124
  %.ph = phi i32 [ %i.cb, %vector.memcheck102 ], [ %i.cb, %.lr.ph.i20.preheader.i ], [ %i.dc, %middle.block124 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck102 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.ct, %middle.block124 ]
  %.01517.i22.i.ph = phi ptr [ %i.cc, %vector.memcheck102 ], [ %i.cc, %.lr.ph.i20.preheader.i ], [ %i.cu, %middle.block124 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.dd = phi i32 [ %i.df, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.dg, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.dh, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %i.de = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.de, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.dg, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5669

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block124, %.loopexit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRS3_EEEEEvRT_T0_SC_SC_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !654
  %i.dm = shl i64 %i.dl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.dm) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.dn = add i64 %i.ar, %i.at
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit
  %i.do = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.dp = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre65, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.dq = ptrtoint ptr %1 to i64
  %i.dr = ptrtoint ptr %i.k to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  ret ptr %i.du
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRS3_EEES7_EEvT_mSA_SA_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit356, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit356, label %.lr.ph.i, !llvm.loop !169

.loopexit356:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !646
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !646
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i64 %4, %1
  %.not192 = icmp ult i64 %i.h, %i.r
  br i1 %.not192, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit356
  %.not195 = icmp eq i64 %i.e, %1
  %.not16.i201 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not195, i1 true, i1 %.not16.i201
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %.lr.ph.i202
  %.018.i203 = phi ptr [ %i.w, %.lr.ph.i202 ], [ %3, %.lr.ph.i202.preheader ] ; 2 uses
  %.01517.i204 = phi ptr [ %i.x, %.lr.ph.i202 ], [ %i.s, %.lr.ph.i202.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i204) ]
  %i.t = load i32, ptr %.018.i203, align 4, !tbaa !646
  store i32 %i.t, ptr %.01517.i204, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i203, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i204, i64 4
  %.not.i205 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i205, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit218, label %.lr.ph.i202, !llvm.loop !169

bb.d:                                             ; preds = %.loopexit356
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit354, label %.lr.ph.i208.preheader

.lr.ph.i208.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter514 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod515.not = icmp eq i64 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %.lr.ph.i208.prol.loopexit, label %.lr.ph.i208.prol

.lr.ph.i208.prol:                                 ; preds = %.lr.ph.i208.preheader, %.lr.ph.i208.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i208.prol ], [ %i.y, %.lr.ph.i208.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i208.prol ], [ %3, %.lr.ph.i208.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i208.prol ], [ %i.z, %.lr.ph.i208.preheader ] ; 3 uses
  %prol.iter516 = phi i64 [ %prol.iter516.next, %.lr.ph.i208.prol ], [ 0, %.lr.ph.i208.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !646
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !646
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_:bb.a
_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader136, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader136, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep76 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep76) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5737
  %wide.load84 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5737
  %i.bp = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load, ptr %next.gep76, align 4, !tbaa !646
  store <4 x i32> %wide.load84, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi75, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5727

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5738, !noalias !5737
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader136

.lr.ph.i.i.preheader136:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph137 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader136, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph137, %.lr.ph.i.i.preheader136 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader136 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader136 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 2 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i, !llvm.loop !5729

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  %.not15.i.i.i = icmp eq i64 %2, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.bz = phi i32 [ %i.cc, %.lr.ph.i.i.i.prol ], [ %.pre64, %.lr.ph.i.i.i.preheader ]
  %.018.i.i.i.prol = phi i64 [ %i.cf, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ]
  %.01417.i.i.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.prol ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !259
  store i32 %i.cb, ptr %.01417.i.i.i.prol, align 4, !tbaa !646
  %i.cc = add i32 %i.bz, 1                        ; 3 uses
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cd = load ptr, ptr %.sroa.0.016.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %i.cf = add i64 %.018.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5730

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.unr = phi i32 [ %.pre64, %.lr.ph.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.prol ]
  %i.cg = icmp ult i64 %2, 4
  br i1 %i.cg, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ch = phi i32 [ %i.cz, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.018.i.i.i = phi i64 [ %i.dc, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !259
  store i32 %i.cj, ptr %.01417.i.i.i, align 4, !tbaa !646
  %i.ck = add i32 %i.ch, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cl = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !259
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !646
  %i.cp = add i32 %i.ch, 2
  store i32 %i.cp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !677 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !259
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !646
  %i.cu = add i32 %i.ch, 3
  store i32 %i.cu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !677 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !259
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !646
  %i.cz = add i32 %i.ch, 4                        ; 2 uses
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !677
  %i.db = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.dc = add i64 %.018.i.i.i, -4                 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !178

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i
  %i.dd = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %.pre65 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.de = shl i64 %i.al, 2
  %i.df = add i64 %i.de, %i.am
  %i.dg = add i64 %i.df, -4
  %i.dh = sub i64 %i.dg, %i.a                     ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check99 = icmp ult i64 %i.dh, 156
  br i1 %min.iters.check99, label %.lr.ph.i20.i.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph.i20.preheader.i
  %i.dk = shl i64 %2, 2
  %i.dl = shl i64 %i.al, 2
  %i.dm = add i64 %i.dl, %i.am
  %i.dn = add i64 %i.dm, -4
  %i.do = sub i64 %i.dn, %i.a
  %i.dp = and i64 %i.do, -4                       ; 2 uses
  %i.dq = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.dk
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dp
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %bound0101 = icmp ult ptr %i.dd, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1102 = icmp ugt ptr %i.ds, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict103 = and i1 %bound0101, %bound1102
  %4 = getelementptr i8, ptr %1, i64 %i.dp
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound0104 = icmp ult ptr %i.dd, %5
  %bound1105 = icmp ult ptr %1, %i.ds
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict103, %found.conflict106
  %bound0107 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound1108 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx, %found.conflict109
  br i1 %conflict.rdx110, label %.lr.ph.i20.i.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck100
  %n.vec112 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.dt = shl i64 %n.vec112, 2                    ; 2 uses
  %i.du = getelementptr i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.dd, i64 %i.dt
  %i.dw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre65, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next128, %vector.body113 ] ; 2 uses
  %vec.phi115 = phi <4 x i32> [ %i.dw, %vector.ph111 ], [ %i.ea, %vector.body113 ]
  %vec.phi116 = phi <4 x i32> [ zeroinitializer, %vector.ph111 ], [ %i.eb, %vector.body113 ]
  %i.dx = shl i64 %index114, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.dx ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.dd, i64 %i.dx ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep118) ]
  %i.dy = getelementptr i8, ptr %next.gep117, i64 16
  %wide.load126 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !646, !alias.scope !5739
  %wide.load127 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !646, !alias.scope !5739
  %i.dz = getelementptr i8, ptr %next.gep118, i64 16
  store <4 x i32> %wide.load126, ptr %next.gep118, align 4, !tbaa !646, !alias.scope !5740, !noalias !5741
  store <4 x i32> %wide.load127, ptr %i.dz, align 4, !tbaa !646, !alias.scope !5740, !noalias !5741
  %i.ea = add <4 x i32> %vec.phi115, splat (i32 1) ; 2 uses
  %i.eb = add <4 x i32> %vec.phi116, splat (i32 1) ; 2 uses
  %index.next128 = add nuw i64 %index114, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next128, %n.vec112
  br i1 %i.ec, label %middle.block129, label %vector.body113, !llvm.loop !5735

middle.block129:                                  ; preds = %vector.body113
  %bin.rdx130 = add <4 x i32> %i.eb, %i.ea
  %i.ed = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx130) ; 2 uses
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5742, !noalias !5739
  %cmp.n131 = icmp eq i64 %i.dj, %n.vec112
  br i1 %cmp.n131, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck100, %.lr.ph.i20.preheader.i, %middle.block129
  %.ph = phi i32 [ %.pre65, %vector.memcheck100 ], [ %.pre65, %.lr.ph.i20.preheader.i ], [ %i.ed, %middle.block129 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck100 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.du, %middle.block129 ]
  %.01517.i22.i.ph = phi ptr [ %i.dd, %vector.memcheck100 ], [ %i.dd, %.lr.ph.i20.preheader.i ], [ %i.dv, %middle.block129 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.ee = phi i32 [ %i.eg, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.eh, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.ei, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.ef = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.ef, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.eg = add i32 %i.ee, 1                        ; 2 uses
  store i32 %i.eg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.eh, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5736

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block129, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.el, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.ej = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ek = add i32 %i.ej, -1
  store i32 %i.ek, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.el = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.el, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvRT_T0_SD_SD_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.em = load i64, ptr %i.b, align 8, !tbaa !654
  %i.en = shl i64 %i.em, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.en) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.eo = add i64 %i.ar, %i.at
  store i64 %i.eo, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit
  %i.ep = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.eq = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre66, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit ]
  %i.er = ptrtoint ptr %1 to i64
  %i.es = ptrtoint ptr %i.k to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  ret ptr %i.ev
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 26 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 9 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 10 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 13 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 17 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !259
  store i32 %i.p, ptr %.015.lcssa.i, align 4, !tbaa !646
  %i.q = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.s = load ptr, ptr %5, align 8, !tbaa !677
  %i.t = getelementptr inbounds nuw i8, ptr %.015.lcssa.i, i64 4
  %i.u = add nsw i64 %4, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.018.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %i.v = icmp eq i64 %4, 1
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.x = load i32, ptr %i.w, align 4, !tbaa !259
  store i32 %i.x, ptr %.01417.i.i, align 4, !tbaa !646
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aa = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !677 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !259
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !646
  %i.ae = add i32 %i.y, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !677
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ah = add i64 %.018.i.i, -2                   ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit, label %.lr.ph.i.i, !llvm.loop !178

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %i.ai = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.ai
  br i1 %.not197, label %bb.d, label %bb.c

end_hunk_7
begin_hunk_8_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEPS3_PKS3_mT_:bb.a
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.k, i64 noundef %i.n, ptr noundef %i.r, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.q, ptr %i.g, align 8, !tbaa !641
  %i.t = add i64 %i.q, %i.o
  store i64 %i.t, ptr %i.d, align 8, !tbaa !642
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = add i64 %i.c, %2                         ; 2 uses
  %i.v = sub i64 4611686018427387903, %i.c
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = shl nuw i64 %i.c, 3
  %i.z = udiv i64 %i.y, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp ugt i64 %i.c, -6917529027641081857
  %i.ab = shl i64 %i.c, 3
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4611686018427387903)
  %i.ad = select i1 %i.aa, i64 4611686018427387903, i64 %i.ac
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.z, %bb.i ], [ %i.ad, %bb.j ]
  %i.ae = tail call noundef i64 @llvm.umax.i64(i64 %i.u, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.af = icmp ugt i64 %i.ae, 2305843009213693951
  br i1 %i.af, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ugt i64 %i.u, 4611686018427387903
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ah = shl nuw nsw i64 %i.ae, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29
  %.pre = load i64, ptr %i.d, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.g, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.aj = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 6 uses
  %i.ak = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.al = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.e, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ai, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.am = ptrtoaddr ptr %i.aj to i64              ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !715
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !715
  %i.aq = sub i64 %i.al, %i.ak
  %i.ar = add i64 %2, %i.aq                       ; 2 uses
  %i.as = sub i64 %i.ae, %i.ar
  %i.at = lshr i64 %i.as, 1                       ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.at ; 5 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %.not16.i.i = icmp eq ptr %i.av, %1
  %.pre64 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  br i1 %.not16.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.ax = shl nuw nsw i64 %i.ak, 2
  %i.ay = add i64 %i.a, -4
  %i.az = sub i64 %i.ay, %i.am                    ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bd = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.be = sub i64 %i.az, %i.bd
  %i.bf = and i64 %i.be, -4
  %i.bg = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %bound0 = icmp ugt ptr %i.bi, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.av, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.av, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.au, i64 %i.bj  ; 2 uses
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre64, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.ph ], [ %i.bq, %vector.body ]
  %vec.phi77 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.br, %vector.body ]
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.au, i64 %i.bn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep78) ]
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !646, !alias.scope !5785
  %wide.load86 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !646, !alias.scope !5785
  %i.bp = getelementptr i8, ptr %next.gep78, i64 16
  store <4 x i32> %wide.load, ptr %next.gep78, align 4, !tbaa !646
  store <4 x i32> %wide.load86, ptr %i.bp, align 4, !tbaa !646
  %i.bq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.br = add <4 x i32> %vec.phi77, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !5776

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5786, !noalias !5785
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.i.preheader131

.lr.ph.i.i.preheader131:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph132 = phi i32 [ %.pre64, %vector.memcheck ], [ %.pre64, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.018.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.01517.i.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader131, %.lr.ph.i.i
  %i.bu = phi i32 [ %i.bw, %.lr.ph.i.i ], [ %.ph132, %.lr.ph.i.i.preheader131 ]
  %.018.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader131 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.bv = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.bv, ptr %.01517.i.i, align 4, !tbaa !646
  %i.bw = add i32 %i.bu, 1                        ; 3 uses
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bx, %1
  br i1 %.not.i.i53, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !5778

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %i.bz = phi i32 [ %.pre64, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bt, %middle.block ], [ %i.bw, %.lr.ph.i.i ]
  %.015.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit ], [ %i.bl, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.ca = load i32, ptr %3, align 4, !tbaa !259
  store i32 %i.ca, ptr %.015.lcssa.i.i, align 4, !tbaa !646
  %i.cb = add i32 %i.bz, 1                        ; 4 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %.not16.i19.i = icmp eq ptr %1, %i.aw
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %.loopexit.i
  %i.cc = getelementptr [4 x i8], ptr %.015.lcssa.i.i, i64 %2 ; 6 uses
  %i.cd = shl i64 %i.al, 2
  %i.ce = add i64 %i.cd, %i.am
  %i.cf = add i64 %i.ce, -4
  %i.cg = sub i64 %i.cf, %i.a                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check101 = icmp ult i64 %i.cg, 156
  br i1 %min.iters.check101, label %.lr.ph.i20.i.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i20.preheader.i
  %i.cj = shl i64 %2, 2
  %i.ck = shl i64 %i.al, 2
  %i.cl = add i64 %i.ck, %i.am
  %i.cm = add i64 %i.cl, -4
  %i.cn = sub i64 %i.cm, %i.a
  %i.co = and i64 %i.cn, -4                       ; 2 uses
  %i.cp = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.cj
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cq, i64 4      ; 2 uses
  %bound0103 = icmp ult ptr %i.cc, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1104 = icmp ugt ptr %i.cr, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict105 = and i1 %bound0103, %bound1104
  %4 = getelementptr i8, ptr %1, i64 %i.co
  %5 = getelementptr i8, ptr %4, i64 4            ; 2 uses
  %bound0106 = icmp ult ptr %i.cc, %5
  %bound1107 = icmp ult ptr %1, %i.cr
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict105, %found.conflict108
  %bound0109 = icmp ugt ptr %5, @_ZN5boost9container4test12copyable_int5countE
  %bound1110 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  br i1 %conflict.rdx112, label %.lr.ph.i20.i.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.ci, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec114, 2                    ; 2 uses
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.cc, i64 %i.cs
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cb, i64 0
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next123, %vector.body115 ] ; 2 uses
  %vec.phi117 = phi <4 x i32> [ %i.cv, %vector.ph113 ], [ %i.cz, %vector.body115 ]
  %vec.phi118 = phi <4 x i32> [ zeroinitializer, %vector.ph113 ], [ %i.da, %vector.body115 ]
  %i.cw = shl i64 %index116, 2                    ; 2 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.cc, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load121 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !646, !alias.scope !5787
  %wide.load122 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !646, !alias.scope !5787
  %i.cy = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %wide.load121, ptr %next.gep120, align 4, !tbaa !646, !alias.scope !5788, !noalias !5789
  store <4 x i32> %wide.load122, ptr %i.cy, align 4, !tbaa !646, !alias.scope !5788, !noalias !5789
  %i.cz = add <4 x i32> %vec.phi117, splat (i32 1) ; 2 uses
  %i.da = add <4 x i32> %vec.phi118, splat (i32 1) ; 2 uses
  %index.next123 = add nuw i64 %index116, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next123, %n.vec114
  br i1 %i.db, label %middle.block124, label %vector.body115, !llvm.loop !5783

middle.block124:                                  ; preds = %vector.body115
  %bin.rdx125 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx125) ; 2 uses
  store i32 %i.dc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !alias.scope !5790, !noalias !5787
  %cmp.n126 = icmp eq i64 %i.ci, %n.vec114
  br i1 %cmp.n126, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %vector.memcheck102, %.lr.ph.i20.preheader.i, %middle.block124
  %.ph = phi i32 [ %i.cb, %vector.memcheck102 ], [ %i.cb, %.lr.ph.i20.preheader.i ], [ %i.dc, %middle.block124 ]
  %.018.i21.i.ph = phi ptr [ %1, %vector.memcheck102 ], [ %1, %.lr.ph.i20.preheader.i ], [ %i.ct, %middle.block124 ]
  %.01517.i22.i.ph = phi ptr [ %i.cc, %vector.memcheck102 ], [ %i.cc, %.lr.ph.i20.preheader.i ], [ %i.cu, %middle.block124 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %i.dd = phi i32 [ %i.df, %.lr.ph.i20.i ], [ %.ph, %.lr.ph.i20.i.preheader ]
  %.018.i21.i = phi ptr [ %i.dg, %.lr.ph.i20.i ], [ %.018.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %.01517.i22.i = phi ptr [ %i.dh, %.lr.ph.i20.i ], [ %.01517.i22.i.ph, %.lr.ph.i20.i.preheader ] ; 2 uses
  %i.de = load i32, ptr %.018.i21.i, align 4, !tbaa !646
  store i32 %i.de, ptr %.01517.i22.i, align 4, !tbaa !646
  %i.df = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.dg, %i.aw
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !5784

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %middle.block124, %.loopexit.i
  %.not5.i = icmp samesign eq i64 %i.ak, %i.al
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.av, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.di = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.dk, %i.aw
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test12copyable_intEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRiEEEEEvRT_T0_SC_SC_T1_mT2_.exit
  %.not.i54 = icmp eq ptr %i.aj, null
  br i1 %.not.i54, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !654
  %i.dm = shl i64 %i.dl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.dm) #30
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, %bb.o
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !643
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !653
  %i.dn = add i64 %i.ar, %i.at
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !642
  store i64 %i.at, ptr %i.g, align 8, !tbaa !641
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit
  %i.do = phi i64 [ %i.at, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %i.q, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.dp = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit ], [ %.pre65, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_.exit ]
  %i.dq = ptrtoint ptr %1 to i64
  %i.dr = ptrtoint ptr %i.k to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  ret ptr %i.du
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl20insert_emplace_proxyISaIS3_EJRiEEES7_EEvT_mSA_SA_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 24 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 8 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.g = sub i64 %i.c, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 13 uses
  %i.i = add i64 %i.e, %4                         ; 7 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %.loopexit376, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %0, %bb.b ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %3
  br i1 %.not.i, label %.loopexit376, label %.lr.ph.i, !llvm.loop !169

.loopexit376:                                     ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %.lr.ph.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i) ]
  %i.o = load i32, ptr %5, align 4, !tbaa !259
  store i32 %i.o, ptr %.015.lcssa.i, align 4, !tbaa !646
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.r = add i64 %4, %1
  %.not197 = icmp ult i64 %i.h, %i.r
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit376
  %.not200 = icmp eq i64 %i.e, %1
  %.not16.i212 = icmp eq ptr %3, %i.a
  %or.cond = select i1 %.not200, i1 true, i1 %.not16.i212
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit229, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.c
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader, %.lr.ph.i213
  %.018.i214 = phi ptr [ %i.w, %.lr.ph.i213 ], [ %3, %.lr.ph.i213.preheader ] ; 2 uses
  %.01517.i215 = phi ptr [ %i.x, %.lr.ph.i213 ], [ %i.s, %.lr.ph.i213.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i215) ]
  %i.t = load i32, ptr %.018.i214, align 4, !tbaa !646
  store i32 %i.t, ptr %.01517.i215, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = getelementptr inbounds nuw i8, ptr %.018.i214, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01517.i215, i64 4
  %.not.i216 = icmp eq ptr %i.w, %i.a
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nISaINS0_4test12copyable_intEEPS4_ED2Ev.exit229, label %.lr.ph.i213, !llvm.loop !169

bb.d:                                             ; preds = %.loopexit376
  %i.y = sub nuw i64 %i.h, %i.i                   ; 5 uses
  %.not17.i = icmp eq i64 %i.y, 0
  br i1 %.not17.i, label %.loopexit374, label %.lr.ph.i219.preheader

.lr.ph.i219.preheader:                            ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %xtraiter542 = and i64 %i.y, 3                  ; 2 uses
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %.lr.ph.i219.prol.loopexit, label %.lr.ph.i219.prol

.lr.ph.i219.prol:                                 ; preds = %.lr.ph.i219.preheader, %.lr.ph.i219.prol
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i219.prol ], [ %i.y, %.lr.ph.i219.preheader ]
  %.0819.i.prol = phi ptr [ %i.ae, %.lr.ph.i219.prol ], [ %3, %.lr.ph.i219.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.af, %.lr.ph.i219.prol ], [ %i.z, %.lr.ph.i219.preheader ] ; 3 uses
  %prol.iter544 = phi i64 [ %prol.iter544.next, %.lr.ph.i219.prol ], [ 0, %.lr.ph.i219.preheader ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.prol) ]
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !646
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !646
  %i.ac = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
end_hunk_8
