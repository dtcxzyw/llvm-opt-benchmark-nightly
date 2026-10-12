Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@main:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_11movable_intESaIS4_EvEEEEiv()
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %bb.c, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiv()
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %bb.d, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_12copyable_intESaIS4_EvEEEEiv()
  %.not3.i = icmp eq i32 %i.f, 0
  br i1 %.not3.i, label %bb.e, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_12copyable_intESaIS4_EvEEEEiv()
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_Z18test_cont_variantsISaIvEEiv.exit, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

_Z18test_cont_variantsISaIvEEiv.exit:             ; preds = %bb.e
  %i.h = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_17moveconstruct_intESaIS4_EvEEEEiv()
  %.not5.i.not = icmp eq i32 %i.h, 0
  br i1 %.not5.i.not, label %bb.i, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

_Z18test_cont_variantsISaIvEEiv.exit.thread:      ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %_Z18test_cont_variantsISaIvEEiv.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.7, i64 noundef 49) ; 0 uses
  %i.j = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !277
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !293  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.f:                                             ; preds = %_Z18test_cont_variantsISaIvEEiv.exit.thread
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_Z18test_cont_variantsISaIvEEiv.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !298
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1, !tbaa !299
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o)
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !277
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i8 [ %i.s, %bb.g ], [ %i.w, %bb.h ]
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.i:                                             ; preds = %_Z18test_cont_variantsISaIvEEiv.exit
  %i.z = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEiv()
  %.not.i20 = icmp eq i32 %i.z, 0
  br i1 %.not.i20, label %bb.j, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiv()
  %.not1.i22 = icmp eq i32 %i.aa, 0
  br i1 %.not1.i22, label %bb.k, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiv()
  %.not2.i23 = icmp eq i32 %i.ab, 0
  br i1 %.not2.i23, label %bb.l, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiv()
  %.not3.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not3.i24, label %bb.m, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiv()
  %.not4.i25 = icmp eq i32 %i.ad, 0
  br i1 %.not4.i25, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit: ; preds = %bb.m
  %i.ae = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_8devectorINS1_17moveconstruct_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiv()
  %.not5.i26.not = icmp eq i32 %i.ae, 0
  br i1 %.not5.i26.not, label %bb.q, label %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.m, %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 44) ; 0 uses
  %i.ag = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !277
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !293 ; 6 uses
  %.not.i.i.i37 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i37, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38

bb.n:                                             ; preds = %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38: ; preds = %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !298
  %.not.i1.i.i39 = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !299
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit41

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !277
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit41

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit41: ; preds = %bb.o, %bb.p
  %.0.i.i.i40 = phi i8 [ %i.ap, %bb.o ], [ %i.at, %bb.p ]
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i40)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.q:                                             ; preds = %_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEEEiv.exit
  %i.aw = tail call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_8devectorIiNS1_22default_init_allocatorIiEEvEEEEbv()
  br i1 %i.aw, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.9, i64 noundef 24) ; 0 uses
  %i.ay = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !277
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !293 ; 6 uses
  %.not.i.i.i42 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i42, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43: ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !298
  %.not.i1.i.i44 = icmp eq i8 %i.bf, 0
  br i1 %.not.i1.i.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 67
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !299
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bd)
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !277
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(570) %i.bd, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46: ; preds = %bb.t, %bb.u
  %.0.i.i.i45 = phi i8 [ %i.bh, %bb.t ], [ %i.bl, %bb.u ]
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i45)
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.v:                                             ; preds = %bb.q
  %i.bo = tail call noundef zeroext i1 @_ZN5boost9container4test17test_emplace_backINS0_8devectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.bo, label %bb.w, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bp = tail call noundef zeroext i1 @_ZN5boost9container4test18test_emplace_frontINS0_8devectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.bp, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit: ; preds = %bb.w
  %i.bq = tail call noundef zeroext i1 @_ZN5boost9container4test19test_emplace_beforeINS0_8devectorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.bq, label %bb.x, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.x:                                             ; preds = %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit
  %i.br = tail call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI24boost_container_devectorEEbv()
  br i1 %i.br, label %bb.y, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.bs = tail call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_8devectorIivvEEEEbv()
  br i1 %i.bs, label %bb.z, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

._crit_edge:                                      ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5boost9intrusive4test42test_iterator_bidirectional_and_compatibleINS_9container8devectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %._crit_edge
  %i.bt = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.bu = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load i64, ptr %i.co, align 8, !tbaa !317
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bw
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPiEEvRKT_T0_SA_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.bv, ptr noundef %i.bx)
          to label %.noexc29 unwind label %bb.av

.noexc29:                                         ; preds = %.noexc
  %i.by = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.bz = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load i64, ptr %i.co, align 8, !tbaa !317
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cb
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPKiEEvRKT_T0_SB_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.ca, ptr noundef %i.cc)
          to label %.noexc30 unwind label %bb.av

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.cd = load ptr, ptr %4, align 8, !tbaa !312, !noalias !955 ; 2 uses
  %i.ce = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !955
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  store ptr %i.cf, ptr %0, align 8, !tbaa !336, !alias.scope !955
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.cg = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !956
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cg
  store ptr %i.ch, ptr %1, align 8, !tbaa !336, !alias.scope !956
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPiEEEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %0, ptr noundef nonnull align 8 dead_on_return %1)
          to label %.noexc31 unwind label %bb.av

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.ci = load ptr, ptr %4, align 8, !tbaa !312, !noalias !957 ; 2 uses
  %i.cj = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !957
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  store ptr %i.ck, ptr %2, align 8, !tbaa !338, !alias.scope !957
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.cl = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !958
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cl
  store ptr %i.cm, ptr %3, align 8, !tbaa !338, !alias.scope !958
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPKiEEEEvRKT_T0_SE_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.as unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 17 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 40 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %i.cq = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIivvE9push_backEOi.exit unwind label %.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE9push_backEOi.exit: ; preds = %bb.z
  %.pre = load i64, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %.pre75.a = load i64, ptr %i.co, align 8, !tbaa !317 ; 3 uses
  %.pre76.a = load ptr, ptr %4, align 8, !tbaa !312 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.161 = icmp eq i64 %.pre, %.pre75.a
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre76.a, i64 %.pre75.a ; 2 uses
  br i1 %.not.i.i.161, label %bb.ab, label %bb.aa, !prof !267

bb.aa:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit
  store i32 1, ptr %i.cr, align 4, !tbaa !259
  %i.cs = add i64 %.pre75.a, 1                    ; 2 uses
  store i64 %i.cs, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.164

bb.ab:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit
  %i.ct = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.cr, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge: ; preds = %bb.ab
  %.pre77.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre78.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre79.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.164

_ZN5boost9container8devectorIivvE9push_backEOi.exit.164: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge, %bb.aa
  %i.cu = phi ptr [ %.pre79.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge ], [ %.pre76.a, %bb.aa ] ; 2 uses
  %i.cv = phi i64 [ %.pre78.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge ], [ %i.cs, %bb.aa ] ; 3 uses
  %i.cw = phi i64 [ %.pre77.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.164_crit_edge ], [ %.pre, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 2, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.266 = icmp eq i64 %i.cw, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  br i1 %.not.i.i.266, label %bb.ad, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.164
  store i32 2, ptr %i.cx, align 4, !tbaa !259
  %i.cy = add i64 %i.cv, 1                        ; 2 uses
  store i64 %i.cy, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.269

bb.ad:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.164
  %i.cz = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.cx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge: ; preds = %bb.ad
  %.pre80.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre81.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre82.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.269

_ZN5boost9container8devectorIivvE9push_backEOi.exit.269: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge, %bb.ac
  %i.da = phi ptr [ %.pre82.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge ], [ %i.cu, %bb.ac ] ; 2 uses
  %i.db = phi i64 [ %.pre81.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge ], [ %i.cy, %bb.ac ] ; 3 uses
  %i.dc = phi i64 [ %.pre80.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.269_crit_edge ], [ %i.cw, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 3, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.371 = icmp eq i64 %i.dc, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db ; 2 uses
  br i1 %.not.i.i.371, label %bb.af, label %bb.ae, !prof !267

bb.ae:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.269
  store i32 3, ptr %i.dd, align 4, !tbaa !259
  %i.de = add i64 %i.db, 1                        ; 2 uses
  store i64 %i.de, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.374

bb.af:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.269
  %i.df = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.dd, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge: ; preds = %bb.af
  %.pre83.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre84.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre85.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.374

_ZN5boost9container8devectorIivvE9push_backEOi.exit.374: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge, %bb.ae
  %i.dg = phi ptr [ %.pre85.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge ], [ %i.da, %bb.ae ] ; 2 uses
  %i.dh = phi i64 [ %.pre84.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge ], [ %i.de, %bb.ae ] ; 3 uses
  %i.di = phi i64 [ %.pre83.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.374_crit_edge ], [ %i.dc, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 4, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.4 = icmp eq i64 %i.di, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  br i1 %.not.i.i.4, label %bb.ah, label %bb.ag, !prof !267

bb.ag:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.374
  store i32 4, ptr %i.dj, align 4, !tbaa !259
  %i.dk = add i64 %i.dh, 1                        ; 2 uses
  store i64 %i.dk, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.4

bb.ah:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.374
  %i.dl = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.dj, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge: ; preds = %bb.ah
  %.pre86.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre87.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre88.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.4

_ZN5boost9container8devectorIivvE9push_backEOi.exit.4: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge, %bb.ag
  %i.dm = phi ptr [ %.pre88.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge ], [ %i.dg, %bb.ag ] ; 2 uses
  %i.dn = phi i64 [ %.pre87.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge ], [ %i.dk, %bb.ag ] ; 3 uses
  %i.do = phi i64 [ %.pre86.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.4_crit_edge ], [ %i.di, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 5, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.5 = icmp eq i64 %i.do, %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  br i1 %.not.i.i.5, label %bb.aj, label %bb.ai, !prof !267

bb.ai:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.4
  store i32 5, ptr %i.dp, align 4, !tbaa !259
  %i.dq = add i64 %i.dn, 1                        ; 2 uses
  store i64 %i.dq, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.5

bb.aj:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.4
  %i.dr = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.dp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge: ; preds = %bb.aj
  %.pre89.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre90.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre91.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.5

_ZN5boost9container8devectorIivvE9push_backEOi.exit.5: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge, %bb.ai
  %i.ds = phi ptr [ %.pre91.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge ], [ %i.dm, %bb.ai ] ; 2 uses
  %i.dt = phi i64 [ %.pre90.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge ], [ %i.dq, %bb.ai ] ; 3 uses
  %i.du = phi i64 [ %.pre89.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.5_crit_edge ], [ %i.do, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 6, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.6 = icmp eq i64 %i.du, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  br i1 %.not.i.i.6, label %bb.al, label %bb.ak, !prof !267

bb.ak:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.5
  store i32 6, ptr %i.dv, align 4, !tbaa !259
  %i.dw = add i64 %i.dt, 1                        ; 2 uses
  store i64 %i.dw, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.6

bb.al:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.5
  %i.dx = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.dv, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge: ; preds = %bb.al
  %.pre92.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre93.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre94.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.6

_ZN5boost9container8devectorIivvE9push_backEOi.exit.6: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge, %bb.ak
  %i.dy = phi ptr [ %.pre94.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge ], [ %i.ds, %bb.ak ] ; 2 uses
  %i.dz = phi i64 [ %.pre93.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge ], [ %i.dw, %bb.ak ] ; 3 uses
  %i.ea = phi i64 [ %.pre92.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.6_crit_edge ], [ %i.du, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 7, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.7 = icmp eq i64 %i.ea, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  br i1 %.not.i.i.7, label %bb.an, label %bb.am, !prof !267

bb.am:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.6
  store i32 7, ptr %i.eb, align 4, !tbaa !259
  %i.ec = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ec, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.7

bb.an:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.6
  %i.ed = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.eb, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge: ; preds = %bb.an
  %.pre95.a = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre96.a = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre97.a = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.7

_ZN5boost9container8devectorIivvE9push_backEOi.exit.7: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge, %bb.am
  %i.ee = phi ptr [ %.pre97.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge ], [ %i.dy, %bb.am ] ; 2 uses
  %i.ef = phi i64 [ %.pre96.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge ], [ %i.ec, %bb.am ] ; 3 uses
  %i.eg = phi i64 [ %.pre95.a, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.7_crit_edge ], [ %i.ea, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 8, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.8 = icmp eq i64 %i.eg, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  br i1 %.not.i.i.8, label %bb.ap, label %bb.ao, !prof !267

bb.ao:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.7
  store i32 8, ptr %i.eh, align 4, !tbaa !259
  %i.ei = add i64 %i.ef, 1                        ; 2 uses
  store i64 %i.ei, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.8

bb.ap:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.7
  %i.ej = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.eh, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge unwind label %.loopexit ; 0 uses

._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge: ; preds = %bb.ap
  %.pre98 = load i64, ptr %i.cn, align 8, !tbaa !316
  %.pre99 = load i64, ptr %i.co, align 8, !tbaa !317
  %.pre100 = load ptr, ptr %4, align 8, !tbaa !312
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.8

_ZN5boost9container8devectorIivvE9push_backEOi.exit.8: ; preds = %._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge, %bb.ao
  %i.ek = phi ptr [ %.pre100, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge ], [ %i.ee, %bb.ao ]
  %i.el = phi i64 [ %.pre99, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge ], [ %i.ei, %bb.ao ] ; 3 uses
  %i.em = phi i64 [ %.pre98, %._ZN5boost9container8devectorIivvE9push_backEOi.exit.8_crit_edge ], [ %i.eg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 9, ptr %i.a, align 4, !tbaa !259
  %.not.i.i.9 = icmp eq i64 %i.em, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  br i1 %.not.i.i.9, label %bb.ar, label %bb.aq, !prof !267

bb.aq:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.8
  store i32 9, ptr %i.en, align 4, !tbaa !259
  %i.eo = add i64 %i.el, 1
  store i64 %i.eo, ptr %i.co, align 8, !tbaa !317
  br label %._crit_edge

bb.ar:                                            ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.8
  %i.ep = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.en, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %._crit_edge unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ax
  %lpad.loopexit55 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bc
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit55, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit58, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bl

bb.as:                                            ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eq = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not18 = icmp eq i32 %i.eq, 0
  %i.er = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.er, null
  br i1 %.not.i.i34, label %_ZN5boost9container8devectorIivvED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.es = load i64, ptr %i.cn, align 8, !tbaa !316
  %i.et = shl i64 %i.es, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.et) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit

_ZN5boost9container8devectorIivvED2Ev.exit:       ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not18, label %.lr.ph.preheader.1, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.av:                                            ; preds = %bb.bi, %.noexc31.3, %.noexc30.3, %.noexc29.3, %.noexc.3, %._crit_edge.3, %bb.bd, %.noexc31.2, %.noexc30.2, %.noexc29.2, %.noexc.2, %._crit_edge.2, %bb.ay, %.noexc31.1, %.noexc30.1, %.noexc29.1, %.noexc.1, %._crit_edge.1, %.noexc31, %.noexc30, %.noexc29, %.noexc, %._crit_edge, %bb.as
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.lr.ph.preheader.1:                               ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.1, %.lr.ph.preheader.1
  %.01253.1 = phi i32 [ %i.fc, %_ZN5boost9container8devectorIivvE9push_backEOi.exit.1 ], [ 0, %.lr.ph.preheader.1 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %.01253.1, ptr %i.a, align 4, !tbaa !259
  %i.ev = load i64, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %i.ew = load i64, ptr %i.co, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.1 = icmp eq i64 %i.ev, %i.ew
  %i.ex = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i.i.1, label %bb.ax, label %bb.aw, !prof !267

bb.aw:                                            ; preds = %.lr.ph.1
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ew
  store i32 %.01253.1, ptr %i.ey, align 4, !tbaa !259
  %i.ez = add i64 %i.ew, 1
  store i64 %i.ez, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.1

bb.ax:                                            ; preds = %.lr.ph.1
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ev
  %i.fb = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.fa, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.1 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE9push_backEOi.exit.1: ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fc = add nuw nsw i32 %.01253.1, 1            ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.fc, 100
  br i1 %exitcond.1.not, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !942

._crit_edge.1:                                    ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5boost9intrusive4test42test_iterator_bidirectional_and_compatibleINS_9container8devectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc.1 unwind label %bb.av

.noexc.1:                                         ; preds = %._crit_edge.1
  %i.fd = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.fe = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load i64, ptr %i.co, align 8, !tbaa !317
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.fg
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPiEEvRKT_T0_SA_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.ff, ptr noundef %i.fh)
          to label %.noexc29.1 unwind label %bb.av

.noexc29.1:                                       ; preds = %.noexc.1
  %i.fi = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.fj = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  %i.fl = load i64, ptr %i.co, align 8, !tbaa !317
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fl
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPKiEEvRKT_T0_SB_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.fk, ptr noundef %i.fm)
          to label %.noexc30.1 unwind label %bb.av

.noexc30.1:                                       ; preds = %.noexc29.1
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.fn = load ptr, ptr %4, align 8, !tbaa !312, !noalias !959 ; 2 uses
  %i.fo = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !959
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  store ptr %i.fp, ptr %0, align 8, !tbaa !336, !alias.scope !959
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.fq = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !960
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fq
  store ptr %i.fr, ptr %1, align 8, !tbaa !336, !alias.scope !960
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPiEEEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %0, ptr noundef nonnull align 8 dead_on_return %1)
          to label %.noexc31.1 unwind label %bb.av

.noexc31.1:                                       ; preds = %.noexc30.1
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.fs = load ptr, ptr %4, align 8, !tbaa !312, !noalias !961 ; 2 uses
  %i.ft = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !961
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ft
  store ptr %i.fu, ptr %2, align 8, !tbaa !338, !alias.scope !961
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.fv = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !962
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fv
  store ptr %i.fw, ptr %3, align 8, !tbaa !338, !alias.scope !962
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPKiEEEEvRKT_T0_SE_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.ay unwind label %bb.av

bb.ay:                                            ; preds = %.noexc31.1
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fx = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.az unwind label %bb.av

bb.az:                                            ; preds = %bb.ay
  %.not18.1 = icmp eq i32 %i.fx, 0
  %i.fy = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i34.1 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i34.1, label %_ZN5boost9container8devectorIivvED2Ev.exit.1, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = load i64, ptr %i.cn, align 8, !tbaa !316
  %i.ga = shl i64 %i.fz, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.ga) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit.1

_ZN5boost9container8devectorIivvED2Ev.exit.1:     ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not18.1, label %.lr.ph.preheader.2, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

.lr.ph.preheader.2:                               ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.2, %.lr.ph.preheader.2
  %.01253.2 = phi i32 [ %i.gi, %_ZN5boost9container8devectorIivvE9push_backEOi.exit.2 ], [ 0, %.lr.ph.preheader.2 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %.01253.2, ptr %i.a, align 4, !tbaa !259
  %i.gb = load i64, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %i.gc = load i64, ptr %i.co, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.2 = icmp eq i64 %i.gb, %i.gc
  %i.gd = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i.i.2, label %bb.bc, label %bb.bb, !prof !267

bb.bb:                                            ; preds = %.lr.ph.2
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gc
  store i32 %.01253.2, ptr %i.ge, align 4, !tbaa !259
  %i.gf = add i64 %i.gc, 1
  store i64 %i.gf, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.2

bb.bc:                                            ; preds = %.lr.ph.2
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gb
  %i.gh = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.gg, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE9push_backEOi.exit.2: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gi = add nuw nsw i32 %.01253.2, 1            ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.gi, 1000
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !942

._crit_edge.2:                                    ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5boost9intrusive4test42test_iterator_bidirectional_and_compatibleINS_9container8devectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc.2 unwind label %bb.av

.noexc.2:                                         ; preds = %._crit_edge.2
  %i.gj = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.gk = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gk
  %i.gm = load i64, ptr %i.co, align 8, !tbaa !317
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gm
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPiEEvRKT_T0_SA_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.gl, ptr noundef %i.gn)
          to label %.noexc29.2 unwind label %bb.av

.noexc29.2:                                       ; preds = %.noexc.2
  %i.go = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.gp = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gp
  %i.gr = load i64, ptr %i.co, align 8, !tbaa !317
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gr
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPKiEEvRKT_T0_SB_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.gq, ptr noundef %i.gs)
          to label %.noexc30.2 unwind label %bb.av

.noexc30.2:                                       ; preds = %.noexc29.2
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.gt = load ptr, ptr %4, align 8, !tbaa !312, !noalias !963 ; 2 uses
  %i.gu = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !963
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gu
  store ptr %i.gv, ptr %0, align 8, !tbaa !336, !alias.scope !963
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.gw = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !964
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gw
  store ptr %i.gx, ptr %1, align 8, !tbaa !336, !alias.scope !964
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPiEEEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %0, ptr noundef nonnull align 8 dead_on_return %1)
          to label %.noexc31.2 unwind label %bb.av

.noexc31.2:                                       ; preds = %.noexc30.2
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.gy = load ptr, ptr %4, align 8, !tbaa !312, !noalias !965 ; 2 uses
  %i.gz = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !965
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.gz
  store ptr %i.ha, ptr %2, align 8, !tbaa !338, !alias.scope !965
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.hb = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !966
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hb
  store ptr %i.hc, ptr %3, align 8, !tbaa !338, !alias.scope !966
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPKiEEEEvRKT_T0_SE_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.bd unwind label %bb.av

bb.bd:                                            ; preds = %.noexc31.2
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.hd = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.be unwind label %bb.av

bb.be:                                            ; preds = %bb.bd
  %.not18.2 = icmp eq i32 %i.hd, 0
  %i.he = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i34.2 = icmp eq ptr %i.he, null
  br i1 %.not.i.i34.2, label %_ZN5boost9container8devectorIivvED2Ev.exit.2, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = load i64, ptr %i.cn, align 8, !tbaa !316
  %i.hg = shl i64 %i.hf, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hg) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit.2

_ZN5boost9container8devectorIivvED2Ev.exit.2:     ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not18.2, label %.lr.ph.preheader.3, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

.lr.ph.preheader.3:                               ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.3, %.lr.ph.preheader.3
  %.01253.3 = phi i32 [ %i.ho, %_ZN5boost9container8devectorIivvE9push_backEOi.exit.3 ], [ 0, %.lr.ph.preheader.3 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 %.01253.3, ptr %i.a, align 4, !tbaa !259
  %i.hh = load i64, ptr %i.cn, align 8, !tbaa !316 ; 2 uses
  %i.hi = load i64, ptr %i.co, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.3 = icmp eq i64 %i.hh, %i.hi
  %i.hj = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i.i.3, label %bb.bh, label %bb.bg, !prof !267

bb.bg:                                            ; preds = %.lr.ph.3
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hi
  store i32 %.01253.3, ptr %i.hk, align 4, !tbaa !259
  %i.hl = add i64 %i.hi, 1
  store i64 %i.hl, ptr %i.co, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.3

bb.bh:                                            ; preds = %.lr.ph.3
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hh
  %i.hn = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.hm, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIivvE9push_backEOi.exit.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container8devectorIivvE9push_backEOi.exit.3: ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ho = add nuw nsw i32 %.01253.3, 1            ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.ho, 10000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !942

._crit_edge.3:                                    ; preds = %_ZN5boost9container8devectorIivvE9push_backEOi.exit.3
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5boost9intrusive4test42test_iterator_bidirectional_and_compatibleINS_9container8devectorIivvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %.noexc.3 unwind label %bb.av

.noexc.3:                                         ; preds = %._crit_edge.3
  %i.hp = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.hq = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hq
  %i.hs = load i64, ptr %i.co, align 8, !tbaa !317
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hs
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPiEEvRKT_T0_SA_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.hr, ptr noundef %i.ht)
          to label %.noexc29.3 unwind label %bb.av

.noexc29.3:                                       ; preds = %.noexc.3
  %i.hu = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %i.hv = load i64, ptr %i.cp, align 8, !tbaa !313
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = load i64, ptr %i.co, align 8, !tbaa !317
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hx
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEEPKiEEvRKT_T0_SB_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.hw, ptr noundef %i.hy)
          to label %.noexc30.3 unwind label %bb.av

.noexc30.3:                                       ; preds = %.noexc29.3
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.hz = load ptr, ptr %4, align 8, !tbaa !312, !noalias !967 ; 2 uses
  %i.ia = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !967
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ia
  store ptr %i.ib, ptr %0, align 8, !tbaa !336, !alias.scope !967
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.ic = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !968
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ic
  store ptr %i.id, ptr %1, align 8, !tbaa !336, !alias.scope !968
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPiEEEEvRKT_T0_SD_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %0, ptr noundef nonnull align 8 dead_on_return %1)
          to label %.noexc31.3 unwind label %bb.av

.noexc31.3:                                       ; preds = %.noexc30.3
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ie = load ptr, ptr %4, align 8, !tbaa !312, !noalias !969 ; 2 uses
  %i.if = load i64, ptr %i.co, align 8, !tbaa !317, !noalias !969
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.if
  store ptr %i.ig, ptr %2, align 8, !tbaa !338, !alias.scope !969
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.ih = load i64, ptr %i.cp, align 8, !tbaa !313, !noalias !970
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ih
  store ptr %i.ii, ptr %3, align 8, !tbaa !338, !alias.scope !970
  invoke void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container8devectorIivvEENS_7movelib16reverse_iteratorIPKiEEEEvRKT_T0_SE_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.bi unwind label %bb.av

bb.bi:                                            ; preds = %.noexc31.3
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ij = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.bj unwind label %bb.av

bb.bj:                                            ; preds = %bb.bi
  %.not18.3 = icmp eq i32 %i.ij, 0
  %i.ik = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i34.3 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i34.3, label %_ZN5boost9container8devectorIivvED2Ev.exit.3, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = load i64, ptr %i.cn, align 8, !tbaa !316
  %i.im = shl i64 %i.il, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.im) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit.3

_ZN5boost9container8devectorIivvED2Ev.exit.3:     ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %.not18.3, label %.thread, label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

.thread:                                          ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit.3
  %i.in = call noundef i32 @_ZN5boost13report_errorsEv()
  br label %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread

bb.bl:                                            ; preds = %bb.av, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.eu, %bb.av ]
  %i.io = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.io, null
  br i1 %.not.i.i35, label %_ZN5boost9container8devectorIivvED2Ev.exit36, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ip = load i64, ptr %i.cn, align 8, !tbaa !316
  %i.iq = shl i64 %i.ip, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.iq) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit36

_ZN5boost9container8devectorIivvED2Ev.exit36:     ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit.thread: ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit, %_ZN5boost9container8devectorIivvED2Ev.exit.1, %_ZN5boost9container8devectorIivvED2Ev.exit.2, %_ZN5boost9container8devectorIivvED2Ev.exit.3, %bb.w, %bb.v, %.thread, %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit, %bb.x, %bb.y, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit41, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.4 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit41 ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit46 ], [ %i.in, %.thread ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %_ZN5boost9container4test12test_emplaceINS0_8devectorINS1_10EmplaceIntEvvEELNS1_14EmplaceOptionsE7EEEbv.exit ], [ 1, %bb.y ], [ 1, %bb.v ], [ 1, %_ZN5boost9container8devectorIivvED2Ev.exit.3 ], [ 1, %_ZN5boost9container8devectorIivvED2Ev.exit.2 ], [ 1, %_ZN5boost9container8devectorIivvED2Ev.exit.1 ], [ 1, %_ZN5boost9container8devectorIivvED2Ev.exit ]
  ret i32 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_8devectorIiNS1_22default_init_allocatorIiEEvEEEEbv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::devector.472", align 8 ; 8 uses
  store i8 0, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE, align 1, !tbaa !299
  store i8 1, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE11s_ascendingE, align 1, !tbaa !339
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znam(i64 noundef 400) #29 ; 53 uses
  %i.b = load i8, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE11s_ascendingE, align 1, !tbaa !339, !range !340, !noundef !269
  %i.c = trunc nuw i8 %i.b to i1
  %_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE.promoted20.i.i.i.i.i = load i8, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE, align 1 ; 4 uses
  %i.d = xor i8 %_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE.promoted20.i.i.i.i.i, -128 ; 2 uses
  %broadcast.splatinsert129 = insertelement <16 x i8> poison, i8 %_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE.promoted20.i.i.i.i.i, i64 0
  %broadcast.splat130 = shufflevector <16 x i8> %broadcast.splatinsert129, <16 x i8> poison, <16 x i32> zeroinitializer ; 46 uses
  br i1 %i.c, label %vector.body131, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.e = add <16 x i8> %broadcast.splat130, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15> ; 2 uses
  %step.add = add <16 x i8> %broadcast.splat130, <i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> %i.e, ptr %i.a, align 1, !tbaa !299
  store <16 x i8> %step.add, ptr %i.f, align 1, !tbaa !299
  %vec.ind.next = add <16 x i8> %broadcast.splat130, <i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47>
  %step.add.1 = add <16 x i8> %broadcast.splat130, <i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> %vec.ind.next, ptr %i.g, align 1, !tbaa !299
  store <16 x i8> %step.add.1, ptr %i.h, align 1, !tbaa !299
  %vec.ind.next.1 = add <16 x i8> %broadcast.splat130, <i8 -64, i8 -65, i8 -66, i8 -67, i8 -68, i8 -69, i8 -70, i8 -71, i8 -72, i8 -73, i8 -74, i8 -75, i8 -76, i8 -77, i8 -78, i8 -79>
  %step.add.2 = add <16 x i8> %broadcast.splat130, <i8 -80, i8 -81, i8 -82, i8 -83, i8 -84, i8 -85, i8 -86, i8 -87, i8 -88, i8 -89, i8 -90, i8 -91, i8 -92, i8 -93, i8 -94, i8 -95>
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> %vec.ind.next.1, ptr %i.i, align 1, !tbaa !299
  store <16 x i8> %step.add.2, ptr %i.j, align 1, !tbaa !299
  %vec.ind.next.2 = add <16 x i8> %broadcast.splat130, <i8 -96, i8 -97, i8 -98, i8 -99, i8 -100, i8 -101, i8 -102, i8 -103, i8 -104, i8 -105, i8 -106, i8 -107, i8 -108, i8 -109, i8 -110, i8 -111>
  %step.add.3 = add <16 x i8> %broadcast.splat130, <i8 -112, i8 -113, i8 -114, i8 -115, i8 -116, i8 -117, i8 -118, i8 -119, i8 -120, i8 -121, i8 -122, i8 -123, i8 -124, i8 -125, i8 -126, i8 -127>
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> %vec.ind.next.2, ptr %i.k, align 1, !tbaa !299
  store <16 x i8> %step.add.3, ptr %i.l, align 1, !tbaa !299
  %vec.ind.next.3 = add <16 x i8> %broadcast.splat130, <i8 -128, i8 127, i8 126, i8 125, i8 124, i8 123, i8 122, i8 121, i8 120, i8 119, i8 118, i8 117, i8 116, i8 115, i8 114, i8 113>
  %step.add.4 = add <16 x i8> %broadcast.splat130, <i8 112, i8 111, i8 110, i8 109, i8 108, i8 107, i8 106, i8 105, i8 104, i8 103, i8 102, i8 101, i8 100, i8 99, i8 98, i8 97>
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> %vec.ind.next.3, ptr %i.m, align 1, !tbaa !299
  store <16 x i8> %step.add.4, ptr %i.n, align 1, !tbaa !299
  %vec.ind.next.4 = add <16 x i8> %broadcast.splat130, <i8 96, i8 95, i8 94, i8 93, i8 92, i8 91, i8 90, i8 89, i8 88, i8 87, i8 86, i8 85, i8 84, i8 83, i8 82, i8 81>
  %step.add.5 = add <16 x i8> %broadcast.splat130, <i8 80, i8 79, i8 78, i8 77, i8 76, i8 75, i8 74, i8 73, i8 72, i8 71, i8 70, i8 69, i8 68, i8 67, i8 66, i8 65>
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> %vec.ind.next.4, ptr %i.o, align 1, !tbaa !299
  store <16 x i8> %step.add.5, ptr %i.p, align 1, !tbaa !299
  %vec.ind.next.5 = add <16 x i8> %broadcast.splat130, <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49>
  %step.add.6 = add <16 x i8> %broadcast.splat130, <i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33>
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> %vec.ind.next.5, ptr %i.q, align 1, !tbaa !299
  store <16 x i8> %step.add.6, ptr %i.r, align 1, !tbaa !299
  %vec.ind.next.6 = add <16 x i8> %broadcast.splat130, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17>
  %step.add.7 = add <16 x i8> %broadcast.splat130, <i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> %vec.ind.next.6, ptr %i.s, align 1, !tbaa !299
  store <16 x i8> %step.add.7, ptr %i.t, align 1, !tbaa !299
  %step.add.8 = add <16 x i8> %broadcast.splat130, <i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <16 x i8> %i.e, ptr %i.u, align 1, !tbaa !299
  store <16 x i8> %step.add.8, ptr %i.v, align 1, !tbaa !299
  %vec.ind.next.8 = add <16 x i8> %broadcast.splat130, <i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47>
  %step.add.9 = add <16 x i8> %broadcast.splat130, <i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
end_hunk_0
