Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:.lr.ph.i.i679.preheader
  store i32 -2147483648, ptr %storemerge4.i.i501, align 4, !tbaa !82
  %i.lg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i501, i64 4
  %.not.i.i502 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i502, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i503, label %.lr.ph.i.i499, !llvm.loop !1327

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i503: ; preds = %.lr.ph.i.i499, %middle.block1154
  %i.lh = trunc i64 %i.ky to i32
  %i.li = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i498, %i.lh
  store i32 %i.li, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i515

.lr.ph.i.preheader.i515:                          ; preds = %.lr.ph.i.preheader.i461, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i503
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01211)
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i516 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  store i32 -2147483648, ptr %.sroa.01240, align 16, !tbaa !82
  %.sroa.01240.4..sroa_idx1257 = getelementptr inbounds nuw i8, ptr %.sroa.01240, i64 4
  store i32 -2147483648, ptr %.sroa.01240.4..sroa_idx1257, align 4, !tbaa !82
  %.sroa.01240.8..sroa_idx1262 = getelementptr inbounds nuw i8, ptr %.sroa.01240, i64 8
  store i32 -2147483648, ptr %.sroa.01240.8..sroa_idx1262, align 8, !tbaa !82
  %i.lj = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i516, -3
  store i32 %i.lj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01240)
  br label %bb.cg

bb.aw:                                            ; preds = %.lr.ph.i.preheader.i390
  %i.lk = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  %i.lm = extractvalue { ptr, i32 } %i.lk, 1
  %i.ln = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.lo = icmp eq i32 %i.lm, %i.ln
  %i.lp = tail call ptr @__cxa_begin_catch(ptr %i.ll) #25 ; 0 uses
  br i1 %i.lo, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.lq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ay unwind label %bb.be     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %bb.ay, %bb.bb
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc568 unwind label %bb.bg

.noexc568:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 547, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.lr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bd:                                            ; preds = %bb.cc, %bb.bu, %bb.bl, %bb.bb
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

bb.be:                                            ; preds = %bb.ax
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bf:                                            ; preds = %bb.ay
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

bb.bg:                                            ; preds = %bb.az
  %i.lv = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  %i.lx = extractvalue { ptr, i32 } %i.lv, 1
  %i.ly = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 3 uses
  %i.lz = icmp eq i32 %i.lx, %i.ly
  %i.ma = tail call ptr @__cxa_begin_catch(ptr %i.lw) #25 ; 0 uses
  br i1 %i.lz, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.mb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bi unwind label %bb.bn     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc599 unwind label %bb.bp

.noexc599:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bd

bb.bm:                                            ; preds = %bb.bk
  %i.mc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bn:                                            ; preds = %bb.bh
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.bo:                                            ; preds = %bb.bi
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

bb.bp:                                            ; preds = %bb.bj
  %i.mf = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.mg = extractvalue { ptr, i32 } %i.mf, 0
  %i.mh = extractvalue { ptr, i32 } %i.mf, 1
  %i.mi = icmp eq i32 %i.mh, %i.ly
  %i.mj = tail call ptr @__cxa_begin_catch(ptr %i.mg) #25 ; 0 uses
  br i1 %i.mi, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
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
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %5 = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645, -5
  store i32 %5, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ms = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i645, -15
  store i32 %i.ms, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  ret void

bb.cb:                                            ; preds = %bb.by
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_swap_and_move_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i644 unwind label %bb.bd

bb.cd:                                            ; preds = %bb.cb
  %i.mt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.ce:                                            ; preds = %bb.bz
  %i.mu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.lr.ph.i.preheader.i662 unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ca
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i662

.lr.ph.i.preheader.i662:                          ; preds = %bb.bd, %bb.bc, %bb.bm, %bb.bv, %bb.cd, %bb.be, %bb.bf, %bb.bn, %bb.bo, %bb.bw, %bb.bx, %bb.ce, %bb.cf
  %.pn99.pn = phi { ptr, i32 } [ %i.mm, %bb.bw ], [ %i.ls, %bb.bd ], [ %i.mt, %bb.cd ], [ %i.mv, %bb.cf ], [ %i.md, %bb.bn ], [ %i.ml, %bb.bv ], [ %i.lt, %bb.be ], [ %i.mc, %bb.bm ], [ %i.mu, %bb.ce ], [ %i.lr, %bb.bc ], [ %i.lu, %bb.bf ], [ %i.me, %bb.bo ], [ %i.mn, %bb.bx ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.mw = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663, -5
  store i32 %i.mw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.mx = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i663, -15
  store i32 %i.mx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.preheader.i662, %.lr.ph.i.preheader.i515, %.lr.ph.i.preheader.i230
  %.pn121.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %.lr.ph.i.preheader.i230 ], [ %.pn106, %.lr.ph.i.preheader.i515 ], [ %.pn99.pn, %.lr.ph.i.preheader.i662 ]
  resume { ptr, i32 } %.pn121.pn.pn

bb.ch:                                            ; preds = %bb.ce, %bb.cd, %bb.bw, %bb.bv, %bb.bn, %bb.bm, %bb.be, %bb.bc
  %i.my = landingpad { ptr, i32 }
          catch ptr null
  %i.mz = extractvalue { ptr, i32 } %i.my, 0
  tail call void @__clang_call_terminate(ptr %i.mz) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15test_emplace_0pI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
  store i64 %i.o, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 17 uses
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
  %i.j = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.1 unwind label %bb.l ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.preheader154.9
  %i.m = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.preheader unwind label %bb.m ; 0 uses

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 580, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
