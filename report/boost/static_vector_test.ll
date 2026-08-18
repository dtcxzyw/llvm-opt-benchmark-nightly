inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:.lr.ph.i.i679.preheader
  %i.mk = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.br unwind label %bb.bw     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br, %bb.bu
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc623 unwind label %bb.by

.noexc623:                                        ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bp
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 550, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_end_catch()
          to label %bb.bs unwind label %bb.bd

bb.bv:                                            ; preds = %bb.bt
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bw:                                            ; preds = %bb.bq
  %i.mm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bx:                                            ; preds = %bb.br
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

bb.by:                                            ; preds = %bb.bs
  %i.mo = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.mo, 1
  %.1585 = extractvalue { ptr, i32 } %i.mo, 0
  %i.mp = icmp eq i32 %.15, %i.ly
  %i.mq = tail call ptr @__cxa_begin_catch(ptr %.1585) #25 ; 0 uses
  br i1 %i.mp, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.mr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ca unwind label %bb.ce     ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i644 unwind label %bb.cf

.lr.ph.i.preheader.i644:                          ; preds = %bb.cc, %bb.ca
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.ms = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645, -5
  store i32 %i.ms, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.mt = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645, -15
  store i32 %i.mt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  ret void

bb.cb:                                            ; preds = %bb.by
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i644 unwind label %bb.bd

bb.cd:                                            ; preds = %bb.cb
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.ce:                                            ; preds = %bb.bz
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ca
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

.lr.ph.i.preheader.i662:                          ; preds = %bb.bd, %bb.bc, %bb.bm, %bb.bv, %bb.cd, %bb.be, %bb.bf, %bb.bn, %bb.bo, %bb.bw, %bb.bx, %bb.ce, %bb.cf
  %.pn99.pn = phi { ptr, i32 } [ %i.mm, %bb.bw ], [ %i.ls, %bb.bd ], [ %i.mu, %bb.cd ], [ %i.mw, %bb.cf ], [ %i.md, %bb.bn ], [ %i.ml, %bb.bv ], [ %i.lt, %bb.be ], [ %i.mc, %bb.bm ], [ %i.mv, %bb.ce ], [ %i.lr, %bb.bc ], [ %i.lu, %bb.bf ], [ %i.me, %bb.bo ], [ %i.mn, %bb.bx ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.mx = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663, -5
  store i32 %i.mx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.my = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663, -15
  store i32 %i.my, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.preheader.i662, %.lr.ph.i.preheader.i515, %.lr.ph.i.preheader.i230
  %.pn121.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %.lr.ph.i.preheader.i230 ], [ %.pn106, %.lr.ph.i.preheader.i515 ], [ %.pn99.pn, %.lr.ph.i.preheader.i662 ]
  resume { ptr, i32 } %.pn121.pn.pn

bb.ch:                                            ; preds = %bb.ce, %bb.cd, %bb.bw, %bb.bv, %bb.bn, %bb.bm, %bb.be, %bb.bc
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  %i.na = extractvalue { ptr, i32 } %i.mz, 0
  tail call void @__clang_call_terminate(ptr %i.na) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15test_emplace_0pI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 565, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_0pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc13 unwind label %bb.d

.noexc13:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.h, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit18

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = extractvalue { ptr, i32 } %i.d, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.e) #25 ; 0 uses
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit unwind label %bb.k

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.f, %bb.h
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.k = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, -10
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  ret void

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 566, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_0pI14counting_valueLm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit18 unwind label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit18 unwind label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit18

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit18: ; preds = %bb.c, %bb.i, %bb.j, %bb.k
  %.pn10.ph = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.n, %bb.k ], [ %i.c, %bb.c ], [ %i.l, %bb.i ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i17.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.o = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i17.pre, -10
  store i64 %i.o, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  resume { ptr, i32 } %.pn10.ph

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15test_emplace_2pI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.29", align 16 ; 15 uses
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc71 unwind label %bb.d

.noexc71:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.h, %thread-pre-split, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.046 = extractvalue { ptr, i32 } %i.d, 1
  %.047 = extractvalue { ptr, i32 } %i.d, 0
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.f = icmp eq i32 %.046, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.047) #25 ; 0 uses
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.k

thread-pre-split:                                 ; preds = %bb.f, %bb.h
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 581, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.preheader unwind label %bb.c ; 0 uses

.preheader154.preheader:                          ; preds = %thread-pre-split
  %i.j = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.1 unwind label %bb.l ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.preheader154.9
  %i.m = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.preheader unwind label %bb.m ; 0 uses

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 580, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.z

bb.k:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader154.1:                                  ; preds = %.preheader154.preheader
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.2 unwind label %bb.l ; 0 uses

.preheader154.2:                                  ; preds = %.preheader154.1
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.3 unwind label %bb.l ; 0 uses

.preheader154.3:                                  ; preds = %.preheader154.2
  %i.u = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.4 unwind label %bb.l ; 0 uses

.preheader154.4:                                  ; preds = %.preheader154.3
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.5 unwind label %bb.l ; 0 uses

.preheader154.5:                                  ; preds = %.preheader154.4
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.6 unwind label %bb.l ; 0 uses

.preheader154.6:                                  ; preds = %.preheader154.5
  %i.x = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.7 unwind label %bb.l ; 0 uses

.preheader154.7:                                  ; preds = %.preheader154.6
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.8 unwind label %bb.l ; 0 uses

.preheader154.8:                                  ; preds = %.preheader154.7
  %i.z = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.9 unwind label %bb.l ; 0 uses

.preheader154.9:                                  ; preds = %.preheader154.8
  %i.aa = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.preheader154.9, %.preheader154.8, %.preheader154.7, %.preheader154.6, %.preheader154.5, %.preheader154.4, %.preheader154.3, %.preheader154.2, %.preheader154.1, %.preheader154.preheader
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader153.preheader:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ae = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.1 unwind label %bb.n ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader153.1:                                  ; preds = %.preheader153.preheader
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.2 unwind label %bb.n ; 0 uses

.preheader153.2:                                  ; preds = %.preheader153.1
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.3 unwind label %bb.n ; 0 uses

.preheader153.3:                                  ; preds = %.preheader153.2
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.4 unwind label %bb.n ; 0 uses

.preheader153.4:                                  ; preds = %.preheader153.3
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.5 unwind label %bb.n ; 0 uses

.preheader153.5:                                  ; preds = %.preheader153.4
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.6 unwind label %bb.n ; 0 uses

.preheader153.6:                                  ; preds = %.preheader153.5
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.7 unwind label %bb.n ; 0 uses

.preheader153.7:                                  ; preds = %.preheader153.6
  %i.ao = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.8 unwind label %bb.n ; 0 uses

.preheader153.8:                                  ; preds = %.preheader153.7
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.9 unwind label %bb.n ; 0 uses

.preheader153.9:                                  ; preds = %.preheader153.8
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %.preheader153.9, %.preheader153.8, %.preheader153.7, %.preheader153.6, %.preheader153.5, %.preheader153.4, %.preheader153.3, %.preheader153.2, %.preheader153.1, %.preheader153.preheader
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader: ; preds = %.preheader153.9
  %i.au = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.av = add i64 %i.au, -6                       ; 2 uses
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit90: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97
  %i.be = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i96, -11
  store i64 %i.be, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  ret void

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = phi i64 [ %i.av, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %i.dy, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 3 uses
  %indvars.iv202 = phi i64 [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next203, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 13 uses
  %indvars.iv198 = phi i32 [ 5, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next199, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 2 uses
  %i.bf = sub nsw i64 0, %indvars.iv202
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv198, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <4 x i32> <i32 0, i32 100, i32 1, i32 101>, ptr %0, align 16, !tbaa !18
  store <4 x i32> <i32 2, i32 102, i32 3, i32 103>, ptr %i.bb, align 16, !tbaa !18
  store i32 4, ptr %i.bc, align 16, !tbaa !72
  store i32 104, ptr %i.bd, align 4, !tbaa !74
  %i.bg = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.bg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %.idx151 = shl nuw nsw i64 %indvars.iv202, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx151 ; 4 uses
  %i.bi = add nuw nsw i64 %indvars.iv202, 100     ; 2 uses
  %i.bj = or disjoint i64 %indvars.iv202, 200     ; 2 uses
  %.not.i.i.i92 = icmp samesign eq i64 %indvars.iv202, 5
  br i1 %.not.i.i.i92, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread
  store i32 105, ptr %i.ax, align 8, !tbaa !72, !noalias !1268
  store i32 205, ptr %i.az, align 4, !tbaa !74, !noalias !1268
  %i.bk = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bk, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !1268
  store i64 6, ptr %i.aw, align 16, !tbaa !167, !noalias !1268
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread
  %i.bl = load <2 x i32>, ptr %i.ay, align 16, !tbaa !18, !noalias !1268
  store <2 x i32> %i.bl, ptr %i.ax, align 8, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ay, align 16, !tbaa !72, !noalias !1268
  store i32 0, ptr %i.ba, align 4, !tbaa !74, !noalias !1268
  %i.bm = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !1268
  store i64 6, ptr %i.aw, align 16, !tbaa !167, !noalias !1268
  %.not8.i.i.i.i = icmp eq i64 %indvars.iv202, 4
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.p
  %i.bn = sub nsw i64 4, %indvars.iv202           ; 2 uses
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.prol ], [ %i.ax, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.prol ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bo = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -8 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.br = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4
  %i.bs = load <2 x i32>, ptr %i.bp, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bp, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.br, align 4, !tbaa !74, !noalias !1268
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1273

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %i.bt = add nsw i64 %indvars.iv202, -1
  %i.bu = icmp ult i64 %i.bt, 3
  br i1 %i.bu, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.bx = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4
  %i.by = load <2 x i32>, ptr %i.bv, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bv, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.by, ptr %i.bw, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bx, align 4, !tbaa !74, !noalias !1268
  %i.bz = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12
  %i.cc = load <2 x i32>, ptr %i.bz, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bz, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.cb, align 4, !tbaa !74, !noalias !1268
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -24 ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -24
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -20
  %i.cg = load <2 x i32>, ptr %i.cd, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.cd, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.cf, align 4, !tbaa !74, !noalias !1268
  %i.ch = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -32 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -32 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -28
  %i.cl = load <2 x i32>, ptr %i.ci, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ci, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.cl, ptr %i.cj, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ck, align 4, !tbaa !74, !noalias !1268
  %.not.i.i.i.i.3 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !649

_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.p
  %i.cm = trunc nuw nsw i64 %i.bi to i32
  store i32 %i.cm, ptr %i.bh, align 8, !tbaa !72, !noalias !1268
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.co = trunc nuw nsw i64 %i.bj to i32
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !74, !noalias !1268
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.o
  %i.cp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.1, i32 noundef 613, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %bb.q
  %.not = icmp eq i64 %indvars.iv202, 0
  %.pre247 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cr = add i64 %.pre247, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.cs = phi i64 [ %.pre247, %.preheader ], [ %i.ds, %bb.t ]
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.cu = load i32, ptr %i.bh, align 8, !tbaa !72
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp eq i64 %i.bi, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp eq i64 %i.bj, %i.cz
  %i.db = select i1 %i.cw, i1 %i.da, i1 false
  %i.dc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.db)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.s:                                             ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.df = phi i64 [ %i.cr, %.lr.ph.preheader ], [ %i.dr, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.dh = add nuw nsw i64 %indvars.iv, 100
  store i64 %i.df, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.di = load i32, ptr %i.dg, align 8, !tbaa !72
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp eq i64 %indvars.iv, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp eq i64 %i.dh, %i.dn
  %i.dp = select i1 %i.dk, i1 %i.do, i1 false
  %i.dq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1, i32 noundef 615, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.dp)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %.lr.ph
  %i.dr = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.ds = add i64 %i.dr, -1                       ; 2 uses
  store i64 %i.ds, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv202
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1274

bb.u:                                             ; preds = %.lr.ph
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.v:                                             ; preds = %._crit_edge
  %i.dw = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.dx = add i64 %i.dw, -1                       ; 2 uses
  store i64 %i.dx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %1 = icmp samesign ult i64 %indvars.iv202, 5
  br i1 %1, label %.lr.ph178.preheader, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97

.lr.ph178.preheader:                              ; preds = %bb.v
  %wide.trip.count200 = zext nneg i32 %smax to i64
  br label %.lr.ph178

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97: ; preds = %bb.x, %bb.v
  %_ZZN14counting_value1cEvE2co.promoted.i.i96 = phi i64 [ %i.dx, %bb.v ], [ %i.er, %bb.x ] ; 2 uses
  %i.dy = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i96, -6 ; 2 uses
  store i64 %i.dy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %indvars.iv.next199 = add nsw i32 %indvars.iv198, -1
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, 6
  br i1 %exitcond205.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit90, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread, !llvm.loop !1275

bb.w:                                             ; preds = %._crit_edge
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.x
  %i.ec = phi i64 [ %i.dw, %.lr.ph178.preheader ], [ %i.eq, %bb.x ]
  %indvars.iv195 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next196, %bb.x ] ; 2 uses
  %i.ed = add nuw nsw i64 %indvars.iv195, %indvars.iv202 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = add nuw nsw i64 %i.ed, 100
  store i64 %i.ec, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.eh = load i32, ptr %i.ef, align 8, !tbaa !72
  %i.ei = zext i32 %i.eh to i64
  %i.ej = icmp eq i64 %i.ed, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = zext i32 %i.el to i64
  %i.en = icmp eq i64 %i.eg, %i.em
  %i.eo = select i1 %i.ej, i1 %i.en, i1 false
  %i.ep = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.eo)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.lr.ph178
  %i.eq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.er = add i64 %i.eq, -1                       ; 2 uses
  store i64 %i.er, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count200
  br i1 %exitcond201.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97, label %.lr.ph178, !llvm.loop !1276

bb.y:                                             ; preds = %.lr.ph178
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105: ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y
  %.pn60 = phi { ptr, i32 } [ %i.dt, %bb.u ], [ %i.es, %bb.y ], [ %i.dz, %bb.w ], [ %i.de, %bb.s ], [ %i.dd, %bb.r ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ev = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i100, -6
  store i64 %i.ev, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75: ; preds = %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.l, %bb.c, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105
  %.sink253 = phi i64 [ -5, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ -10, %bb.k ], [ -10, %bb.c ], [ -10, %bb.l ], [ -10, %bb.i ], [ -10, %bb.j ], [ -10, %bb.n ], [ -10, %bb.m ]
  %.pn67.pn = phi { ptr, i32 } [ %.pn60, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ %i.r, %bb.k ], [ %i.c, %bb.c ], [ %i.ab, %bb.l ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ %i.ar, %bb.n ], [ %i.ah, %bb.m ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ew = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre, %.sink253
  store i64 %i.ew, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  resume { ptr, i32 } %.pn67.pn

bb.z:                                             ; preds = %bb.j, %bb.i
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  tail call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemIiLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %1 = alloca %"class.boost::container::vec_iterator.291", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::vec_iterator.291", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::static_vector.284", align 16 ; 13 uses
  %4 = alloca %"class.boost::container::static_vector.19", align 16 ; 6 uses
  %5 = alloca %"class.boost::container::vec_iterator.290", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::static_vector.19", align 16 ; 6 uses
  %7 = alloca %"class.boost::container::vec_iterator.290", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 3 uses
  %.pre.i.i.i = load i32, ptr %0, align 4, !tbaa !18 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.b, align 8, !tbaa !129
  %i.c = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i32> %i.d, ptr %3, align 16
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.pre.i.i.i, ptr %.sroa.762.0..sroa_idx, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 5, ptr %i.f, align 8, !tbaa !129
  store <4 x i32> %i.d, ptr %i.e, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %.pre.i.i.i, ptr %.sroa.7.0..sroa_idx, align 16
  store i64 2, ptr %i.a, align 16, !tbaa !1277
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 5, ptr %i.g, align 8, !tbaa !129
  store <4 x i32> %i.d, ptr %4, align 16, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 16, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %3, ptr %2, align 8, !tbaa !1281, !noalias !1284
  call void @_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.290") align 8 %5, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.i = load i64, ptr %i.a, align 16, !tbaa !1277, !noalias !1287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 5, ptr %i.j, align 8, !tbaa !129
  %.pre.i.i.i43 = load i32, ptr %0, align 4, !tbaa !18 ; 2 uses
  %i.k = insertelement <4 x i32> poison, i32 %.pre.i.i.i43, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.l, ptr %6, align 16, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.pre.i.i.i43, ptr %i.m, align 16, !tbaa !18
  %i.n = getelementptr inbounds [48 x i8], ptr %3, i64 %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.n, ptr %1, align 8, !tbaa !1281, !noalias !1290
  call void @_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.290") align 8 %7, ptr noundef nonnull align 8 dereferenceable(488) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.o = load i64, ptr %i.a, align 16, !tbaa !1277
  %.not.i51 = icmp eq i64 %i.o, 10
  br i1 %.not.i51, label %.noexc53, label %.lr.ph.preheader.i.i.i.i.i.i, !prof !24

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.noexc53:                                         ; preds = %.lr.ph.i.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %1 = alloca %"class.boost::container::static_vector.298", align 16 ; 13 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 16 ; 6 uses
  %3 = alloca %"class.boost::container::static_vector.43", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 3 uses
  %.pre.i.i.i = load i32, ptr %0, align 4, !tbaa !18 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 5, ptr %i.b, align 8, !tbaa !225
  %i.c = insertelement <4 x i32> poison, i32 %.pre.i.i.i, i64 0
  %i.d = shufflevector <4 x i32> %i.c, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  store <4 x i32> %i.d, ptr %1, align 16, !tbaa !18
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.pre.i.i.i, ptr %.sroa.776.0..sroa_idx, align 16, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 5, ptr %i.f, align 8, !tbaa !225
  store <4 x i32> %i.d, ptr %i.e, align 16, !tbaa !18
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.pre.i.i.i, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !18
  store i64 2, ptr %i.a, align 16, !tbaa !1293
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 5, ptr %i.g, align 8, !tbaa !225
  store <4 x i32> %i.d, ptr %2, align 16, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 16, !tbaa !18
  call void @_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.i = load i64, ptr %i.a, align 16, !tbaa !1293, !noalias !1297 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 5, ptr %i.j, align 8, !tbaa !225
  %.pre.i.i.i48 = load i32, ptr %0, align 4, !tbaa !18 ; 2 uses
  %i.k = insertelement <4 x i32> poison, i32 %.pre.i.i.i48, i64 0
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.l, ptr %3, align 16, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.pre.i.i.i48, ptr %i.m, align 16, !tbaa !18
  %.not.i.i54 = icmp eq i64 %i.i, 10
  br i1 %.not.i.i54, label %.noexc56, label %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55, !prof !24

.noexc56:                                         ; preds = %.lr.ph.i.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI8value_ndLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55: ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds [48 x i8], ptr %1, i64 %i.i
  call void @_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %i.n, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.o = load i64, ptr %i.a, align 16, !tbaa !1293
  %.not.i59 = icmp eq i64 %i.o, 10
  br i1 %.not.i59, label %.noexc61, label %.lr.ph.preheader.i.i.i.i.i.i, !prof !24

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.noexc61:                                         ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI8value_ndLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i55
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI8value_ndLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemI14counting_valueLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i:
  %1 = alloca %"class.boost::container::static_vector.310", align 8 ; 30 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5, ptr %i.b, align 8, !tbaa !179
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !18 ; 3 uses
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.e = extractelement <2 x i32> %i.c, i64 1     ; 11 uses
  %i.f = extractelement <2 x i32> %i.c, i64 0     ; 11 uses
  store <8 x i32> %i.d, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.e, ptr %i.h, align 4, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 5, ptr %i.j, align 8, !tbaa !179
  store i32 %i.f, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.e, ptr %i.k, align 4, !tbaa !74
end_hunk_0
begin_hunk_1_@_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_4listIS3_vEEEvRKT1_RKT2_:bb.a
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.k, %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ba, %bb.n ], [ %i.bz, %bb.q ], [ %i.ae, %bb.i ], [ %i.ad, %bb.h ], [ %i.ac, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !300 ; 7 uses
  %.not3.i.i45 = icmp eq i64 %i.cc, 0
  br i1 %.not3.i.i45, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit53, label %.lr.ph.i.preheader.i46

.lr.ph.i.preheader.i46:                           ; preds = %bb.r
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i47 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %min.iters.check100 = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check100, label %.lr.ph.i.i48.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph.i.preheader.i46
  %n.vec102 = and i64 %i.cc, -8                   ; 3 uses
  %i.cd = and i64 %i.cc, 7
  %i.ce = shl i64 %n.vec102, 2
  %i.cf = getelementptr i8, ptr %3, i64 %i.ce
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next106, %vector.body103 ] ; 2 uses
  %i.cg = shl i64 %index104, 2
  %next.gep105 = getelementptr i8, ptr %3, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep105, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep105, align 8, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.ch, align 8, !tbaa !78
  %index.next106 = add nuw i64 %index104, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next106, %n.vec102
  br i1 %i.ci, label %middle.block107, label %vector.body103, !llvm.loop !2360

middle.block107:                                  ; preds = %vector.body103
  %cmp.n108 = icmp eq i64 %i.cc, %n.vec102
  br i1 %cmp.n108, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i52, label %.lr.ph.i.i48.preheader

.lr.ph.i.i48.preheader:                           ; preds = %.lr.ph.i.preheader.i46, %middle.block107
  %.05.i.i49.ph = phi i64 [ %i.cc, %.lr.ph.i.preheader.i46 ], [ %i.cd, %middle.block107 ]
  %storemerge4.i.i50.ph = phi ptr [ %3, %.lr.ph.i.preheader.i46 ], [ %i.cf, %middle.block107 ]
  br label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %.lr.ph.i.i48.preheader, %.lr.ph.i.i48
  %.05.i.i49 = phi i64 [ %i.cj, %.lr.ph.i.i48 ], [ %.05.i.i49.ph, %.lr.ph.i.i48.preheader ]
  %storemerge4.i.i50 = phi ptr [ %i.ck, %.lr.ph.i.i48 ], [ %storemerge4.i.i50.ph, %.lr.ph.i.i48.preheader ] ; 2 uses
  %i.cj = add i64 %.05.i.i49, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i50, align 4, !tbaa !78
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i50, i64 4
  %.not.i.i51 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i51, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i52, label %.lr.ph.i.i48, !llvm.loop !2361

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i52: ; preds = %.lr.ph.i.i48, %middle.block107
  %i.cl = trunc i64 %i.cc to i32
  %i.cm = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i47, %i.cl
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit53

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit53: ; preds = %bb.r, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapIS4_mS7_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i10 = alloca [2048 x i8], align 4      ; 12 uses
  %.sroa.0.i = alloca [2048 x i8], align 4        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129  ; 7 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = shl i64 %i.b, 2                          ; 2 uses
  %i.g = lshr i64 %i.f, 11                        ; 3 uses
  %i.h = add nuw nsw i64 %i.g, 3
  %i.i = lshr i64 %i.h, 2                         ; 4 uses
  %i.j = icmp eq i64 %i.g, 0
  %i.k = select i1 %i.j, i64 4, i64 0
  %i.l = and i64 %i.g, 3
  %i.m = or disjoint i64 %i.k, %i.l
  switch i64 %i.m, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit [
    i64 1, label %bb.f
    i64 0, label %bb.c
    i64 3, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.f, %bb.b
  %.060.i = phi ptr [ %i.t, %bb.f ], [ %1, %bb.b ] ; 3 uses
  %.056.i = phi ptr [ %i.u, %bb.f ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi i64 [ %i.v, %bb.f ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.060.i, i64 2048
  %i.o = getelementptr inbounds nuw i8, ptr %.056.i, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.161.i = phi ptr [ %i.n, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.157.i = phi ptr [ %i.o, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.161.i, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %.157.i, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.262.i = phi ptr [ %i.p, %bb.d ], [ %1, %bb.b ] ; 3 uses
  %.258.i = phi ptr [ %i.q, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %bb.d ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.262.i, i64 2048
  %i.s = getelementptr inbounds nuw i8, ptr %.258.i, i64 2048
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.363.i = phi ptr [ %1, %bb.b ], [ %i.r, %bb.e ] ; 3 uses
  %.359.i = phi ptr [ %0, %bb.b ], [ %i.s, %bb.e ] ; 3 uses
  %.3.i = phi i64 [ %i.i, %bb.b ], [ %.2.i, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.363.i, i64 2048 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.359.i, i64 2048 ; 2 uses
  %i.v = add i64 %.3.i, -1                        ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit, label %bb.c, !llvm.loop !2362

_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit: ; preds = %bb.f, %bb.b
  %.464.i = phi ptr [ %1, %bb.b ], [ %i.t, %bb.f ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.b ], [ %i.u, %bb.f ]  ; 2 uses
  %i.w = and i64 %i.f, 2044                       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull align 1 %.464.i, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i, ptr nonnull align 1 %.4.i, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i, ptr nonnull align 4 %.sroa.0.i, i64 %i.w, i1 false)
  %i.x = sub i64 %i.d, %i.b
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.aa = shl i64 %i.x, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 4 %i.z, i64 %i.aa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i10)
  %i.ab = shl i64 %i.d, 2                         ; 2 uses
  %i.ac = lshr i64 %i.ab, 11                      ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 3
  %i.ae = lshr i64 %i.ad, 2                       ; 4 uses
  %i.af = icmp eq i64 %i.ac, 0
  %i.ag = select i1 %i.af, i64 4, i64 0
  %i.ah = and i64 %i.ac, 3
  %i.ai = or disjoint i64 %i.ag, %i.ah
  switch i64 %i.ai, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.k, %bb.g
  %.060.i18 = phi ptr [ %i.ap, %bb.k ], [ %0, %bb.g ] ; 3 uses
  %.056.i19 = phi ptr [ %i.aq, %bb.k ], [ %1, %bb.g ] ; 3 uses
  %.0.i20 = phi i64 [ %i.ar, %bb.k ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.060.i18, i64 2048
  %i.ak = getelementptr inbounds nuw i8, ptr %.056.i19, i64 2048
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.161.i21 = phi ptr [ %i.aj, %bb.h ], [ %0, %bb.g ] ; 3 uses
  %.157.i22 = phi ptr [ %i.ak, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.1.i23 = phi i64 [ %.0.i20, %bb.h ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.161.i21, i64 2048
  %i.am = getelementptr inbounds nuw i8, ptr %.157.i22, i64 2048
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.262.i11 = phi ptr [ %i.al, %bb.i ], [ %0, %bb.g ] ; 3 uses
  %.258.i12 = phi ptr [ %i.am, %bb.i ], [ %1, %bb.g ] ; 3 uses
  %.2.i13 = phi i64 [ %.1.i23, %bb.i ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.262.i11, i64 2048
  %i.ao = getelementptr inbounds nuw i8, ptr %.258.i12, i64 2048
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.363.i14 = phi ptr [ %0, %bb.g ], [ %i.an, %bb.j ] ; 3 uses
  %.359.i15 = phi ptr [ %1, %bb.g ], [ %i.ao, %bb.j ] ; 3 uses
  %.3.i16 = phi i64 [ %i.ae, %bb.g ], [ %.2.i13, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.363.i14, i64 2048 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.359.i15, i64 2048 ; 2 uses
  %i.ar = add i64 %.3.i16, -1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.ar, 0
  br i1 %.not.i17, label %bb.l, label %bb.h, !llvm.loop !2362

bb.l:                                             ; preds = %bb.k, %bb.g
  %.464.i24 = phi ptr [ %0, %bb.g ], [ %i.ap, %bb.k ] ; 2 uses
  %.4.i25 = phi ptr [ %1, %bb.g ], [ %i.aq, %bb.k ] ; 2 uses
  %i.as = and i64 %i.ab, 2044                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i10, ptr nonnull align 1 %.464.i24, i64 %i.as, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i24, ptr nonnull align 1 %.4.i25, i64 %i.as, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i25, ptr nonnull align 4 %.sroa.0.i10, i64 %i.as, i1 false)
  %.not.i.i.i26 = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i.i26, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.at = sub i64 %i.b, %i.d
  %i.au = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.aw = shl i64 %i.at, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr nonnull align 4 %i.av, i64 %i.aw, i1 false)
  br label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27

_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i10)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27, %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !69
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !69
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapINS3_IiLm10ELm0ELb1EEEmS7_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i10 = alloca [2048 x i8], align 4      ; 12 uses
  %.sroa.0.i = alloca [2048 x i8], align 4        ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !980  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129  ; 7 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = shl i64 %i.b, 2                          ; 2 uses
  %i.g = lshr i64 %i.f, 11                        ; 3 uses
  %i.h = add nuw nsw i64 %i.g, 3
  %i.i = lshr i64 %i.h, 2                         ; 4 uses
  %i.j = icmp eq i64 %i.g, 0
  %i.k = select i1 %i.j, i64 4, i64 0
  %i.l = and i64 %i.g, 3
  %i.m = or disjoint i64 %i.k, %i.l
  switch i64 %i.m, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit [
    i64 1, label %bb.f
    i64 0, label %bb.c
    i64 3, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.f, %bb.b
  %.060.i = phi ptr [ %i.t, %bb.f ], [ %1, %bb.b ] ; 3 uses
  %.056.i = phi ptr [ %i.u, %bb.f ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi i64 [ %i.v, %bb.f ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.060.i, i64 2048
  %i.o = getelementptr inbounds nuw i8, ptr %.056.i, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.161.i = phi ptr [ %i.n, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.157.i = phi ptr [ %i.o, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.161.i, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %.157.i, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.262.i = phi ptr [ %i.p, %bb.d ], [ %1, %bb.b ] ; 3 uses
  %.258.i = phi ptr [ %i.q, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %bb.d ], [ %i.i, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.262.i, i64 2048
  %i.s = getelementptr inbounds nuw i8, ptr %.258.i, i64 2048
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.363.i = phi ptr [ %1, %bb.b ], [ %i.r, %bb.e ] ; 3 uses
  %.359.i = phi ptr [ %0, %bb.b ], [ %i.s, %bb.e ] ; 3 uses
  %.3.i = phi i64 [ %i.i, %bb.b ], [ %.2.i, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.363.i, i64 2048 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.359.i, i64 2048 ; 2 uses
  %i.v = add i64 %.3.i, -1                        ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit, label %bb.c, !llvm.loop !2363

_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit: ; preds = %bb.f, %bb.b
  %.464.i = phi ptr [ %1, %bb.b ], [ %i.t, %bb.f ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.b ], [ %i.u, %bb.f ]  ; 2 uses
  %i.w = and i64 %i.f, 2044                       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull align 1 %.464.i, i64 %i.w, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i, ptr nonnull align 1 %.4.i, i64 %i.w, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i, ptr nonnull align 4 %.sroa.0.i, i64 %i.w, i1 false)
  %i.x = sub i64 %i.d, %i.b
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.aa = shl i64 %i.x, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr nonnull align 4 %i.z, i64 %i.aa, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i10)
  %i.ab = shl i64 %i.d, 2                         ; 2 uses
  %i.ac = lshr i64 %i.ab, 11                      ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 3
  %i.ae = lshr i64 %i.ad, 2                       ; 4 uses
  %i.af = icmp eq i64 %i.ac, 0
  %i.ag = select i1 %i.af, i64 4, i64 0
  %i.ah = and i64 %i.ac, 3
  %i.ai = or disjoint i64 %i.ag, %i.ah
  switch i64 %i.ai, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.k, %bb.g
  %.060.i18 = phi ptr [ %i.ap, %bb.k ], [ %0, %bb.g ] ; 3 uses
  %.056.i19 = phi ptr [ %i.aq, %bb.k ], [ %1, %bb.g ] ; 3 uses
  %.0.i20 = phi i64 [ %i.ar, %bb.k ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.060.i18, i64 2048
  %i.ak = getelementptr inbounds nuw i8, ptr %.056.i19, i64 2048
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.161.i21 = phi ptr [ %i.aj, %bb.h ], [ %0, %bb.g ] ; 3 uses
  %.157.i22 = phi ptr [ %i.ak, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.1.i23 = phi i64 [ %.0.i20, %bb.h ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.161.i21, i64 2048
  %i.am = getelementptr inbounds nuw i8, ptr %.157.i22, i64 2048
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.262.i11 = phi ptr [ %i.al, %bb.i ], [ %0, %bb.g ] ; 3 uses
  %.258.i12 = phi ptr [ %i.am, %bb.i ], [ %1, %bb.g ] ; 3 uses
  %.2.i13 = phi i64 [ %.1.i23, %bb.i ], [ %i.ae, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.262.i11, i64 2048
  %i.ao = getelementptr inbounds nuw i8, ptr %.258.i12, i64 2048
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.363.i14 = phi ptr [ %0, %bb.g ], [ %i.an, %bb.j ] ; 3 uses
  %.359.i15 = phi ptr [ %1, %bb.g ], [ %i.ao, %bb.j ] ; 3 uses
  %.3.i16 = phi i64 [ %i.ae, %bb.g ], [ %.2.i13, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.363.i14, i64 2048 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.359.i15, i64 2048 ; 2 uses
  %i.ar = add i64 %.3.i16, -1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.ar, 0
  br i1 %.not.i17, label %bb.l, label %bb.h, !llvm.loop !2363

bb.l:                                             ; preds = %bb.k, %bb.g
  %.464.i24 = phi ptr [ %0, %bb.g ], [ %i.ap, %bb.k ] ; 2 uses
  %.4.i25 = phi ptr [ %1, %bb.g ], [ %i.aq, %bb.k ] ; 2 uses
  %i.as = and i64 %i.ab, 2044                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i10, ptr nonnull align 1 %.464.i24, i64 %i.as, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i24, ptr nonnull align 1 %.4.i25, i64 %i.as, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i25, ptr nonnull align 4 %.sroa.0.i10, i64 %i.as, i1 false)
  %.not.i.i.i26 = icmp eq i64 %i.b, %i.d
  br i1 %.not.i.i.i26, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.at = sub i64 %i.b, %i.d
  %i.au = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.aw = shl i64 %i.at, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.au, ptr nonnull align 4 %i.av, i64 %i.aw, i1 false)
  br label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27

_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i10)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit27, %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEPiS5_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S8_mS9_m.exit
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !69
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !69
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !69
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapIS5_mS8_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.sroa.0.i10 = alloca [2048 x i8], align 4      ; 12 uses
  %.sroa.0.i = alloca [2048 x i8], align 4        ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !225  ; 6 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.h = shl i64 %i.d, 2                          ; 2 uses
  %i.i = lshr i64 %i.h, 11                        ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 3
  %i.k = lshr i64 %i.j, 2                         ; 4 uses
  %i.l = icmp eq i64 %i.i, 0
  %i.m = select i1 %i.l, i64 4, i64 0
  %i.n = and i64 %i.i, 3
  %i.o = or disjoint i64 %i.m, %i.n
  switch i64 %i.o, label %.lr.ph.i.preheader.i [
    i64 1, label %bb.f
    i64 0, label %bb.c
    i64 3, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.f, %bb.b
  %.060.i = phi ptr [ %i.v, %bb.f ], [ %1, %bb.b ] ; 3 uses
  %.056.i = phi ptr [ %i.w, %bb.f ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi i64 [ %i.x, %bb.f ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.060.i, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %.056.i, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.161.i = phi ptr [ %i.p, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.157.i = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.c ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.161.i, i64 2048
  %i.s = getelementptr inbounds nuw i8, ptr %.157.i, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.262.i = phi ptr [ %i.r, %bb.d ], [ %1, %bb.b ] ; 3 uses
  %.258.i = phi ptr [ %i.s, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %bb.d ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.262.i, i64 2048
  %i.u = getelementptr inbounds nuw i8, ptr %.258.i, i64 2048
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.363.i = phi ptr [ %1, %bb.b ], [ %i.t, %bb.e ] ; 3 uses
  %.359.i = phi ptr [ %0, %bb.b ], [ %i.u, %bb.e ] ; 3 uses
  %.3.i = phi i64 [ %i.k, %bb.b ], [ %.2.i, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.363.i, i64 2048 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.359.i, i64 2048 ; 2 uses
  %i.x = add i64 %.3.i, -1                        ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i.preheader.i, label %bb.c, !llvm.loop !2364

.lr.ph.i.preheader.i:                             ; preds = %bb.f, %bb.b
  %.464.i = phi ptr [ %1, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.b ], [ %i.w, %bb.f ]  ; 2 uses
  %i.y = and i64 %i.h, 2044                       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull align 1 %.464.i, i64 %i.y, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i, ptr nonnull align 1 %.4.i, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i, ptr nonnull align 4 %.sroa.0.i, i64 %i.y, i1 false)
  %i.z = sub i64 %i.f, %i.d                       ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d ; 3 uses
  %min.iters.check53 = icmp ult i64 %i.z, 8
  %i.ac = sub i64 %i.b, %i.a
  %diff.check51 = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check53, %diff.check51
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec55 = and i64 %i.z, -8                     ; 3 uses
  %i.ad = and i64 %i.z, 7
  %i.ae = shl i64 %n.vec55, 2                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.ae
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next69, %vector.body56 ] ; 2 uses
  %i.ah = shl i64 %index57, 2                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.ab, i64 %i.ah ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.aa, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59) ]
  %i.ai = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !18
  %wide.load68 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !18
  %i.aj = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep59, align 4, !tbaa !18
  store <4 x i32> %wide.load68, ptr %i.aj, align 4, !tbaa !18
  %index.next69 = add nuw i64 %index57, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next69, %n.vec55
  br i1 %i.ak, label %middle.block70, label %vector.body56, !llvm.loop !2365

middle.block70:                                   ; preds = %vector.body56
  %cmp.n71 = icmp eq i64 %i.z, %n.vec55
  br i1 %cmp.n71, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block70
  %.020.i.i.ph = phi i64 [ %i.z, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block70 ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.preheader.i ], [ %i.af, %middle.block70 ] ; 2 uses
  %.01618.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.preheader.i ], [ %i.ag, %middle.block70 ] ; 2 uses
  %i.al = add i64 %.020.i.i.ph, -1
  %xtraiter76 = and i64 %.020.i.i.ph, 7           ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %.0819.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.prol ], [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.am = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !18
  store i32 %i.an, ptr %.01618.i.i.prol, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2366

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.prol ]
  %i.aq = icmp ult i64 %i.al, 7
  br i1 %i.aq, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i, align 4, !tbaa !18
  store i32 %i.ar, ptr %.01618.i.i, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.au = load i32, ptr %i.as, align 4, !tbaa !18
  store i32 %i.au, ptr %i.at, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !18
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !18
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !18
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 20
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !18
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 24
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !18
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 28
  %i.bm = add i64 %.020.i.i, -8                   ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !18
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 32
  %.not.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.7, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i, !llvm.loop !2367

_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i10)
  %i.bq = shl i64 %i.f, 2                         ; 2 uses
  %i.br = lshr i64 %i.bq, 11                      ; 3 uses
  %i.bs = add nuw nsw i64 %i.br, 3
  %i.bt = lshr i64 %i.bs, 2                       ; 4 uses
  %i.bu = icmp eq i64 %i.br, 0
  %i.bv = select i1 %i.bu, i64 4, i64 0
  %i.bw = and i64 %i.br, 3
  %i.bx = or disjoint i64 %i.bv, %i.bw
  switch i64 %i.bx, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.k, %bb.g
  %.060.i18 = phi ptr [ %i.ce, %bb.k ], [ %0, %bb.g ] ; 3 uses
  %.056.i19 = phi ptr [ %i.cf, %bb.k ], [ %1, %bb.g ] ; 3 uses
  %.0.i20 = phi i64 [ %i.cg, %bb.k ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.060.i18, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %.056.i19, i64 2048
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.161.i21 = phi ptr [ %i.by, %bb.h ], [ %0, %bb.g ] ; 3 uses
  %.157.i22 = phi ptr [ %i.bz, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.1.i23 = phi i64 [ %.0.i20, %bb.h ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.161.i21, i64 2048
  %i.cb = getelementptr inbounds nuw i8, ptr %.157.i22, i64 2048
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.262.i11 = phi ptr [ %i.ca, %bb.i ], [ %0, %bb.g ] ; 3 uses
  %.258.i12 = phi ptr [ %i.cb, %bb.i ], [ %1, %bb.g ] ; 3 uses
  %.2.i13 = phi i64 [ %.1.i23, %bb.i ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.262.i11, i64 2048
  %i.cd = getelementptr inbounds nuw i8, ptr %.258.i12, i64 2048
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.363.i14 = phi ptr [ %0, %bb.g ], [ %i.cc, %bb.j ] ; 3 uses
  %.359.i15 = phi ptr [ %1, %bb.g ], [ %i.cd, %bb.j ] ; 3 uses
  %.3.i16 = phi i64 [ %i.bt, %bb.g ], [ %.2.i13, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.363.i14, i64 2048 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.359.i15, i64 2048 ; 2 uses
  %i.cg = add i64 %.3.i16, -1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.cg, 0
  br i1 %.not.i17, label %bb.l, label %bb.h, !llvm.loop !2364

bb.l:                                             ; preds = %bb.k, %bb.g
  %.464.i24 = phi ptr [ %0, %bb.g ], [ %i.ce, %bb.k ] ; 2 uses
  %.4.i25 = phi ptr [ %1, %bb.g ], [ %i.cf, %bb.k ] ; 2 uses
  %i.ch = and i64 %i.bq, 2044                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i10, ptr nonnull align 1 %.464.i24, i64 %i.ch, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i24, ptr nonnull align 1 %.4.i25, i64 %i.ch, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i25, ptr nonnull align 4 %.sroa.0.i10, i64 %i.ch, i1 false)
  %i.ci = sub i64 %i.d, %i.f                      ; 6 uses
  %.not17.i.i26 = icmp eq i64 %i.ci, 0
  br i1 %.not17.i.i26, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.preheader.i27

.lr.ph.i.preheader.i27:                           ; preds = %bb.l
  %i.cj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  %i.cl = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.cl, -32
  %or.cond75 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond75, label %.lr.ph.i.i28.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i27
  %n.vec = and i64 %i.ci, -8                      ; 3 uses
  %i.cm = and i64 %i.ci, 7
  %i.cn = shl i64 %n.vec, 2                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cq ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.cj, i64 %i.cq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep39) ]
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !18
  %wide.load47 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !18
  %i.cs = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %wide.load, ptr %next.gep39, align 4, !tbaa !18
  store <4 x i32> %wide.load47, ptr %i.cs, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !2368

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %.lr.ph.i.preheader.i27, %middle.block
  %.020.i.i29.ph = phi i64 [ %i.ci, %.lr.ph.i.preheader.i27 ], [ %i.cm, %middle.block ] ; 4 uses
  %.0819.i.i30.ph = phi ptr [ %i.ck, %.lr.ph.i.preheader.i27 ], [ %i.co, %middle.block ] ; 2 uses
  %.01618.i.i31.ph = phi ptr [ %i.cj, %.lr.ph.i.preheader.i27 ], [ %i.cp, %middle.block ] ; 2 uses
  %i.cu = add i64 %.020.i.i29.ph, -1
  %xtraiter = and i64 %.020.i.i29.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i28.prol.loopexit, label %.lr.ph.i.i28.prol

.lr.ph.i.i28.prol:                                ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28.prol
  %.020.i.i29.prol = phi i64 [ %i.cv, %.lr.ph.i.i28.prol ], [ %.020.i.i29.ph, %.lr.ph.i.i28.preheader ]
  %.0819.i.i30.prol = phi ptr [ %i.cx, %.lr.ph.i.i28.prol ], [ %.0819.i.i30.ph, %.lr.ph.i.i28.preheader ] ; 2 uses
  %.01618.i.i31.prol = phi ptr [ %i.cy, %.lr.ph.i.i28.prol ], [ %.01618.i.i31.ph, %.lr.ph.i.i28.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i28.prol ], [ 0, %.lr.ph.i.i28.preheader ]
  %i.cv = add i64 %.020.i.i29.prol, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i31.prol) ]
  %i.cw = load i32, ptr %.0819.i.i30.prol, align 4, !tbaa !18
  store i32 %i.cw, ptr %.01618.i.i31.prol, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.0819.i.i30.prol, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01618.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i28.prol.loopexit, label %.lr.ph.i.i28.prol, !llvm.loop !2369

.lr.ph.i.i28.prol.loopexit:                       ; preds = %.lr.ph.i.i28.prol, %.lr.ph.i.i28.preheader
  %.020.i.i29.unr = phi i64 [ %.020.i.i29.ph, %.lr.ph.i.i28.preheader ], [ %i.cv, %.lr.ph.i.i28.prol ]
  %.0819.i.i30.unr = phi ptr [ %.0819.i.i30.ph, %.lr.ph.i.i28.preheader ], [ %i.cx, %.lr.ph.i.i28.prol ]
  %.01618.i.i31.unr = phi ptr [ %.01618.i.i31.ph, %.lr.ph.i.i28.preheader ], [ %i.cy, %.lr.ph.i.i28.prol ]
  %i.cz = icmp ult i64 %i.cu, 7
  br i1 %i.cz, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.prol.loopexit, %.lr.ph.i.i28
  %.020.i.i29 = phi i64 [ %i.dv, %.lr.ph.i.i28 ], [ %.020.i.i29.unr, %.lr.ph.i.i28.prol.loopexit ]
  %.0819.i.i30 = phi ptr [ %i.dx, %.lr.ph.i.i28 ], [ %.0819.i.i30.unr, %.lr.ph.i.i28.prol.loopexit ] ; 9 uses
  %.01618.i.i31 = phi ptr [ %i.dy, %.lr.ph.i.i28 ], [ %.01618.i.i31.unr, %.lr.ph.i.i28.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i31) ]
  %i.da = load i32, ptr %.0819.i.i30, align 4, !tbaa !18
  store i32 %i.da, ptr %.01618.i.i31, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !18
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 8
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !18
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 12
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !18
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 16
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 20
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 24
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !18
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 28
  %i.dv = add i64 %.020.i.i29, -8                 ; 2 uses
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !18
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 32
  %.not.i.i32.7 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i32.7, label %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28, !llvm.loop !2370

_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33: ; preds = %.lr.ph.i.i28.prol.loopexit, %.lr.ph.i.i28, %middle.block, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i10)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, %_ZN5boost9container17deep_swap_alloc_nILm40ENS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !69
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !69
  store i64 %i.dz, ptr %i.e, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEE14priv_deep_swapINS3_IS4_Lm10ELm0ELb1EEEmS8_EEvRNS1_IT_T0_T1_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.sroa.0.i10 = alloca [2048 x i8], align 4      ; 12 uses
  %.sroa.0.i = alloca [2048 x i8], align 4        ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1048 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !225  ; 6 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.h = shl i64 %i.d, 2                          ; 2 uses
  %i.i = lshr i64 %i.h, 11                        ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 3
  %i.k = lshr i64 %i.j, 2                         ; 4 uses
  %i.l = icmp eq i64 %i.i, 0
  %i.m = select i1 %i.l, i64 4, i64 0
  %i.n = and i64 %i.i, 3
  %i.o = or disjoint i64 %i.m, %i.n
  switch i64 %i.o, label %.lr.ph.i.preheader.i [
    i64 1, label %bb.f
    i64 0, label %bb.c
    i64 3, label %bb.d
    i64 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.f, %bb.b
  %.060.i = phi ptr [ %i.v, %bb.f ], [ %1, %bb.b ] ; 3 uses
  %.056.i = phi ptr [ %i.w, %bb.f ], [ %0, %bb.b ] ; 3 uses
  %.0.i = phi i64 [ %i.x, %bb.f ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.060.i, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %.056.i, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.161.i = phi ptr [ %i.p, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.157.i = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.1.i = phi i64 [ %.0.i, %bb.c ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.161.i, i64 2048
  %i.s = getelementptr inbounds nuw i8, ptr %.157.i, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.262.i = phi ptr [ %i.r, %bb.d ], [ %1, %bb.b ] ; 3 uses
  %.258.i = phi ptr [ %i.s, %bb.d ], [ %0, %bb.b ] ; 3 uses
  %.2.i = phi i64 [ %.1.i, %bb.d ], [ %i.k, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.262.i, i64 2048
  %i.u = getelementptr inbounds nuw i8, ptr %.258.i, i64 2048
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.363.i = phi ptr [ %1, %bb.b ], [ %i.t, %bb.e ] ; 3 uses
  %.359.i = phi ptr [ %0, %bb.b ], [ %i.u, %bb.e ] ; 3 uses
  %.3.i = phi i64 [ %i.k, %bb.b ], [ %.2.i, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i, i64 2048, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.363.i, i64 2048 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.359.i, i64 2048 ; 2 uses
  %i.x = add i64 %.3.i, -1                        ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i.preheader.i, label %bb.c, !llvm.loop !2371

.lr.ph.i.preheader.i:                             ; preds = %bb.f, %bb.b
  %.464.i = phi ptr [ %1, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.b ], [ %i.w, %bb.f ]  ; 2 uses
  %i.y = and i64 %i.h, 2044                       ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull align 1 %.464.i, i64 %i.y, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i, ptr nonnull align 1 %.4.i, i64 %i.y, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i, ptr nonnull align 4 %.sroa.0.i, i64 %i.y, i1 false)
  %i.z = sub i64 %i.f, %i.d                       ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %1, i64 %i.d ; 3 uses
  %min.iters.check53 = icmp ult i64 %i.z, 8
  %i.ac = sub i64 %i.b, %i.a
  %diff.check51 = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check53, %diff.check51
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.ph54

vector.ph54:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec55 = and i64 %i.z, -8                     ; 3 uses
  %i.ad = and i64 %i.z, 7
  %i.ae = shl i64 %n.vec55, 2                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.ae
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next69, %vector.body56 ] ; 2 uses
  %i.ah = shl i64 %index57, 2                     ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.ab, i64 %i.ah ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.aa, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59) ]
  %i.ai = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !18
  %wide.load68 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !18
  %i.aj = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep59, align 4, !tbaa !18
  store <4 x i32> %wide.load68, ptr %i.aj, align 4, !tbaa !18
  %index.next69 = add nuw i64 %index57, 8         ; 2 uses
  %i.ak = icmp eq i64 %index.next69, %n.vec55
  br i1 %i.ak, label %middle.block70, label %vector.body56, !llvm.loop !2372

middle.block70:                                   ; preds = %vector.body56
  %cmp.n71 = icmp eq i64 %i.z, %n.vec55
  br i1 %cmp.n71, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block70
  %.020.i.i.ph = phi i64 [ %i.z, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block70 ] ; 4 uses
  %.0819.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.preheader.i ], [ %i.af, %middle.block70 ] ; 2 uses
  %.01618.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.preheader.i ], [ %i.ag, %middle.block70 ] ; 2 uses
  %i.al = add i64 %.020.i.i.ph, -1
  %xtraiter76 = and i64 %.020.i.i.ph, 7           ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ]
  %.0819.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.prol ], [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.am = add i64 %.020.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !18
  store i32 %i.an, ptr %.01618.i.i.prol, align 4, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2373

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %.020.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0819.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.01618.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.prol ]
  %i.aq = icmp ult i64 %i.al, 7
  br i1 %i.aq, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %.0819.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i, align 4, !tbaa !18
  store i32 %i.ar, ptr %.01618.i.i, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.au = load i32, ptr %i.as, align 4, !tbaa !18
  store i32 %i.au, ptr %i.at, align 4, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !18
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !18
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !18
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 20
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !18
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 24
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !18
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 28
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 28
  %i.bm = add i64 %.020.i.i, -8                   ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !18
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 32
  %.not.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.7, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit, label %.lr.ph.i.i, !llvm.loop !2374

_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i10)
  %i.bq = shl i64 %i.f, 2                         ; 2 uses
  %i.br = lshr i64 %i.bq, 11                      ; 3 uses
  %i.bs = add nuw nsw i64 %i.br, 3
  %i.bt = lshr i64 %i.bs, 2                       ; 4 uses
  %i.bu = icmp eq i64 %i.br, 0
  %i.bv = select i1 %i.bu, i64 4, i64 0
  %i.bw = and i64 %i.br, 3
  %i.bx = or disjoint i64 %i.bv, %i.bw
  switch i64 %i.bx, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.h
    i64 3, label %bb.i
    i64 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.k, %bb.g
  %.060.i18 = phi ptr [ %i.ce, %bb.k ], [ %0, %bb.g ] ; 3 uses
  %.056.i19 = phi ptr [ %i.cf, %bb.k ], [ %1, %bb.g ] ; 3 uses
  %.0.i20 = phi i64 [ %i.cg, %bb.k ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.060.i18, ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.056.i19, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.060.i18, i64 2048
  %i.bz = getelementptr inbounds nuw i8, ptr %.056.i19, i64 2048
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.161.i21 = phi ptr [ %i.by, %bb.h ], [ %0, %bb.g ] ; 3 uses
  %.157.i22 = phi ptr [ %i.bz, %bb.h ], [ %1, %bb.g ] ; 3 uses
  %.1.i23 = phi i64 [ %.0.i20, %bb.h ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.161.i21, ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.157.i22, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.161.i21, i64 2048
  %i.cb = getelementptr inbounds nuw i8, ptr %.157.i22, i64 2048
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.262.i11 = phi ptr [ %i.ca, %bb.i ], [ %0, %bb.g ] ; 3 uses
  %.258.i12 = phi ptr [ %i.cb, %bb.i ], [ %1, %bb.g ] ; 3 uses
  %.2.i13 = phi i64 [ %.1.i23, %bb.i ], [ %i.bt, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.262.i11, ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.258.i12, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.262.i11, i64 2048
  %i.cd = getelementptr inbounds nuw i8, ptr %.258.i12, i64 2048
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.363.i14 = phi ptr [ %0, %bb.g ], [ %i.cc, %bb.j ] ; 3 uses
  %.359.i15 = phi ptr [ %1, %bb.g ], [ %i.cd, %bb.j ] ; 3 uses
  %.3.i16 = phi i64 [ %i.bt, %bb.g ], [ %.2.i13, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, i64 2048, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.363.i14, ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, i64 2048, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2048) %.359.i15, ptr noundef nonnull align 4 dereferenceable(2048) %.sroa.0.i10, i64 2048, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.363.i14, i64 2048 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.359.i15, i64 2048 ; 2 uses
  %i.cg = add i64 %.3.i16, -1                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.cg, 0
  br i1 %.not.i17, label %bb.l, label %bb.h, !llvm.loop !2371

bb.l:                                             ; preds = %bb.k, %bb.g
  %.464.i24 = phi ptr [ %0, %bb.g ], [ %i.ce, %bb.k ] ; 2 uses
  %.4.i25 = phi ptr [ %1, %bb.g ], [ %i.cf, %bb.k ] ; 2 uses
  %i.ch = and i64 %i.bq, 2044                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i10, ptr nonnull align 1 %.464.i24, i64 %i.ch, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.464.i24, ptr nonnull align 1 %.4.i25, i64 %i.ch, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.4.i25, ptr nonnull align 4 %.sroa.0.i10, i64 %i.ch, i1 false)
  %i.ci = sub i64 %i.d, %i.f                      ; 6 uses
  %.not17.i.i26 = icmp eq i64 %i.ci, 0
  br i1 %.not17.i.i26, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.preheader.i27

.lr.ph.i.preheader.i27:                           ; preds = %bb.l
  %i.cj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %0, i64 %i.f ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  %i.cl = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.cl, -32
  %or.cond75 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond75, label %.lr.ph.i.i28.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i27
  %n.vec = and i64 %i.ci, -8                      ; 3 uses
  %i.cm = and i64 %i.ci, 7
  %i.cn = shl i64 %n.vec, 2                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.cj, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.cq ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.cj, i64 %i.cq ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep39) ]
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !18
  %wide.load47 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !18
  %i.cs = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %wide.load, ptr %next.gep39, align 4, !tbaa !18
  store <4 x i32> %wide.load47, ptr %i.cs, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !2375

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %.lr.ph.i.preheader.i27, %middle.block
  %.020.i.i29.ph = phi i64 [ %i.ci, %.lr.ph.i.preheader.i27 ], [ %i.cm, %middle.block ] ; 4 uses
  %.0819.i.i30.ph = phi ptr [ %i.ck, %.lr.ph.i.preheader.i27 ], [ %i.co, %middle.block ] ; 2 uses
  %.01618.i.i31.ph = phi ptr [ %i.cj, %.lr.ph.i.preheader.i27 ], [ %i.cp, %middle.block ] ; 2 uses
  %i.cu = add i64 %.020.i.i29.ph, -1
  %xtraiter = and i64 %.020.i.i29.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i28.prol.loopexit, label %.lr.ph.i.i28.prol

.lr.ph.i.i28.prol:                                ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28.prol
  %.020.i.i29.prol = phi i64 [ %i.cv, %.lr.ph.i.i28.prol ], [ %.020.i.i29.ph, %.lr.ph.i.i28.preheader ]
  %.0819.i.i30.prol = phi ptr [ %i.cx, %.lr.ph.i.i28.prol ], [ %.0819.i.i30.ph, %.lr.ph.i.i28.preheader ] ; 2 uses
  %.01618.i.i31.prol = phi ptr [ %i.cy, %.lr.ph.i.i28.prol ], [ %.01618.i.i31.ph, %.lr.ph.i.i28.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i28.prol ], [ 0, %.lr.ph.i.i28.preheader ]
  %i.cv = add i64 %.020.i.i29.prol, -1            ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i31.prol) ]
  %i.cw = load i32, ptr %.0819.i.i30.prol, align 4, !tbaa !18
  store i32 %i.cw, ptr %.01618.i.i31.prol, align 4, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.0819.i.i30.prol, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01618.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i28.prol.loopexit, label %.lr.ph.i.i28.prol, !llvm.loop !2376

.lr.ph.i.i28.prol.loopexit:                       ; preds = %.lr.ph.i.i28.prol, %.lr.ph.i.i28.preheader
  %.020.i.i29.unr = phi i64 [ %.020.i.i29.ph, %.lr.ph.i.i28.preheader ], [ %i.cv, %.lr.ph.i.i28.prol ]
  %.0819.i.i30.unr = phi ptr [ %.0819.i.i30.ph, %.lr.ph.i.i28.preheader ], [ %i.cx, %.lr.ph.i.i28.prol ]
  %.01618.i.i31.unr = phi ptr [ %.01618.i.i31.ph, %.lr.ph.i.i28.preheader ], [ %i.cy, %.lr.ph.i.i28.prol ]
  %i.cz = icmp ult i64 %i.cu, 7
  br i1 %i.cz, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.prol.loopexit, %.lr.ph.i.i28
  %.020.i.i29 = phi i64 [ %i.dv, %.lr.ph.i.i28 ], [ %.020.i.i29.unr, %.lr.ph.i.i28.prol.loopexit ]
  %.0819.i.i30 = phi ptr [ %i.dx, %.lr.ph.i.i28 ], [ %.0819.i.i30.unr, %.lr.ph.i.i28.prol.loopexit ] ; 9 uses
  %.01618.i.i31 = phi ptr [ %i.dy, %.lr.ph.i.i28 ], [ %.01618.i.i31.unr, %.lr.ph.i.i28.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i31) ]
  %i.da = load i32, ptr %.0819.i.i30, align 4, !tbaa !18
  store i32 %i.da, ptr %.01618.i.i31, align 4, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !18
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 8
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !18
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 12
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !18
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 16
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !18
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 20
  %i.do = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 20
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !18
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 24
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !18
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 28
  %i.dv = add i64 %.020.i.i29, -8                 ; 2 uses
  %i.dw = load i32, ptr %i.dt, align 4, !tbaa !18
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %.0819.i.i30, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %.01618.i.i31, i64 32
  %.not.i.i32.7 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i32.7, label %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, label %.lr.ph.i.i28, !llvm.loop !2377

_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33: ; preds = %.lr.ph.i.i28.prol.loopexit, %.lr.ph.i.i28, %middle.block, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i10)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit33, %_ZN5boost9container17deep_swap_alloc_nILm20ENS0_3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EEEPS4_S6_EENS_11move_detail11enable_if_cIXaasr3dtl30is_memtransfer_copy_assignableIT1_T2_EE5valueLb1EEvE4typeERT0_S9_mSA_m.exit
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !69
  %i.ea = load i64, ptr %i.e, align 8, !tbaa !69
  store i64 %i.ea, ptr %i.c, align 8, !tbaa !69
  store i64 %i.dz, ptr %i.e, align 8, !tbaa !69
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #24
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_20insert_emplace_proxyIS6_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.290") align 8 %0, ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !2378   ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1277 ; 4 uses
  %i.d = sub i64 10, %i.c
  %.not = icmp ugt i64 %3, %i.d
  br i1 %.not, label %bb.p, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.c ; 9 uses
  %.not.i = icmp eq ptr %i.e, %i.a
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129  ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !129
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK5boost9container3dtl17insert_move_proxyINS1_24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.h, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %i.e, ptr nonnull align 8 dereferenceable(48) %4, i64 %i.i, i1 false)
  %.pre24.i = load i64, ptr %i.b, align 8, !tbaa !1277
  br label %_ZNK5boost9container3dtl17insert_move_proxyINS1_24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i

_ZNK5boost9container3dtl17insert_move_proxyINS1_24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.c, %bb.c ], [ %.pre24.i, %bb.d ]
  store i64 0, ptr %i.g, align 8, !tbaa !129
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !tbaa !1277
  br label %_ZN5boost9container6vectorINS0_13static_vectorIiLm10EvEENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_20insert_emplace_proxyIS6_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit

bb.e:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.e to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 48
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129  ; 3 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !129
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i, label %bb.f, !prof !24

bb.f:                                             ; preds = %bb.e
  %i.t = shl i64 %i.s, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %i.e, ptr nonnull align 8 dereferenceable(48) %i.p, i64 %i.t, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !1277
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i: ; preds = %bb.f, %bb.e
  %i.u = phi i64 [ %i.c, %bb.e ], [ %.pre.i, %bb.f ]
  store i64 0, ptr %i.r, align 8, !tbaa !129
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.b, align 8, !tbaa !1277
  %i.w = add nsw i64 %i.o, -1                     ; 2 uses
  %.not8.i.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i.i, label %_ZN5boost9container15move_backward_nIPNS0_13static_vectorIiLm10EvEES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i, %_ZN5boost9container13static_vectorIiLm10EvEaSEOS2_.exit.i.i
  %.011.i.i = phi ptr [ %i.z, %_ZN5boost9container13static_vectorIiLm10EvEaSEOS2_.exit.i.i ], [ %i.e, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i ] ; 2 uses
  %.0610.i.i = phi i64 [ %i.x, %_ZN5boost9container13static_vectorIiLm10EvEaSEOS2_.exit.i.i ], [ %i.w, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i ]
  %.079.i.i = phi ptr [ %i.y, %_ZN5boost9container13static_vectorIiLm10EvEaSEOS2_.exit.i.i ], [ %i.p, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorIiLm10EvEELm10ELm0ELb1EEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_.exit.i ] ; 2 uses
  %i.x = add i64 %.0610.i.i, -1                   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_:bb.a
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2618
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !221, !noalias !2619 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2622
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !93
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.013, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.137, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.l = add i64 %.014, 1                         ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2623
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.013, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.137, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.l = add i64 %.014, 1                         ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2624
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2625 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !93
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.013, i64 -4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.137, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = add i64 %.014, 1                         ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2628
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2629 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.013, i64 -4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.137, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = add i64 %.014, 1                         ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2632
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test24test_iterator_compatibleINS_9container13static_vectorIiLm3EvEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !2633
  %i.c = icmp ne i64 %i.b, 0                      ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container12vec_iteratorIPiLb0EEEEEvT_S7_, i1 noundef zeroext %i.c) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container12vec_iteratorIPiLb0EEEEEvT_S7_, i1 noundef zeroext %i.c) ; 0 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !2636
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container12vec_iteratorIPiLb1EEEEEvT_S7_, i1 noundef zeroext %i.g) ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_9container12vec_iteratorIPiLb1EEEEEvT_S7_, i1 noundef zeroext %i.g) ; 0 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !2639
  %i.k = icmp ne i64 %i.j, 0                      ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPiLb0EEEEEEEvT_SA_, i1 noundef zeroext %i.k) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPiLb0EEEEEEEvT_SA_, i1 noundef zeroext %i.k) ; 0 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !89, !noalias !2646
  %i.o = icmp ne i64 %i.n, 0                      ; 2 uses
  %i.p = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPiLb1EEEEEEEvT_SA_, i1 noundef zeroext %i.o) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test24test_iterator_operationsINS_7movelib16reverse_iteratorINS_9container12vec_iteratorIPiLb1EEEEEEEvT_SA_, i1 noundef zeroext %i.o) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { allocsize(0) }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE25priv_insert_forward_rangeINS2_18insert_range_proxyIS4_PKiEEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_: argument 0"}
!11 = distinct !{!11, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE25priv_insert_forward_rangeINS2_18insert_range_proxyIS4_PKiEEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_"}
!12 = distinct !{!12, !13, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE: argument 0"}
!13 = distinct !{!13, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE"}
!14 = !{!15, !17, i64 8}
!15 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEE", !16, i64 0, !17, i64 8}
!16 = !{!"_ZTSN5boost9container3dtl24static_storage_allocatorIiLm2ELm0ELb1EEE", !7, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !17, i64 8}
!20 = !{!"_ZTSN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvEE", !15, i64 0}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE3endEv: argument 0"}
!23 = distinct !{!23, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE3endEv"}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE25priv_insert_forward_rangeINS2_18insert_range_proxyIS4_PKiEEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_: argument 0"}
!27 = distinct !{!27, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE25priv_insert_forward_rangeINS2_18insert_range_proxyIS4_PKiEEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_"}
!28 = distinct !{!28, !29, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE: argument 0"}
!29 = distinct !{!29, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm2ELm0ELb1EEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS2_17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESL_E4typeE"}
!30 = !{!"branch_weights", i32 1, i32 1048575}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN5boost6detail11test_resultE", !33, i64 0, !6, i64 4}
!33 = !{!"bool", !7, i64 0}
!34 = !{!32, !6, i64 4}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !8, i64 0}
!37 = !{!38, !40, i64 32}
!38 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !43, i64 48, !7, i64 64, !6, i64 192, !44, i64 200, !45, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !42, i64 0}
!42 = !{!"any pointer", !7, i64 0}
!43 = !{!"_ZTSNSt8ios_base6_WordsE", !42, i64 0, !17, i64 8}
!44 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !42, i64 0}
!45 = !{!"_ZTSSt6locale", !46, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !42, i64 0}
!47 = !{!48, !51, i64 240}
!48 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !49, i64 216, !7, i64 224, !33, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!49 = !{!"p1 _ZTSSo", !42, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !42, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !42, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !42, i64 0}
!54 = !{!55, !7, i64 56}
!55 = !{!"_ZTSSt5ctypeIcE", !56, i64 0, !57, i64 16, !33, i64 24, !58, i64 32, !58, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!56 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!57 = !{!"p1 _ZTS15__locale_struct", !42, i64 0}
!58 = !{!"p1 int", !42, i64 0}
!59 = !{!"p1 short", !42, i64 0}
!60 = !{!7, !7, i64 0}
!61 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!62 = !{!63, !17, i64 104}
!63 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIhLm100ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEE", !64, i64 0, !17, i64 104}
!64 = !{!"_ZTSN5boost9container3dtl24static_storage_allocatorIhLm100ELm0ELb1EEE", !7, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = !{!17, !17, i64 0}
!70 = !{!71, !6, i64 0}
!71 = !{!"_ZTS8value_nd", !6, i64 0}
!72 = !{!73, !6, i64 0}
!73 = !{!"_ZTS14counting_value", !6, i64 0, !6, i64 4}
!74 = !{!73, !6, i64 4}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv: argument 0"}
!77 = distinct !{!77, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv"}
!78 = !{!79, !6, i64 0}
!79 = !{!"_ZTSN5boost9container4test24movable_and_copyable_intE", !6, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv: argument 0"}
!82 = distinct !{!82, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv: argument 0"}
!85 = distinct !{!85, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv: argument 0"}
!88 = distinct !{!88, !"_ZN5boost9container4test32produce_movable_and_copyable_intEv"}
!89 = !{!90, !17, i64 16}
!90 = !{!"_ZTSN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvEE", !91, i64 0}
!91 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEE", !92, i64 0, !17, i64 16}
!92 = !{!"_ZTSN5boost9container3dtl24static_storage_allocatorIiLm3ELm0ELb1EEE", !7, i64 0}
!93 = !{!94, !58, i64 0}
!94 = !{!"_ZTSN5boost9container12vec_iteratorIPiLb0EEE", !58, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE5beginEv: argument 0"}
!97 = distinct !{!97, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE5beginEv"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv: argument 0"}
!100 = distinct !{!100, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv"}
!101 = !{!102, !58, i64 0}
!102 = !{!"_ZTSN5boost9container12vec_iteratorIPiLb1EEE", !58, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE6cbeginEv: argument 0"}
!105 = distinct !{!105, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE6cbeginEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4cendEv: argument 0"}
!108 = distinct !{!108, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4cendEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE6rbeginEv: argument 0"}
!111 = distinct !{!111, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE6rbeginEv"}
!112 = !{!113, !110}
!113 = distinct !{!113, !114, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv: argument 0"}
!114 = distinct !{!114, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4rendEv: argument 0"}
!117 = distinct !{!117, !"_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4rendEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE7crbeginEv: argument 0"}
!120 = distinct !{!120, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE7crbeginEv"}
!121 = !{!122, !124, !119}
!122 = distinct !{!122, !123, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4cendEv: argument 0"}
!123 = distinct !{!123, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE4cendEv"}
!124 = distinct !{!124, !125, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv: argument 0"}
!125 = distinct !{!125, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE3endEv"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE5crendEv: argument 0"}
!128 = distinct !{!128, !"_ZNK5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm3ELm0ELb1EEEvE5crendEv"}
!129 = !{!130, !17, i64 40}
!130 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEE", !131, i64 0, !17, i64 40}
!131 = !{!"_ZTSN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EEE", !7, i64 0}
!132 = !{!133, !17, i64 40}
!133 = !{!"_ZTSN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvEE", !130, i64 0}
!134 = distinct !{!134, !66, !135, !136}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!"llvm.loop.unroll.runtime.disable"}
!137 = distinct !{!137, !66, !136, !135}
!138 = distinct !{!138, !66, !135, !136}
!139 = distinct !{!139, !66, !136, !135}
!140 = distinct !{!140, !141}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = distinct !{!142, !66}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !66}
!145 = distinct !{!145, !141}
!146 = distinct !{!146, !66}
!147 = distinct !{!147, !141}
!148 = distinct !{!148, !66}
!149 = distinct !{!149, !66, !135, !136}
!150 = distinct !{!150, !66, !136, !135}
!151 = distinct !{!151, !66, !135, !136}
!152 = distinct !{!152, !66, !136, !135}
!153 = distinct !{!153, !66, !135, !136}
!154 = distinct !{!154, !66, !136, !135}
!155 = distinct !{!155, !66, !135, !136}
!156 = distinct !{!156, !66, !136, !135}
!157 = distinct !{!157, !141}
!158 = distinct !{!158, !141}
end_hunk_2
