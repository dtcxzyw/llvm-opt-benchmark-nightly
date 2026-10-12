Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/stable_vector_test?download=true
inline.NumInlined: 19302
inline.NumDeleted: 4121
loop-unroll.NumCompletelyUnrolled: 127
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 197
begin_hunk_0_@main:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %.noexc47, %_ZNK5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE6cbeginEv.exit.i67, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.fs = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorIiSaIiEEEEEiv()
  %.not.i = icmp eq i32 %i.fs, 0
  br i1 %.not.i, label %bb.x, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ft = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_11movable_intESaIS4_EEEEEiv()
  %.not1.i = icmp eq i32 %i.ft, 0
  br i1 %.not1.i, label %bb.y, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.fu = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_24movable_and_copyable_intESaIS4_EEEEEiv()
  %.not2.i = icmp eq i32 %i.fu, 0
  br i1 %.not2.i, label %bb.z, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.fv = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_12copyable_intESaIS4_EEEEEiv()
  %.not3.i = icmp eq i32 %i.fv, 0
  br i1 %.not3.i, label %_Z18test_cont_variantsISaIvEEiv.exit, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

_Z18test_cont_variantsISaIvEEiv.exit:             ; preds = %bb.z
  %i.fw = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_17moveconstruct_intESaIS4_EEEEEiv()
  %.not4.i.not = icmp eq i32 %i.fw, 0
  br i1 %.not4.i.not, label %bb.ae, label %_Z18test_cont_variantsISaIvEEiv.exit.thread

_Z18test_cont_variantsISaIvEEiv.exit.thread:      ; preds = %bb.y, %bb.x, %bb.w, %bb.z, %_Z18test_cont_variantsISaIvEEiv.exit
  %i.fx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str, i64 noundef 49) ; 0 uses
  %i.fy = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !134
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 240
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !150 ; 6 uses
  %.not.i.i.i91 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i91, label %bb.aa, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.aa:                                            ; preds = %_Z18test_cont_variantsISaIvEEiv.exit.thread
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_Z18test_cont_variantsISaIvEEiv.exit.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !156
  %.not.i1.i.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i1.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 67
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gd)
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !134
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef signext i8 %i.gk(ptr noundef nonnull align 8 dereferenceable(570) %i.gd, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ab, %bb.ac
  %.0.i.i.i = phi i8 [ %i.gh, %bb.ab ], [ %i.gl, %bb.ac ]
  %i.gm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.gn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gm) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.ad:                                            ; preds = %bb.p, %bb.g, %_ZN5boost9container13stable_vectorI16recursive_vectorvE4swapERS3_.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %common.resume

bb.ae:                                            ; preds = %_Z18test_cont_variantsISaIvEEiv.exit
  %i.gp = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorIiNS0_14node_allocatorIiLm256ELm2EEEEEEEiv()
  %.not.i49 = icmp eq i32 %i.gp, 0
  br i1 %.not.i49, label %bb.af, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gq = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_11movable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEEEEiv()
  %.not1.i51 = icmp eq i32 %i.gq, 0
  br i1 %.not1.i51, label %bb.ag, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.gr = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_24movable_and_copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEEEEiv()
  %.not2.i52 = icmp eq i32 %i.gr, 0
  br i1 %.not2.i52, label %bb.ah, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gs = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_12copyable_intENS0_14node_allocatorIS4_Lm256ELm2EEEEEEEiv()
  %.not3.i53 = icmp eq i32 %i.gs, 0
  br i1 %.not3.i53, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit: ; preds = %bb.ah
  %i.gt = call noundef i32 @_ZN5boost9container4test11vector_testINS0_13stable_vectorINS1_17moveconstruct_intENS0_14node_allocatorIS4_Lm256ELm2EEEEEEEiv()
  %.not4.i54.not = icmp eq i32 %i.gt, 0
  br i1 %.not4.i54.not, label %bb.al, label %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread

_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ah, %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 49) ; 0 uses
  %i.gv = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !134
  %i.gw = getelementptr i8, ptr %i.gv, i64 -24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !150 ; 6 uses
  %.not.i.i.i92 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i92, label %bb.ai, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93

bb.ai:                                            ; preds = %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93: ; preds = %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit.thread
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !156
  %.not.i1.i.i94 = icmp eq i8 %i.hc, 0
  br i1 %.not.i1.i.i94, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 67
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96

bb.ak:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ha)
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !134
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = call noundef signext i8 %i.hh(ptr noundef nonnull align 8 dereferenceable(570) %i.ha, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96: ; preds = %bb.aj, %bb.ak
  %.0.i.i.i95 = phi i8 [ %i.he, %bb.aj ], [ %i.hi, %bb.ak ]
  %i.hj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i95)
  %i.hk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hj) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.al:                                            ; preds = %_Z18test_cont_variantsIN5boost9container14node_allocatorIvLm256ELm2EEEEiv.exit
  %i.hl = call noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_13stable_vectorIiNS1_22default_init_allocatorIiEEEEEEbv()
  br i1 %i.hl, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 24) ; 0 uses
  %i.hn = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !134
  %i.ho = getelementptr i8, ptr %i.hn, i64 -24
  %i.hp = load i64, ptr %i.ho, align 8
  %i.hq = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 240
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !150 ; 6 uses
  %.not.i.i.i97 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i97, label %bb.an, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98

bb.an:                                            ; preds = %bb.am
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98: ; preds = %bb.am
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !156
  %.not.i1.i.i99 = icmp eq i8 %i.hu, 0
  br i1 %.not.i1.i.i99, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 67
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !157
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit101

bb.ap:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hs)
  %i.hx = load ptr, ptr %i.hs, align 8, !tbaa !134
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = call noundef signext i8 %i.hz(ptr noundef nonnull align 8 dereferenceable(570) %i.hs, i8 noundef signext 10), !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit101

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit101: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i100 = phi i8 [ %i.hw, %bb.ao ], [ %i.ia, %bb.ap ]
  %i.ib = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i100)
  %i.ic = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ib) ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.aq:                                            ; preds = %bb.al
  %i.id = call noundef zeroext i1 @_ZN5boost9container4test17test_emplace_backINS0_13stable_vectorINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.id, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit: ; preds = %bb.aq
  %i.ie = call noundef zeroext i1 @_ZN5boost9container4test19test_emplace_beforeINS0_13stable_vectorINS1_10EmplaceIntEvEEEEbNS_11move_detail5bool_ILb1EEE()
  br i1 %i.ie, label %bb.ar, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.ar:                                            ; preds = %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit
  %i.if = call noundef zeroext i1 @_ZN5boost9container4test24test_propagate_allocatorI29boost_container_stable_vectorEEbv()
  br i1 %i.if, label %bb.as, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ig = call noundef zeroext i1 @_ZN5boost9container4test57test_vector_methods_with_initializer_list_as_argument_forINS0_13stable_vectorIivEEEEbv()
  br i1 %i.ig, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.as
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 53) ; 0 uses
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr), !inline_history !6 ; 0 uses
  br label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit: ; preds = %.lr.ph.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 1, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1143 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1143: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 2, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2147 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2147: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 3, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3151 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3151: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 4, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.4 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.4: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 5, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.5 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.5: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 6, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.6 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.6: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 7, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.7 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.7: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 8, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.8 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.8: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 9, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.9 unwind label %.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.9: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container13stable_vectorIivEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit unwind label %bb.au

.loopexit:                                        ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.8, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.7, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.6, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.5, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.4, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3151, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2147, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1143, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit, %.lr.ph.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.1
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.2
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.3
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit135, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit138, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ay

_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit: ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.9
  %i.ih = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit
  %.not29 = icmp eq i32 %i.ih, 0
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not29, label %.lr.ph.preheader.1, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

bb.au:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.3, %._crit_edge.3, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.2, %._crit_edge.2, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.1, %._crit_edge.1, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.9, %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.lr.ph.preheader.1:                               ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1, %.lr.ph.preheader.1
  %.023132.1 = phi i32 [ 0, %.lr.ph.preheader.1 ], [ %i.ij, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.023132.1, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1 unwind label %.loopexit.split-lp.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1: ; preds = %.lr.ph.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ij = add nuw nsw i32 %.023132.1, 1           ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.ij, 100
  br i1 %exitcond.1.not, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !619

._crit_edge.1:                                    ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.1
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container13stable_vectorIivEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.1 unwind label %bb.au

_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.1: ; preds = %._crit_edge.1
  %i.ik = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.av unwind label %bb.au

bb.av:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.1
  %.not29.1 = icmp eq i32 %i.ik, 0
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not29.1, label %.lr.ph.preheader.2, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.lr.ph.preheader.2:                               ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2, %.lr.ph.preheader.2
  %.023132.2 = phi i32 [ 0, %.lr.ph.preheader.2 ], [ %i.il, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.023132.2, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2: ; preds = %.lr.ph.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.il = add nuw nsw i32 %.023132.2, 1           ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.il, 1000
  br i1 %exitcond.2.not, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !619

._crit_edge.2:                                    ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.2
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container13stable_vectorIivEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.2 unwind label %bb.au

_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.2: ; preds = %._crit_edge.2
  %i.im = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.2
  %.not29.2 = icmp eq i32 %i.im, 0
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not29.2, label %.lr.ph.preheader.3, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.lr.ph.preheader.3:                               ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 40, i1 false)
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3, %.lr.ph.preheader.3
  %.023132.3 = phi i32 [ 0, %.lr.ph.preheader.3 ], [ %i.in, %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %.023132.3, ptr %i.a, align 4, !tbaa !126
  invoke void @_ZN5boost9container13stable_vectorIivE14priv_push_backIiEEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3: ; preds = %.lr.ph.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.in = add nuw nsw i32 %.023132.3, 1           ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.in, 10000
  br i1 %exitcond.3.not, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !619

._crit_edge.3:                                    ; preds = %_ZN5boost9container13stable_vectorIivE9push_backEOi.exit.3
  invoke void @_ZN5boost9intrusive4test35test_iterator_random_and_compatibleINS_9container13stable_vectorIivEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.3 unwind label %bb.au

_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.3: ; preds = %._crit_edge.3
  %i.io = invoke noundef i32 @_ZN5boost13report_errorsEv()
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %_ZN5boost9intrusive4test20test_iterator_randomINS_9container13stable_vectorIivEEEEvRT_.exit.3
  %.not29.3 = icmp eq i32 %i.io, 0
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br i1 %.not29.3, label %.thread, label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

.thread:                                          ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 1, ptr %i.b, align 4, !tbaa !126
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 2, ptr %i.ip, align 4, !tbaa !126
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 3, ptr %i.iq, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZNSt6vectorIiSaIiEEC2ESt16initializer_listIiERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr nonnull %i.b, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.az unwind label %bb.bb

bb.ay:                                            ; preds = %bb.au, %.loopexit.split-lp
  %.pn32 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.ii, %bb.au ]
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %common.resume

bb.az:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ir = load ptr, ptr %17, align 8, !tbaa !158
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZN5boost9container13stable_vectorIivEC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEET_SB_RKNS0_13new_allocatorIiEE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr %i.ir, ptr %i.it, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  %i.iu = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !108
  %.not31129 = icmp eq i64 %i.iv, 6
  br i1 %.not31129, label %bb.be, label %bb.bh

bb.bb:                                            ; preds = %.thread
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.bc:                                            ; preds = %bb.az
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.iy = load ptr, ptr %17, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !161
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jd) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.be:                                            ; preds = %bb.ba
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !109 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !110
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !126
  %i.jj = icmp eq i32 %i.ji, 1
  br i1 %i.jj, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !110
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !126
  %i.jo = icmp eq i32 %i.jn, 2
  br i1 %i.jo, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !110
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !126
  %i.jt = icmp ne i32 %i.js, 3
  %spec.select37 = zext i1 %i.jt to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bf, %bb.ba
  %cond1 = phi i32 [ 1, %bb.ba ], [ 1, %bb.be ], [ %spec.select37, %bb.bg ], [ 1, %bb.bf ]
  call void @_ZN5boost9container13stable_vectorIivED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.ju = load ptr, ptr %17, align 8, !tbaa !160  ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIiSaIiEED2Ev.exit60, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jv = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !161
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit60

_ZNSt6vectorIiSaIiEED2Ev.exit60:                  ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bd, %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.iw, %bb.bb ], [ %i.ix, %bb.bc ], [ %i.ix, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %common.resume

_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit.thread: ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.aq, %_ZNSt6vectorIiSaIiEED2Ev.exit60, %._crit_edge, %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit, %bb.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit101, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.5 = phi i32 [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit96 ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit101 ], [ 1, %bb.ar ], [ %cond1, %_ZNSt6vectorIiSaIiEED2Ev.exit60 ], [ 1, %bb.aq ], [ 1, %._crit_edge ], [ 1, %_ZN5boost9container4test12test_emplaceINS0_13stable_vectorINS1_10EmplaceIntEvEELNS1_14EmplaceOptionsE5EEEbv.exit ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.at ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.25", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.25", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.24", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108, !noalias !649
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109, !noalias !649
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110, !noalias !649
  br label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5clearEv.exit

_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !124, !alias.scope !649
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !124, !alias.scope !650
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.24") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !109
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !130    ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !110
  store ptr null, ptr %i.m, align 8, !tbaa !117
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !117
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #24
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !130
  br label %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !119  ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #24
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test19non_copymovable_intEvE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_13stable_vectorIiNS1_22default_init_allocatorIiEEEEEEbv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::stable_vector_iterator.52", align 8 ; 4 uses
  %1 = alloca %"class.boost::container::stable_vector_iterator.51", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.52", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.51", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::stable_vector_detail::clear_on_destroy.307", align 8 ; 6 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator.52", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator.51", align 8 ; 3 uses
  %7 = alloca %"class.boost::container::stable_vector_detail::clear_on_destroy.307", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::stable_vector.302", align 8 ; 12 uses
  %9 = alloca %"class.boost::container::stable_vector.302", align 8 ; 12 uses
  %10 = alloca %"class.boost::container::stable_vector.302", align 8 ; 10 uses
  store i8 0, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE, align 1, !tbaa !157
  store i8 1, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE11s_ascendingE, align 1, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %8, ptr %7, align 8, !tbaa !672
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !167, !alias.scope !673
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE6insertINS0_31default_init_construct_iteratorIiEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.51") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dead_on_return %5, i64 100, i64 0)
          to label %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEEC2EmNS0_14default_init_tE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @_ZN5boost9container20stable_vector_detail16clear_on_destroyINS0_13stable_vectorIiNS0_4test22default_init_allocatorIiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !169
  %.not.i.i5.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i5.i, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.g) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.k, %bb.b, %bb.c, %bb.d, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %i.d, %bb.c ], [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEEC2EmNS0_14default_init_tE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !171, !noalias !674
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEEC2EmNS0_14default_init_tE.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !172, !noalias !674
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !110, !noalias !674
  br label %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader

_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader: ; preds = %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEEC2EmNS0_14default_init_tE.exit, %bb.e
  %.sroa.055.066.ph = phi ptr [ %i.l, %bb.e ], [ %i.c, %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEEC2EmNS0_14default_init_tE.exit ]
  br label %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit

_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit: ; preds = %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader, %bb.g
  %.02667 = phi i64 [ %i.x, %bb.g ], [ 0, %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader ]
  %.sroa.055.066 = phi ptr [ %i.aa, %bb.g ], [ %.sroa.055.066.ph, %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit.preheader ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.055.066, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.055.066, i64 9
  %i.o = load i8, ptr %i.m, align 1, !tbaa !157
  %i.p = load i8, ptr %i.n, align 1, !tbaa !157   ; 2 uses
  %i.q = add i8 %i.p, -1
  %.not10.i = icmp eq i8 %i.o, %i.q
  br i1 %.not10.i, label %bb.f, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.055.066, i64 10
  %i.s = load i8, ptr %i.r, align 1, !tbaa !157   ; 2 uses
  %i.t = add i8 %i.s, -1
  %.not10.1.i = icmp eq i8 %i.p, %i.t
  br i1 %.not10.1.i, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.055.066, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !157
  %i.w = add i8 %i.v, -1
  %.not10.2.i = icmp eq i8 %i.s, %i.w
  br i1 %.not10.2.i, label %bb.g, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

bb.g:                                             ; preds = %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit
  %i.x = add nuw nsw i64 %.02667, 1               ; 2 uses
  %i.y = load ptr, ptr %.sroa.055.066, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110
  %.not = icmp eq i64 %i.x, 100
  br i1 %.not, label %bb.h, label %_ZN5boost9container13stable_vectorIiNS0_4test22default_init_allocatorIiEEE5beginEv.exit, !llvm.loop !657

end_hunk_0
