Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/segtor_test?download=true
inline.NumInlined: 19147
inline.NumDeleted: 3749
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 812
loop-unroll.NumUnrolled: 1099
begin_hunk_0_@_ZN5boost13report_errorsEv:bb.a
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !393  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !398
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !399
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !378
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
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !378
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !393 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !398
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !399
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !378
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
  %1 = alloca %"class.boost::container::segtor.6", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.boost::container::segtor.0", align 8 ; 54 uses
  %i.b = alloca i32, align 4                      ; 81 uses
  %i.c = tail call noundef zeroext i1 @_Z24do_recursive_segtor_testv() ; 0 uses
  %i.d = tail call noundef zeroext i1 @_Z7do_testIiLb0EEbv()
  br i1 %i.d, label %bb.b, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test11movable_intELb1EEbv()
  br i1 %i.e, label %bb.c, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test24movable_and_copyable_intELb0EEbv()
  br i1 %i.f, label %bb.d, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_Z7do_testIN5boost9container4test12copyable_intELb1EEbv()
  br i1 %i.g, label %bb.e, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_Z26do_test_default_block_sizev()
  br i1 %i.h, label %bb.f, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_Z9test_ctadv()
  br i1 %i.i, label %bb.g, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.j = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE12emplace_backIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.h unwind label %bb.m       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !363
  %i.k = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE12emplace_backIJiEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 10)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.l = call noundef i32 @_Z18test_cont_variantsISaIvELb0EEiv()
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.24, i64 noundef 49) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread.sink.split

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
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.at

bb.p:                                             ; preds = %bb.k
  %i.p = call noundef i32 @_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEELb1EEiv()
  %.not22 = icmp eq i32 %i.p, 0
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 44) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.r = call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_6segtorIiNS1_22default_init_allocatorIiEEvEEEEbv()
  br i1 %i.r, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.26, i64 noundef 24) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread.sink.split

bb.t:                                             ; preds = %bb.r
  %i.t = call noundef zeroext i1 @_ZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.t, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit: ; preds = %bb.t
  %i.u = call noundef zeroext i1 @_ZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.u, label %bb.u, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.u:                                             ; preds = %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit
  %i.v = call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI22boost_container_segtorEEbv()
  br i1 %i.v, label %bb.v, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.w = call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_6segtorIivvEEEEbv()
  br i1 %i.w, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i: ; preds = %bb.v
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit unwind label %.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container6segtorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit unwind label %bb.x

.loopexit:                                        ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1, %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2
  %lpad.loopexit35 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit35, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit37, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.as

_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit: ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit
  %i.y = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit
  %.not23 = icmp eq i32 %i.y, 0
  call void @_ZN5boost9container10deque_implIivLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.x:                                             ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.4, %._crit_edge.4, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.3, %._crit_edge.3, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.2, %._crit_edge.2, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.1, %._crit_edge.1, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre = load ptr, ptr %2, align 8, !tbaa !360   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.1 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %bb.y, !prof !365

bb.y:                                             ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.ab = and i64 %i.aa, 255                      ; 2 uses
  %.not11.i.i.1.1 = icmp eq i64 %i.ab, 255
  br i1 %.not11.i.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.1, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.1: ; preds = %bb.y
  %i.ac = lshr i64 %i.aa, 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.1 = icmp eq ptr %i.ae, null
  br i1 %.not.i.1.1, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab
  store i32 1, ptr %i.af, align 4, !tbaa !363
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !363
  br label %bb.z

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.1, %bb.y, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.1
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre40 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 2, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.2 = icmp eq ptr %.pre40, null
  br i1 %.not.i.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %bb.z, !prof !709

bb.z:                                             ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1
  %i.ah = phi ptr [ %.pre, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1.thread ], [ %.pre40, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1 ] ; 2 uses
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %.not11.i.i.1.2 = icmp eq i64 %i.aj, 255
  br i1 %.not11.i.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.2, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.2: ; preds = %bb.z
  %i.ak = lshr i64 %i.ai, 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.2 = icmp eq ptr %i.am, null
  br i1 %.not.i.1.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj
  store i32 2, ptr %i.an, align 4, !tbaa !363
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 3, ptr %i.b, align 4, !tbaa !363
  br label %bb.aa

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.2, %bb.z, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.2
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre41 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 3, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.3 = icmp eq ptr %.pre41, null
  br i1 %.not.i.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %bb.aa, !prof !710

bb.aa:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2
  %i.ap = phi ptr [ %i.ah, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2.thread ], [ %.pre41, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2 ] ; 2 uses
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.ar = and i64 %i.aq, 255                      ; 2 uses
  %.not11.i.i.1.3 = icmp eq i64 %i.ar, 255
  br i1 %.not11.i.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.3, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.3: ; preds = %bb.aa
  %i.as = lshr i64 %i.aq, 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.3 = icmp eq ptr %i.au, null
  br i1 %.not.i.1.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar
  store i32 3, ptr %i.av, align 4, !tbaa !363
  %i.aw = add i64 %i.aq, 1
  store i64 %i.aw, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !363
  br label %bb.ab

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.3, %bb.aa, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre42 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.4 = icmp eq ptr %.pre42, null
  br i1 %.not.i.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %bb.ab, !prof !711

bb.ab:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3
  %i.ax = phi ptr [ %i.ap, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3.thread ], [ %.pre42, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3 ] ; 2 uses
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.az = and i64 %i.ay, 255                      ; 2 uses
  %.not11.i.i.1.4 = icmp eq i64 %i.az, 255
  br i1 %.not11.i.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.4, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.4: ; preds = %bb.ab
  %i.ba = lshr i64 %i.ay, 8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.4 = icmp eq ptr %i.bc, null
  br i1 %.not.i.1.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.az
  store i32 4, ptr %i.bd, align 4, !tbaa !363
  %i.be = add i64 %i.ay, 1
  store i64 %i.be, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 5, ptr %i.b, align 4, !tbaa !363
  br label %bb.ac

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.4, %bb.ab, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre43 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 5, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.5 = icmp eq ptr %.pre43, null
  br i1 %.not.i.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %bb.ac, !prof !711

bb.ac:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4
  %i.bf = phi ptr [ %i.ax, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4.thread ], [ %.pre43, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4 ] ; 2 uses
  %i.bg = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.bh = and i64 %i.bg, 255                      ; 2 uses
  %.not11.i.i.1.5 = icmp eq i64 %i.bh, 255
  br i1 %.not11.i.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.5, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.5: ; preds = %bb.ac
  %i.bi = lshr i64 %i.bg, 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.5 = icmp eq ptr %i.bk, null
  br i1 %.not.i.1.5, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bh
  store i32 5, ptr %i.bl, align 4, !tbaa !363
  %i.bm = add i64 %i.bg, 1
  store i64 %i.bm, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 6, ptr %i.b, align 4, !tbaa !363
  br label %bb.ad

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.5, %bb.ac, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.5
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 6, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.6 = icmp eq ptr %.pre44, null
  br i1 %.not.i.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %bb.ad, !prof !709

bb.ad:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5
  %i.bn = phi ptr [ %i.bf, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5.thread ], [ %.pre44, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5 ] ; 2 uses
  %i.bo = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.bp = and i64 %i.bo, 255                      ; 2 uses
  %.not11.i.i.1.6 = icmp eq i64 %i.bp, 255
  br i1 %.not11.i.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.6, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.6: ; preds = %bb.ad
  %i.bq = lshr i64 %i.bo, 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.6 = icmp eq ptr %i.bs, null
  br i1 %.not.i.1.6, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.6
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp
  store i32 6, ptr %i.bt, align 4, !tbaa !363
  %i.bu = add i64 %i.bo, 1
  store i64 %i.bu, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 7, ptr %i.b, align 4, !tbaa !363
  br label %bb.ae

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.6, %bb.ad, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.5
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.6
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre45 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 7, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.7 = icmp eq ptr %.pre45, null
  br i1 %.not.i.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %bb.ae, !prof !709

bb.ae:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6
  %i.bv = phi ptr [ %i.bn, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6.thread ], [ %.pre45, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6 ] ; 2 uses
  %i.bw = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.bx = and i64 %i.bw, 255                      ; 2 uses
  %.not11.i.i.1.7 = icmp eq i64 %i.bx, 255
  br i1 %.not11.i.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.7, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.7: ; preds = %bb.ae
  %i.by = lshr i64 %i.bw, 8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.7 = icmp eq ptr %i.ca, null
  br i1 %.not.i.1.7, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.7
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bx
  store i32 7, ptr %i.cb, align 4, !tbaa !363
  %i.cc = add i64 %i.bw, 1
  store i64 %i.cc, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 8, ptr %i.b, align 4, !tbaa !363
  br label %bb.af

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.7, %bb.ae, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.6
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.7
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 8, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.8 = icmp eq ptr %.pre46, null
  br i1 %.not.i.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %bb.af, !prof !710

bb.af:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7
  %i.cd = phi ptr [ %i.bv, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7.thread ], [ %.pre46, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7 ] ; 2 uses
  %i.ce = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.cf = and i64 %i.ce, 255                      ; 2 uses
  %.not11.i.i.1.8 = icmp eq i64 %i.cf, 255
  br i1 %.not11.i.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.8, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.8: ; preds = %bb.af
  %i.cg = lshr i64 %i.ce, 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.8 = icmp eq ptr %i.ci, null
  br i1 %.not.i.1.8, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8, label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8.thread, !prof !370

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8.thread: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.8
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cf
  store i32 8, ptr %i.cj, align 4, !tbaa !363
  %i.ck = add i64 %i.ce, 1
  store i64 %i.ck, ptr %i.x, align 8, !tbaa !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 9, ptr %i.b, align 4, !tbaa !363
  br label %bb.ag

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.8, %bb.af, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.7
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre47 = load ptr, ptr %2, align 8, !tbaa !360 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 9, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.1.9 = icmp eq ptr %.pre47, null
  br i1 %.not.i.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %bb.ag, !prof !711

bb.ag:                                            ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8.thread, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8
  %i.cl = phi ptr [ %i.cd, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8.thread ], [ %.pre47, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8 ]
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.cn = and i64 %i.cm, 255                      ; 2 uses
  %.not11.i.i.1.9 = icmp eq i64 %i.cn, 255
  br i1 %.not11.i.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.9, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.9: ; preds = %bb.ag
  %i.co = lshr i64 %i.cm, 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !362 ; 2 uses
  %.not.i.1.9 = icmp eq ptr %i.cq, null
  br i1 %.not.i.1.9, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9, label %bb.ah, !prof !370

bb.ah:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.9
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cn
  store i32 9, ptr %i.cr, align 4, !tbaa !363
  %i.cs = add i64 %i.cm, 1
  store i64 %i.cs, ptr %i.x, align 8, !tbaa !364
  br label %._crit_edge.1

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.1.9, %bb.ag, %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.1.8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.1.9 unwind label %.loopexit.split-lp.loopexit

.noexc.1.9:                                       ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.1.9
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.noexc.1.9, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container6segtorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.1 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.1: ; preds = %._crit_edge.1
  %i.ct = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ai unwind label %bb.x

bb.ai:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.1
  %.not23.1 = icmp eq i32 %i.ct, 0
  call void @_ZN5boost9container10deque_implIivLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.1, label %.lr.ph.preheader.2, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.lr.ph.preheader.2:                               ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph.2

.lr.ph.2thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.2
  %.pr = load ptr, ptr %2, align 8, !tbaa !360
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2thread-pre-split, %.lr.ph.preheader.2
  %i.cu = phi ptr [ %.pr, %.lr.ph.2thread-pre-split ], [ null, %.lr.ph.preheader.2 ] ; 2 uses
  %.029.2 = phi i32 [ %i.dc, %.lr.ph.2thread-pre-split ], [ 0, %.lr.ph.preheader.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.029.2, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.2 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2, label %bb.aj, !prof !365

bb.aj:                                            ; preds = %.lr.ph.2
  %i.cv = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.cw = and i64 %i.cv, 255                      ; 2 uses
  %.not11.i.i.2 = icmp eq i64 %i.cw, 255
  br i1 %.not11.i.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.2, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.2: ; preds = %bb.aj
  %i.cx = lshr i64 %i.cv, 8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !362 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.cz, null
  br i1 %.not.i.2, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2, label %bb.ak, !prof !370

bb.ak:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.2
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cw
  store i32 %.029.2, ptr %i.da, align 4, !tbaa !363
  %i.db = add i64 %i.cv, 1
  store i64 %i.db, ptr %i.x, align 8, !tbaa !364
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.2

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.2, %bb.aj, %.lr.ph.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc.2:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.2

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.2: ; preds = %.noexc.2, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.dc = add nuw nsw i32 %.029.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.dc, 100
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph.2thread-pre-split, !llvm.loop !708

._crit_edge.2:                                    ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.2
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container6segtorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.2 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.2: ; preds = %._crit_edge.2
  %i.dd = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.al unwind label %bb.x

bb.al:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.2
  %.not23.2 = icmp eq i32 %i.dd, 0
  call void @_ZN5boost9container10deque_implIivLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.2, label %.lr.ph.preheader.3, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.lr.ph.preheader.3:                               ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph.3

.lr.ph.3thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.3
  %.pr98 = load ptr, ptr %2, align 8, !tbaa !360
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3thread-pre-split, %.lr.ph.preheader.3
  %i.de = phi ptr [ %.pr98, %.lr.ph.3thread-pre-split ], [ null, %.lr.ph.preheader.3 ] ; 2 uses
  %.029.3 = phi i32 [ %i.dm, %.lr.ph.3thread-pre-split ], [ 0, %.lr.ph.preheader.3 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.029.3, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.3 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3, label %bb.am, !prof !365

bb.am:                                            ; preds = %.lr.ph.3
  %i.df = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.dg = and i64 %i.df, 255                      ; 2 uses
  %.not11.i.i.3 = icmp eq i64 %i.dg, 255
  br i1 %.not11.i.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.3, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.3: ; preds = %bb.am
  %i.dh = lshr i64 %i.df, 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !362 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.dj, null
  br i1 %.not.i.3, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3, label %bb.an, !prof !370

bb.an:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.3
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dg
  store i32 %.029.3, ptr %i.dk, align 4, !tbaa !363
  %i.dl = add i64 %i.df, 1
  store i64 %i.dl, ptr %i.x, align 8, !tbaa !364
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.3

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.3, %bb.am, %.lr.ph.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc.3:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.3

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.3: ; preds = %.noexc.3, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.dm = add nuw nsw i32 %.029.3, 1              ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.dm, 1000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3thread-pre-split, !llvm.loop !708

._crit_edge.3:                                    ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.3
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container6segtorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.3 unwind label %bb.x

_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.3: ; preds = %._crit_edge.3
  %i.dn = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ao unwind label %bb.x

bb.ao:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container6segtorIivvEEEEvRT_.exit.3
  %.not23.3 = icmp eq i32 %i.dn, 0
  call void @_ZN5boost9container10deque_implIivLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not23.3, label %.lr.ph.preheader.4, label %_ZN5boost9container4test12test_emplaceINS0_6segtorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.lr.ph.preheader.4:                               ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph.4

.lr.ph.4thread-pre-split:                         ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.4
  %.pr99 = load ptr, ptr %2, align 8, !tbaa !360
  br label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.4thread-pre-split, %.lr.ph.preheader.4
  %i.do = phi ptr [ %.pr99, %.lr.ph.4thread-pre-split ], [ null, %.lr.ph.preheader.4 ] ; 2 uses
  %.029.4 = phi i32 [ %i.dw, %.lr.ph.4thread-pre-split ], [ 0, %.lr.ph.preheader.4 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %.029.4, ptr %i.b, align 4, !tbaa !363
  %.not.i.i.4 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4, label %bb.ap, !prof !365

bb.ap:                                            ; preds = %.lr.ph.4
  %i.dp = load i64, ptr %i.x, align 8, !tbaa !364 ; 3 uses
  %i.dq = and i64 %i.dp, 255                      ; 2 uses
  %.not11.i.i.4 = icmp eq i64 %i.dq, 255
  br i1 %.not11.i.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.4, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.4: ; preds = %bb.ap
  %i.dr = lshr i64 %i.dp, 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !362 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.dt, null
  br i1 %.not.i.4, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4, label %bb.aq, !prof !370

bb.aq:                                            ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dq
  store i32 %.029.4, ptr %i.du, align 4, !tbaa !363
  %i.dv = add i64 %i.dp, 1
  store i64 %i.dv, ptr %i.x, align 8, !tbaa !364
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.4

_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i.4, %bb.ap, %.lr.ph.4
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5boost9container10deque_implIivLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_14deque_iteratorIPiLb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.4:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.4

_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.4: ; preds = %.noexc.4, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.dw = add nuw nsw i32 %.029.4, 1              ; 2 uses
  %exitcond.4.not = icmp eq i32 %i.dw, 10000
  br i1 %exitcond.4.not, label %._crit_edge.4, label %.lr.ph.4thread-pre-split, !llvm.loop !708

._crit_edge.4:                                    ; preds = %_ZN5boost9container10deque_implIivLb1EvE9push_backEOi.exit.4
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container6segtorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %2)
end_hunk_0
