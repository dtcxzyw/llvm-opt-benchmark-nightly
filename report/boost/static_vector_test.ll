Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 316
begin_hunk_0_@_Z12test_ctor_ncI14counting_valueLm10EEvm:bb.a
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.preheader.i.i_crit_edge

..lr.ph.preheader.i.i_crit_edge:                  ; preds = %bb.u
  %_ZZN14counting_value1cEvE2co.promoted.i.i.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %..lr.ph.preheader.i.i_crit_edge, %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %..lr.ph.preheader.i.i_crit_edge ], [ %i.x, %.thread ]
  %i.an = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %0
  store i64 %i.an, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.u, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032)
  ret void

bb.v:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pn11 = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.aa, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit25, label %..lr.ph.preheader.i.i23_crit_edge

..lr.ph.preheader.i.i23_crit_edge:                ; preds = %bb.v
  %_ZZN14counting_value1cEvE2co.promoted.i.i24.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  br label %.lr.ph.preheader.i.i23

.lr.ph.preheader.i.i23:                           ; preds = %..lr.ph.preheader.i.i23_crit_edge, %bb.q, %bb.r, %bb.s, %bb.t
  %_ZZN14counting_value1cEvE2co.promoted.i.i24 = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i24.pre, %..lr.ph.preheader.i.i23_crit_edge ], [ %i.ad, %bb.q ], [ %i.ag, %bb.r ], [ %i.aj, %bb.s ], [ %i.am, %bb.t ]
  %.pn1171 = phi { ptr, i32 } [ %.pn11, %..lr.ph.preheader.i.i23_crit_edge ], [ %i.ab, %bb.q ], [ %i.ae, %bb.r ], [ %i.ah, %bb.s ], [ %i.ak, %bb.t ]
  %i.ao = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i24, %0
  store i64 %i.ao, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit25

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit25: ; preds = %bb.v, %.lr.ph.preheader.i.i23
  %.pn1172 = phi { ptr, i32 } [ %.pn11, %bb.v ], [ %.pn1171, %.lr.ph.preheader.i.i23 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032)
  resume { ptr, i32 } %.pn1172

bb.w:                                             ; preds = %bb.o, %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.35", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i: ; preds = %bb.a
  %.not14.i.i.i = icmp eq i64 %0, 0               ; 3 uses
  br i1 %.not14.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2Em.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.b = trunc nuw nsw i64 %0 to i32
  %i.c = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.b
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2Em.exit

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2Em.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i, %.lr.ph.i.preheader.i.i
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 36, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.p       ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2Em.exit
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 37, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.p       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = extractvalue { ptr, i32 } %i.g, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.h) #25 ; 0 uses
  br i1 %i.k, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.o    ; 0 uses

bb.h:                                             ; preds = %.invoke
  %i.n = icmp samesign ugt i64 %0, 1
  br i1 %i.n, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.q = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.r = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.r       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.s       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 47, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %.thread unwind label %bb.t    ; 0 uses

.thread:                                          ; preds = %bb.l
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.v = add i32 %i.u, -1                         ; 2 uses
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

bb.m:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 39, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm)
          to label %.invoke unwind label %bb.n

.invoke:                                          ; preds = %bb.m, %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.o:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.p:                                             ; preds = %.invoke, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2Em.exit, %bb.c, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.q:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i24

bb.r:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i24

bb.s:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i24

bb.t:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.ak = add i32 %i.aj, -1                       ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i24

bb.u:                                             ; preds = %bb.h
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.u
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.v, %.thread ]
  %min.iters.check43 = icmp ult i64 %0, 8
  br i1 %min.iters.check43, label %.lr.ph.i.i.preheader, label %vector.body46

vector.body46:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec45 = and i64 %0, 8                        ; 2 uses
  %2 = shl nuw nsw i64 %n.vec45, 2
  %i.al = getelementptr i8, ptr %1, i64 %2
  %i.am = and i64 %0, 7
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %1, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.an, align 16, !tbaa !83
  %cmp.n51 = icmp eq i64 %0, %n.vec45
  br i1 %cmp.n51, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %vector.body46
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.am, %vector.body46 ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.al, %vector.body46 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ao = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i22 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i22, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !278

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vector.body46
  %i.aq = trunc nuw nsw i64 %0 to i32
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.u, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.v:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pn11 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.y, %bb.p ], [ %i.x, %bb.o ] ; 2 uses
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31, label %..lr.ph.i.preheader.i24_crit_edge

..lr.ph.i.preheader.i24_crit_edge:                ; preds = %bb.v
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i24

.lr.ph.i.preheader.i24:                           ; preds = %..lr.ph.i.preheader.i24_crit_edge, %bb.q, %bb.r, %bb.s, %bb.t
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25 = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25.pre, %..lr.ph.i.preheader.i24_crit_edge ], [ %i.ab, %bb.q ], [ %i.ae, %bb.r ], [ %i.ah, %bb.s ], [ %i.ak, %bb.t ]
  %.pn1137 = phi { ptr, i32 } [ %.pn11, %..lr.ph.i.preheader.i24_crit_edge ], [ %i.z, %bb.q ], [ %i.ac, %bb.r ], [ %i.af, %bb.s ], [ %i.ai, %bb.t ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i26.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader.i24
  %n.vec = and i64 %0, 8                          ; 2 uses
  %3 = shl nuw nsw i64 %n.vec, 2
  %i.as = getelementptr i8, ptr %1, i64 %3
  %i.at = and i64 %0, 7
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %1, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.au, align 16, !tbaa !83
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %.lr.ph.i.preheader.i24, %vector.body
  %.05.i.i27.ph = phi i64 [ %0, %.lr.ph.i.preheader.i24 ], [ %i.at, %vector.body ]
  %storemerge4.i.i28.ph = phi ptr [ %1, %.lr.ph.i.preheader.i24 ], [ %i.as, %vector.body ]
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %.lr.ph.i.i26
  %.05.i.i27 = phi i64 [ %i.av, %.lr.ph.i.i26 ], [ %.05.i.i27.ph, %.lr.ph.i.i26.preheader ]
  %storemerge4.i.i28 = phi ptr [ %i.aw, %.lr.ph.i.i26 ], [ %storemerge4.i.i28.ph, %.lr.ph.i.i26.preheader ] ; 2 uses
  %i.av = add i64 %.05.i.i27, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i28, align 4, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i28, i64 4
  %.not.i.i29 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i29, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30, label %.lr.ph.i.i26, !llvm.loop !279

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30: ; preds = %.lr.ph.i.i26, %vector.body
  %i.ax = trunc nuw nsw i64 %0 to i32
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31: ; preds = %bb.v, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30
  %.pn1138 = phi { ptr, i32 } [ %.pn11, %bb.v ], [ %.pn1137, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn1138

bb.w:                                             ; preds = %bb.o, %bb.n
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_ctor_ndIiLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.19", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i: ; preds = %bb.a
  %.not15.i.i.i = icmp eq i64 %0, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %.pre.i.i.i = load i32, ptr %1, align 4, !tbaa !42 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %.017.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.b = add nsw i64 %.017.i.i.i.prol, -1         ; 2 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i.prol, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !280

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.017.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i ], [ %i.b, %.lr.ph.i.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i ], [ %i.c, %.lr.ph.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  store i32 %.pre.i.i.i, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  store i32 %.pre.i.i.i, ptr %i.f, align 4, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  store i32 %.pre.i.i.i, ptr %i.g, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 20
  store i32 %.pre.i.i.i, ptr %i.i, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 24
  store i32 %.pre.i.i.i, ptr %i.j, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 28
  %i.l = add nsw i64 %.017.i.i.i, -8              ; 2 uses
  store i32 %.pre.i.i.i, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit
  %i.p = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1
  %i.s = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.t = icmp eq i32 %i.r, %i.s
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.q) #25 ; 0 uses
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.f
  tail call void @__cxa_end_catch()
  %i.w = icmp samesign ugt i64 %0, 1
  br i1 %i.w, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit26, label %bb.i

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit26: ; preds = %bb.e
  %i.x = load i32, ptr %1, align 4, !tbaa !42
  %i.y = load i32, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !42
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !42
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_)
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit26, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.aq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn16

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_ctor_ndI8value_ndLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i: ; preds = %bb.a
  %.not15.i.i.i = icmp eq i64 %0, 0
end_hunk_0
begin_hunk_1_@_Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i: ; preds = %bb.a
  %.not15.i.i.i = icmp eq i64 %0, 0               ; 3 uses
  br i1 %.not15.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42 ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %i.b = phi i32 [ %i.e, %.lr.ph.i.i.i.prol ], [ %.pre.i.i, %.lr.ph.i.preheader.i.i ]
  %.017.i.i.i.prol = phi i64 [ %i.c, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.i.preheader.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.f, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.c = add nsw i64 %.017.i.i.i.prol, -1         ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.d, ptr %.01416.i.i.i.prol, align 4, !tbaa !83
  %i.e = add i32 %i.b, 1                          ; 3 uses
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !283

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.unr = phi i32 [ %.pre.i.i, %.lr.ph.i.preheader.i.i ], [ %i.e, %.lr.ph.i.i.i.prol ]
  %.017.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.preheader.i.i ], [ %i.c, %.lr.ph.i.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.preheader.i.i ], [ %i.f, %.lr.ph.i.i.i.prol ]
  %i.g = icmp ult i64 %0, 4
  br i1 %i.g, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.h = phi i32 [ %i.t, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i ], [ %.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.i, ptr %.01416.i.i.i, align 4, !tbaa !83
  %i.j = add i32 %i.h, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  %i.l = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.l, ptr %i.k, align 4, !tbaa !83
  %i.m = add i32 %i.h, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  %i.o = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.o, ptr %i.n, align 4, !tbaa !83
  %i.p = add i32 %i.h, 3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  %i.r = add nsw i64 %.017.i.i.i, -4              ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.s, ptr %i.q, align 4, !tbaa !83
  %i.t = add i32 %i.h, 4                          ; 2 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.q       ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.q       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = extractvalue { ptr, i32 } %i.x, 1
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.y) #25 ; 0 uses
  br i1 %i.ab, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.p    ; 0 uses

bb.g:                                             ; preds = %.invoke
  %i.ae = icmp samesign ugt i64 %0, 1
  br i1 %i.ae, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %1, align 4, !tbaa !83
  %i.ag = load i32, ptr %2, align 16, !tbaa !83   ; 2 uses
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ah)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20 unwind label %bb.q ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20: ; preds = %bb.h
  %i.aj = load i32, ptr %1, align 4, !tbaa !83
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ak)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %1, align 4, !tbaa !83
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !83 ; 2 uses
  %i.ap = icmp eq i32 %i.an, %i.ao
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ap)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23 unwind label %bb.q ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23: ; preds = %bb.i
  %i.ar = load i32, ptr %1, align 4, !tbaa !83
  %i.as = icmp eq i32 %i.ar, %i.ao
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.as)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.lr.ph.i.preheader.i35.sink.split ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.l unwind label %.lr.ph.i.preheader.i35.sink.split ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ay = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.lr.ph.i.preheader.i35.sink.split ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %.lr.ph.i.preheader.i35.sink.split ; 0 uses

.thread:                                          ; preds = %bb.m
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

bb.n:                                             ; preds = %bb.e
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_)
          to label %.invoke unwind label %bb.o

.invoke:                                          ; preds = %bb.n, %bb.f
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.p:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %.invoke, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit, %bb.c, %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20, %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph.i.preheader.i35.sink.split:                ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i35

bb.r:                                             ; preds = %bb.g
  br i1 %.not15.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.r
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.bb, %.thread ]
  %min.iters.check56 = icmp ult i64 %0, 8
  br i1 %min.iters.check56, label %.lr.ph.i.i.preheader, label %vector.body59

vector.body59:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec58 = and i64 %0, 8                        ; 2 uses
  %3 = shl nuw nsw i64 %n.vec58, 2
  %i.bi = getelementptr i8, ptr %2, i64 %3
  %i.bj = and i64 %0, 7
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %2, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.bk, align 16, !tbaa !83
  %cmp.n64 = icmp eq i64 %0, %n.vec58
  br i1 %cmp.n64, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %vector.body59
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.bj, %vector.body59 ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.bi, %vector.body59 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bl, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bl = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i33 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i33, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !284

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vector.body59
  %i.bn = trunc nuw nsw i64 %0 to i32
  %i.bo = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bn
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.r, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.pn16 = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bc, %bb.o ], [ %i.be, %bb.q ] ; 2 uses
  br i1 %.not15.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit42, label %.lr.ph.i.preheader.i35

.lr.ph.i.preheader.i35:                           ; preds = %.lr.ph.i.preheader.i35.sink.split, %bb.s
  %.pn1651 = phi { ptr, i32 } [ %.pn16, %bb.s ], [ %i.bf, %.lr.ph.i.preheader.i35.sink.split ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i36 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i37.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader.i35
  %n.vec = and i64 %0, 8                          ; 2 uses
  %4 = shl nuw nsw i64 %n.vec, 2
  %i.bp = getelementptr i8, ptr %2, i64 %4
  %i.bq = and i64 %0, 7
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %2, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.br, align 16, !tbaa !83
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i41, label %.lr.ph.i.i37.preheader

.lr.ph.i.i37.preheader:                           ; preds = %.lr.ph.i.preheader.i35, %vector.body
  %.05.i.i38.ph = phi i64 [ %0, %.lr.ph.i.preheader.i35 ], [ %i.bq, %vector.body ]
  %storemerge4.i.i39.ph = phi ptr [ %2, %.lr.ph.i.preheader.i35 ], [ %i.bp, %vector.body ]
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37.preheader, %.lr.ph.i.i37
  %.05.i.i38 = phi i64 [ %i.bs, %.lr.ph.i.i37 ], [ %.05.i.i38.ph, %.lr.ph.i.i37.preheader ]
  %storemerge4.i.i39 = phi ptr [ %i.bt, %.lr.ph.i.i37 ], [ %storemerge4.i.i39.ph, %.lr.ph.i.i37.preheader ] ; 2 uses
  %i.bs = add i64 %.05.i.i38, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i39, align 4, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i39, i64 4
  %.not.i.i40 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i40, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i41, label %.lr.ph.i.i37, !llvm.loop !285

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i41: ; preds = %.lr.ph.i.i37, %vector.body
  %i.bu = trunc nuw nsw i64 %0 to i32
  %i.bv = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i36, %i.bu
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit42

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit42: ; preds = %bb.s, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i41
  %.pn1652 = phi { ptr, i32 } [ %.pn16, %bb.s ], [ %.pn1651, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn1652

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  tail call void @__clang_call_terminate(ptr %i.bx) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ncIiLm10EEvm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc13 unwind label %bb.c

.noexc13:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = extractvalue { ptr, i32 } %i.d, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.e) #25 ; 0 uses
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.f
  tail call void @__cxa_end_catch()
  %i.k = icmp samesign ugt i64 %0, 1
  br i1 %i.k, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit16, label %bb.i

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit16: ; preds = %bb.e
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 125, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm, i1 noundef zeroext true) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIiLm10EEvm)
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit16, %bb.e
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  resume { ptr, i32 } %.pn11

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ncI8value_ncLm10EEvm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %.noexc, label %.lr.ph.preheader.i.i.i.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ncLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc13 unwind label %bb.b

.noexc13:                                         ; preds = %.lr.ph.preheader.i.i.i.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.preheader.i.i.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = extractvalue { ptr, i32 } %i.d, 1
  %i.g = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.e) #25 ; 0 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.e
  tail call void @__cxa_end_catch()
  %i.k = icmp samesign ugt i64 %0, 1
  br i1 %i.k, label %_ZN5boost9container6vectorI8value_ncNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit16, label %bb.h

_ZN5boost9container6vectorI8value_ncNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit16: ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 125, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm, i1 noundef zeroext true) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncI8value_ncLm10EEvm)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZN5boost9container6vectorI8value_ncNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit16, %bb.d
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  resume { ptr, i32 } %.pn11

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ncI14counting_valueLm10EEvm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca %"struct.boost::container::vector_alloc_holder.31", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = icmp ugt i64 %0, 10
end_hunk_1
begin_hunk_2_@_Z14test_resize_ncI14counting_valueLm10EEvm:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.p:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %.invoke, %bb.b, %bb.d, %bb.e
  %.sroa.0.80..sroa.0.80.44 = phi i64 [ 0, %bb.b ], [ %0, %bb.d ], [ %0, %bb.e ], [ %0, %.invoke ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph.preheader.i.i24.sink.split:                ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ac = add i64 %i.ab, -1
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %.lr.ph.preheader.i.i24

bb.r:                                             ; preds = %bb.i
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.preheader.i.i_crit_edge

..lr.ph.preheader.i.i_crit_edge:                  ; preds = %bb.r
  %_ZZN14counting_value1cEvE2co.promoted.i.i.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %..lr.ph.preheader.i.i_crit_edge, %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %..lr.ph.preheader.i.i_crit_edge ], [ %i.w, %.thread ]
  %i.ad = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %0
  store i64 %i.ad, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.r, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.80..sroa.0.80. = phi i64 [ %0, %bb.o ], [ %.sroa.0.80..sroa.0.80.44, %bb.q ], [ %0, %bb.p ] ; 2 uses
  %.pn11 = phi { ptr, i32 } [ %i.x, %bb.o ], [ %i.z, %bb.q ], [ %i.y, %bb.p ] ; 2 uses
  %.not3.i.i23 = icmp eq i64 %.sroa.0.80..sroa.0.80., 0
  br i1 %.not3.i.i23, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit26, label %.lr.ph.preheader.i.i24

.lr.ph.preheader.i.i24:                           ; preds = %.lr.ph.preheader.i.i24.sink.split, %bb.s
  %.pn1150 = phi { ptr, i32 } [ %.pn11, %bb.s ], [ %i.aa, %.lr.ph.preheader.i.i24.sink.split ]
  %.sroa.0.80..sroa.0.80.49 = phi i64 [ %.sroa.0.80..sroa.0.80., %bb.s ], [ %0, %.lr.ph.preheader.i.i24.sink.split ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i25 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ae = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i25, %.sroa.0.80..sroa.0.80.49
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit26

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit26: ; preds = %bb.s, %.lr.ph.preheader.i.i24
  %.pn1151 = phi { ptr, i32 } [ %.pn11, %bb.s ], [ %.pn1150, %.lr.ph.preheader.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  resume { ptr, i32 } %.pn1151

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm(i64 noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.35", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not14.i.i.i.i = icmp eq i64 %0, 0             ; 2 uses
  br i1 %.not14.i.i.i.i, label %bb.d, label %.lr.ph.i.i10.preheader.i.i

.lr.ph.i.i10.preheader.i.i:                       ; preds = %bb.c
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.b = trunc nuw nsw i64 %0 to i32
  %i.c = add i32 %.pre.i.i, %i.b
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i10.preheader.i.i, %bb.c
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 116, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.q       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.q       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = extractvalue { ptr, i32 } %i.f, 1
  %i.i = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.j = icmp eq i32 %i.h, %i.i
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.g) #25 ; 0 uses
  br i1 %i.j, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.l = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.p    ; 0 uses

bb.i:                                             ; preds = %.invoke
  %i.m = icmp samesign ugt i64 %0, 1
  br i1 %i.m, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.k unwind label %.lr.ph.i.preheader.i25.sink.split ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.q = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 123, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.l unwind label %.lr.ph.i.preheader.i25.sink.split ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.r = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 125, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %bb.m unwind label %.lr.ph.i.preheader.i25.sink.split ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 126, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm, i1 noundef zeroext true)
          to label %.thread unwind label %.lr.ph.i.preheader.i25.sink.split ; 0 uses

.thread:                                          ; preds = %bb.m
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

bb.n:                                             ; preds = %bb.g
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm)
          to label %.invoke unwind label %bb.o

.invoke:                                          ; preds = %bb.n, %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.p:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.q:                                             ; preds = %.invoke, %bb.b, %bb.d, %bb.e
  %i.x = phi i64 [ 0, %bb.b ], [ %0, %bb.d ], [ %0, %bb.e ], [ %0, %.invoke ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph.i.preheader.i25.sink.split:                ; preds = %bb.l, %bb.k, %bb.j, %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i25

bb.r:                                             ; preds = %bb.i
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.r
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.u, %.thread ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %0, 8                          ; 2 uses
  %2 = shl nuw nsw i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %1, i64 %2
  %i.ad = and i64 %0, 7
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %1, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.ae, align 16, !tbaa !83
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %vector.body
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.ad, %vector.body ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.ac, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.af = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i23 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i23, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !286

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vector.body
  %i.ah = trunc nuw nsw i64 %0 to i32
  %i.ai = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.ah
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.r, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.aj = phi i64 [ %0, %bb.o ], [ %i.x, %bb.q ], [ %0, %bb.p ] ; 2 uses
  %.pn11 = phi { ptr, i32 } [ %i.v, %bb.o ], [ %i.y, %bb.q ], [ %i.w, %bb.p ] ; 2 uses
  %.not3.i.i24 = icmp eq i64 %i.aj, 0
  br i1 %.not3.i.i24, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32, label %.lr.ph.i.preheader.i25

.lr.ph.i.preheader.i25:                           ; preds = %.lr.ph.i.preheader.i25.sink.split, %bb.s
  %.pn1142 = phi { ptr, i32 } [ %.pn11, %bb.s ], [ %i.z, %.lr.ph.i.preheader.i25.sink.split ]
  %i.ak = phi i64 [ %i.aj, %bb.s ], [ %0, %.lr.ph.i.preheader.i25.sink.split ] ; 6 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i26 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %min.iters.check47 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check47, label %.lr.ph.i.i27.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.preheader.i25
  %n.vec49 = and i64 %i.ak, -8                    ; 3 uses
  %i.al = and i64 %i.ak, 7
  %3 = shl i64 %n.vec49, 2
  %i.am = getelementptr i8, ptr %1, i64 %3
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.an = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep52, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.ao, align 16, !tbaa !83
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.ap, label %middle.block54, label %vector.body50, !llvm.loop !287

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %i.ak, %n.vec49
  br i1 %cmp.n55, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31, label %.lr.ph.i.i27.preheader

.lr.ph.i.i27.preheader:                           ; preds = %.lr.ph.i.preheader.i25, %middle.block54
  %.05.i.i28.ph = phi i64 [ %i.ak, %.lr.ph.i.preheader.i25 ], [ %i.al, %middle.block54 ]
  %storemerge4.i.i29.ph = phi ptr [ %1, %.lr.ph.i.preheader.i25 ], [ %i.am, %middle.block54 ]
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %.lr.ph.i.i27
  %.05.i.i28 = phi i64 [ %i.aq, %.lr.ph.i.i27 ], [ %.05.i.i28.ph, %.lr.ph.i.i27.preheader ]
  %storemerge4.i.i29 = phi ptr [ %i.ar, %.lr.ph.i.i27 ], [ %storemerge4.i.i29.ph, %.lr.ph.i.i27.preheader ] ; 2 uses
  %i.aq = add i64 %.05.i.i28, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i29, align 4, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i29, i64 4
  %.not.i.i30 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i30, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31, label %.lr.ph.i.i27, !llvm.loop !288

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31: ; preds = %.lr.ph.i.i27, %middle.block54
  %i.as = trunc nuw nsw i64 %i.ak to i32
  %i.at = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i26, %i.as
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32: ; preds = %bb.s, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31
  %.pn1143 = phi { ptr, i32 } [ %.pn11, %bb.s ], [ %.pn1142, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn1143

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ndIiLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.19", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %.pre.i.i.i.i = load i32, ptr %1, align 4, !tbaa !42 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i.i ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.b = add nsw i64 %.017.i.i.i.i.prol, -1       ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !289

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.017.i.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 4, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  store i32 %.pre.i.i.i.i, ptr %i.e, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  store i32 %.pre.i.i.i.i, ptr %i.f, align 4, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  store i32 %.pre.i.i.i.i, ptr %i.g, align 4, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  store i32 %.pre.i.i.i.i, ptr %i.h, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 20
  store i32 %.pre.i.i.i.i, ptr %i.i, align 4, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 24
  store i32 %.pre.i.i.i.i, ptr %i.j, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 28
  %i.l = add nsw i64 %.017.i.i.i.i, -8            ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 32
  %.not.i.i.i.i.7 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc18 unwind label %bb.c

.noexc18:                                         ; preds = %.loopexit
  unreachable

bb.c:                                             ; preds = %.loopexit
  %i.p = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1
  %i.s = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.t = icmp eq i32 %i.r, %i.s
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.q) #25 ; 0 uses
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.f
  tail call void @__cxa_end_catch()
  %i.w = icmp samesign ugt i64 %0, 1
  br i1 %i.w, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit27, label %bb.i

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit27: ; preds = %bb.e
  %i.x = load i32, ptr %1, align 4, !tbaa !42
  %i.y = load i32, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !42
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !42
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_)
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit27, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %i.aq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn16

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ndI8value_ndLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 7 uses
end_hunk_2
begin_hunk_3_@_Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_:bb.a
bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not15.i.i.i.i = icmp eq i64 %0, 0             ; 2 uses
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.i.i11.i.i.preheader

.lr.ph.i.i11.i.i.preheader:                       ; preds = %bb.c
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42 ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %.lr.ph.i.i11.i.i.preheader, %.lr.ph.i.i11.i.i.prol
  %i.b = phi i32 [ %i.e, %.lr.ph.i.i11.i.i.prol ], [ %.pre, %.lr.ph.i.i11.i.i.preheader ]
  %.017.i.i.i.i.prol = phi i64 [ %i.c, %.lr.ph.i.i11.i.i.prol ], [ %0, %.lr.ph.i.i11.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.f, %.lr.ph.i.i11.i.i.prol ], [ %2, %.lr.ph.i.i11.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.preheader ]
  %i.c = add nsw i64 %.017.i.i.i.i.prol, -1       ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.d, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !83
  %i.e = add i32 %i.b, 1                          ; 3 uses
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol, !llvm.loop !292

.lr.ph.i.i11.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i11.i.i.prol, %.lr.ph.i.i11.i.i.preheader
  %.unr = phi i32 [ %.pre, %.lr.ph.i.i11.i.i.preheader ], [ %i.e, %.lr.ph.i.i11.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.i11.i.i.preheader ], [ %i.c, %.lr.ph.i.i11.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i11.i.i.preheader ], [ %i.f, %.lr.ph.i.i11.i.i.prol ]
  %i.g = icmp ult i64 %0, 4
  br i1 %i.g, label %.loopexit, label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i
  %i.h = phi i32 [ %i.t, %.lr.ph.i.i11.i.i ], [ %.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i11.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i11.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i11.i.i.prol.loopexit ] ; 5 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.i, ptr %.01416.i.i.i.i, align 4, !tbaa !83
  %i.j = add i32 %i.h, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.l = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.l, ptr %i.k, align 4, !tbaa !83
  %i.m = add i32 %i.h, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.o = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.o, ptr %i.n, align 4, !tbaa !83
  %i.p = add i32 %i.h, 3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.r = add nsw i64 %.017.i.i.i.i, -4            ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !83
  store i32 %i.s, ptr %i.q, align 4, !tbaa !83
  %i.t = add i32 %i.h, 4                          ; 2 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i12.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i12.i.i.3, label %.loopexit, label %.lr.ph.i.i11.i.i, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i, %bb.c
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.r       ; 0 uses

bb.d:                                             ; preds = %.loopexit
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.r       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc18 unwind label %bb.f

.noexc18:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  %i.z = extractvalue { ptr, i32 } %i.x, 1
  %i.aa = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.y) #25 ; 0 uses
  br i1 %i.ab, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ad = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke unwind label %bb.q    ; 0 uses

bb.h:                                             ; preds = %.invoke
  %i.ae = icmp samesign ugt i64 %0, 1
  br i1 %i.ae, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %1, align 4, !tbaa !83
  %i.ag = load i32, ptr %2, align 16, !tbaa !83   ; 2 uses
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ah)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21 unwind label %bb.r ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21: ; preds = %bb.i
  %i.aj = load i32, ptr %1, align 4, !tbaa !83
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ak)
          to label %bb.j unwind label %bb.r       ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.an = load i32, ptr %1, align 4, !tbaa !83
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !83 ; 2 uses
  %i.ap = icmp eq i32 %i.an, %i.ao
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ap)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24 unwind label %bb.r ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24: ; preds = %bb.j
  %i.ar = load i32, ptr %1, align 4, !tbaa !83
  %i.as = icmp eq i32 %i.ar, %i.ao
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.as)
          to label %bb.k unwind label %bb.r       ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.l unwind label %.lr.ph.i.preheader.i36.sink.split ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.lr.ph.i.preheader.i36.sink.split ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.lr.ph.i.preheader.i36.sink.split ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %.lr.ph.i.preheader.i36.sink.split ; 0 uses

.thread:                                          ; preds = %bb.n
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

bb.o:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_)
          to label %.invoke unwind label %bb.p

.invoke:                                          ; preds = %bb.o, %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.q:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

bb.r:                                             ; preds = %.invoke, %bb.b, %.loopexit, %bb.d, %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21, %bb.j, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24
  %i.be = phi i64 [ 0, %bb.b ], [ %0, %.loopexit ], [ %0, %bb.d ], [ %0, %bb.i ], [ %0, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21 ], [ %0, %bb.j ], [ %0, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24 ], [ %0, %.invoke ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph.i.preheader.i36.sink.split:                ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i36

bb.s:                                             ; preds = %bb.h
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.s
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.bb, %.thread ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %0, 8                          ; 2 uses
  %3 = shl nuw nsw i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %2, i64 %3
  %i.bk = and i64 %0, 7
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %2, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.bl, align 16, !tbaa !83
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %vector.body
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.bk, %vector.body ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.bj, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bm, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bm = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i34 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i34, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !293

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %vector.body
  %i.bo = trunc nuw nsw i64 %0 to i32
  %i.bp = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bo
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.s, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bq = phi i64 [ %0, %bb.q ], [ %0, %bb.p ], [ %i.be, %bb.r ] ; 2 uses
  %.pn16 = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.bc, %bb.p ], [ %i.bf, %bb.r ] ; 2 uses
  %.not3.i.i35 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43, label %.lr.ph.i.preheader.i36

.lr.ph.i.preheader.i36:                           ; preds = %.lr.ph.i.preheader.i36.sink.split, %bb.t
  %.pn1655 = phi { ptr, i32 } [ %.pn16, %bb.t ], [ %i.bg, %.lr.ph.i.preheader.i36.sink.split ]
  %i.br = phi i64 [ %i.bq, %bb.t ], [ %0, %.lr.ph.i.preheader.i36.sink.split ] ; 6 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i37 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %min.iters.check60 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i38.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.preheader.i36
  %n.vec62 = and i64 %i.br, -8                    ; 3 uses
  %i.bs = and i64 %i.br, 7
  %4 = shl i64 %n.vec62, 2
  %i.bt = getelementptr i8, ptr %2, i64 %4
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next66, %vector.body63 ] ; 2 uses
  %i.bu = shl i64 %index64, 2
  %next.gep65 = getelementptr i8, ptr %2, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep65, align 16, !tbaa !83
  store <4 x i32> splat (i32 -2147483648), ptr %i.bv, align 16, !tbaa !83
  %index.next66 = add nuw i64 %index64, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next66, %n.vec62
  br i1 %i.bw, label %middle.block67, label %vector.body63, !llvm.loop !294

middle.block67:                                   ; preds = %vector.body63
  %cmp.n68 = icmp eq i64 %i.br, %n.vec62
  br i1 %cmp.n68, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.preheader.i36, %middle.block67
  %.05.i.i39.ph = phi i64 [ %i.br, %.lr.ph.i.preheader.i36 ], [ %i.bs, %middle.block67 ]
  %storemerge4.i.i40.ph = phi ptr [ %2, %.lr.ph.i.preheader.i36 ], [ %i.bt, %middle.block67 ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.05.i.i39 = phi i64 [ %i.bx, %.lr.ph.i.i38 ], [ %.05.i.i39.ph, %.lr.ph.i.i38.preheader ]
  %storemerge4.i.i40 = phi ptr [ %i.by, %.lr.ph.i.i38 ], [ %storemerge4.i.i40.ph, %.lr.ph.i.i38.preheader ] ; 2 uses
  %i.bx = add i64 %.05.i.i39, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i40, align 4, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i.i40, i64 4
  %.not.i.i41 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i41, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42, label %.lr.ph.i.i38, !llvm.loop !295

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42: ; preds = %.lr.ph.i.i38, %middle.block67
  %i.bz = trunc nuw nsw i64 %i.br to i32
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i37, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43: ; preds = %bb.t, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42
  %.pn1656 = phi { ptr, i32 } [ %.pn16, %bb.t ], [ %.pn1655, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn1656

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z17test_push_back_ndIiLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.19", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = extractvalue { ptr, i32 } %i.b, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25 ; 2 uses
  %i.f = icmp eq i32 %i.d, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #25 ; 0 uses
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.f
  tail call void @__cxa_end_catch()
  br label %bb.i

bb.e:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.f:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 160, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv)
          to label %bb.d unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.h:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.i:                                             ; preds = %bb.d, %bb.o
  %i.k = phi i64 [ 0, %bb.d ], [ %i.n, %bb.o ]    ; 6 uses
  %.037 = phi i64 [ 0, %bb.d ], [ %i.o, %bb.o ]   ; 6 uses
  %i.l = trunc nuw nsw i64 %.037 to i32           ; 2 uses
  %.not.i = icmp eq i64 %i.k, 10
  br i1 %.not.i, label %.noexc30, label %bb.j, !prof !43

.noexc30:                                         ; preds = %bb.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  store i32 %i.l, ptr %i.m, align 4, !tbaa !42
  %i.n = add nuw nsw i64 %i.k, 1
  %i.o = add nuw nsw i64 %.037, 1                 ; 2 uses
  %i.p = icmp eq i64 %i.k, %.037
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext %i.p) ; 0 uses
  %.not.i.i31 = icmp samesign ult i64 %.037, %i.k
  br i1 %.not.i.i31, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit33, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc32 unwind label %bb.l

.noexc32:                                         ; preds = %bb.k
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit33: ; preds = %bb.j
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 167, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit33
  %i.r = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = extractvalue { ptr, i32 } %i.r, 1
  %i.u = icmp eq i32 %i.t, %i.e
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.s) #25 ; 0 uses
  br i1 %i.u, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.r ; 0 uses

.sink.split:                                      ; preds = %bb.m, %bb.p
  tail call void @__cxa_end_catch()
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE2atEm.exit33
  %.not.i.i34.not = icmp samesign ugt i64 %.037, %i.k
  br i1 %.not.i.i34.not, label %.noexc35, label %bb.o

.noexc35:                                         ; preds = %bb.n
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42
  %i.z = icmp eq i32 %i.y, %i.l                   ; 3 uses
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext %i.z) ; 0 uses
  %i.ac = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 170, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !42
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext %i.ae) ; 0 uses
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv, i1 noundef zeroext %i.z), !llvm.loop !296 ; 0 uses
  %exitcond.not = icmp eq i64 %i.o, 10
  br i1 %exitcond.not, label %bb.e, label %bb.i

bb.p:                                             ; preds = %bb.l
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 167, ptr noundef nonnull @__PRETTY_FUNCTION__._Z17test_push_back_ndIiLm10EEvv)
          to label %.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.h, %bb.g
  %.pn27.pn = phi { ptr, i32 } [ %i.ah, %bb.q ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ %i.ai, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn27.pn

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.h, %bb.g
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable
end_hunk_3
