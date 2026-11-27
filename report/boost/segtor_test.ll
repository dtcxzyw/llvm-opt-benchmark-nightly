Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/segtor_test?download=true
inline.NumInlined: 19147
inline.NumDeleted: 3756
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 812
loop-unroll.NumUnrolled: 1099
begin_hunk_0_@_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE19prot_allocate_nodesEPPim:bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store <16 x i8> %vec.ind.next.30, ptr %i.dy, align 1, !tbaa !399
  store <16 x i8> %step.add.31, ptr %i.dz, align 1, !tbaa !399
  br label %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit

_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit: ; preds = %vector.body37, %vector.body
  %i.ea = getelementptr inbounds [8 x i8], ptr %1, i64 %.01316
  store ptr %i.a, ptr %i.ea, align 8, !tbaa !362
  %i.eb = add nuw i64 %.01316, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16479

bb.b:                                             ; preds = %.lr.ph
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  %i.ee = tail call ptr @__cxa_begin_catch(ptr %i.ed) #22 ; 0 uses
  %.not21 = icmp eq i64 %.01316, 0
  br i1 %.not21, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit, %bb.b
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

.lr.ph19:                                         ; preds = %bb.b, %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit
  %.017 = phi i64 [ %i.ei, %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit ], [ 0, %bb.b ] ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %1, i64 %.017
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !362 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph19
  tail call void @_ZdaPv(ptr noundef nonnull %i.eg) #25
  br label %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit

_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE20prot_deallocate_nodeEPi.exit: ; preds = %.lr.ph19, %bb.c
  %i.ei = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond26.not = icmp eq i64 %i.ei, %.01316
  br i1 %exitcond26.not, label %._crit_edge20, label %.lr.ph19, !llvm.loop !16480

bb.d:                                             ; preds = %._crit_edge20
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ej

._crit_edge:                                      ; preds = %_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit, %bb.a
  ret void

bb.f:                                             ; preds = %bb.d
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  tail call void @__clang_call_terminate(ptr %i.el) #23
  unreachable

bb.g:                                             ; preds = %._crit_edge20
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 3 uses
  %1 = alloca %"struct.boost::container::dtl::insert_nonmovable_emplace_proxy.395", align 8 ; 9 uses
  %2 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 3 uses
  %3 = alloca %"struct.boost::container::dtl::insert_nonmovable_emplace_proxy.392", align 8 ; 8 uses
  %4 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 3 uses
  %5 = alloca %"struct.boost::container::dtl::insert_nonmovable_emplace_proxy.389", align 8 ; 7 uses
  %6 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 3 uses
  %7 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator.380", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::segtor.374", align 8 ; 23 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 7 uses
  %i.o = alloca i32, align 4                      ; 7 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.53, i64 noundef 27) ; 0 uses
  %i.q = load ptr, ptr @_ZSt4cout, align 8, !tbaa !378
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !393  ; 6 uses
  %.not.i.i.i183 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i183, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !398
  %.not.i1.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 67
  %i.z = load i8, ptr %i.y, align 1, !tbaa !399
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.v)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !378
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef signext i8 %i.ac(ptr noundef nonnull align 8 dereferenceable(570) %i.v, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.z, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) ; 5 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.54, i64 noundef 9) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @_ZTSN5boost9container6segtorINS0_4test10EmplaceIntEvvEE, i64 noundef 51) ; 0 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !378
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !393 ; 6 uses
  %.not.i.i.i184 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i184, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !398
  %.not.i1.i.i186 = icmp eq i8 %i.ap, 0
  br i1 %.not.i1.i.i186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !399
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit188

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i185
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !378
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10), !inline_history !2
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit188

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit188: ; preds = %bb.f, %bb.g
  %.0.i.i.i187 = phi i8 [ %i.ar, %bb.f ], [ %i.av, %bb.g ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext %.0.i.i.i187)
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) ; 0 uses
  %i.ay = load atomic i8, ptr @_ZGVZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.h, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i, !prof !372

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit188
  %i.ba = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #22
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 264), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 308), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 352), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 396), i8 0, i64 20, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected) #22
  br label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit188, %bb.h, %.preheader.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !649
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), i8 0, i64 16, i1 false)
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !363
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !650
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS3_EEJEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i
  %i.bb = load ptr, ptr %8, align 8, !tbaa !654
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !657 ; 5 uses
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  %i.bf = load ptr, ptr %9, align 8, !tbaa !658   ; 4 uses
  %i.bg = lshr i64 %i.be, 5
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !659
  %i.bj = and i64 %i.be, 31
  %i.bk = getelementptr inbounds nuw [44 x i8], ptr %i.bi, i64 %i.bj
  %.not16 = icmp eq ptr %i.bb, %i.bk
  %.pre283 = and i64 %i.bd, 31                    ; 3 uses
  br i1 %.not16, label %.critedge.thread, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i: ; preds = %bb.i
  %i.bl = icmp eq i64 %i.bd, 0
  br i1 %i.bl, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182, label %.preheader35.i

.preheader35.i:                                   ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i
  %i.bm = lshr i64 %i.bd, 5
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !659, !noalias !16559
  %i.bp = getelementptr inbounds nuw [44 x i8], ptr %i.bo, i64 %.pre283
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !659, !noalias !16560 ; 6 uses
  %.not3341.i = icmp eq ptr %i.bq, %i.bp
  br i1 %.not3341.i, label %.critedge.thread, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %.preheader35.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !649
  %i.bs = load i32, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !649
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.j, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.j:                                             ; preds = %.lr.ph46.i.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !660
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !660
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.k, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !661
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !661
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !662
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !662
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i: ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !650
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !650
  %.not34.i = icmp eq i32 %i.ch, %i.ci
  br i1 %.not34.i, label %.critedge.thread, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

.critedge.thread:                                 ; preds = %bb.i, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i, %.preheader35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !363
  %.not11.i.i24 = icmp eq i64 %.pre283, 31
  br i1 %.not11.i.i24, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i28, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i25, !prof !365

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i25: ; preds = %.critedge.thread
  %i.cj = lshr i64 %i.bd, 5
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !659 ; 2 uses
  %.not.i26 = icmp eq ptr %i.cl, null
  br i1 %.not.i26, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i28, label %bb.m, !prof !370

bb.m:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i25
  %i.cm = getelementptr inbounds nuw [44 x i8], ptr %i.cl, i64 %.pre283 ; 3 uses
  store i32 1, ptr %i.cm, align 4, !tbaa !649
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.co = load i64, ptr %i.bc, align 8, !tbaa !657
  %i.cp = add i64 %i.co, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.bc, align 8, !tbaa !657
  br label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i28: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.i25, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS3_EEJiEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc29 unwind label %bb.t

.noexc29:                                         ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread.i28
  %i.cq = load ptr, ptr %7, align 8, !tbaa !654
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.pr = load i64, ptr %i.bc, align 8, !tbaa !657
  br label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit: ; preds = %.noexc29, %bb.m
  %i.cr = phi i64 [ %.pr, %.noexc29 ], [ %i.cp, %bb.m ] ; 7 uses
  %.0.i27 = phi ptr [ %i.cq, %.noexc29 ], [ %i.cm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cs = add i64 %i.cr, -1                       ; 2 uses
  %i.ct = load ptr, ptr %9, align 8, !tbaa !658   ; 4 uses
  %i.cu = lshr i64 %i.cs, 5
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !659
  %i.cx = and i64 %i.cs, 31
  %i.cy = getelementptr inbounds nuw [44 x i8], ptr %i.cw, i64 %i.cx
  %.not17 = icmp eq ptr %.0.i27, %i.cy
  br i1 %.not17, label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit..critedge22.thread_crit_edge, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i32

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit..critedge22.thread_crit_edge: ; preds = %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit
  %.pre = and i64 %i.cr, 31
  br label %.critedge22.thread

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i32: ; preds = %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE12emplace_backIJiEEERS3_DpOT_.exit
  %i.cz = lshr i64 %i.cr, 5
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !659, !noalias !16561
  %i.dc = and i64 %i.cr, 31                       ; 4 uses
  %i.dd = getelementptr inbounds nuw [44 x i8], ptr %i.db, i64 %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.cr, 2
  br i1 %i.de, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182, label %.preheader35.i35

.preheader35.i35:                                 ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i32
  %i.df = load ptr, ptr %i.ct, align 8, !tbaa !659, !noalias !16562 ; 11 uses
  %.not3341.i36 = icmp eq ptr %i.df, %i.dd
  br i1 %.not3341.i36, label %.critedge22.thread, label %.lr.ph46.i37.preheader

.lr.ph46.i37.preheader:                           ; preds = %.preheader35.i35
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !649
  %i.dh = load i32, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !649
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.n, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.n:                                             ; preds = %.lr.ph46.i37.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !660
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !660
  %i.dm = icmp eq i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.o, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.o:                                             ; preds = %bb.n
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !661
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !661
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.p, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.p:                                             ; preds = %bb.o
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !662
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !662
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i44, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i44: ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !650
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !650
  %.not34.i45 = icmp eq i32 %i.dw, %i.dx
  br i1 %.not34.i45, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i46, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i46: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i44
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 44 ; 2 uses
  %.not33.i50 = icmp eq ptr %i.dy, %i.dd
  br i1 %.not33.i50, label %.critedge22.thread, label %.lr.ph46.i37.1

.lr.ph46.i37.1:                                   ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i46
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !649
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !649
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.q, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.q:                                             ; preds = %.lr.ph46.i37.1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !660
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !660
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.r, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.r:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !661
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !661
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.s, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !662
  %i.em = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test17test_emplace_backINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !662
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i44.1, label %_ZN5boost9container4test23test_expected_containerINS0_6segtorINS1_10EmplaceIntEvvEEEENS_11move_detail11enable_if_cIXntsr5boost9container3dtl7is_pairINT_10value_typeEEE5valueEbE4typeERKS8_PKS4_jj.exit182
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEE:bb.a
  br label %bb.bb

bb.r:                                             ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bb

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE4cendEv.exit28: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1, %.preheader35.i, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i.thread
  %.sroa.5.0.i26 = phi ptr [ null, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i.thread ], [ %i.cl, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i ], [ %i.cl, %.preheader35.i ], [ %i.cl, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ]
  %.sroa.0.0.i27 = phi ptr [ null, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i.thread ], [ %i.co, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i ], [ %i.co, %.preheader35.i ], [ %i.co, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ]
  store ptr %.sroa.0.0.i27, ptr %5, align 8, !tbaa !665, !alias.scope !16724
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.5.0.i26, ptr %i.ef, align 8, !tbaa !666, !alias.scope !16724
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %5)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE4cendEv.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.eg = load ptr, ptr %0, align 8, !tbaa !658, !noalias !16725 ; 22 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.eg, null
  %.phi.trans.insert.i51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i52 = load i64, ptr %.phi.trans.insert.i51, align 8, !tbaa !657 ; 23 uses
  br i1 %.not.i.i.i.i29, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31.thread, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31: ; preds = %bb.s
  %i.eh = lshr i64 %.pre.i52, 5
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !659, !noalias !16726
  %i.ek = and i64 %.pre.i52, 31
  %i.el = getelementptr inbounds nuw [44 x i8], ptr %i.ej, i64 %i.ek ; 3 uses
  %i.em = icmp ult i64 %.pre.i52, 3
  br i1 %i.em, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2, label %.preheader35.i34

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31.thread: ; preds = %bb.s
  %i.en = icmp ult i64 %.pre.i52, 3
  br i1 %i.en, label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit.thread, label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit.thread419

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit.thread419: ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit58

.preheader35.i34:                                 ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !659, !noalias !16725 ; 16 uses
  %.not3341.i35 = icmp eq ptr %i.eo, %i.el
  br i1 %.not3341.i35, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2, label %.lr.ph46.i36.preheader

.lr.ph46.i36.preheader:                           ; preds = %.preheader35.i34
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !649
  %i.eq = load i32, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !649
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.t, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.t:                                             ; preds = %.lr.ph46.i36.preheader
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !660
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !660
  %i.ev = icmp eq i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.u, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.u:                                             ; preds = %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !661
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !661
  %i.ez = icmp eq i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.v, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !662
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 12), align 4, !tbaa !662
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43: ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !650
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 16), align 16, !tbaa !650
  %.not34.i44 = icmp eq i32 %i.ff, %i.fg
  br i1 %.not34.i44, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 44 ; 2 uses
  %.not33.i49 = icmp eq ptr %i.fh, %i.el
  br i1 %.not33.i49, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2, label %.lr.ph46.i36.1

.lr.ph46.i36.1:                                   ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !649
  %i.fj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !649
  %i.fk = icmp eq i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.w, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.w:                                             ; preds = %.lr.ph46.i36.1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !660
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), align 16, !tbaa !660
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.x, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !661
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 52), align 4, !tbaa !661
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.y, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.y:                                             ; preds = %bb.x
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !662
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 56), align 8, !tbaa !662
  %i.fw = icmp eq i32 %i.fu, %i.fv
  br i1 %i.fw, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1: ; preds = %bb.y
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 60
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !650
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 60), align 4, !tbaa !650
  %.not34.i44.1 = icmp eq i32 %i.fy, %i.fz
  br i1 %.not34.i44.1, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.eo, i64 88 ; 2 uses
  %.not33.i49.1 = icmp eq ptr %i.ga, %i.el
  br i1 %.not33.i49.1, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2, label %.lr.ph46.i36.2

.lr.ph46.i36.2:                                   ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !649
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !649
  %i.gd = icmp eq i32 %i.gb, %i.gc
  br i1 %i.gd, label %bb.z, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.z:                                             ; preds = %.lr.ph46.i36.2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eo, i64 92
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !660
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 92), align 4, !tbaa !660
  %i.gh = icmp eq i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.aa, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.aa:                                            ; preds = %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !661
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 96), align 16, !tbaa !661
  %i.gl = icmp eq i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ab, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.ab:                                            ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 100
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !662
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 100), align 4, !tbaa !662
  %i.gp = icmp eq i32 %i.gn, %i.go
  br i1 %i.gp, label %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2: ; preds = %bb.ab
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 104
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !650
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !650
  %.not34.i44.2 = icmp eq i32 %i.gr, %i.gs
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2

bb.ac:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE4cendEv.exit28
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.bb

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2: ; preds = %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45, %.preheader35.i34, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i, %bb.u, %bb.v, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43, %bb.t, %.lr.ph46.i36.preheader, %.lr.ph46.i36.1, %bb.w, %bb.x, %bb.y, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1, %.lr.ph46.i36.2, %bb.z, %bb.aa, %bb.ab, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1, %bb.p, %bb.o, %bb.n, %.lr.ph46.i.1, %bb.l, %bb.m, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i, %bb.k, %.lr.ph46.i.preheader
  %.ph = phi i64 [ %.pre.i, %.lr.ph46.i.preheader ], [ %.pre.i, %bb.k ], [ %.pre.i, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i ], [ %.pre.i, %bb.m ], [ %.pre.i, %bb.l ], [ %.pre.i, %.lr.ph46.i.1 ], [ %.pre.i, %bb.n ], [ %.pre.i, %bb.o ], [ %.pre.i, %bb.p ], [ %.pre.i, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ], [ %.pre.i52, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1 ], [ %.pre.i52, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45 ], [ %.pre.i52, %.preheader35.i34 ], [ %.pre.i52, %bb.u ], [ %.pre.i52, %bb.v ], [ %.pre.i52, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43 ], [ %.pre.i52, %bb.t ], [ %.pre.i52, %.lr.ph46.i36.preheader ], [ %.pre.i52, %.lr.ph46.i36.1 ], [ %.pre.i52, %bb.w ], [ %.pre.i52, %bb.x ], [ %.pre.i52, %bb.y ], [ %.pre.i52, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1 ], [ %.pre.i52, %.lr.ph46.i36.2 ], [ %.pre.i52, %bb.z ], [ %.pre.i52, %bb.aa ], [ %.pre.i52, %bb.ab ], [ %.pre.i52, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2 ], [ %.pre.i52, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31 ], [ %.pre.i, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i ]
  %.ph415 = phi ptr [ %i.cj, %.lr.ph46.i.preheader ], [ %i.cj, %bb.k ], [ %i.cj, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i ], [ %i.cj, %bb.m ], [ %i.cj, %bb.l ], [ %i.cj, %.lr.ph46.i.1 ], [ %i.cj, %bb.n ], [ %i.cj, %bb.o ], [ %i.cj, %bb.p ], [ %i.cj, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ], [ %i.eg, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1 ], [ %i.eg, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45 ], [ %i.eg, %.preheader35.i34 ], [ %i.eg, %bb.u ], [ %i.eg, %bb.v ], [ %i.eg, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43 ], [ %i.eg, %bb.t ], [ %i.eg, %.lr.ph46.i36.preheader ], [ %i.eg, %.lr.ph46.i36.1 ], [ %i.eg, %bb.w ], [ %i.eg, %bb.x ], [ %i.eg, %bb.y ], [ %i.eg, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1 ], [ %i.eg, %.lr.ph46.i36.2 ], [ %i.eg, %bb.z ], [ %i.eg, %bb.aa ], [ %i.eg, %bb.ab ], [ %i.eg, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2 ], [ %i.eg, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31 ], [ %i.cj, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i ] ; 2 uses
  %.ph416 = phi i1 [ false, %.lr.ph46.i.preheader ], [ false, %bb.k ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i ], [ false, %bb.m ], [ false, %bb.l ], [ false, %.lr.ph46.i.1 ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i.1 ], [ true, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.1 ], [ true, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45 ], [ true, %.preheader35.i34 ], [ false, %bb.u ], [ false, %bb.v ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43 ], [ false, %bb.t ], [ false, %.lr.ph46.i36.preheader ], [ false, %.lr.ph46.i36.1 ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.y ], [ false, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.1 ], [ false, %.lr.ph46.i36.2 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ %.not34.i44.2, %_ZN5boost9container4testneERKNS1_10EmplaceIntES4_.exit.i43.2 ], [ false, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31 ], [ false, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i ]
  %i.gu = lshr i64 %.ph, 2
  %.idx.i.i.i = and i64 %i.gu, 4611686018427387896
  %i.gv = getelementptr inbounds nuw i8, ptr %.ph415, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2
  %.06.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i ], [ %.ph415, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb1ELj0ELj0EmEppEv.exit23.i45.2 ] ; 3 uses
  %i.gw = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !659
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef 1408) #22
  %i.gx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gy = icmp ult ptr %.06.i.i.i.i, %i.gv
  br i1 %i.gy, label %.lr.ph.i.i.i.i, label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit, !llvm.loop !317

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit.thread: ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i.thread, %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i31.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %bb.er

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit: ; preds = %.lr.ph.i.i.i.i
  %i.gz = load ptr, ptr %0, align 8, !tbaa !658
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !663
  %i.hc = shl i64 %i.hb, 3
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br i1 %.ph416, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit58, label %bb.er

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit58: ; preds = %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit.thread419, %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i8 0, i64 20, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 44), align 4, !tbaa !649
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 48), i8 0, i64 16, i1 false)
  store <4 x i32> <i32 1, i32 2, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 88), align 8, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 104), align 8, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 132), align 4, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 148), align 4, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 176), align 16, !tbaa !363
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 192), align 16, !tbaa !650
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 220), align 4, !tbaa !363
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 236), align 4, !tbaa !650
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 2, ptr %i.c, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 3, ptr %i.d, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 4, ptr %i.e, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 5, ptr %i.f, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJiiiiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.ad unwind label %bb.bc

bb.ad:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !16727)
  %i.hd = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16728 ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i59, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit62, label %.split.i.i.i60

.split.i.i.i60:                                   ; preds = %bb.ad
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !659, !noalias !16728
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit62

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit62: ; preds = %bb.ad, %.split.i.i.i60
  %.sroa.0.0.i61 = phi ptr [ %i.he, %.split.i.i.i60 ], [ null, %bb.ad ]
  store ptr %.sroa.0.0.i61, ptr %10, align 8, !tbaa !665, !alias.scope !16727
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !666, !alias.scope !16727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 1, ptr %i.g, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 2, ptr %i.h, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i32 3, ptr %i.i, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  store i32 4, ptr %i.j, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJiiiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.ae unwind label %bb.bd

bb.ae:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !16729)
  %i.hg = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16730 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i63, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit66, label %.split.i.i.i64

.split.i.i.i64:                                   ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !659, !noalias !16730
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit66

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit66: ; preds = %bb.ae, %.split.i.i.i64
  %.sroa.0.0.i65 = phi ptr [ %i.hh, %.split.i.i.i64 ], [ null, %bb.ae ]
  store ptr %.sroa.0.0.i65, ptr %12, align 8, !tbaa !665, !alias.scope !16729
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.hg, ptr %i.hi, align 8, !tbaa !666, !alias.scope !16729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i32 1, ptr %i.k, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i32 2, ptr %i.l, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  store i32 3, ptr %i.m, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJiiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.m)
          to label %bb.af unwind label %bb.be

bb.af:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit66
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !16731)
  %i.hj = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16732 ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i67, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit70, label %.split.i.i.i68

.split.i.i.i68:                                   ; preds = %bb.af
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !659, !noalias !16732
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit70

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit70: ; preds = %bb.af, %.split.i.i.i68
  %.sroa.0.0.i69 = phi ptr [ %i.hk, %.split.i.i.i68 ], [ null, %bb.af ]
  store ptr %.sroa.0.0.i69, ptr %14, align 8, !tbaa !665, !alias.scope !16731
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !666, !alias.scope !16731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  store i32 1, ptr %i.n, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #22
  store i32 2, ptr %i.o, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJiiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %bb.ag unwind label %bb.bf

bb.ag:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !16733)
  %i.hm = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16734 ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i71, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit74, label %.split.i.i.i72

.split.i.i.i72:                                   ; preds = %bb.ag
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !659, !noalias !16734
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit74

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit74: ; preds = %bb.ag, %.split.i.i.i72
  %.sroa.0.0.i73 = phi ptr [ %i.hn, %.split.i.i.i72 ], [ null, %bb.ag ]
  store ptr %.sroa.0.0.i73, ptr %16, align 8, !tbaa !665, !alias.scope !16733
  %i.ho = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !666, !alias.scope !16733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #22
  store i32 1, ptr %i.p, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJiEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 4 dereferenceable(4) %i.p)
          to label %bb.ah unwind label %bb.bg

bb.ah:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !16735)
  %i.hp = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16736 ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i75, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit78, label %.split.i.i.i76

.split.i.i.i76:                                   ; preds = %bb.ah
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !659, !noalias !16736
  br label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit78

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit78: ; preds = %bb.ah, %.split.i.i.i76
  %.sroa.0.0.i77 = phi ptr [ %i.hq, %.split.i.i.i76 ], [ null, %bb.ah ]
  store ptr %.sroa.0.0.i77, ptr %18, align 8, !tbaa !665, !alias.scope !16735
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.hp, ptr %i.hr, align 8, !tbaa !666, !alias.scope !16735
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE7emplaceIJEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEENS6_IS7_Lb1ELj0ELj0EmEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.380") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dead_on_return %18)
          to label %bb.ai unwind label %bb.bh

bb.ai:                                            ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE6cbeginEv.exit78
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.hs = load ptr, ptr %7, align 8, !tbaa !658, !noalias !16737 ; 6 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.hs, null       ; 2 uses
  %.phi.trans.insert.i101 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre.i102 = load i64, ptr %.phi.trans.insert.i101, align 8, !tbaa !657 ; 5 uses
  br i1 %.not.i.i.i.i79, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i81.thread, label %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i81

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i81: ; preds = %bb.ai
  %i.ht = lshr i64 %.pre.i102, 5
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !659, !noalias !16738
  %i.hw = and i64 %.pre.i102, 31
  %i.hx = getelementptr inbounds nuw [44 x i8], ptr %i.hv, i64 %i.hw ; 6 uses
  %i.hy = icmp ult i64 %.pre.i102, 6
  br i1 %i.hy, label %_ZNSolsEPFRSoS_E.exit, label %.preheader35.i84

_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i81.thread: ; preds = %bb.ai
  %i.hz = icmp ult i64 %.pre.i102, 6
  br i1 %i.hz, label %_ZNSolsEPFRSoS_E.exit, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.i

.preheader35.i84:                                 ; preds = %_ZNK5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE3endEv.exit.i81
  %i.ia = load ptr, ptr %i.hs, align 8, !tbaa !659, !noalias !16737 ; 31 uses
  %.not3341.i85 = icmp eq ptr %i.ia, %i.hx
  br i1 %.not3341.i85, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test10EmplaceIntEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.i, label %.lr.ph46.i86.preheader

.lr.ph46.i86.preheader:                           ; preds = %.preheader35.i84
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !649
  %i.ic = load i32, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, align 16, !tbaa !649
  %i.id = icmp eq i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.aj, label %_ZNSolsEPFRSoS_E.exit

bb.aj:                                            ; preds = %.lr.ph46.i86.preheader
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !660
  %i.ig = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 4), align 4, !tbaa !660
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.ak, label %_ZNSolsEPFRSoS_E.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !661
  %i.ik = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost9container4test19test_emplace_beforeINS0_6segtorINS1_10EmplaceIntEvvEEEEbNS_11move_detail5bool_ILb1EEEE8expected, i64 8), align 8, !tbaa !661
  %i.il = icmp eq i32 %i.ij, %i.ik
  br i1 %i.il, label %bb.al, label %_ZNSolsEPFRSoS_E.exit

bb.al:                                            ; preds = %bb.ak
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
end_hunk_1
begin_hunk_2_@_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE27priv_insert_middle_aux_implINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJiiEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmmT_:bb.a
  %xtraiter59 = and i64 %i.ca, 1
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.lr.ph.i22.i.prol.loopexit, label %.lr.ph.i22.i.prol

.lr.ph.i22.i.prol:                                ; preds = %.lr.ph.i
  %i.cd = add nsw i64 %i.ca, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1364 ; 2 uses
  %i.cf = icmp eq ptr %storemerge.i.i27.lcssa39.i, %.pre43.i
  br i1 %i.cf, label %bb.o, label %bb.n, !prof !365

bb.n:                                             ; preds = %.lr.ph.i22.i.prol
  %i.cg = getelementptr inbounds i8, ptr %storemerge.i.i27.lcssa39.i, i64 -44
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

bb.o:                                             ; preds = %.lr.ph.i22.i.prol
  %i.ch = getelementptr inbounds i8, ptr %.lcssa41.i, i64 -8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !659, !noalias !16949 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1364
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol: ; preds = %bb.o, %bb.n
  %i.ck = phi ptr [ %.pre43.i, %bb.n ], [ %i.ci, %bb.o ] ; 2 uses
  %i.cl = phi ptr [ %.lcssa41.i, %bb.n ], [ %i.ch, %bb.o ] ; 2 uses
  %storemerge.i.i27.i.prol = phi ptr [ %i.cg, %bb.n ], [ %i.cj, %bb.o ] ; 4 uses
  %i.cm = load <4 x i32>, ptr %i.ce, align 4, !tbaa !363, !noalias !16949
  store <4 x i32> %i.cm, ptr %storemerge.i.i27.i.prol, align 4, !tbaa !363, !noalias !16949
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 1380
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !650, !noalias !16949
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i.prol, i64 16
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !650, !noalias !16949
  br label %.lr.ph.i22.i.prol.loopexit

.lr.ph.i22.i.prol.loopexit:                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol, %.lr.ph.i
  %.pre43.i44.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.ck, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %i.cl, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i.i27.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.unr61 = phi ptr [ %.pre43.i, %.lr.ph.i ], [ %i.ck, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ] ; 2 uses
  %.unr62 = phi ptr [ %.lcssa41.i, %.lr.ph.i ], [ %i.cl, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %storemerge.i7.i23.i.unr = phi ptr [ %storemerge.i.i27.lcssa39.i, %.lr.ph.i ], [ %storemerge.i.i27.i.prol, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.06.i24.i.unr = phi ptr [ %i.cc, %.lr.ph.i ], [ %i.ce, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %.035.i25.i.unr = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.cd, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.prol ]
  %i.cq = icmp eq i64 %.01737.i, 1
  br i1 %i.cq, label %_ZN5boost9container15move_backward_nIPNS0_4test10EmplaceIntENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i

.lr.ph.i22.i:                                     ; preds = %.lr.ph.i22.i.prol.loopexit, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1
  %.pre43.i45 = phi ptr [ %.pre43.i44.1, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr61, %.lr.ph.i22.i.prol.loopexit ]
  %i.cr = phi ptr [ %i.dm, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr61, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %i.cs = phi ptr [ %i.dn, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.unr62, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %storemerge.i7.i23.i = phi ptr [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %storemerge.i7.i23.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 2 uses
  %.06.i24.i = phi ptr [ %i.dg, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.06.i24.i.unr, %.lr.ph.i22.i.prol.loopexit ] ; 4 uses
  %.035.i25.i = phi i64 [ %i.df, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ], [ %.035.i25.i.unr, %.lr.ph.i22.i.prol.loopexit ]
  %i.ct = getelementptr inbounds i8, ptr %.06.i24.i, i64 -44
  %i.cu = icmp eq ptr %storemerge.i7.i23.i, %i.cr
  br i1 %i.cu, label %bb.p, label %bb.q, !prof !365

bb.p:                                             ; preds = %.lr.ph.i22.i
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !659, !noalias !16949 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1364
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i

bb.q:                                             ; preds = %.lr.ph.i22.i
  %i.cy = getelementptr inbounds i8, ptr %storemerge.i7.i23.i, i64 -44
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i: ; preds = %bb.q, %bb.p
  %.pre43.i44 = phi ptr [ %.pre43.i45, %bb.q ], [ %i.cw, %bb.p ]
  %i.cz = phi ptr [ %i.cr, %bb.q ], [ %i.cw, %bb.p ] ; 2 uses
  %i.da = phi ptr [ %i.cs, %bb.q ], [ %i.cv, %bb.p ] ; 2 uses
  %storemerge.i.i27.i = phi ptr [ %i.cy, %bb.q ], [ %i.cx, %bb.p ] ; 4 uses
  %i.db = load <4 x i32>, ptr %i.ct, align 4, !tbaa !363, !noalias !16949
  store <4 x i32> %i.db, ptr %storemerge.i.i27.i, align 4, !tbaa !363, !noalias !16949
  %i.dc = getelementptr inbounds i8, ptr %.06.i24.i, i64 -28
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !650, !noalias !16949
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i, i64 16
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !650, !noalias !16949
  %i.df = add nsw i64 %.035.i25.i, -2             ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.06.i24.i, i64 -88 ; 2 uses
  %i.dh = icmp eq ptr %storemerge.i.i27.i, %i.cz
  br i1 %i.dh, label %bb.s, label %bb.r, !prof !365

bb.r:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.di = getelementptr inbounds i8, ptr %storemerge.i.i27.i, i64 -44
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1

bb.s:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i
  %i.dj = getelementptr inbounds i8, ptr %i.da, i64 -8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !659, !noalias !16949 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1364
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1: ; preds = %bb.s, %bb.r
  %.pre43.i44.1 = phi ptr [ %.pre43.i44, %bb.r ], [ %i.dk, %bb.s ] ; 2 uses
  %i.dm = phi ptr [ %i.cz, %bb.r ], [ %i.dk, %bb.s ]
  %i.dn = phi ptr [ %i.da, %bb.r ], [ %i.dj, %bb.s ] ; 2 uses
  %storemerge.i.i27.i.1 = phi ptr [ %i.di, %bb.r ], [ %i.dl, %bb.s ] ; 4 uses
  %i.do = load <4 x i32>, ptr %i.dg, align 4, !tbaa !363, !noalias !16949
  store <4 x i32> %i.do, ptr %storemerge.i.i27.i.1, align 4, !tbaa !363, !noalias !16949
  %i.dp = getelementptr inbounds i8, ptr %.06.i24.i, i64 -72
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !650, !noalias !16949
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge.i.i27.i.1, i64 16
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !650, !noalias !16949
  %.not.i28.i.1 = icmp eq i64 %i.df, 0
  br i1 %.not.i28.i.1, label %_ZN5boost9container15move_backward_nIPNS0_4test10EmplaceIntENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, label %.lr.ph.i22.i, !llvm.loop !321

_ZN5boost9container15move_backward_nIPNS0_4test10EmplaceIntENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1, %.lr.ph.i22.i.prol.loopexit
  %.pre43.i44.lcssa = phi ptr [ %.pre43.i44.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %.pre43.i44.1, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %i.dn, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %storemerge.i.i27.i.lcssa = phi ptr [ %storemerge.i.i27.i.lcssa.unr, %.lr.ph.i22.i.prol.loopexit ], [ %storemerge.i.i27.i.1, %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmmEv.exit.i26.i.1 ]
  %i.ds = sub nuw i64 %.01737.i, %i.ca            ; 2 uses
  %.not.i19 = icmp eq i64 %i.ds, 0
  br i1 %.not.i19, label %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit, label %.lr.ph.i, !llvm.loop !322

_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit: ; preds = %_ZN5boost9container15move_backward_nIPNS0_4test10EmplaceIntENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit29.i, %_ZN5boost9container15move_backward_nIPNS0_4test10EmplaceIntENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.dt = sub nsw i64 0, %i.ad
  %.not.i.i20 = icmp eq i64 %i.b, %i.ac
  br i1 %.not.i.i20, label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmIEl.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit
  %i.du = sub nsw i64 %i.ah, %i.ad                ; 4 uses
  %or.cond.i.i21 = icmp ult i64 %i.du, 32
  br i1 %or.cond.i.i21, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = getelementptr inbounds [44 x i8], ptr %storemerge.i, i64 %i.dt
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dw = icmp sgt i64 %i.du, 0
  %i.dx = lshr i64 %i.du, 5                       ; 2 uses
  %i.dy = or disjoint i64 %i.dx, -576460752303423488
  %i.dz = select i1 %i.dw, i64 %i.dx, i64 %i.dy   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dz ; 2 uses
  store ptr %i.ea, ptr %i.p, align 8, !tbaa !667
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !659
  %i.ec = shl nsw i64 %i.dz, 5
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = getelementptr inbounds [44 x i8], ptr %i.eb, i64 %i.ed
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge.i.i = phi ptr [ %i.ee, %bb.v ], [ %i.dv, %bb.u ] ; 2 uses
  store ptr %storemerge.i.i, ptr %0, align 8, !tbaa !654
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmIEl.exit

_ZN5boost9container14deque_iteratorIPNS0_4test10EmplaceIntELb0ELj0ELj0EmEmIEl.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit, %bb.w
  %i.ef = phi ptr [ %storemerge.i, %_ZN5boost9container10deque_implINS0_4test10EmplaceIntEvLb1EvE30priv_segmented_move_backward_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit ], [ %storemerge.i.i, %bb.w ] ; 5 uses
  %i.eg = load i32, ptr %5, align 4, !tbaa !363
  %i.eh = load i32, ptr %4, align 4, !tbaa !363
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !649
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !660
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 0, ptr %i.ej, align 4, !tbaa !661
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !662
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 0, ptr %i.el, align 4, !tbaa !650
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !490, !noalias !16955 ; 3 uses
  %.not.i1 = icmp eq ptr %i.b, null
  br i1 %.not.i1, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !491, !noalias !16956
  %i.e = lshr i64 %i.d, 7
  %.idx.i.i = and i64 %i.e, 144115188075855864
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.b
  %.06.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.06.i.i.i, align 8, !tbaa !493
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 1024) #22
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.i = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i, !llvm.loop !18

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i: ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !490
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !494
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 7 uses
  %1 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 10 uses
  %2 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 14 uses
  %3 = alloca %"class.boost::container::test::propagation_test_allocator", align 4 ; 6 uses
  %4 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 10 uses
  %5 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 14 uses
  %6 = alloca %"class.boost::container::test::propagation_test_allocator", align 4 ; 6 uses
  store i32 112, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  store i32 112, ptr %0, align 8, !tbaa !482
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %7, align 4, !tbaa !483
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 325, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.w       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 327, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.w       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.w       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i32 noundef 329, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.w       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef 330, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit unwind label %bb.w ; 0 uses

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 1000, ptr %1, align 8, !tbaa !482
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.h, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 223, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E, align 4, !tbaa !363
  store i32 223, ptr %3, align 4, !tbaa !482
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  invoke void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvEC2ERKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(24) %3)
          to label %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit unwind label %bb.x

_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.j = load i32, ptr %2, align 8, !tbaa !482
  %i.k = icmp eq i32 %i.j, 223
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.k)
          to label %bb.g unwind label %bb.y       ; 0 uses

bb.g:                                             ; preds = %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !483
  %i.o = icmp ne i32 %i.n, 0
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 341, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.o)
          to label %bb.h unwind label %bb.y       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !495
  %i.s = icmp eq i32 %i.r, 0
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.59, i32 noundef 342, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.s)
          to label %bb.i unwind label %bb.y       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !484
  %i.w = icmp eq i32 %i.v, 0
  %i.x = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.w)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !485
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef 344, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.aa)
          to label %bb.k unwind label %bb.y       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !486
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, i32 noundef 345, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.ae)
          to label %bb.l unwind label %bb.y       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !490, !noalias !16973 ; 3 uses
  %.not.i1.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i1.i9, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !491, !noalias !16974
  %i.ak = lshr i64 %i.aj, 7
  %.idx.i.i.i10 = and i64 %i.ak, 144115188075855864
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i10
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11, %bb.m
  %.06.i.i.i.i12 = phi ptr [ %i.an, %.lr.ph.i.i.i.i11 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.am = load ptr, ptr %.06.i.i.i.i12, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef 1024) #22
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i12, i64 8
  %i.ao = icmp ult ptr %.06.i.i.i.i12, %i.al
  br i1 %i.ao, label %.lr.ph.i.i.i.i11, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13, !llvm.loop !18

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13: ; preds = %.lr.ph.i.i.i.i11
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !490
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !494
  %i.as = shl i64 %i.ar, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit14

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit14: ; preds = %bb.l, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !490, !noalias !16975 ; 3 uses
  %.not.i1.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i1.i15, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit20, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !491, !noalias !16976
  %i.ax = lshr i64 %i.aw, 7
  %.idx.i.i.i16 = and i64 %i.ax, 144115188075855864
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i16
  br label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17, %bb.n
  %.06.i.i.i.i18 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i17 ], [ %i.au, %bb.n ] ; 3 uses
  %i.az = load ptr, ptr %.06.i.i.i.i18, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 1024) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 8
  %i.bb = icmp ult ptr %.06.i.i.i.i18, %i.ay
  br i1 %i.bb, label %.lr.ph.i.i.i.i17, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19, !llvm.loop !18

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19: ; preds = %.lr.ph.i.i.i.i17
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !490
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !494
  %i.bf = shl i64 %i.be, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit20

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit20: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit14, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 1000, ptr %4, align 8, !tbaa !482
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bg, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 334, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E, align 4, !tbaa !363
  store i32 334, ptr %6, align 4, !tbaa !482
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bh, i8 0, i64 20, i1 false)
  invoke void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvEC2EOS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(24) %6)
          to label %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit unwind label %bb.aa

_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bi = load i32, ptr %5, align 8, !tbaa !482
  %i.bj = icmp eq i32 %i.bi, 334
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.59, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bj)
          to label %bb.o unwind label %bb.ab      ; 0 uses

bb.o:                                             ; preds = %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !483
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bn)
          to label %bb.p unwind label %bb.ab      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !495
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.59, i32 noundef 357, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.br)
          to label %bb.q unwind label %bb.ab      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !484
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i32 noundef 358, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bv)
          to label %bb.r unwind label %bb.ab      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !485
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bz)
          to label %bb.s unwind label %bb.ab      ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !486
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, i32 noundef 360, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.cd)
          to label %bb.t unwind label %bb.ab      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !490, !noalias !16977 ; 3 uses
  %.not.i1.i21 = icmp eq ptr %i.cg, null
  br i1 %.not.i1.i21, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit26, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !491, !noalias !16978
  %i.cj = lshr i64 %i.ci, 7
  %.idx.i.i.i22 = and i64 %i.cj, 144115188075855864
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i22
  br label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %.lr.ph.i.i.i.i23, %bb.u
  %.06.i.i.i.i24 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i23 ], [ %i.cg, %bb.u ] ; 3 uses
  %i.cl = load ptr, ptr %.06.i.i.i.i24, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef 1024) #22
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i24, i64 8
  %i.cn = icmp ult ptr %.06.i.i.i.i24, %i.ck
  br i1 %i.cn, label %.lr.ph.i.i.i.i23, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i25, !llvm.loop !18

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i25: ; preds = %.lr.ph.i.i.i.i23
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !490
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !494
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit26

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit26: ; preds = %bb.t, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !490, !noalias !16979 ; 3 uses
  %.not.i1.i27 = icmp eq ptr %i.ct, null
  br i1 %.not.i1.i27, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit32, label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit26
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !491, !noalias !16980
  %i.cw = lshr i64 %i.cv, 7
  %.idx.i.i.i28 = and i64 %i.cw, 144115188075855864
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i.i.i28
  br label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %.lr.ph.i.i.i.i29, %bb.v
  %.06.i.i.i.i30 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i29 ], [ %i.ct, %bb.v ] ; 3 uses
  %i.cy = load ptr, ptr %.06.i.i.i.i30, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef 1024) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i30, i64 8
  %i.da = icmp ult ptr %.06.i.i.i.i30, %i.cx
  br i1 %i.da, label %.lr.ph.i.i.i.i29, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i31, !llvm.loop !18

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i31: ; preds = %.lr.ph.i.i.i.i29
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !490
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !494
  %i.de = shl i64 %i.dd, 3
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit32

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit32: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit26, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %bb.ad

bb.x:                                             ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.z

bb.y:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.y ], [ %i.dg, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.ad

bb.aa:                                            ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev.exit20
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ac

bb.ab:                                            ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn6 = phi { ptr, i32 } [ %i.dj, %bb.ab ], [ %i.di, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z, %bb.w
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %bb.ac ], [ %.pn, %bb.z ], [ %i.df, %bb.w ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504, !noalias !16985 ; 3 uses
  %.not.i1 = icmp eq ptr %i.b, null
  br i1 %.not.i1, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !505, !noalias !16986
  %i.e = lshr i64 %i.d, 7
  %.idx.i.i = and i64 %i.e, 144115188075855864
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.b
  %.06.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.06.i.i.i, align 8, !tbaa !493
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 1024) #22
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.i = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i, !llvm.loop !19

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i: ; preds = %.lr.ph.i.i.i
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !504
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !506
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::test::alloc_propagate_wrapper.410", align 8 ; 7 uses
  %1 = alloca %"class.boost::container::test::alloc_propagate_wrapper.410", align 8 ; 10 uses
  %2 = alloca %"class.boost::container::test::alloc_propagate_wrapper.410", align 8 ; 14 uses
  %3 = alloca %"class.boost::container::test::propagation_test_allocator.415", align 4 ; 6 uses
  %4 = alloca %"class.boost::container::test::alloc_propagate_wrapper.410", align 8 ; 10 uses
  %5 = alloca %"class.boost::container::test::alloc_propagate_wrapper.410", align 8 ; 14 uses
  %6 = alloca %"class.boost::container::test::propagation_test_allocator.415", align 4 ; 6 uses
  store i32 112, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EE10unique_id_E, align 4, !tbaa !363
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  store i32 112, ptr %0, align 8, !tbaa !498
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %7, align 4, !tbaa !507
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 325, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.w       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.59, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 327, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.w       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.59, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.w       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.f = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i32 noundef 329, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.w       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.59, i32 noundef 330, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit unwind label %bb.w ; 0 uses

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 1000, ptr %1, align 8, !tbaa !498
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.h, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 223, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EE10unique_id_E, align 4, !tbaa !363
  store i32 223, ptr %3, align 4, !tbaa !498
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, i8 0, i64 20, i1 false)
  invoke void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvEC2ERKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(24) %3)
          to label %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit unwind label %bb.x

_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.j = load i32, ptr %2, align 8, !tbaa !498
  %i.k = icmp eq i32 %i.j, 223
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.k)
          to label %bb.g unwind label %bb.y       ; 0 uses

bb.g:                                             ; preds = %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2ERKS6_RKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !507
  %i.o = icmp ne i32 %i.n, 0
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 341, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.o)
          to label %bb.h unwind label %bb.y       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !508
  %i.s = icmp eq i32 %i.r, 0
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.59, i32 noundef 342, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.s)
          to label %bb.i unwind label %bb.y       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !499
  %i.w = icmp eq i32 %i.v, 0
  %i.x = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.w)
          to label %bb.j unwind label %bb.y       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !500
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef 344, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.aa)
          to label %bb.k unwind label %bb.y       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !501
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, i32 noundef 345, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.ae)
          to label %bb.l unwind label %bb.y       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !504, !noalias !17003 ; 3 uses
  %.not.i1.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i1.i9, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !505, !noalias !17004
  %i.ak = lshr i64 %i.aj, 7
  %.idx.i.i.i10 = and i64 %i.ak, 144115188075855864
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i10
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11, %bb.m
  %.06.i.i.i.i12 = phi ptr [ %i.an, %.lr.ph.i.i.i.i11 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.am = load ptr, ptr %.06.i.i.i.i12, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef 1024) #22
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i12, i64 8
  %i.ao = icmp ult ptr %.06.i.i.i.i12, %i.al
  br i1 %i.ao, label %.lr.ph.i.i.i.i11, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13, !llvm.loop !19

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13: ; preds = %.lr.ph.i.i.i.i11
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !504
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !506
  %i.as = shl i64 %i.ar, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit14

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit14: ; preds = %bb.l, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !504, !noalias !17005 ; 3 uses
  %.not.i1.i15 = icmp eq ptr %i.au, null
  br i1 %.not.i1.i15, label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit20, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !505, !noalias !17006
  %i.ax = lshr i64 %i.aw, 7
  %.idx.i.i.i16 = and i64 %i.ax, 144115188075855864
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i.i16
  br label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17, %bb.n
  %.06.i.i.i.i18 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i17 ], [ %i.au, %bb.n ] ; 3 uses
  %i.az = load ptr, ptr %.06.i.i.i.i18, align 8, !tbaa !493
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 1024) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i18, i64 8
  %i.bb = icmp ult ptr %.06.i.i.i.i18, %i.ay
  br i1 %i.bb, label %.lr.ph.i.i.i.i17, label %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19, !llvm.loop !19

_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19: ; preds = %.lr.ph.i.i.i.i17
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !504
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !506
  %i.bf = shl i64 %i.be, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #22
  br label %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit20

_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit20: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit14, %_ZN5boost9container10deque_baseINS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i32 1000, ptr %4, align 8, !tbaa !498
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.bg, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 334, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EE10unique_id_E, align 4, !tbaa !363
  store i32 334, ptr %6, align 4, !tbaa !498
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bh, i8 0, i64 20, i1 false)
  invoke void @_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvEC2EOS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(24) %6)
          to label %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit unwind label %bb.aa

_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit: ; preds = %_ZN5boost9container10deque_implIcNS0_4test26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEELb1EvED2Ev.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bi = load i32, ptr %5, align 8, !tbaa !498
  %i.bj = icmp eq i32 %i.bi, 334
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.59, i32 noundef 355, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bj)
          to label %bb.o unwind label %bb.ab      ; 0 uses

bb.o:                                             ; preds = %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEC2EOS6_RKS4_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !507
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.59, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bn)
          to label %bb.p unwind label %bb.ab      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !508
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.59, i32 noundef 357, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.br)
          to label %bb.q unwind label %bb.ab      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !499
  %i.bv = icmp eq i32 %i.bu, 0
  %i.bw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.59, i32 noundef 358, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bv)
          to label %bb.r unwind label %bb.ab      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !500
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.59, i32 noundef 359, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.bz)
          to label %bb.s unwind label %bb.ab      ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !501
  %i.cd = icmp eq i32 %i.cc, 0
  %i.ce = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, i32 noundef 360, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb0ELb0ELb0ELb0ELb1EEE22boost_container_segtorEEEEvv, i1 noundef zeroext %i.cd)
          to label %bb.t unwind label %bb.ab      ; 0 uses

end_hunk_2
