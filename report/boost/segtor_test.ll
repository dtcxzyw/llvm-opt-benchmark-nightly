inline.NumInlined: 19148
inline.NumDeleted: 3750
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 812
loop-unroll.NumUnrolled: 1099
begin_hunk_0_@_Z7do_testIN5boost9container4test12copyable_intELb1EEbv:_ZN5boost7movelib10unique_ptrINS_9container6segtorINS2_4test12copyable_intEvNS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.gb, %bb.gc
  %.0.i.i.i = phi i8 [ %i.yp, %bb.gb ], [ %i.yt, %bb.gc ]
  %i.yu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.yv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yu) ; 4 uses
  %i.yw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef nonnull @.str.42, i64 noundef 8) ; 0 uses
  %i.yx = load ptr, ptr %i.yv, align 8, !tbaa !66
  %i.yy = getelementptr i8, ptr %i.yx, i64 -24
  %i.yz = load i64, ptr %i.yy, align 8
  %i.za = getelementptr inbounds i8, ptr %i.yv, i64 %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 240
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !77 ; 6 uses
  %.not.i.i.i547 = icmp eq ptr %i.zc, null
  br i1 %.not.i.i.i547, label %bb.gd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i548

bb.gd:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i548: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 56
  %i.ze = load i8, ptr %i.zd, align 8, !tbaa !84
  %.not.i1.i.i549 = icmp eq i8 %i.ze, 0
  br i1 %.not.i1.i.i549, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i548
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zc, i64 67
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !89
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551

bb.gf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i548
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zc)
  %i.zh = load ptr, ptr %i.zc, align 8, !tbaa !66
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 48
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = call noundef signext i8 %i.zj(ptr noundef nonnull align 8 dereferenceable(570) %i.zc, i8 noundef signext 10), !inline_history !90
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551: ; preds = %bb.ge, %bb.gf
  %.0.i.i.i550 = phi i8 [ %i.zg, %bb.ge ], [ %i.zk, %bb.gf ]
  %i.zl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, i8 noundef signext %.0.i.i.i550)
  %i.zm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zl) ; 0 uses
  br label %bb.gi

bb.gg:                                            ; preds = %bb.am, %bb.dz, %bb.ej, %bb.ek, %bb.ez, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit541, %bb.ab, %bb.k
  %.pn262.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %.pn254, %bb.ej ], [ %lpad.phi, %bb.ab ], [ %.pn262, %bb.dz ], [ %.pn260, %bb.ez ], [ %i.iu, %bb.am ], [ %.pn257.pn, %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit541 ], [ %i.vw, %bb.ek ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.b
  %.pn262.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn, %bb.gg ], [ %i.m, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5boost7movelib10unique_ptrINS_9container6segtorINS2_4test12copyable_intEvNS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn262.pn.pn.pn

bb.gi:                                            ; preds = %_ZN5boost7movelib10unique_ptrINS_9container6segtorINS2_4test12copyable_intEvNS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit545, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551
  %.11 = phi i1 [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit551 ], [ %.10, %_ZN5boost7movelib10unique_ptrINS_9container6segtorINS2_4test12copyable_intEvNS2_9deque_optILm0ELm0EvLb1EEEEENS0_14default_deleteIS8_EEED2Ev.exit545 ]
  ret i1 %.11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE12emplace_backIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::deque_iterator.103", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092   ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1096 ; 3 uses
  %i.d = and i64 %i.c, 255                        ; 2 uses
  %.not11.i = icmp eq i64 %i.d, 255
  br i1 %.not11.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit, !prof !47

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit: ; preds = %bb.b
  %i.e = lshr i64 %i.c, 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1097 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %bb.c, !prof !91

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !1099
  %i.i = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.k = add i64 %i.c, 1
  store i64 %i.k, ptr %i.b, align 8, !tbaa !1096
  br label %bb.d

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS3_EEJEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.103") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.l = load ptr, ptr %1, align 8, !tbaa !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ %i.l, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE12emplace_backIJiEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator.103", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092   ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1096 ; 3 uses
  %i.d = and i64 %i.c, 255                        ; 2 uses
  %.not11.i = icmp eq i64 %i.d, 255
  br i1 %.not11.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit, !prof !47

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit: ; preds = %bb.b
  %i.e = lshr i64 %i.c, 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1097 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, label %bb.c, !prof !91

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !45
  store i32 %i.i, ptr %i.h, align 4, !tbaa !1099
  %i.j = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.l = add i64 %i.c, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !1096
  br label %bb.d

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread: ; preds = %bb.b, %bb.a, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS3_EEJiEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !1101
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ %i.m, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_push_back_simple_posEv.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator.103", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1096 ; 3 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %i.b, %1
  tail call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE17priv_erase_last_nEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIS3_EEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::deque_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1092, !noalias !1103 ; 6 uses
  %.not.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i1, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1097, !noalias !1103 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1096, !noalias !1106 ; 2 uses
  %i.e = lshr i64 %i.d, 5
  %.idx = and i64 %i.e, 576460752303423480        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1097, !noalias !1109
  %i.h = and i64 %i.d, 255
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = icmp samesign ugt i64 %.idx, 8
  br i1 %i.j, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.028.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.pre.i = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  br label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %.lr.ph.i
  store i32 %2, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  br label %bb.b

._crit_edge.i:                                    ; preds = %.preheader.i
  %.not12.i = icmp samesign eq i64 %.idx, 0
  br i1 %.not12.i, label %bb.c, label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.pre.i = phi i32 [ %2, %.lr.ph.i ], [ %.pre.pre.i, %.lr.ph.preheader.i ]
  %.029.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.028.i, %.lr.ph.preheader.i ] ; 2 uses
  %1 = load ptr, ptr %.029.i, align 8, !tbaa !1097
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 0, i64 1024, i1 false), !tbaa !1099
  %2 = add i32 %.pre.i, -256                      ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.k = icmp ult ptr %.0.i, %i.f
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i.thread, !llvm.loop !1112

bb.b:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1097
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1024 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.b, %i.m
  br i1 %.not3.i.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.b, %.lr.ph.i13.i
  %storemerge4.i14.i = phi ptr [ %i.p, %.lr.ph.i13.i ], [ %i.b, %bb.b ] ; 2 uses
  store i32 0, ptr %storemerge4.i14.i, align 4, !tbaa !1099
  %i.n = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i14.i, i64 4 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i15.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, label %.lr.ph.i13.i, !llvm.loop !1113

_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i: ; preds = %.lr.ph.i13.i, %bb.b
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !1097 ; 2 uses
  %.not3.i17.i = icmp eq ptr %i.q, %i.i
  br i1 %.not3.i17.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, %.lr.ph.i18.i
  %storemerge4.i19.i = phi ptr [ %i.t, %.lr.ph.i18.i ], [ %i.q, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i ] ; 2 uses
  store i32 0, ptr %storemerge4.i19.i, align 4, !tbaa !1099
  %i.r = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i19.i, i64 4 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i20.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i18.i, !llvm.loop !1113

bb.c:                                             ; preds = %._crit_edge.i
  %.not3.i22.i = icmp eq ptr %i.b, %i.i
  br i1 %.not3.i22.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %bb.c, %.lr.ph.i23.i
  %storemerge4.i24.i = phi ptr [ %i.w, %.lr.ph.i23.i ], [ %i.b, %bb.c ] ; 2 uses
  store i32 0, ptr %storemerge4.i24.i, align 4, !tbaa !1099
  %i.u = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i24.i, i64 4 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.w, %i.i
  br i1 %.not.i25.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i23.i, !llvm.loop !1113

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i23.i, %.lr.ph.i18.i, %bb.c, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.a, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.x = load ptr, ptr %.06.i.i.i, align 8, !tbaa !1097
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef 1024) #22
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.z = icmp ult ptr %.06.i.i.i, %i.f
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i, !llvm.loop !1114

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1092
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1115
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE25prot_deallocate_all_nodesEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_Z18test_cont_variantsISaIvELb0EEiv() local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorIiSaIiENS0_9deque_optILm0ELm0EvLb0EEEEEEEiv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_11movable_intESaIS4_ENS0_9deque_optILm0ELm0EvLb0EEEEEEEiv()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_24movable_and_copyable_intESaIS4_ENS0_9deque_optILm0ELm0EvLb0EEEEEEEiv()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_12copyable_intESaIS4_ENS0_9deque_optILm0ELm0EvLb0EEEEEEEiv()
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_17moveconstruct_intESaIS4_ENS0_9deque_optILm0ELm0EvLb0EEEEEEEiv()
  %.not4 = icmp ne i32 %i.e, 0
  %. = zext i1 %.not4 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ %., %bb.e ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_Z18test_cont_variantsIN5boost9container9allocatorIvLj2ELj0EEELb1EEiv() local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorIiNS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiv()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiv()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiv()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiv()
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef i32 @_ZN5boost9container4test11vector_testINS0_6segtorINS1_17moveconstruct_intENS0_9allocatorIS4_Lj2ELj0EEENS0_9deque_optILm0ELm0EvLb1EEEEEEEiv()
  %.not4 = icmp ne i32 %i.e, 0
  %. = zext i1 %.not4 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ %., %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test17default_init_testINS0_6segtorIiNS1_22default_init_allocatorIiEEvEEEEbv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
.split.i.i:
  %0 = alloca %"class.boost::container::segtor.361", align 8 ; 10 uses
  %1 = alloca %"class.boost::container::segtor.361", align 8 ; 10 uses
  %2 = alloca %"class.boost::container::segtor.361", align 8 ; 9 uses
  store i8 0, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE9s_patternE, align 1, !tbaa !89
  store i8 1, ptr @_ZN5boost9container4test27default_init_allocator_baseILi0EE11s_ascendingE, align 1, !tbaa !1116
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @_ZN5boost9container10deque_baseINS0_4test22default_init_allocatorIiEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 100)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1117, !noalias !1120, !nonnull !235, !noundef !235 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !1120
  br label %_ZN5boost9container10deque_implIiNS0_4test22default_init_allocatorIiEELb1EvE5beginEv.exit

_ZN5boost9container10deque_implIiNS0_4test22default_init_allocatorIiEELb1EvE5beginEv.exit: ; preds = %.split.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit
  %.02395 = phi i64 [ %i.m, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ 0, %.split.i.i ]
  %.sroa.889.094 = phi ptr [ %.sroa.889.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %i.a, %.split.i.i ] ; 3 uses
  %.sroa.087.093 = phi ptr [ %.sroa.087.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %i.b, %.split.i.i ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.087.093, i64 1
  %i.d = load i8, ptr %.sroa.087.093, align 1, !tbaa !89
  %i.e = load i8, ptr %i.c, align 1, !tbaa !89    ; 2 uses
  %i.f = add i8 %i.e, -1
  %.not10.i = icmp eq i8 %i.d, %i.f
  br i1 %.not10.i, label %bb.a, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

bb.a:                                             ; preds = %_ZN5boost9container10deque_implIiNS0_4test22default_init_allocatorIiEELb1EvE5beginEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.087.093, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !89    ; 2 uses
  %i.i = add i8 %i.h, -1
  %.not10.1.i = icmp eq i8 %i.e, %i.i
  br i1 %.not10.1.i, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.087.093, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !89
  %i.l = add i8 %i.k, -1
  %.not10.2.i = icmp eq i8 %i.h, %i.l
  br i1 %.not10.2.i, label %bb.b, label %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit.thread

bb.b:                                             ; preds = %_ZN5boost9container4test28check_ascending_byte_patternIiEEbRKT_.exit
  %i.m = add nuw nsw i64 %.02395, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.087.093, i64 4 ; 2 uses
  %i.o = load ptr, ptr %.sroa.889.094, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1024
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit, !prof !47

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.889.094, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.087.1 = phi ptr [ %i.s, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.889.1 = phi ptr [ %i.r, %bb.c ], [ %.sroa.889.094, %bb.b ]
  %.not = icmp eq i64 %i.m, 100
  br i1 %.not, label %.critedge, label %_ZN5boost9container10deque_implIiNS0_4test22default_init_allocatorIiEELb1EvE5beginEv.exit, !llvm.loop !1125

end_hunk_0
begin_hunk_1_@_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE17prot_allocate_mapEm.exit, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit.i
  %.01315.i = phi i64 [ %i.k, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit.i ], [ 0, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE17prot_allocate_mapEm.exit ] ; 5 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #27
          to label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit.i unwind label %bb.c

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01315.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1097
  %i.k = add nuw nsw i64 %.01315.i, 1
  %exitcond.not.i = icmp eq i64 %.01315.i, %i.a
  br i1 %exitcond.not.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE19prot_allocate_nodesEPPS4_m.exit, label %.lr.ph.i, !llvm.loop !3242

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  %.not20.i = icmp eq i64 %.01315.i, 0
  br i1 %.not20.i, label %._crit_edge19.i, label %.lr.ph18.i

._crit_edge19.i:                                  ; preds = %.lr.ph18.i, %bb.c
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

.lr.ph18.i:                                       ; preds = %bb.c, %.lr.ph18.i
  %.016.i = phi i64 [ %i.q, %.lr.ph18.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.016.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1097
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef 1024) #22
  %i.q = add nuw nsw i64 %.016.i, 1               ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.q, %.01315.i
  br i1 %exitcond24.not.i, label %._crit_edge19.i, label %.lr.ph18.i, !llvm.loop !3243

bb.d:                                             ; preds = %._crit_edge19.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.f:                                             ; preds = %._crit_edge19.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.u = extractvalue { ptr, i32 } %i.r, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #22 ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1092
  %i.x = load i64, ptr %i.h, align 8, !tbaa !1115
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE19prot_allocate_nodesEPPS4_m.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE18prot_allocate_nodeEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.aa, align 8, !tbaa !1096
  ret void

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #23
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE25priv_insert_back_aux_implINS0_3dtl31insert_nonmovable_emplace_proxyINS0_13new_allocatorIS3_EEJiEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1092
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEENSA_ILb1EEEmb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1096, !noalias !3244
  br label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  br label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !1092, !noalias !3247, !nonnull !235, !noundef !235
  %i.k = lshr i64 %i.i, 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1097, !noalias !3247
  %i.n = and i64 %i.i, 255
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !1101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.p, align 8, !tbaa !3241
  %i.q = load i32, ptr %3, align 4, !tbaa !45
  store i32 %i.q, ptr %i.o, align 4, !tbaa !1099
  %i.r = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.t = add i64 %i.i, %2
  store i64 %i.t, ptr %i.b, align 8, !tbaa !1096
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE17priv_erase_last_nEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1096 ; 5 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1092, !noalias !3250 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.thread, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit: ; preds = %bb.b
  %i.d = lshr i64 %i.b, 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 11 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1097, !noalias !3250
  %i.g = and i64 %i.b, 255
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 7 uses
  %i.i = sub nsw i64 0, %1
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %.preheader.i, label %bb.c

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.thread: ; preds = %bb.b
  %.not.i.i.i28 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %.not.i.i.i28)
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

bb.c:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !1097, !noalias !3253
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = sub nsw i64 %i.n, %1                     ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.o, 256
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  br label %.preheader.i

bb.e:                                             ; preds = %bb.c
  %i.q = icmp sgt i64 %i.o, 0
  %i.r = lshr i64 %i.o, 8                         ; 2 uses
  %i.s = or disjoint i64 %i.r, -72057594037927936
  %i.t = select i1 %i.q, i64 %i.r, i64 %i.s       ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1097, !noalias !3253
  %i.w = shl nsw i64 %i.t, 8
  %i.x = sub nsw i64 %i.o, %i.w
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit, %bb.e, %bb.d
  %.sroa.0.0.i18 = phi ptr [ %i.p, %bb.d ], [ %i.y, %bb.e ], [ %i.h, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit ] ; 4 uses
  %.sroa.6.1.i16 = phi ptr [ %i.e, %bb.d ], [ %i.u, %bb.e ], [ %i.e, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit ] ; 5 uses
  %.028.i = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i16, i64 8 ; 2 uses
  %i.z = icmp ult ptr %.028.i, %i.e
  br i1 %i.z, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre.pre.i = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  store i32 %3, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.not12.i = icmp eq ptr %.sroa.6.1.i16, %i.e
  br i1 %.not12.i, label %bb.g, label %bb.f

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.pre.i = phi i32 [ %3, %.lr.ph.i ], [ %.pre.pre.i, %.lr.ph.preheader.i ]
  %.029.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.028.i, %.lr.ph.preheader.i ] ; 2 uses
  %2 = load ptr, ptr %.029.i, align 8, !tbaa !1097
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !1099
  %3 = add i32 %.pre.i, -256                      ; 2 uses
  %.0.i = getelementptr inbounds nuw i8, ptr %.029.i, i64 8 ; 2 uses
  %i.aa = icmp ult ptr %.0.i, %i.e
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !1112

bb.f:                                             ; preds = %._crit_edge.i
  %i.ab = load ptr, ptr %.sroa.6.1.i16, align 8, !tbaa !1097
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1024 ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.0.0.i18, %i.ac
  br i1 %.not3.i.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.f, %.lr.ph.i13.i
  %storemerge4.i14.i = phi ptr [ %i.af, %.lr.ph.i13.i ], [ %.sroa.0.0.i18, %bb.f ] ; 2 uses
  store i32 0, ptr %storemerge4.i14.i, align 4, !tbaa !1099
  %i.ad = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ae = add i32 %i.ad, -1
  store i32 %i.ae, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge4.i14.i, i64 4 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.af, %i.ac
  br i1 %.not.i15.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, label %.lr.ph.i13.i, !llvm.loop !1113

_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i: ; preds = %.lr.ph.i13.i, %bb.f
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !1097 ; 2 uses
  %.not3.i17.i = icmp eq ptr %i.ag, %i.h
  br i1 %.not3.i17.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, %.lr.ph.i18.i
  %storemerge4.i19.i = phi ptr [ %i.aj, %.lr.ph.i18.i ], [ %i.ag, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i ] ; 2 uses
  store i32 0, ptr %storemerge4.i19.i, align 4, !tbaa !1099
  %i.ah = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge4.i19.i, i64 4 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i20.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit, label %.lr.ph.i18.i, !llvm.loop !1113

bb.g:                                             ; preds = %._crit_edge.i
  %.not3.i22.i = icmp eq ptr %.sroa.0.0.i18, %i.h
  br i1 %.not3.i22.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %bb.g, %.lr.ph.i23.i
  %storemerge4.i24.i = phi ptr [ %i.am, %.lr.ph.i23.i ], [ %.sroa.0.0.i18, %bb.g ] ; 2 uses
  store i32 0, ptr %storemerge4.i24.i, align 4, !tbaa !1099
  %i.ak = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i24.i, i64 4 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.am, %i.h
  br i1 %.not.i25.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit, label %.lr.ph.i23.i, !llvm.loop !1113

_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit: ; preds = %.lr.ph.i18.i, %.lr.ph.i23.i, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeEPS3_S5_.exit16.i, %bb.g
  %i.an = icmp ult ptr %.sroa.6.1.i16, %i.e
  br i1 %i.an, label %.lr.ph.i.i4, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

.lr.ph.i.i4:                                      ; preds = %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit, %.lr.ph.i.i4
  %.06.i.i.pn = phi ptr [ %.06.i.i, %.lr.ph.i.i4 ], [ %.sroa.6.1.i16, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.pn, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %.06.i.i, align 8, !tbaa !1097
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef 1024) #22
  %i.ap = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.ap, label %.lr.ph.i.i4, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit, !llvm.loop !1114

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit: ; preds = %.lr.ph.i.i4
  %.pre = load i64, ptr %i.a, align 8, !tbaa !1096
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit: ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.thread, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit
  %i.aq = phi i64 [ %.pre, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit.loopexit ], [ %i.b, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE18prot_destroy_rangeENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEES7_.exit ], [ %i.b, %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit.thread ]
  %i.ar = sub i64 %i.aq, %1
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !1096
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE25priv_insert_back_aux_implINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIS3_EEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1092
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 255
  %i.e = xor i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not.i.i, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEENSA_ILb1EEEmb(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1096, !noalias !3256
  br label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2)
  br label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !1092, !noalias !3259 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit, label %.split.i

.split.i:                                         ; preds = %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit
  %i.k = lshr i64 %i.i, 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1097, !noalias !3259
  %i.n = and i64 %i.i, 255
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  br label %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit: ; preds = %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit, %.split.i
  %i.p = phi ptr [ %i.o, %.split.i ], [ null, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit ] ; 4 uses
  %.sink = phi ptr [ %i.l, %.split.i ], [ null, %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !1101
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8, !tbaa !3241
  %.not.i.i3 = icmp eq i64 %2, 0
  br i1 %.not.i.i3, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIS3_EEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !47

bb.e:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorINS0_4test19non_copymovable_intEEENS0_9deque_optILm0ELm0EmLb0EEELb1EE14prot_off_to_itEm.exit
  %i.r = load ptr, ptr %.sink, align 8, !tbaa !1097
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub nsw i64 256, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.w) ; 5 uses
  %.not14.i.i.i.i = icmp eq i64 %i.u, 1024
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.y = add i64 %i.x, -1
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.prol ], [ %i.x, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.z = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !1099
  %i.aa = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3262

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.y, 3
  br i1 %i.ad, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !1099
  %i.ae = load i32, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45 ; 4 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !1099
  %i.ah = add i32 %i.ae, 2
  store i32 %i.ah, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ai = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.ai, align 4, !tbaa !1099
  %i.aj = add i32 %i.ae, 3
  store i32 %i.aj, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.al = add i64 %.016.i.i.i.i, -4               ; 2 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !1099
  %i.am = add i32 %i.ae, 4
  store i32 %i.am, ptr @_ZN5boost9container4test19non_copymovable_int5countE, align 4, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3263

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.e
  %i.ao = sub i64 %2, %i.x                        ; 2 uses
  %.not2835.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not2835.i.i, label %_ZN5boost9container10deque_implINS0_4test19non_copymovable_intEvLb1EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIS3_EEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit34.i.i
  %.037.i.i = phi i64 [ %i.bh, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit34.i.i ], [ %i.ao, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i ] ; 3 uses
  %.02636.i.i = phi ptr [ %i.ap, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit34.i.i ], [ %.sink, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test19non_copymovable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.02636.i.i, i64 8 ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.037.i.i, i64 256) ; 4 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !1097 ; 2 uses
  %xtraiter8 = and i64 %i.aq, 3                   ; 2 uses
  %lcmp.mod9.not = icmp eq i64 %xtraiter8, 0
end_hunk_1
