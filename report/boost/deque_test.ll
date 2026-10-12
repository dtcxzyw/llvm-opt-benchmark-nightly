Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/deque_test?download=true
inline.NumInlined: 21721
inline.NumDeleted: 3891
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 1494
loop-unroll.NumUnrolled: 1710
begin_hunk_0_@_ZN5boost13report_errorsEv:bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.32, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !388
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !403  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !408
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !409
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !388
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.33, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.35, ptr @.str.34
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.36, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !388
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !403 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !408
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !409
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !388
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.j, %bb.k
  %.0.i.i.i10 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i10)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.v, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  ret i32 %i.at
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main() local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::deque_iterator.18", align 8 ; 42 uses
  %1 = alloca %"class.boost::container::deque.6", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.boost::container::deque.0", align 8 ; 54 uses
  %i.b = alloca i32, align 4                      ; 81 uses
  %i.c = tail call noundef zeroext i1 @_Z23do_recursive_deque_testv() ; 0 uses
  %i.d = tail call noundef zeroext i1 @_Z7do_testIiLb0EEbv()
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test11movable_intELb1EEbv()
  br i1 %i.e, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test24movable_and_copyable_intELb0EEbv()
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test12copyable_intELb1EEbv()
  br i1 %i.g, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_Z9test_ctadv()
  br i1 %i.h, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_Z26do_test_default_block_sizev()
  br i1 %i.i, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.j = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvE12emplace_backIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.m       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !370
  %i.k = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvE13emplace_frontIJiEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 10)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.l = call noundef i32 @_Z18test_cont_variantsISaIvELb0EEiv()
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 49) ; 0 uses
  br label %.loopexit.sink.split

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.n, %bb.m ], [ %i.o, %bb.n ]
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.at

bb.p:                                             ; preds = %bb.k
  %i.p = call noundef i32 @_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEELb1EEiv()
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 44) ; 0 uses
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.p
  %i.r = call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_5dequeIiNS1_22default_init_allocatorIiEEvEEEEbv()
  br i1 %i.r, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.26, i64 noundef 24) ; 0 uses
  br label %.loopexit.sink.split

bb.t:                                             ; preds = %bb.r
  %i.t = call noundef zeroext i1 @_ZN5boost9container4test12test_emplaceINS0_5dequeINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv()
  br i1 %i.t, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.u = call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI21boost_container_dequeEEbv()
  br i1 %i.u, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.v = call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_5dequeIivvEEEEbv()
  br i1 %i.v, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i, label %.loopexit

._crit_edge:                                      ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container5dequeIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit unwind label %bb.x

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i: ; preds = %bb.v
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %._crit_edge unwind label %.loopexit30

.loopexit30:                                      ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1
  %lpad.loopexit31 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2
  %lpad.loopexit34 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4
  %lpad.loopexit.split-lp37 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit30
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit31, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit34, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit36, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp37, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.as

_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit: ; preds = %._crit_edge
  %i.x = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit
  %.not23 = icmp eq i32 %i.x, 0
  call void @_ZN5boost9container10deque_implIivLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1, label %.loopexit

bb.x:                                             ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.4, %._crit_edge.4, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.3, %._crit_edge.3, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.2, %._crit_edge.2, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.1, %._crit_edge.1, %._crit_edge, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre = load ptr, ptr %2, align 8, !tbaa !365   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.1 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %bb.y, !prof !375

bb.y:                                             ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1
  %i.z = load i64, ptr %i.w, align 8, !tbaa !374  ; 3 uses
  %i.aa = and i64 %i.z, 255                       ; 2 uses
  %.not11.i.i.1.1 = icmp eq i64 %i.aa, 255
  br i1 %.not11.i.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.1, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.1: ; preds = %bb.y
  %i.ab = lshr i64 %i.z, 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.1 = icmp eq ptr %i.ad, null
  br i1 %.not.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.1
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.aa
  store i32 1, ptr %i.ae, align 4, !tbaa !370
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !370
  br label %bb.z

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.1, %bb.y, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre39 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.2 = icmp eq ptr %.pre39, null
  br i1 %.not.i.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %bb.z, !prof !799

bb.z:                                             ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1
  %i.ag = phi ptr [ %.pre, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1.thread ], [ %.pre39, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1 ] ; 2 uses
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.ai = and i64 %i.ah, 255                      ; 2 uses
  %.not11.i.i.1.2 = icmp eq i64 %i.ai, 255
  br i1 %.not11.i.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.2, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.2: ; preds = %bb.z
  %i.aj = lshr i64 %i.ah, 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.2 = icmp eq ptr %i.al, null
  br i1 %.not.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ai
  store i32 2, ptr %i.am, align 4, !tbaa !370
  %i.an = add i64 %i.ah, 1
  store i64 %i.an, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 3, ptr %i.b, align 4, !tbaa !370
  br label %bb.aa

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.2, %bb.z, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.2
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 3, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.3 = icmp eq ptr %.pre40, null
  br i1 %.not.i.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %bb.aa, !prof !800

bb.aa:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2
  %i.ao = phi ptr [ %i.ag, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2.thread ], [ %.pre40, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2 ] ; 2 uses
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.aq = and i64 %i.ap, 255                      ; 2 uses
  %.not11.i.i.1.3 = icmp eq i64 %i.aq, 255
  br i1 %.not11.i.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.3, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.3: ; preds = %bb.aa
  %i.ar = lshr i64 %i.ap, 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.3 = icmp eq ptr %i.at, null
  br i1 %.not.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aq
  store i32 3, ptr %i.au, align 4, !tbaa !370
  %i.av = add i64 %i.ap, 1
  store i64 %i.av, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !370
  br label %bb.ab

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.3, %bb.aa, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre41 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.4 = icmp eq ptr %.pre41, null
  br i1 %.not.i.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %bb.ab, !prof !799

bb.ab:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3
  %i.aw = phi ptr [ %i.ao, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3.thread ], [ %.pre41, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3 ] ; 2 uses
  %i.ax = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.ay = and i64 %i.ax, 255                      ; 2 uses
  %.not11.i.i.1.4 = icmp eq i64 %i.ay, 255
  br i1 %.not11.i.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.4, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.4: ; preds = %bb.ab
  %i.az = lshr i64 %i.ax, 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.4 = icmp eq ptr %i.bb, null
  br i1 %.not.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ay
  store i32 4, ptr %i.bc, align 4, !tbaa !370
  %i.bd = add i64 %i.ax, 1
  store i64 %i.bd, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 5, ptr %i.b, align 4, !tbaa !370
  br label %bb.ac

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.4, %bb.ab, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre42 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 5, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.5 = icmp eq ptr %.pre42, null
  br i1 %.not.i.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %bb.ac, !prof !801

bb.ac:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4
  %i.be = phi ptr [ %i.aw, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4.thread ], [ %.pre42, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4 ] ; 2 uses
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.bg = and i64 %i.bf, 255                      ; 2 uses
  %.not11.i.i.1.5 = icmp eq i64 %i.bg, 255
  br i1 %.not11.i.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.5, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.5: ; preds = %bb.ac
  %i.bh = lshr i64 %i.bf, 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.5 = icmp eq ptr %i.bj, null
  br i1 %.not.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.5
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bg
  store i32 5, ptr %i.bk, align 4, !tbaa !370
  %i.bl = add i64 %i.bf, 1
  store i64 %i.bl, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 6, ptr %i.b, align 4, !tbaa !370
  br label %bb.ad

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.5, %bb.ac, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre43 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 6, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.6 = icmp eq ptr %.pre43, null
  br i1 %.not.i.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %bb.ad, !prof !799

bb.ad:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5
  %i.bm = phi ptr [ %i.be, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5.thread ], [ %.pre43, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5 ] ; 2 uses
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.bo = and i64 %i.bn, 255                      ; 2 uses
  %.not11.i.i.1.6 = icmp eq i64 %i.bo, 255
  br i1 %.not11.i.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.6, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.6: ; preds = %bb.ad
  %i.bp = lshr i64 %i.bn, 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.6 = icmp eq ptr %i.br, null
  br i1 %.not.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.6
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bo
  store i32 6, ptr %i.bs, align 4, !tbaa !370
  %i.bt = add i64 %i.bn, 1
  store i64 %i.bt, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 7, ptr %i.b, align 4, !tbaa !370
  br label %bb.ae

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.6, %bb.ad, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.5
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 7, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.7 = icmp eq ptr %.pre44, null
  br i1 %.not.i.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %bb.ae, !prof !801

bb.ae:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6
  %i.bu = phi ptr [ %i.bm, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6.thread ], [ %.pre44, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6 ] ; 2 uses
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.bw = and i64 %i.bv, 255                      ; 2 uses
  %.not11.i.i.1.7 = icmp eq i64 %i.bw, 255
  br i1 %.not11.i.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.7, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.7: ; preds = %bb.ae
  %i.bx = lshr i64 %i.bv, 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.7 = icmp eq ptr %i.bz, null
  br i1 %.not.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.7
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  store i32 7, ptr %i.ca, align 4, !tbaa !370
  %i.cb = add i64 %i.bv, 1
  store i64 %i.cb, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 8, ptr %i.b, align 4, !tbaa !370
  br label %bb.af

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.7, %bb.ae, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.6
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre45 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 8, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.8 = icmp eq ptr %.pre45, null
  br i1 %.not.i.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %bb.af, !prof !800

bb.af:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7
  %i.cc = phi ptr [ %i.bu, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7.thread ], [ %.pre45, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7 ] ; 2 uses
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.ce = and i64 %i.cd, 255                      ; 2 uses
  %.not11.i.i.1.8 = icmp eq i64 %i.ce, 255
  br i1 %.not11.i.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.8, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.8: ; preds = %bb.af
  %i.cf = lshr i64 %i.cd, 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.8 = icmp eq ptr %i.ch, null
  br i1 %.not.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8.thread, !prof !380

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.ce
  store i32 8, ptr %i.ci, align 4, !tbaa !370
  %i.cj = add i64 %i.cd, 1
  store i64 %i.cj, ptr %i.w, align 8, !tbaa !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 9, ptr %i.b, align 4, !tbaa !370
  br label %bb.ag

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.8, %bb.af, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.7
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !365 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 9, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.1.9 = icmp eq ptr %.pre46, null
  br i1 %.not.i.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %bb.ag, !prof !799

bb.ag:                                            ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8.thread, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8
  %i.ck = phi ptr [ %i.cc, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8.thread ], [ %.pre46, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8 ]
  %i.cl = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.cm = and i64 %i.cl, 255                      ; 2 uses
  %.not11.i.i.1.9 = icmp eq i64 %i.cm, 255
  br i1 %.not11.i.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.9, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.9: ; preds = %bb.ag
  %i.cn = lshr i64 %i.cl, 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !369 ; 2 uses
  %.not.i.1.9 = icmp eq ptr %i.cp, null
  br i1 %.not.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %bb.ah, !prof !380

bb.ah:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.9
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cm
  store i32 9, ptr %i.cq, align 4, !tbaa !370
  %i.cr = add i64 %i.cl, 1
  store i64 %i.cr, ptr %i.w, align 8, !tbaa !374
  br label %._crit_edge.1

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.1.9, %bb.ag, %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.1.8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.1.9 unwind label %.loopexit.split-lp.loopexit

.noexc.1.9:                                       ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.1.9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %bb.ah, %.noexc.1.9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container5dequeIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.1 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.1: ; preds = %._crit_edge.1
  %i.cs = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ai unwind label %bb.x

bb.ai:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.1
  %.not23.1 = icmp eq i32 %i.cs, 0
  call void @_ZN5boost9container10deque_implIivLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.1, label %.lr.ph.preheader.2, label %.loopexit

.lr.ph.preheader.2:                               ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %.lr.ph.2

.lr.ph.2thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.2
  %.pr = load ptr, ptr %2, align 8, !tbaa !365
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2thread-pre-split, %.lr.ph.preheader.2
  %i.ct = phi ptr [ %.pr, %.lr.ph.2thread-pre-split ], [ null, %.lr.ph.preheader.2 ] ; 2 uses
  %.027.2 = phi i32 [ %i.db, %.lr.ph.2thread-pre-split ], [ 0, %.lr.ph.preheader.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.027.2, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.2 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2, label %bb.aj, !prof !375

bb.aj:                                            ; preds = %.lr.ph.2
  %i.cu = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.cv = and i64 %i.cu, 255                      ; 2 uses
  %.not11.i.i.2 = icmp eq i64 %i.cv, 255
  br i1 %.not11.i.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.2, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.2: ; preds = %bb.aj
  %i.cw = lshr i64 %i.cu, 8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !369 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.cy, null
  br i1 %.not.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2, label %bb.ak, !prof !380

bb.ak:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.2
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cv
  store i32 %.027.2, ptr %i.cz, align 4, !tbaa !370
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.w, align 8, !tbaa !374
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.2

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.2, %bb.aj, %.lr.ph.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc.2:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.2

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.2: ; preds = %.noexc.2, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.db = add nuw nsw i32 %.027.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.db, 100
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph.2thread-pre-split, !llvm.loop !798

._crit_edge.2:                                    ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.2
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container5dequeIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.2 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.2: ; preds = %._crit_edge.2
  %i.dc = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.al unwind label %bb.x

bb.al:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.2
  %.not23.2 = icmp eq i32 %i.dc, 0
  call void @_ZN5boost9container10deque_implIivLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.2, label %.lr.ph.preheader.3, label %.loopexit

.lr.ph.preheader.3:                               ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %.lr.ph.3

.lr.ph.3thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.3
  %.pr97 = load ptr, ptr %2, align 8, !tbaa !365
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3thread-pre-split, %.lr.ph.preheader.3
  %i.dd = phi ptr [ %.pr97, %.lr.ph.3thread-pre-split ], [ null, %.lr.ph.preheader.3 ] ; 2 uses
  %.027.3 = phi i32 [ %i.dl, %.lr.ph.3thread-pre-split ], [ 0, %.lr.ph.preheader.3 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.027.3, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.3 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3, label %bb.am, !prof !375

bb.am:                                            ; preds = %.lr.ph.3
  %i.de = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.df = and i64 %i.de, 255                      ; 2 uses
  %.not11.i.i.3 = icmp eq i64 %i.df, 255
  br i1 %.not11.i.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.3, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.3: ; preds = %bb.am
  %i.dg = lshr i64 %i.de, 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !369 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.di, null
  br i1 %.not.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3, label %bb.an, !prof !380

bb.an:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.3
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.df
  store i32 %.027.3, ptr %i.dj, align 4, !tbaa !370
  %i.dk = add i64 %i.de, 1
  store i64 %i.dk, ptr %i.w, align 8, !tbaa !374
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.3

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.3, %bb.am, %.lr.ph.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc.3:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.3

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.3: ; preds = %.noexc.3, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.dl = add nuw nsw i32 %.027.3, 1              ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.dl, 1000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3thread-pre-split, !llvm.loop !798

._crit_edge.3:                                    ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.3
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container5dequeIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.3 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.3: ; preds = %._crit_edge.3
  %i.dm = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ao unwind label %bb.x

bb.ao:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container5dequeIivvEEEEvRT_.exit.3
  %.not23.3 = icmp eq i32 %i.dm, 0
  call void @_ZN5boost9container10deque_implIivLb0EvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.3, label %.lr.ph.preheader.4, label %.loopexit

.lr.ph.preheader.4:                               ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %.lr.ph.4

.lr.ph.4thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.4
  %.pr98 = load ptr, ptr %2, align 8, !tbaa !365
  br label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.4thread-pre-split, %.lr.ph.preheader.4
  %i.dn = phi ptr [ %.pr98, %.lr.ph.4thread-pre-split ], [ null, %.lr.ph.preheader.4 ] ; 2 uses
  %.027.4 = phi i32 [ %i.dv, %.lr.ph.4thread-pre-split ], [ 0, %.lr.ph.preheader.4 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.027.4, ptr %i.b, align 4, !tbaa !370
  %.not.i.i.4 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4, label %bb.ap, !prof !375

bb.ap:                                            ; preds = %.lr.ph.4
  %i.do = load i64, ptr %i.w, align 8, !tbaa !374 ; 3 uses
  %i.dp = and i64 %i.do, 255                      ; 2 uses
  %.not11.i.i.4 = icmp eq i64 %i.dp, 255
  br i1 %.not11.i.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.4, !prof !375

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.4: ; preds = %bb.ap
  %i.dq = lshr i64 %i.do, 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !369 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.ds, null
  br i1 %.not.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4, label %bb.aq, !prof !380

bb.aq:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dp
  store i32 %.027.4, ptr %i.dt, align 4, !tbaa !370
  %i.du = add i64 %i.do, 1
  store i64 %i.du, ptr %i.w, align 8, !tbaa !374
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.4

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.i.4, %bb.ap, %.lr.ph.4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb0EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.4:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb0EE25prot_push_back_simple_posEv.exit.thread.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.4

_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.4: ; preds = %.noexc.4, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.dv = add nuw nsw i32 %.027.4, 1              ; 2 uses
  %exitcond.4.not = icmp eq i32 %i.dv, 10000
  br i1 %exitcond.4.not, label %._crit_edge.4, label %.lr.ph.4thread-pre-split, !llvm.loop !798

._crit_edge.4:                                    ; preds = %_ZN5boost9container10deque_implIivLb0EvE9push_backEOi.exit.4
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container5dequeIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %2)
end_hunk_0
