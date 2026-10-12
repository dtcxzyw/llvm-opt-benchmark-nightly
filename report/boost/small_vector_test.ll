Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 526
begin_hunk_0_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm:bb.a
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !79
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !65
  %i.e = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = sub nuw i64 %1, %i.b                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66, !noalias !637
  %i.i = sub i64 %i.h, %i.b
  %.not.i.i = icmp ugt i64 %i.f, %i.i
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i, !prof !74

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i: ; preds = %bb.d
  %i.j = shl i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 0, i64 %i.j, i1 false), !noalias !637
  %.pre.i.i.i = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !637
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i, %bb.d
  %i.k = phi i64 [ %1, %bb.d ], [ %.pre.i.i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i ]
  %i.l = add i64 %i.k, %i.f
  store i64 %i.l, ptr %i.a, align 8, !tbaa !79, !noalias !637
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.e, i64 noundef %i.f)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i: ; preds = %bb.e, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator", align 8 ; 9 uses
  %1 = alloca %"class.boost::container::small_vector.7", align 8 ; 37 uses
  %i.a = alloca i32, align 4                      ; 23 uses
  %i.b = tail call noundef zeroext i1 @_Z9test_swapv()
  br i1 %i.b, label %bb.b, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorIiLm0EvvEEEEiv()
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorIiLm2000EvvEEEEiv()
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.d, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEiv()
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not1.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i, label %bb.f, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %bb.g, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit: ; preds = %bb.g
  %i.i = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorINS1_17moveconstruct_intELm10ENS0_13new_allocatorIS4_EEvEEEEiv()
  %.not4.i.not = icmp eq i32 %i.i, 0
  br i1 %.not4.i.not, label %bb.h, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.h:                                             ; preds = %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit
  %i.j = tail call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_12small_vectorIiLm5ENS1_22default_init_allocatorIiEEvEEEEbv()
  br i1 %i.j, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr), !inline_history !0 ; 0 uses
  br label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.m = tail call noundef zeroext i1 @_ZN5boost9container4test12test_emplaceINS0_12small_vectorINS1_10EmplaceIntELm5EvvEELNS1_14EmplaceOptionsE261EEEbv()
  br i1 %i.m, label %bb.k, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.n = tail call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI28boost_container_small_vectorEEbv()
  br i1 %i.n, label %bb.l, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.o = tail call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_12small_vectorIiLm5EvvEEEEbv()
  br i1 %i.o, label %bb.m, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.p = tail call noundef zeroext i1 @_Z31test_small_vector_shrink_to_fitv()
  br i1 %i.p, label %._crit_edge, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

._crit_edge:                                      ; preds = %bb.m
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 10, ptr %i.s, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.q, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.t, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 8, ptr %i.u, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 9, ptr %i.v, align 4, !tbaa !67
  store i64 10, ptr %i.r, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container12small_vectorIiLm10EvvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.n unwind label %bb.r

.loopexit.split-lp.loopexit:                      ; preds = %bb.t
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.z
  %lpad.loopexit35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit
  %lpad.phi34 = phi { ptr, i32 } [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ak

bb.n:                                             ; preds = %._crit_edge
  %i.w = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not19 = icmp eq i32 %i.w, 0
  %i.x = load i64, ptr %i.s, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %i.z = icmp eq ptr %i.q, %i.y
  br i1 %i.z, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = shl i64 %i.x, 2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.not19, label %.lr.ph.preheader.1, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.r:                                             ; preds = %bb.ag, %._crit_edge.3, %bb.aa, %._crit_edge.2, %bb.u, %._crit_edge.1, %bb.n, %._crit_edge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph.preheader.1:                               ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i64 10, ptr %i.s, align 8, !tbaa !66
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1, %.lr.ph.preheader.1
  %.01230.1 = phi i32 [ %i.aj, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1 ], [ 0, %.lr.ph.preheader.1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.01230.1, ptr %i.a, align 4, !tbaa !67
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !69  ; 4 uses
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !66
  %.not.i21.1 = icmp eq i64 %i.ac, %i.ad
  br i1 %.not.i21.1, label %bb.t, label %bb.s, !prof !74

bb.s:                                             ; preds = %.lr.ph.1
  %i.ae = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !76, !noundef !76
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  store i32 %.01230.1, ptr %i.af, align 4, !tbaa !67
  %i.ag = add i64 %i.ac, 1
  store i64 %i.ag, ptr %i.r, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1

bb.t:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.ah = load ptr, ptr %1, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ac
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ai, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit

.noexc.1:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1: ; preds = %.noexc.1, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aj = add nuw nsw i32 %.01230.1, 1            ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.aj, 100
  br i1 %exitcond.1.not, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !638

._crit_edge.1:                                    ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.1
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container12small_vectorIiLm10EvvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %._crit_edge.1
  %i.ak = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.v unwind label %bb.r

bb.v:                                             ; preds = %bb.u
  %.not19.1 = icmp eq i32 %i.ak, 0
  %i.al = load i64, ptr %i.s, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.1, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.an = icmp eq ptr %i.q, %i.am
  br i1 %i.an, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = shl i64 %i.al, 2
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.not19.1, label %.lr.ph.preheader.2, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

.lr.ph.preheader.2:                               ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i64 10, ptr %i.s, align 8, !tbaa !66
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2, %.lr.ph.preheader.2
  %.01230.2 = phi i32 [ %i.aw, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2 ], [ 0, %.lr.ph.preheader.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.01230.2, ptr %i.a, align 4, !tbaa !67
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !69  ; 4 uses
  %i.aq = load i64, ptr %i.s, align 8, !tbaa !66
  %.not.i21.2 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i21.2, label %bb.z, label %bb.y, !prof !74

bb.y:                                             ; preds = %.lr.ph.2
  %i.ar = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !76, !noundef !76
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store i32 %.01230.2, ptr %i.as, align 4, !tbaa !67
  %i.at = add i64 %i.ap, 1
  store i64 %i.at, ptr %i.r, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2

bb.z:                                             ; preds = %.lr.ph.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.au = load ptr, ptr %1, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ap
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.av, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc.2:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2: ; preds = %.noexc.2, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aw = add nuw nsw i32 %.01230.2, 1            ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.aw, 1000
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !638

._crit_edge.2:                                    ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.2
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container12small_vectorIiLm10EvvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.aa unwind label %bb.r

bb.aa:                                            ; preds = %._crit_edge.2
  %i.ax = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.aa
  %.not19.2 = icmp eq i32 %i.ax, 0
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.2 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.2, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.az = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.ba = icmp eq ptr %i.q, %i.az
  br i1 %i.ba, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bb = shl i64 %i.ay, 2
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.not19.2, label %.lr.ph.preheader.3, label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

.lr.ph.preheader.3:                               ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr %i.q, ptr %1, align 8, !tbaa !65
  store i64 0, ptr %i.r, align 8, !tbaa !79
  store i64 10, ptr %i.s, align 8, !tbaa !66
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3, %.lr.ph.preheader.3
  %.01230.3 = phi i32 [ %i.bj, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3 ], [ 0, %.lr.ph.preheader.3 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 %.01230.3, ptr %i.a, align 4, !tbaa !67
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !69  ; 4 uses
  %i.bd = load i64, ptr %i.s, align 8, !tbaa !66
  %.not.i21.3 = icmp eq i64 %i.bc, %i.bd
  br i1 %.not.i21.3, label %bb.af, label %bb.ae, !prof !74

bb.ae:                                            ; preds = %.lr.ph.3
  %i.be = load ptr, ptr %1, align 8, !tbaa !65, !nonnull !76, !noundef !76
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc
  store i32 %.01230.3, ptr %i.bf, align 4, !tbaa !67
  %i.bg = add i64 %i.bc, 1
  store i64 %i.bg, ptr %i.r, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3

bb.af:                                            ; preds = %.lr.ph.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.bh = load ptr, ptr %1, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bc
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.bi, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.3:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3: ; preds = %.noexc.3, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bj = add nuw nsw i32 %.01230.3, 1            ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.bj, 10000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !638

._crit_edge.3:                                    ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9push_backEOi.exit.3
  invoke void @_ZN5boost9intrusive4test20test_iterator_randomINS_9container12small_vectorIiLm10EvvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.ag unwind label %bb.r

bb.ag:                                            ; preds = %._crit_edge.3
  %i.bk = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ah unwind label %bb.r

bb.ah:                                            ; preds = %bb.ag
  %.not19.3 = icmp ne i32 %i.bk, 0
  %i.bl = load i64, ptr %i.s, align 8, !tbaa !66  ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bm = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.bn = icmp eq ptr %i.q, %i.bm
  br i1 %i.bn, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bo = shl i64 %i.bl, 2
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3: ; preds = %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %spec.select = zext i1 %.not19.3 to i32
  br label %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread

bb.ak:                                            ; preds = %bb.r, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi34, %.loopexit.split-lp ], [ %i.ab, %bb.r ]
  %i.bp = load i64, ptr %i.s, align 8, !tbaa !66  ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i23, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit24, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bq = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.br = icmp eq ptr %i.q, %i.bq
  br i1 %i.br, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit24, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bs = shl i64 %i.bp, 2
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bs) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit24

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit24: ; preds = %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn

_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit.thread: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2, %bb.f, %bb.e, %bb.d, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit, %bb.c, %bb.b, %bb.a, %bb.i
  %.4 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %_Z18test_cont_variantsIN5boost9container13new_allocatorIvEEEiv.exit ], [ 1, %bb.i ], [ 1, %bb.m ], [ 1, %bb.f ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.g ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit ], [ 1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.2 ], [ 1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.1 ], [ %spec.select, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit.3 ]
  ret i32 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost9container4test11vector_testINS0_12small_vectorIiLm0EvvEEEEiv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::movelib::unique_ptr", align 8 ; 5 uses
  %1 = alloca %"class.boost::movelib::unique_ptr", align 8 ; 5 uses
  %2 = alloca %"class.boost::movelib::unique_ptr.24", align 8 ; 5 uses
  %3 = alloca %"class.boost::movelib::unique_ptr", align 8 ; 5 uses
  %4 = alloca %"class.boost::movelib::unique_ptr.24", align 8 ; 5 uses
  %5 = alloca %"class.boost::movelib::unique_ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !663 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !79, !noalias !663
  store i64 100, ptr %i.b, align 8, !tbaa !66, !noalias !663
  %i.d = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.b, !noalias !663 ; 2 uses

common.resume:                                    ; preds = %.body, %.body45, %.body75, %.body110, %bb.ad, %bb.l, %bb.g, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.w, %bb.g ], [ %i.am, %bb.l ], [ %i.cj, %bb.ad ], [ %.pn28.pn, %.body110 ], [ %.pn25.pn, %.body75 ], [ %i.y, %.body45 ], [ %i.g, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #26, !noalias !663
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !65, !noalias !663
  store i64 100, ptr %i.b, align 8, !tbaa !84, !noalias !663
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(400) %i.d, i8 0, i64 400, i1 false), !noalias !663
  store i64 100, ptr %i.c, align 8, !tbaa !79, !noalias !663
  store ptr %i.a, ptr %0, align 8, !tbaa !87, !alias.scope !663
  %i.f = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #24
          to label %bb.c unwind label %.body, !noalias !664 ; 3 uses

.body:                                            ; preds = %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %i.f, i8 0, i64 400, i1 false)
  %i.h = load i64, ptr %i.c, align 8, !tbaa !69
  %.not.i = icmp eq i64 %i.h, 100
  br i1 %.not.i, label %.lr.ph.i.preheader, label %.loopexit174

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !665
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.sroa.019.026.i.idx = phi i64 [ %.sroa.019.026.i.add, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.019.026.i.ptr = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.019.026.i.idx
  %i.j = load i32, ptr %.sroa.019.026.i.ptr, align 4, !tbaa !67
  %i.k = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !67
  %i.l = icmp eq i32 %i.j, %i.k                   ; 2 uses
  %.sroa.019.026.i.add = add nuw nsw i64 %.sroa.019.026.i.idx, 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp ne i64 %.sroa.019.026.i.add, 400
  %or.cond176.not = select i1 %i.l, i1 %.not23.i, i1 false
  br i1 %or.cond176.not, label %.lr.ph.i, label %.loopexit174, !llvm.loop !1

.loopexit174:                                     ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.l, %.lr.ph.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 400) #26
  %i.n = load i64, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i36, label %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit174
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i64 %i.n, 2
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %.loopexit174, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br i1 %.2.i, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %_ZN5boost7movelib10unique_ptrINS_9container12small_vectorIiLm0EvvEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !666 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store i64 0, ptr %i.u, align 8, !tbaa !79, !noalias !666
  store i64 100, ptr %i.t, align 8, !tbaa !66, !noalias !666
  %i.v = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #25
          to label %_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjNS2_13new_allocatorIiEEEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit unwind label %bb.g, !noalias !666 ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 24) #26, !noalias !666
  br label %common.resume

_ZN5boost7movelib11make_uniqueINS_9container12small_vectorIiLm0EvvEEJjNS2_13new_allocatorIiEEEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit: ; preds = %bb.f
  store ptr %i.v, ptr %i.s, align 8, !tbaa !65, !noalias !666
  store i64 100, ptr %i.t, align 8, !tbaa !84, !noalias !666
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(400) %i.v, i8 0, i64 400, i1 false), !noalias !666
  store i64 100, ptr %i.u, align 8, !tbaa !79, !noalias !666
  store ptr %i.s, ptr %1, align 8, !tbaa !87, !alias.scope !666
end_hunk_0
