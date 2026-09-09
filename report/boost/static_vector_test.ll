Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z16test_pop_back_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv:.preheader
bb.o:                                             ; preds = %bb.e
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_pop_back_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.d

bb.q:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

bb.s:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.x

bb.u:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i32.sink.split

bb.v:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i32.sink.split

bb.w:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i32.sink.split

bb.x:                                             ; preds = %bb.d, %bb.t, %bb.q, %bb.r, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %i.bf, %bb.q ], [ %i.y, %bb.d ], [ %i.bh, %bb.s ], [ %lpad.phi, %bb.t ] ; 2 uses
  %.not3.i.i31 = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i31, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit39, label %.lr.ph.i.preheader.i32

.lr.ph.i.preheader.i32.sink.split:                ; preds = %bb.u, %bb.v, %bb.w
  %.pn2484.ph = phi { ptr, i32 } [ %i.bm, %bb.w ], [ %i.bl, %bb.v ], [ %i.bk, %bb.u ]
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i32

.lr.ph.i.preheader.i32:                           ; preds = %.lr.ph.i.preheader.i32.sink.split, %bb.x
  %.pn2484 = phi { ptr, i32 } [ %.pn24, %bb.x ], [ %.pn2484.ph, %.lr.ph.i.preheader.i32.sink.split ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i33 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.q, 9
  br i1 %min.iters.check, label %.lr.ph.i.i34.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i32
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.bp = and i64 %i.u, 7
  %i.bq = shl i64 %n.vec, 2
  %i.br = getelementptr i8, ptr %0, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 16, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bt, align 16, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i38, label %.lr.ph.i.i34.preheader

.lr.ph.i.i34.preheader:                           ; preds = %.lr.ph.i.preheader.i32, %middle.block
  %.05.i.i35.ph = phi i64 [ %i.u, %.lr.ph.i.preheader.i32 ], [ %i.bp, %middle.block ]
  %storemerge4.i.i36.ph = phi ptr [ %0, %.lr.ph.i.preheader.i32 ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %.lr.ph.i.i34.preheader, %.lr.ph.i.i34
  %.05.i.i35 = phi i64 [ %i.bv, %.lr.ph.i.i34 ], [ %.05.i.i35.ph, %.lr.ph.i.i34.preheader ]
  %storemerge4.i.i36 = phi ptr [ %i.bw, %.lr.ph.i.i34 ], [ %storemerge4.i.i36.ph, %.lr.ph.i.i34.preheader ] ; 2 uses
  %i.bv = add i64 %.05.i.i35, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i36, align 4, !tbaa !82
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i36, i64 4
  %.not.i.i37 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i37, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i38, label %.lr.ph.i.i34, !llvm.loop !314

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i38: ; preds = %.lr.ph.i.i34, %middle.block
  %i.bx = trunc i64 %i.u to i32
  %i.by = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i33, %i.bx
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit39

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit39: ; preds = %bb.x, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i38
  %.pn2485 = phi { ptr, i32 } [ %.pn24, %bb.x ], [ %.pn2484, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn2485

bb.y:                                             ; preds = %bb.r, %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndIiLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.19", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::vector.62", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.boost::container::static_vector.19", align 8 ; 7 uses
  %6 = alloca %"class.boost::container::static_vector.19", align 8 ; 6 uses
  %7 = alloca %"class.boost::container::static_vector.19", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 8 uses
  store i64 0, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %4, align 8
  store ptr %i.c, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.e

bb.b:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.g = load i64, ptr %i.b, align 8, !tbaa !95   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !93
  %i.i = icmp ugt i64 %i.g, 10
  br i1 %i.i, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.j = shl nuw nsw i64 %i.g, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %5, ptr nonnull align 8 dereferenceable(48) %2, i64 %i.j, i1 false)
  %.pre = load i64, ptr %i.h, align 8, !tbaa !95
  br label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.a, %bb.j
  %.011152 = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = trunc nuw nsw i64 %.011152 to i32        ; 3 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !41
  %i.l = load i64, ptr %i.b, align 8, !tbaa !95   ; 3 uses
  %.not.i = icmp eq i64 %i.l, 10
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp147

.noexc19:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  store i32 %i.k, ptr %i.m, align 4, !tbaa !41
  %i.n = add nsw i64 %i.l, 1
  store i64 %i.n, ptr %i.b, align 8, !tbaa !95
  %i.o = load i64, ptr %i.e, align 8, !tbaa !109  ; 4 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !110
  %.not.i20 = icmp eq i64 %i.o, %i.p
  br i1 %.not.i20, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.o
  store i32 %i.k, ptr %i.r, align 4, !tbaa !41
  %i.s = add i64 %i.o, 1
  store i64 %i.s, ptr %i.e, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backERKi.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.t = load ptr, ptr %3, align 8, !tbaa !111
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.o
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.u, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc21 unwind label %.loopexit146

.noexc21:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backERKi.exit

_ZN5boost9container6vectorIivvE9push_backERKi.exit: ; preds = %.noexc21, %bb.h
  %i.v = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.j unwind label %.loopexit146 ; 5 uses

bb.j:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backERKi.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.a, align 4, !tbaa !41
  store i32 %i.x, ptr %i.w, align 4, !tbaa !41
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !106
  store ptr %i.c, ptr %i.v, align 8, !tbaa !105
  store ptr %i.v, ptr %i.d, align 8, !tbaa !106
  store ptr %i.v, ptr %i.y, align 8, !tbaa !105
  %i.aa = load i64, ptr %4, align 8, !tbaa !114
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %4, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ac = add nuw nsw i64 %.011152, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, 10
  br i1 %exitcond.not, label %bb.b, label %bb.e, !llvm.loop !315

.loopexit146:                                     ; preds = %bb.i, %_ZN5boost9container6vectorIivvE9push_backERKi.exit
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp147:                            ; preds = %bb.f
  %lpad.loopexit.split-lp149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp147, %.loopexit146
  %lpad.phi150 = phi { ptr, i32 } [ %lpad.loopexit148, %.loopexit146 ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.as

_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit: ; preds = %bb.d, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.ad = phi i64 [ %.pre, %bb.d ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i ] ; 3 uses
  %i.ae = icmp eq i64 %i.g, %i.ad
  %i.af = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIiLm10EEvRKT_, i1 noundef zeroext %i.ae)
          to label %bb.l unwind label %.loopexit.split-lp142 ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !95, !noalias !335 ; 3 uses
  %.idx = shl nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ai = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ad
  %i.aj = icmp eq i64 %i.ag, %i.ad
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.aj)
          to label %.noexc24 unwind label %.loopexit.split-lp142 ; 0 uses

.noexc24:                                         ; preds = %bb.l
  %.not5.i = icmp eq i64 %i.ag, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0113.0 = phi ptr [ %i.aq, %.noexc25 ], [ %5, %.noexc24 ] ; 3 uses
  %.sroa.0118.0 = phi ptr [ %i.ap, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0113.0, %i.ai
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.al = load i32, ptr %.sroa.0118.0, align 4, !tbaa !41
  %i.am = load i32, ptr %.sroa.0113.0, align 4, !tbaa !41
  %i.an = icmp eq i32 %i.al, %i.am
  %i.ao = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.an)
          to label %.noexc25 unwind label %.loopexit141 ; 0 uses

.noexc25:                                         ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0118.0, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 4
  %.not.i23 = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit, label %.lr.ph.i, !llvm.loop !318

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIiLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp137 ; 0 uses

bb.n:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit
  %i.as = load i64, ptr %i.b, align 8, !tbaa !95  ; 4 uses
  %.not184 = icmp eq i64 %i.as, 0
  br i1 %.not184, label %bb.o, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i: ; preds = %bb.n
  %i.at = shl i64 %i.as, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 %i.at, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i.i.i.i
  %i.au = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIiLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.p unwind label %.loopexit.split-lp137 ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.av = load i64, ptr %i.b, align 8, !tbaa !95, !noalias !336 ; 3 uses
  %.idx128 = shl nsw i64 %i.av, 2
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %.idx128
  %i.ax = getelementptr inbounds [4 x i8], ptr %6, i64 %i.as
  %i.ay = icmp eq i64 %i.av, %i.as
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.ay)
          to label %.noexc32 unwind label %.loopexit.split-lp137 ; 0 uses

.noexc32:                                         ; preds = %bb.p
  %.not5.i26 = icmp eq i64 %i.av, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0102.0 = phi ptr [ %i.bf, %.noexc33 ], [ %6, %.noexc32 ] ; 3 uses
  %.sroa.0107.0 = phi ptr [ %i.be, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0102.0, %i.ax
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i29
  %i.ba = load i32, ptr %.sroa.0107.0, align 4, !tbaa !41
  %i.bb = load i32, ptr %.sroa.0102.0, align 4, !tbaa !41
  %i.bc = icmp eq i32 %i.ba, %i.bb
  %i.bd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.bc)
          to label %.noexc33 unwind label %.loopexit136 ; 0 uses

.noexc33:                                         ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0102.0, i64 4
  %.not.i31 = icmp eq ptr %i.be, %i.aw
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34, label %.lr.ph.i29, !llvm.loop !318

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  invoke void @_Z20test_copy_and_assignIiLm10EN5boost9container13static_vectorIiLm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.r unwind label %bb.ao

bb.r:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34
  invoke void @_Z20test_copy_and_assignIiLm10EN5boost9container6vectorIivvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %bb.ao

bb.s:                                             ; preds = %bb.r
  invoke void @_Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.t unwind label %bb.ao

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !95  ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !93
  %i.bi = icmp ugt i64 %i.bg, 10
  br i1 %i.bi, label %bb.u, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc37 unwind label %bb.ap

.noexc37:                                         ; preds = %bb.u
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35: ; preds = %bb.t
  %.not.i.i.i.i36 = icmp eq i64 %i.bg, 0          ; 2 uses
  br i1 %.not.i.i.i.i36, label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38, label %bb.v, !prof !42

bb.v:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35
  %i.bj = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(48) %7, ptr nonnull align 8 dereferenceable(48) %2, i64 %i.bj, i1 false)
  %.pre154 = load i64, ptr %i.bh, align 8, !tbaa !95, !noalias !337
  br label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38

_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35, %bb.v
  %.idx131.pre-phi = phi i64 [ %i.bj, %bb.v ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35 ]
  %i.bk = phi i64 [ %.pre154, %bb.v ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 %.idx131.pre-phi
  %i.bm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bk
  %i.bn = icmp eq i64 %i.bg, %i.bk
  %i.bo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_, i1 noundef zeroext %i.bn)
          to label %.noexc45 unwind label %.loopexit.split-lp ; 0 uses

.noexc45:                                         ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38
end_hunk_0
begin_hunk_1_@_Z23test_copy_and_assign_ndIiLm10EEvRKT_:bb.a
  %i.ew = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i = icmp eq ptr %i.ew, %i.c
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container6vectorIivvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ex = load i64, ptr %i.f, align 8, !tbaa !110 ; 2 uses
  %.not.i.i63 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i63, label %_ZN5boost9container6vectorIivvED2Ev.exit64, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.ey = load ptr, ptr %3, align 8, !tbaa !115
  %i.ez = shl i64 %i.ex, 2
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.ez) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit64

_ZN5boost9container6vectorIivvED2Ev.exit64:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.al:                                            ; preds = %bb.c
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit141:                                     ; preds = %bb.m
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp142:                            ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit, %bb.l
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit141, %.loopexit.split-lp142, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fa, %bb.al ], [ %lpad.loopexit143, %.loopexit141 ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp142 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.as

.loopexit136:                                     ; preds = %bb.q
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp137:                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit, %bb.o, %bb.p
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp137, %.loopexit136
  %lpad.phi140 = phi { ptr, i32 } [ %lpad.loopexit138, %.loopexit136 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.ao:                                            ; preds = %bb.s, %bb.r, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit34
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit:                                        ; preds = %bb.w
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp:                               ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit38
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEES4_EvT_S5_T0_S6_.exit47
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIivvED2Ev.exit66

_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp: ; preds = %bb.y, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIivvED2Ev.exit66

_ZN5boost9container6vectorIivvED2Ev.exit66:       ; preds = %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit ], [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 40) #25
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5boost9container6vectorIivvED2Ev.exit66, %bb.aq, %bb.ap
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.fd, %bb.aq ], [ %lpad.phi, %_ZN5boost9container6vectorIivvED2Ev.exit66 ], [ %lpad.loopexit133, %.loopexit ], [ %lpad.loopexit.split-lp134, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.am, %bb.k
  %.pn17 = phi { ptr, i32 } [ %lpad.phi150, %bb.k ], [ %.pn13.pn.pn, %bb.ar ], [ %i.fb, %bb.ao ], [ %lpad.phi140, %bb.an ], [ %.pn, %bb.am ]
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !341 ; 2 uses
  %.not8.i.i.i67 = icmp eq ptr %i.fe, %i.c
  br i1 %.not8.i.i.i67, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68

.lr.ph.i.i.i68:                                   ; preds = %bb.as, %.lr.ph.i.i.i68
  %.sroa.04.09.i.i.i69 = phi ptr [ %i.ff, %.lr.ph.i.i.i68 ], [ %i.fe, %bb.as ] ; 2 uses
  %i.ff = load ptr, ptr %.sroa.04.09.i.i.i69, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i69, i64 noundef 24) #25
  %.not.i.i.i70 = icmp eq ptr %i.ff, %i.c
  br i1 %.not.i.i.i70, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, label %.lr.ph.i.i.i68, !llvm.loop !6

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71: ; preds = %.lr.ph.i.i.i68, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fg = load i64, ptr %i.f, align 8, !tbaa !110 ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i72, label %_ZN5boost9container6vectorIivvED2Ev.exit73, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71
  %i.fh = load ptr, ptr %3, align 8, !tbaa !115
  %i.fi = shl i64 %i.fg, 2
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fi) #25
  br label %_ZN5boost9container6vectorIivvED2Ev.exit73

_ZN5boost9container6vectorIivvED2Ev.exit73:       ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit71, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.53", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::vector.79", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list.83", align 8 ; 9 uses
  %5 = alloca %class.value_nd, align 4            ; 6 uses
  %6 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %7 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %8 = alloca %"class.boost::container::static_vector.43", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 8 uses
  store i64 0, ptr %i.a, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 0, ptr %4, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !120  ; 5 uses
  %i.g = icmp ugt i64 %i.f, 10
  br i1 %i.g, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 %i.h, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.a, %bb.i
  %.011159 = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.i = trunc nuw nsw i64 %.011159 to i32        ; 3 uses
  store i32 %i.i, ptr %5, align 4, !tbaa !77
  %i.j = load i64, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %.not.i = icmp eq i64 %i.j, 10
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp154

.noexc19:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  store i32 %i.i, ptr %i.k, align 4, !tbaa !41
  %i.l = add nsw i64 %i.j, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !120
  %i.m = load i64, ptr %i.d, align 8, !tbaa !124  ; 4 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !125
  %.not.i20 = icmp eq i64 %i.m, %i.n
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %3, align 8, !tbaa !126, !nonnull !112, !noundef !112
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.m
  store i32 %i.i, ptr %i.p, align 4, !tbaa !41
  %i.q = add i64 %i.m, 1
  store i64 %i.q, ptr %i.d, align 8, !tbaa !124
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.r = load ptr, ptr %3, align 8, !tbaa !126
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  invoke void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.53") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.s, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %5)
          to label %.noexc21 unwind label %.loopexit153

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit

_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit: ; preds = %.noexc21, %bb.g
  %i.t = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit153 ; 5 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %5, align 4, !tbaa !41
  store i32 %i.v, ptr %i.u, align 4, !tbaa !41
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !106
  store ptr %i.b, ptr %i.t, align 8, !tbaa !105
  store ptr %i.t, ptr %i.c, align 8, !tbaa !106
  store ptr %i.t, ptr %i.w, align 8, !tbaa !105
  %i.y = load i64, ptr %4, align 8, !tbaa !114
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %4, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aa = add nuw nsw i64 %.011159, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !342

.loopexit153:                                     ; preds = %bb.h, %_ZN5boost9container6vectorI8value_ndvvE9push_backERKS2_.exit
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp154:                            ; preds = %bb.e
  %lpad.loopexit.split-lp156 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp154, %.loopexit153
  %lpad.phi157 = phi { ptr, i32 } [ %lpad.loopexit155, %.loopexit153 ], [ %lpad.loopexit.split-lp156, %.loopexit.split-lp154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ap

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.preheader, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.loopexit.split-lp149 ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !360 ; 3 uses
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.af = icmp eq i64 %i.ac, %i.f
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.af)
          to label %.noexc24 unwind label %.loopexit.split-lp149 ; 0 uses

.noexc24:                                         ; preds = %bb.k
  %.not5.i = icmp eq i64 %i.ac, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0119.0 = phi ptr [ %i.am, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0124.0 = phi ptr [ %i.al, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0119.0, %i.ae
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = load i32, ptr %.sroa.0124.0, align 4, !tbaa !77
  %i.ai = load i32, ptr %.sroa.0119.0, align 4, !tbaa !77
  %i.aj = icmp eq i32 %i.ah, %i.ai
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.aj)
          to label %.noexc25 unwind label %.loopexit148 ; 0 uses

.noexc25:                                         ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0124.0, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0119.0, i64 4
  %.not.i23 = icmp eq ptr %i.al, %i.ad
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !345

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp143 ; 0 uses

bb.m:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !120 ; 4 uses
  %.not189 = icmp eq i64 %i.ao, 0
  br i1 %.not189, label %.loopexit147, label %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i: ; preds = %bb.m
  %i.ap = shl i64 %i.ao, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.ap, i1 false), !tbaa !41
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.m, %_ZN5boost9container18copy_n_source_destIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp143 ; 0 uses

bb.n:                                             ; preds = %.loopexit147
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !361 ; 3 uses
  %.idx134 = shl nsw i64 %i.ar, 2
  %i.as = getelementptr inbounds i8, ptr %2, i64 %.idx134
  %i.at = getelementptr inbounds [4 x i8], ptr %7, i64 %i.ao
  %i.au = icmp eq i64 %i.ar, %i.ao
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.au)
          to label %.noexc32 unwind label %.loopexit.split-lp143 ; 0 uses

.noexc32:                                         ; preds = %bb.n
  %.not5.i26 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0108.0 = phi ptr [ %i.bb, %.noexc33 ], [ %7, %.noexc32 ] ; 3 uses
  %.sroa.0113.0 = phi ptr [ %i.ba, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0108.0, %i.at
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i29
  %i.aw = load i32, ptr %.sroa.0113.0, align 4, !tbaa !77
  %i.ax = load i32, ptr %.sroa.0108.0, align 4, !tbaa !77
  %i.ay = icmp eq i32 %i.aw, %i.ax
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ay)
          to label %.noexc33 unwind label %.loopexit142 ; 0 uses

.noexc33:                                         ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0113.0, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0108.0, i64 4
  %.not.i31 = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !345

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  invoke void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !120 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !118
  %i.be = icmp ugt i64 %i.bc, 10
  br i1 %i.be, label %bb.s, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc42 unwind label %bb.am

.noexc42:                                         ; preds = %bb.s
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35: ; preds = %bb.r
  %.not17.i.i.i36 = icmp eq i64 %i.bc, 0          ; 2 uses
  br i1 %.not17.i.i.i36, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35
  %i.bf = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %2, i64 %i.bf, i1 false), !tbaa !41
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35, %.lr.ph.i.i.i37.preheader
  %.idx137.pre-phi = phi i64 [ %i.bf, %.lr.ph.i.i.i37.preheader ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i35 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %.idx137.pre-phi
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.bc
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc50 unwind label %.loopexit.split-lp ; 0 uses

.noexc50:                                         ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43
  br i1 %.not17.i.i.i36, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.noexc50, %.noexc51
  %.sroa.0102.0 = phi ptr [ %i.bn, %.noexc51 ], [ %2, %.noexc50 ] ; 2 uses
  %.sroa.097.0 = phi ptr [ %i.bo, %.noexc51 ], [ %8, %.noexc50 ] ; 3 uses
end_hunk_1
begin_hunk_2_@_Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_:bb.a
          cleanup
  br label %bb.ao

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp: ; preds = %bb.v, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72: ; preds = %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit ], [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 40) #25
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72, %bb.an, %bb.am
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.am ], [ %i.ex, %bb.an ], [ %lpad.phi, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72 ], [ %lpad.loopexit139, %.loopexit ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al, %bb.ak, %bb.aj, %bb.j
  %.pn17 = phi { ptr, i32 } [ %lpad.phi157, %bb.j ], [ %.pn13.pn.pn, %bb.ao ], [ %i.ev, %bb.al ], [ %lpad.phi146, %bb.ak ], [ %.pn, %bb.aj ]
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !105, !noalias !365 ; 2 uses
  %.not8.i.i.i73 = icmp eq ptr %i.ey, %i.b
  br i1 %.not8.i.i.i73, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %bb.ap, %.lr.ph.i.i.i74
  %.sroa.04.09.i.i.i75 = phi ptr [ %i.ez, %.lr.ph.i.i.i74 ], [ %i.ey, %bb.ap ] ; 2 uses
  %i.ez = load ptr, ptr %.sroa.04.09.i.i.i75, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i75, i64 noundef 24) #25
  %.not.i.i.i76 = icmp eq ptr %i.ez, %i.b
  br i1 %.not.i.i.i76, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77, label %.lr.ph.i.i.i74, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77: ; preds = %.lr.ph.i.i.i74, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fa = load i64, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %.not.i.i78 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i78, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit79, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77
  %i.fb = load ptr, ptr %3, align 8, !tbaa !127
  %i.fc = shl i64 %i.fa, 2
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fc) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit79

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit79: ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(8) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.56", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 20 uses
  %3 = alloca %"class.boost::container::vector.108", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list.112", align 8 ; 10 uses
  %5 = alloca %class.counting_value, align 8      ; 7 uses
  %6 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::static_vector.29", align 8 ; 10 uses
  %8 = alloca %"class.boost::container::static_vector.29", align 8 ; 20 uses
  %9 = alloca %"class.boost::container::vector.108", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 10 uses
  store i64 0, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %4, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.d

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.g = load i64, ptr %i.a, align 8, !tbaa !102  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !128
  %i.i = icmp ugt i64 %i.g, 10
  br i1 %i.i, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.020.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.preheader ]
  %.0819.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %6, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.j = add i64 %.020.i.i.i.prol, -1             ; 2 uses
  %i.k = load <2 x i32>, ptr %.0819.i.i.i.prol, align 4, !tbaa !41
  store <2 x i32> %i.k, ptr %.01618.i.i.i.prol, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !366

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.020.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.prol ]
  %.0819.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %6, %.lr.ph.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %i.n = icmp ult i64 %i.g, 8
  br i1 %i.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0819.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.0819.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01618.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.o = load <2 x i32>, ptr %.0819.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.o, ptr %.01618.i.i.i, align 4, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !41
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !41
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 24
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !41
  store <2 x i32> %i.x, ptr %i.w, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 32
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !tbaa !41
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 40
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !41
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 48
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !41
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 56
  %i.aj = add i64 %.020.i.i.i, -8                 ; 2 uses
  %i.ak = load <2 x i32>, ptr %i.ah, align 4, !tbaa !41
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 64
  %.not.i.i.i.7 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !8

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.an = add i64 %i.bi, %i.g
  store i64 %i.an, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.a, %bb.i
  %i.ao = phi i64 [ %.pre, %bb.a ], [ %i.bi, %bb.i ] ; 3 uses
  %.011187 = phi i64 [ 0, %bb.a ], [ %i.bn, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ap = trunc nuw nsw i64 %.011187 to i32       ; 3 uses
  store i32 %i.ap, ptr %5, align 8, !tbaa !79
  store i32 0, ptr %i.d, align 4, !tbaa !80
  %i.aq = add i64 %i.ao, 1
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  %.not.i = icmp eq i64 %i.ar, 10
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp180

.noexc19:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  store i32 %i.ap, ptr %i.as, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !80
  %i.au = add i64 %i.ao, 2
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.av = add nsw i64 %i.ar, 1
  store i64 %i.av, ptr %i.a, align 8, !tbaa !102
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !132 ; 4 uses
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !133
  %.not.i20 = icmp eq i64 %i.aw, %i.ax
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %3, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store i32 %i.ap, ptr %i.az, align 4, !tbaa !79
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !80
  %i.bb = add i64 %i.ao, 3
  store i64 %i.bb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bc = add i64 %i.aw, 1
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bd = load ptr, ptr %3, align 8, !tbaa !134
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.aw
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.be, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %5)
          to label %.noexc21 unwind label %.loopexit179

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit

_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit: ; preds = %.noexc21, %bb.g
  %i.bf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit179 ; 5 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load <2 x i32>, ptr %5, align 8, !tbaa !41
  store <2 x i32> %i.bh, ptr %i.bg, align 4, !tbaa !41
  %i.bi = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 3 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !106
  store ptr %i.b, ptr %i.bf, align 8, !tbaa !105
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !106
  store ptr %i.bf, ptr %i.bj, align 8, !tbaa !105
  %i.bl = load i64, ptr %4, align 8, !tbaa !114
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %4, align 8, !tbaa !114
  store i64 %i.bi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bn = add nuw nsw i64 %.011187, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !367

.loopexit179:                                     ; preds = %bb.h, %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp180:                            ; preds = %bb.e
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp180, %.loopexit179
  %lpad.phi183 = phi { ptr, i32 } [ %lpad.loopexit181, %.loopexit179 ], [ %lpad.loopexit.split-lp182, %.loopexit.split-lp180 ]
  %i.bo = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ar

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit: ; preds = %._crit_edge.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.bq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.loopexit.split-lp175 ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit
  %i.br = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !386 ; 3 uses
  %.idx = shl nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.g
  %i.bu = icmp eq i64 %i.br, %i.g
  %i.bv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.bu)
          to label %.noexc24 unwind label %.loopexit.split-lp175 ; 0 uses

.noexc24:                                         ; preds = %bb.k
  %.not5.i = icmp eq i64 %i.br, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0142.0 = phi ptr [ %i.ce, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0147.0 = phi ptr [ %i.cd, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0142.0, %i.bt
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.bw = load <2 x i32>, ptr %.sroa.0147.0, align 4
  %i.bx = load <2 x i32>, ptr %.sroa.0142.0, align 4
  %i.by = icmp eq <2 x i32> %i.bw, %i.bx          ; 2 uses
  %i.bz = extractelement <2 x i1> %i.by, i64 0
  %i.ca = extractelement <2 x i1> %i.by, i64 1
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  %i.cc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cb)
          to label %.noexc25 unwind label %.loopexit174 ; 0 uses

.noexc25:                                         ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0147.0, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 8
  %.not.i23 = icmp eq ptr %i.cd, %i.bs
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !370

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  %i.cf = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cg = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.cf
  store i64 %i.cg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ci = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp170 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !102 ; 15 uses
  %.not214 = icmp eq i64 %i.cj, 0
  br i1 %.not214, label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i: ; preds = %bb.m
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %min.iters.check = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i
  %n.vec = and i64 %i.cj, -4                      ; 3 uses
  %i.ck = and i64 %i.cj, 3
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %2, i64 %i.cl
  %i.cn = getelementptr i8, ptr %7, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 3 uses
  %i.cp = or disjoint i64 %i.co, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.co
  %next.gep219 = getelementptr i8, ptr %2, i64 %i.cp
  %next.gep220 = getelementptr i8, ptr %7, i64 %i.co
  %next.gep221 = getelementptr i8, ptr %7, i64 %i.cp
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !41
  %wide.vec223 = load <4 x i32>, ptr %next.gep219, align 8, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep220, align 8, !tbaa !41
  store <4 x i32> %wide.vec223, ptr %next.gep221, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i, %middle.block
  %.020.i.i.i.i.i.ph = phi i64 [ %i.cj, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.ck, %middle.block ]
  %.0819.i.i.i.i.i.ph = phi ptr [ %2, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.cm, %middle.block ]
  %.01618.i.i.i.i.i.ph = phi ptr [ %7, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.cn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020.i.i.i.i.i = phi i64 [ %i.cr, %scalar.ph ], [ %.020.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.0819.i.i.i.i.i = phi ptr [ %i.ct, %scalar.ph ], [ %.0819.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.cu, %scalar.ph ], [ %.01618.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cr = add i64 %.020.i.i.i.i.i, -1             ; 2 uses
  %i.cs = load <2 x i32>, ptr %.0819.i.i.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.cs, ptr %.01618.i.i.i.i.i, align 4, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %.not.i15.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i15.i.i.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i, label %scalar.ph, !llvm.loop !372

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i: ; preds = %scalar.ph, %middle.block
  %i.cv = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i, %i.cj
  store i64 %i.cv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i

_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i: ; preds = %bb.m, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !128
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp170 ; 0 uses

bb.n:                                             ; preds = %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !387 ; 3 uses
  %.idx157 = shl nsw i64 %i.cx, 3
  %i.cy = getelementptr inbounds i8, ptr %2, i64 %.idx157
  %i.cz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.cj
  %i.da = icmp eq i64 %i.cx, %i.cj
end_hunk_2
begin_hunk_3_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
.lr.ph.preheader.i.i93:                           ; preds = %bb.aj
  %_ZZN14counting_value1cEvE2co.promoted.i.i94 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kr = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i94, %i.kq
  store i64 %i.kr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95: ; preds = %.lr.ph.preheader.i.i93, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.kp, %bb.ai ], [ %lpad.phi178, %bb.aj ], [ %lpad.phi178, %.lr.ph.preheader.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ar

.loopexit169:                                     ; preds = %bb.o
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp170:                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, %bb.n
  %i.ks = phi i64 [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ %i.cj, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i ], [ %i.cj, %bb.n ]
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp170, %.loopexit169
  %i.kt = phi i64 [ %i.cj, %.loopexit169 ], [ %i.ks, %.loopexit.split-lp170 ] ; 2 uses
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  %.not3.i.i96 = icmp eq i64 %i.kt, 0
  br i1 %.not3.i.i96, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, label %.lr.ph.preheader.i.i97

.lr.ph.preheader.i.i97:                           ; preds = %bb.ak
  %_ZZN14counting_value1cEvE2co.promoted.i.i98 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ku = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i98, %i.kt
  store i64 %i.ku, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99: ; preds = %bb.ak, %.lr.ph.preheader.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ar

bb.al:                                            ; preds = %bb.q, %bb.p, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.am:                                            ; preds = %bb.s
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

.loopexit164:                                     ; preds = %bb.t
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp165:                            ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.an:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit:                                        ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.v, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn13 = phi { ptr, i32 } [ %lpad.phi, %bb.ao ], [ %i.kx, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit164, %.loopexit.split-lp165, %bb.ap
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.ap ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ] ; 2 uses
  %i.ky = load i64, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i100 = icmp eq i64 %i.ky, 0
  br i1 %.not3.i.i100, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, label %.lr.ph.preheader.i.i101

.lr.ph.preheader.i.i101:                          ; preds = %bb.aq
  %_ZZN14counting_value1cEvE2co.promoted.i.i102 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kz = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i102, %i.ky
  store i64 %i.kz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103: ; preds = %.lr.ph.preheader.i.i101, %bb.aq, %bb.am
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.am ], [ %.pn13.pn, %bb.aq ], [ %.pn13.pn, %.lr.ph.preheader.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, %bb.al, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, %bb.j
  %.pn17 = phi { ptr, i32 } [ %lpad.phi183, %bb.j ], [ %.pn13.pn.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103 ], [ %i.kv, %bb.al ], [ %lpad.phi173, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95 ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.la = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i104 = icmp eq i64 %i.la, 0
  br i1 %.not3.i.i104, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i105

.lr.ph.preheader.i.i105:                          ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i106 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lb = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i106, %i.la
  store i64 %i.lb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107: ; preds = %bb.ar, %.lr.ph.preheader.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.59", align 8 ; 3 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 21 uses
  %3 = alloca %"class.boost::container::vector.137", align 8 ; 12 uses
  %4 = alloca %"class.boost::container::list.141", align 8 ; 10 uses
  %5 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 6 uses
  %6 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  %7 = alloca %"class.boost::container::static_vector.35", align 8 ; 12 uses
  %8 = alloca %"class.boost::container::static_vector.35", align 8 ; 25 uses
  %9 = alloca %"class.boost::container::vector.137", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 10 uses
  store i64 0, ptr %i.a, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i64 0, ptr %4, align 8
  store ptr %i.b, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !106
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.d

bb.b:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load i64, ptr %i.a, align 8, !tbaa !141  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !139
  %i.h = icmp ugt i64 %i.f, 10
  br i1 %i.h, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.b
  %.not17.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.i = shl nuw nsw i64 %i.f, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %6, ptr nonnull align 8 %2, i64 %i.i, i1 false), !tbaa !82
  %i.j = trunc nuw nsw i64 %i.f to i32
  %i.k = add i32 %i.ae, %i.j
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.a, %bb.i
  %i.l = phi i32 [ %.pre, %bb.a ], [ %i.ae, %bb.i ] ; 2 uses
  %.011232 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.m = trunc nuw nsw i64 %.011232 to i32        ; 3 uses
  store i32 %i.m, ptr %5, align 4, !tbaa !82
  %i.n = add i32 %i.l, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.o = load i64, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i = icmp eq i64 %i.o, 10
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc19 unwind label %.loopexit.split-lp224

.noexc19:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  store i32 %i.m, ptr %i.p, align 4, !tbaa !82
  %i.q = add i32 %i.l, 2
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.r = add nsw i64 %i.o, 1
  store i64 %i.r, ptr %i.a, align 8, !tbaa !141
  %i.s = load i64, ptr %i.d, align 8, !tbaa !145  ; 4 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !146
  %.not.i20 = icmp eq i64 %i.s, %i.t
  br i1 %.not.i20, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %3, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store i32 %i.m, ptr %i.v, align 4, !tbaa !82
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.y = add i64 %i.s, 1
  store i64 %i.y, ptr %i.d, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.z = load ptr, ptr %3, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.s
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.aa, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %5)
          to label %.noexc21 unwind label %.loopexit223

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit: ; preds = %.noexc21, %bb.g
  %i.ab = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit223 ; 5 uses

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %5, align 4, !tbaa !82
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !82
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !106
  store ptr %i.b, ptr %i.ab, align 8, !tbaa !105
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !106
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !105
  %i.ah = load i64, ptr %4, align 8, !tbaa !114
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %4, align 8, !tbaa !114
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.aj = add nuw nsw i64 %.011232, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !391

.loopexit223:                                     ; preds = %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backERKS3_.exit
  %lpad.loopexit225 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp224:                            ; preds = %bb.e
  %lpad.loopexit.split-lp226 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp224, %.loopexit223
  %lpad.phi227 = phi { ptr, i32 } [ %lpad.loopexit225, %.loopexit223 ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp224 ]
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ar

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %.lr.ph.i.preheader.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.k unwind label %.loopexit.split-lp219 ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %i.an = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !431 ; 3 uses
  %.idx = shl nsw i64 %i.an, 2
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.f
  %i.aq = icmp eq i64 %i.an, %i.f
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.aq)
          to label %.noexc24 unwind label %.loopexit.split-lp219 ; 0 uses

.noexc24:                                         ; preds = %bb.k
  %.not5.i = icmp eq i64 %i.an, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0184.0 = phi ptr [ %i.ax, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0189.0 = phi ptr [ %i.aw, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0184.0, %i.ap
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.as = load i32, ptr %.sroa.0189.0, align 4, !tbaa !82
  %i.at = load i32, ptr %.sroa.0184.0, align 4, !tbaa !82
  %i.au = icmp eq i32 %i.as, %i.at
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.au)
          to label %.noexc25 unwind label %.loopexit218 ; 0 uses

.noexc25:                                         ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0189.0, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0184.0, i64 4
  %.not.i23 = icmp eq ptr %i.aw, %i.ao
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i, !llvm.loop !10

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check279 = icmp ult i64 %i.ay, 8
  br i1 %min.iters.check279, label %.lr.ph.i.i.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec281 = and i64 %i.ay, -8                   ; 3 uses
  %i.az = and i64 %i.ay, 7
  %i.ba = shl i64 %n.vec281, 2
  %i.bb = getelementptr i8, ptr %6, i64 %i.ba
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next285, %vector.body282 ] ; 2 uses
  %i.bc = shl i64 %index283, 2
  %next.gep284 = getelementptr i8, ptr %6, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep284, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep284, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bd, align 8, !tbaa !82
  %index.next285 = add nuw i64 %index283, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next285, %n.vec281
  br i1 %i.be, label %middle.block286, label %vector.body282, !llvm.loop !394

middle.block286:                                  ; preds = %vector.body282
  %cmp.n287 = icmp eq i64 %i.ay, %n.vec281
  br i1 %cmp.n287, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block286
  %.05.i.i.ph = phi i64 [ %i.ay, %.lr.ph.i.preheader.i ], [ %i.az, %middle.block286 ]
  %storemerge4.i.i.ph = phi ptr [ %6, %.lr.ph.i.preheader.i ], [ %i.bb, %middle.block286 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bf = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !395

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block286
  %i.bh = trunc i64 %i.ay to i32
  %i.bi = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bh
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp212 ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !141 ; 19 uses
  %.not268 = icmp eq i64 %i.bk, 0
  br i1 %.not268, label %.loopexit216, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i: ; preds = %bb.m
  %.pre13.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.bl = shl nuw i64 %i.bk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.bl, i1 false), !tbaa !82
  %min.iters.check291 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check291, label %.lr.ph.i14.i.i.i.i.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i
  %n.vec293 = and i64 %i.bk, -8                   ; 2 uses
  %i.bm = and i64 %i.bk, 7
  %i.bn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre13.i.i.i, i64 0
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next297, %vector.body294 ]
  %vec.phi = phi <4 x i32> [ %i.bn, %vector.ph292 ], [ %i.bo, %vector.body294 ]
  %vec.phi296 = phi <4 x i32> [ zeroinitializer, %vector.ph292 ], [ %i.bp, %vector.body294 ]
  %i.bo = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bp = add <4 x i32> %vec.phi296, splat (i32 1) ; 2 uses
  %index.next297 = add nuw i64 %index295, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next297, %n.vec293
  br i1 %i.bq, label %middle.block298, label %vector.body294, !llvm.loop !396

middle.block298:                                  ; preds = %vector.body294
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n299 = icmp eq i64 %i.bk, %n.vec293
  br i1 %cmp.n299, label %.loopexit216.loopexit, label %.lr.ph.i14.i.i.i.i.preheader

.lr.ph.i14.i.i.i.i.preheader:                     ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i, %middle.block298
  %.ph406 = phi i32 [ %.pre13.i.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i.i.i.i ], [ %i.br, %middle.block298 ]
end_hunk_3
begin_hunk_4_@_Z17test_iterators_ndI14counting_valueLm10EEvv:bb.a

.noexc33:                                         ; preds = %bb.as
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %i.mw, %i.ml
  br i1 %.not.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %.lr.ph.i28, !llvm.loop !512

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit: ; preds = %.noexc33, %.lr.ph.i28, %.noexc32
  %i.mx = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !526 ; 3 uses
  %i.my = load ptr, ptr %2, align 8, !tbaa !134, !noalias !527 ; 2 uses
  %i.mz = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !528 ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %i.my, i64 %i.mz
  %i.nb = icmp eq i64 %i.mx, %i.mz
  %i.nc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %i.nb)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc41:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit
  %.not5.i34 = icmp eq i64 %i.mx, 0
  br i1 %.not5.i34, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %.noexc41
  %.idx106 = shl nsw i64 %i.mx, 3
  %i.nd = getelementptr inbounds i8, ptr %1, i64 %.idx106
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.preheader, %.noexc42
  %.sroa.056.0 = phi ptr [ %i.ne, %.noexc42 ], [ %i.nd, %.lr.ph.i37.preheader ]
  %.sroa.051.0 = phi ptr [ %i.nm, %.noexc42 ], [ %i.my, %.lr.ph.i37.preheader ] ; 3 uses
  %.not4.i38 = icmp eq ptr %.sroa.051.0, %i.na
  br i1 %.not4.i38, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i37
  %i.ne = getelementptr inbounds i8, ptr %.sroa.056.0, i64 -8 ; 3 uses
  %i.nf = load <2 x i32>, ptr %i.ne, align 4
  %i.ng = load <2 x i32>, ptr %.sroa.051.0, align 4
  %i.nh = icmp eq <2 x i32> %i.nf, %i.ng          ; 2 uses
  %i.ni = extractelement <2 x i1> %i.nh, i64 0
  %i.nj = extractelement <2 x i1> %i.nh, i64 1
  %i.nk = select i1 %i.ni, i1 %i.nj, i1 false
  %i.nl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %i.nk)
          to label %.noexc42 unwind label %.loopexit ; 0 uses

.noexc42:                                         ; preds = %bb.at
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  %.not.i39 = icmp eq ptr %i.ne, %1
  br i1 %.not.i39, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37, !llvm.loop !521

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit: ; preds = %.noexc42, %.lr.ph.i37, %.noexc41
  %i.nn = load i64, ptr %i.c, align 8, !tbaa !132 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.nn, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.no = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.nn
  store i64 %i.no, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit
  %i.np = load i64, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq i64 %i.np, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.nq = load ptr, ptr %2, align 8, !tbaa !136
  %i.nr = shl i64 %i.np, 3
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nr) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ns = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i43 = icmp eq i64 %i.ns, 0
  br i1 %.not3.i.i43, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i44

.lr.ph.preheader.i.i44:                           ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i45 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.nt = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i45, %i.ns
  store i64 %i.nt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, %.lr.ph.preheader.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.loopexit:                                        ; preds = %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.as
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, %bb.ar, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.9
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp113, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.id, %bb.af ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit107, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit110, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit112, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ]
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.nu = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i46 = icmp eq i64 %i.nu, 0
  br i1 %.not3.i.i46, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit49, label %.lr.ph.preheader.i.i47

.lr.ph.preheader.i.i47:                           ; preds = %.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i48 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.nv = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i48, %i.nu
  store i64 %i.nv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit49

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit49: ; preds = %.loopexit.split-lp, %.lr.ph.preheader.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z17test_iterators_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.59", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::static_vector.35", align 8 ; 28 uses
  %2 = alloca %"class.boost::container::vector.137", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 10 uses
  store i64 0, ptr %i.a, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.d

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.d = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !586 ; 3 uses
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.f = load ptr, ptr %2, align 8, !tbaa !147, !noalias !587 ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !588 ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.g
  %i.j = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.b
  %.not5.i = icmp eq i64 %i.d, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc10
  %.sroa.094.0 = phi ptr [ %i.p, %.noexc10 ], [ %i.f, %.noexc ] ; 3 uses
  %.sroa.099.0 = phi ptr [ %i.o, %.noexc10 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.094.0, %i.h
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = load i32, ptr %.sroa.099.0, align 4, !tbaa !82
  %i.l = load i32, ptr %.sroa.094.0, align 4, !tbaa !82
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.m)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc10:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 4
  %.not.i = icmp eq ptr %i.o, %i.e
  br i1 %.not.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i, !llvm.loop !10

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.q = phi i32 [ %.pre, %bb.a ], [ %i.ah, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit ] ; 2 uses
  %.07123 = phi i64 [ 0, %bb.a ], [ %i.ai, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit ] ; 2 uses
  %i.r = trunc nuw nsw i64 %.07123 to i32         ; 3 uses
  %i.s = add i32 %i.q, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.t = load i64, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i11 = icmp eq i64 %i.t, 10
  br i1 %.not.i11, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store i32 %i.r, ptr %i.u, align 4, !tbaa !82
  %i.v = add i32 %i.q, 2
  %i.w = add nsw i64 %i.t, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 %i.r, ptr %3, align 4, !tbaa !82
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = load i64, ptr %i.b, align 8, !tbaa !145  ; 4 uses
  %i.y = load i64, ptr %i.c, align 8, !tbaa !146
  %.not.i13 = icmp eq i64 %i.x, %i.y
  br i1 %.not.i13, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %2, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x
  store i32 %i.r, ptr %i.aa, align 4, !tbaa !82
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ad = add i64 %i.x, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.ae = load ptr, ptr %2, align 8, !tbaa !147
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.x
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.af, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %3)
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %.pre128 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ag = add i32 %.pre128, -1
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit: ; preds = %.noexc14, %bb.g
  %i.ah = phi i32 [ %i.ag, %.noexc14 ], [ %i.ab, %bb.g ] ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ai = add nuw nsw i64 %.07123, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !535

bb.i:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit: ; preds = %.noexc10, %.lr.ph.i, %.noexc
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !589 ; 3 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !147, !noalias !590 ; 2 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !590 ; 2 uses
  %i.as = icmp eq i64 %i.ap, %i.ar
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_, i1 noundef zeroext %i.as)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc21:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit
  %.not5.i15 = icmp eq i64 %i.ap, 0
  br i1 %.not5.i15, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %.noexc21
  %.idx107 = shl nsw i64 %i.ap, 2
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.idx107
  %i.av = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %.noexc22
  %.sroa.083.0 = phi ptr [ %i.ax, %.noexc22 ], [ %i.av, %.lr.ph.i18.preheader ] ; 2 uses
  %.sroa.088.0 = phi ptr [ %i.aw, %.noexc22 ], [ %i.au, %.lr.ph.i18.preheader ]
  %.not4.i19 = icmp eq ptr %.sroa.083.0, %i.aq
  br i1 %.not4.i19, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i18
  %i.aw = getelementptr inbounds i8, ptr %.sroa.088.0, i64 -4 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.083.0, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !82
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !82
  %i.ba = icmp eq i32 %i.ay, %i.az
  %i.bb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_, i1 noundef zeroext %i.ba)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.noexc22:                                         ; preds = %bb.k
  %.not.i20 = icmp eq ptr %i.aw, %1
  br i1 %.not.i20, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit, label %.lr.ph.i18, !llvm.loop !544

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit: ; preds = %.noexc22, %.lr.ph.i18, %.noexc21
  %i.bc = load ptr, ptr %2, align 8, !tbaa !147, !noalias !591 ; 6 uses
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !591 ; 3 uses
  %.idx108 = shl i64 %i.bd, 2                     ; 3 uses
  %i.be = getelementptr i8, ptr %i.bc, i64 %.idx108 ; 7 uses
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !592
  %.fr = freeze i64 %i.bf                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 4 uses
  %i.bg = getelementptr i8, ptr %1, i64 %.idx.i   ; 10 uses
  %i.bh = icmp ne i64 %i.bd, 0
  %i.bi = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bh, %i.bi
  br i1 %or.cond12.i, label %.lr.ph.i23.preheader, label %.critedge.i

.lr.ph.i23.preheader:                             ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit
  %i.bj = add i64 %.idx.i, -4
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = add i64 %.idx108, -4
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bm) ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bn, 23
  br i1 %min.iters.check, label %.lr.ph.i23.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i23.preheader
  %i.bp = add i64 %.idx.i, -4
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = add i64 %.idx108, -4                    ; 2 uses
  %i.bs = lshr exact i64 %i.br, 2
  %umin = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bs)
  %i.bt = shl nuw i64 %umin, 2                    ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.bu, i64 4
  %i.bv = sub i64 %i.br, %i.bt
  %scevgep144 = getelementptr i8, ptr %i.bc, i64 %i.bv
  %bound0 = icmp ult ptr %1, %i.be
  %bound1 = icmp ult ptr %scevgep144, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i23.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 4 uses
  %i.bw = mul i64 %n.vec, -4
  %i.bx = getelementptr i8, ptr %i.be, i64 %i.bw  ; 2 uses
  %i.by = shl i64 %n.vec, 2
  %i.bz = getelementptr i8, ptr %1, i64 %i.by     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.ca ; 2 uses
  %i.cb = shl i64 %index, 2
  %next.gep145 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !82, !alias.scope !593
  %wide.load146 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !82, !alias.scope !593
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse147 = shufflevector <4 x i32> %wide.load146, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ce = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %reverse, ptr %next.gep145, align 8, !tbaa !82, !alias.scope !594, !noalias !593
  store <4 x i32> %reverse147, ptr %i.ce, align 8, !tbaa !82, !alias.scope !594, !noalias !593
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %.lr.ph.i23.preheader227

.lr.ph.i23.preheader227:                          ; preds = %vector.memcheck, %.lr.ph.i23.preheader, %middle.block
  %.ph228 = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i23.preheader ], [ %i.bx, %middle.block ]
  %.sroa.07.013.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i23.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader227, %.lr.ph.i23
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i23 ], [ %.ph228, %.lr.ph.i23.preheader227 ]
  %.sroa.07.013.i = phi ptr [ %i.cj, %.lr.ph.i23 ], [ %.sroa.07.013.i.ph, %.lr.ph.i23.preheader227 ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !82
  store i32 %i.ci, ptr %.sroa.07.013.i, align 4, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 4 ; 3 uses
  %i.ck = icmp ne ptr %i.ch, %i.bc
  %i.cl = icmp ne ptr %i.cj, %i.bg
  %or.cond.i = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond.i, label %.lr.ph.i23, label %.critedge.i, !llvm.loop !555

.critedge.i:                                      ; preds = %.lr.ph.i23, %middle.block, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit
  %.sroa.07.0.lcssa.i = phi ptr [ %1, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit ], [ %i.bz, %middle.block ], [ %i.cj, %.lr.ph.i23 ] ; 2 uses
  %.lcssa11.i = phi ptr [ %i.be, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES9_EvT_SA_T0_SB_.exit ], [ %i.bx, %middle.block ], [ %i.ch, %.lr.ph.i23 ] ; 9 uses
  %i.cm = icmp eq ptr %.lcssa11.i, %i.bc
  br i1 %i.cm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.i
  %i.cn = ptrtoint ptr %i.bg to i64
  %i.co = ptrtoint ptr %.sroa.07.0.lcssa.i to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 8 uses
  %.not3.i.i.i = icmp eq ptr %i.bg, %.sroa.07.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.l
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.cr ; 3 uses
end_hunk_4
begin_hunk_5_@_Z14test_insert_ndI14counting_valueLm10EEvRKT_:bb.a
  %i.lh = add nuw nsw i32 %i.lg, %i.kk
  store i64 %i.le, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.li = load i32, ptr %i.lf, align 8, !tbaa !79
  %i.lj = icmp eq i32 %i.li, %i.lh
  %i.lk = getelementptr inbounds nuw i8, ptr %gep197, i64 28
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = select i1 %i.lj, i1 %i.lm, i1 false
  %i.lo = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.ln)
          to label %bb.an unwind label %bb.ao     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.lp = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.lq = add i64 %i.lp, -1
  store i64 %i.lq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.lr = add nuw nsw i64 %.0198, 1               ; 2 uses
  %exitcond213.not = icmp eq i64 %i.lr, %umax212
  br i1 %exitcond213.not, label %._crit_edge200, label %bb.am, !llvm.loop !735

bb.ao:                                            ; preds = %bb.am
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %i.lt = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.lu = add i64 %i.lt, -1
  store i64 %i.lu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.ao, %bb.al, %bb.ai, %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.kh, %bb.ai ], [ %i.la, %bb.al ], [ %i.ls, %bb.ao ], [ %i.jt, %bb.ag ], [ %i.js, %bb.af ], [ %lpad.loopexit, %.loopexit ]
  %i.lv = load i64, ptr %i.et, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i115 = icmp eq i64 %i.lv, 0
  br i1 %.not3.i.i115, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118, label %.lr.ph.preheader.i.i116

.lr.ph.preheader.i.i116:                          ; preds = %bb.ap
  %_ZZN14counting_value1cEvE2co.promoted.i.i117 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lw = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i117, %i.lv
  store i64 %i.lw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118: ; preds = %.lr.ph.preheader.i.i116, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.av

bb.aq:                                            ; preds = %bb.ab
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.lx = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !740 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.lx, %i.c
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i119

.lr.ph.i.i.i119:                                  ; preds = %bb.as, %.lr.ph.i.i.i119
  %.sroa.04.09.i.i.i = phi ptr [ %i.ly, %.lr.ph.i.i.i119 ], [ %i.lx, %bb.as ] ; 2 uses
  %i.ly = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.lz = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ma = add i64 %i.lz, -1
  store i64 %i.ma, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i120 = icmp eq ptr %i.ly, %i.c
  br i1 %.not.i.i.i120, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i119, !llvm.loop !9

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i119, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.mb = load i64, ptr %i.f, align 8, !tbaa !132 ; 2 uses
  %.not3.i.i121 = icmp eq i64 %i.mb, 0
  br i1 %.not3.i.i121, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i122

.lr.ph.preheader.i.i122:                          ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i123 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.mc = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i123, %i.mb
  store i64 %i.mc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i122, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.md = load i64, ptr %i.g, align 8, !tbaa !133 ; 2 uses
  %.not.i.i124 = icmp eq i64 %i.md, 0
  br i1 %.not.i.i124, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.me = load ptr, ptr %4, align 8, !tbaa !136
  %i.mf = shl i64 %i.md, 3
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mf) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.mg = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i125 = icmp eq i64 %i.mg, 0
  br i1 %.not3.i.i125, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128, label %.lr.ph.preheader.i.i126

.lr.ph.preheader.i.i126:                          ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i127 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.mh = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i127, %i.mg
  store i64 %i.mh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, %.lr.ph.preheader.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.mi = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i129 = icmp eq i64 %i.mi, 0
  br i1 %.not3.i.i129, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132, label %.lr.ph.preheader.i.i130

.lr.ph.preheader.i.i130:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128
  %_ZZN14counting_value1cEvE2co.promoted.i.i131 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.mj = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i131, %i.mi
  store i64 %i.mj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128, %.lr.ph.preheader.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.au:                                            ; preds = %bb.ar, %bb.aq, %bb.ab
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.p, %bb.q, %bb.au, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118, %.lr.ph.preheader.i.i94
  %.pn79.pn = phi { ptr, i32 } [ %i.mk, %bb.au ], [ %.pn76, %.lr.ph.preheader.i.i94 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118 ], [ %i.eq, %bb.q ], [ %i.en, %bb.p ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ml = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i133 = icmp eq i64 %i.ml, 0
  br i1 %.not3.i.i133, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136, label %.lr.ph.preheader.i.i134

.lr.ph.preheader.i.i134:                          ; preds = %bb.av
  %_ZZN14counting_value1cEvE2co.promoted.i.i135 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.mm = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i135, %i.ml
  store i64 %i.mm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136: ; preds = %bb.av, %.lr.ph.preheader.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.mn = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i137 = icmp eq i64 %i.mn, 0
  br i1 %.not3.i.i137, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140, label %.lr.ph.preheader.i.i138

.lr.ph.preheader.i.i138:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136
  %_ZZN14counting_value1cEvE2co.promoted.i.i139 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.mo = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i139, %i.mn
  store i64 %i.mo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136, %.lr.ph.preheader.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator.59", align 8 ; 15 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 20 uses
  %3 = alloca %"class.boost::container::static_vector.35", align 8 ; 16 uses
  %4 = alloca %"class.boost::container::vector.137", align 8 ; 24 uses
  %5 = alloca %"class.boost::container::list.141", align 8 ; 18 uses
  %6 = alloca %"class.boost::container::test::movable_and_copyable_int", align 4 ; 21 uses
  %7 = alloca %"class.boost::container::static_vector.35", align 8 ; 15 uses
  %8 = alloca %"class.boost::container::static_vector.35", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 15 uses
  store i64 0, ptr %i.a, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 13 uses
  store i64 0, ptr %i.b, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  store i64 0, ptr %5, align 8
  store ptr %i.c, ptr %i.c, align 8, !tbaa !105
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.g = add i32 %.pre, 1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.h = load i64, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i = icmp eq i64 %i.h, 10
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.w, %bb.r, %bb.m, %bb.h, %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !82
  %i.j = add i32 %.pre, 2
  %i.k = add nsw i64 %i.h, 1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !141
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.l = load i64, ptr %i.b, align 8, !tbaa !141  ; 3 uses
  %.not.i84 = icmp eq i64 %i.l, 10
  br i1 %.not.i84, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.x, %bb.s, %bb.n, %bb.i, %bb.c
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc85 unwind label %bb.ac

.noexc85:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.l
  store i32 100, ptr %i.m, align 4, !tbaa !82
  %i.n = add i32 %.pre, 3
  %i.o = add nsw i64 %i.l, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 100, ptr %6, align 4, !tbaa !82
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.p = load i64, ptr %i.e, align 8, !tbaa !145  ; 4 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87 = icmp eq i64 %i.p, %i.q
  br i1 %.not.i87, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store i32 100, ptr %i.s, align 4, !tbaa !82
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.v = add i64 %i.p, 1
  store i64 %i.v, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.w = load ptr, ptr %4, align 8, !tbaa !147
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.p
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.x, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88 unwind label %bb.ad

.noexc88:                                         ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit: ; preds = %.noexc88, %bb.f
  %i.y = phi i32 [ %.pre257, %.noexc88 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.z = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %bb.ae      ; 5 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 100, ptr %i.aa, align 4, !tbaa !82
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !106
  store ptr %i.c, ptr %i.z, align 8, !tbaa !105
  store ptr %i.z, ptr %i.d, align 8, !tbaa !106
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !105
  %i.ae = load i64, ptr %5, align 8, !tbaa !114
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %5, align 8, !tbaa !114
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.1 = icmp eq i64 %i.ah, 10
  br i1 %.not.i.1, label %bb.b, label %bb.i, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  store i32 1, ptr %i.ai, align 4, !tbaa !82
  %i.aj = add i32 %i.ab, 2
  %i.ak = add nsw i64 %i.ah, 1
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !141
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.1 = icmp eq i64 %i.al, 10
  br i1 %.not.i84.1, label %bb.d, label %bb.j, !prof !42

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al
  store i32 101, ptr %i.am, align 4, !tbaa !82
  %i.an = add i32 %i.ab, 3
  %i.ao = add nsw i64 %i.al, 1
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 101, ptr %6, align 4, !tbaa !82
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.1 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i87.1, label %bb.l, label %bb.k, !prof !42

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store i32 101, ptr %i.as, align 4, !tbaa !82
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.au = add i32 %i.at, 1                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.av = add i64 %i.ap, 1
  store i64 %i.av, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.aw = load ptr, ptr %4, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ap
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ax, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.1 unwind label %bb.ad

.noexc88.1:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1: ; preds = %.noexc88.1, %bb.k
  %i.ay = phi i32 [ %.pre257.1, %.noexc88.1 ], [ %i.au, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.az = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.m unwind label %bb.ae      ; 5 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 101, ptr %i.ba, align 4, !tbaa !82
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !106
  store ptr %i.c, ptr %i.az, align 8, !tbaa !105
  store ptr %i.az, ptr %i.d, align 8, !tbaa !106
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !105
  %i.be = load i64, ptr %5, align 8, !tbaa !114
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %5, align 8, !tbaa !114
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.2 = icmp eq i64 %i.bh, 10
  br i1 %.not.i.2, label %bb.b, label %bb.n, !prof !42

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh
  store i32 2, ptr %i.bi, align 4, !tbaa !82
  %i.bj = add i32 %i.bb, 2
  %i.bk = add nsw i64 %i.bh, 1
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !141
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.2 = icmp eq i64 %i.bl, 10
  br i1 %.not.i84.2, label %bb.d, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bl
  store i32 102, ptr %i.bm, align 4, !tbaa !82
  %i.bn = add i32 %i.bb, 3
  %i.bo = add nsw i64 %i.bl, 1
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 102, ptr %6, align 4, !tbaa !82
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.2 = icmp eq i64 %i.bp, %i.bq
  br i1 %.not.i87.2, label %bb.q, label %bb.p, !prof !42

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  store i32 102, ptr %i.bs, align 4, !tbaa !82
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bv = add i64 %i.bp, 1
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bw = load ptr, ptr %4, align 8, !tbaa !147
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bp
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.bx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.2 unwind label %bb.ad

.noexc88.2:                                       ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.2 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2: ; preds = %.noexc88.2, %bb.p
  %i.by = phi i32 [ %.pre257.2, %.noexc88.2 ], [ %i.bu, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.r unwind label %bb.ae      ; 5 uses

bb.r:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 102, ptr %i.ca, align 4, !tbaa !82
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !106
  store ptr %i.c, ptr %i.bz, align 8, !tbaa !105
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !106
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !105
  %i.ce = load i64, ptr %5, align 8, !tbaa !114
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %5, align 8, !tbaa !114
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.3 = icmp eq i64 %i.ch, 10
  br i1 %.not.i.3, label %bb.b, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  store i32 3, ptr %i.ci, align 4, !tbaa !82
  %i.cj = add i32 %i.cb, 2
  %i.ck = add nsw i64 %i.ch, 1
  store i64 %i.ck, ptr %i.a, align 8, !tbaa !141
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.3 = icmp eq i64 %i.cl, 10
  br i1 %.not.i84.3, label %bb.d, label %bb.t, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cl
  store i32 103, ptr %i.cm, align 4, !tbaa !82
  %i.cn = add i32 %i.cb, 3
  %i.co = add nsw i64 %i.cl, 1
  store i64 %i.co, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 103, ptr %6, align 4, !tbaa !82
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.cq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.3 = icmp eq i64 %i.cp, %i.cq
  br i1 %.not.i87.3, label %bb.v, label %bb.u, !prof !42

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cp
  store i32 103, ptr %i.cs, align 4, !tbaa !82
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cv = add i64 %i.cp, 1
  store i64 %i.cv, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.cw = load ptr, ptr %4, align 8, !tbaa !147
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cp
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.cx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.3 unwind label %bb.ad

.noexc88.3:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.3 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3: ; preds = %.noexc88.3, %bb.u
  %i.cy = phi i32 [ %.pre257.3, %.noexc88.3 ], [ %i.cu, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.w unwind label %bb.ae      ; 5 uses

bb.w:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 103, ptr %i.da, align 4, !tbaa !82
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 3 uses
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !106
  store ptr %i.c, ptr %i.cz, align 8, !tbaa !105
  store ptr %i.cz, ptr %i.d, align 8, !tbaa !106
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !105
  %i.de = load i64, ptr %5, align 8, !tbaa !114
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %5, align 8, !tbaa !114
  %i.dg = add i32 %i.db, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !141 ; 3 uses
  %.not.i.4 = icmp eq i64 %i.dh, 10
  br i1 %.not.i.4, label %bb.b, label %bb.x, !prof !42

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dh
  store i32 4, ptr %i.di, align 4, !tbaa !82
  %i.dj = add i32 %i.db, 2
  %i.dk = add nsw i64 %i.dh, 1
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !141
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dl = load i64, ptr %i.b, align 8, !tbaa !141 ; 3 uses
  %.not.i84.4 = icmp eq i64 %i.dl, 10
  br i1 %.not.i84.4, label %bb.d, label %bb.y, !prof !42

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  store i32 104, ptr %i.dm, align 4, !tbaa !82
  %i.dn = add i32 %i.db, 3
  %i.do = add nsw i64 %i.dl, 1
  store i64 %i.do, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store i32 104, ptr %6, align 4, !tbaa !82
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = load i64, ptr %i.e, align 8, !tbaa !145 ; 4 uses
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !146
  %.not.i87.4 = icmp eq i64 %i.dp, %i.dq
  br i1 %.not.i87.4, label %bb.aa, label %bb.z, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %4, align 8, !tbaa !147, !nonnull !112, !noundef !112
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store i32 104, ptr %i.ds, align 4, !tbaa !82
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dv = add i64 %i.dp, 1
  store i64 %i.dv, ptr %i.e, align 8, !tbaa !145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dw = load ptr, ptr %4, align 8, !tbaa !147
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dp
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.59") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.dx, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %6)
          to label %.noexc88.4 unwind label %bb.ad

.noexc88.4:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre257.4 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4: ; preds = %.noexc88.4, %bb.z
  %i.dy = phi i32 [ %.pre257.4, %.noexc88.4 ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %.preheader209 unwind label %bb.ae ; 5 uses

.preheader209:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i32 104, ptr %i.ea, align 4, !tbaa !82
  %i.eb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !106
  store ptr %i.c, ptr %i.dz, align 8, !tbaa !105
  store ptr %i.dz, ptr %i.d, align 8, !tbaa !106
  store ptr %i.dz, ptr %i.ec, align 8, !tbaa !105
  %i.ee = load i64, ptr %5, align 8, !tbaa !114
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %5, align 8, !tbaa !114
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.af

bb.ab:                                            ; preds = %bb.b
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

bb.ac:                                            ; preds = %bb.d
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

bb.ad:                                            ; preds = %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bs

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.4, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.3, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.2, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.bs

.preheader206:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.av

bb.af:                                            ; preds = %.preheader209, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %.preheader209 ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.065226 = phi i64 [ 0, %.preheader209 ], [ %i.hr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 9 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !141 ; 7 uses
  %i.ev = icmp ugt i64 %i.eu, 10
  br i1 %i.ev, label %bb.ag, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc90 unwind label %bb.al

.noexc90:                                         ; preds = %bb.ag
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.af
  %.not17.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ew = shl nuw nsw i64 %i.eu, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %2, i64 %i.ew, i1 false), !tbaa !82
  %i.ex = trunc nuw nsw i64 %i.eu to i32
  %i.ey = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ex
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp eq i64 %i.eu, 10
  br i1 %.not.i.i, label %bb.aj, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread, !prof !780

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.lr.ph.i.preheader.i.i
  %.idx199.pre-phi = phi i64 [ %i.ew, %.lr.ph.i.preheader.i.i ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i ] ; 2 uses
  %.idx200 = shl nuw nsw i64 %.065226, 2          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 %.idx200 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 %.idx199.pre-phi ; 5 uses
  %.not.i.i.i91 = icmp samesign eq i64 %i.eu, %.065226
  br i1 %.not.i.i.i91, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %i.fb = load i32, ptr %0, align 4, !tbaa !82, !noalias !781
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !82, !noalias !781
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fe = add nuw nsw i64 %.065226, 1
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEERKS3_.exit

bb.ai:                                            ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit.thread
  %gepdiff201 = sub nsw i64 %.idx199.pre-phi, %.idx200
  %i.ff = ashr exact i64 %gepdiff201, 2           ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fa, i64 -4 ; 4 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !82, !noalias !781
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fg, align 4, !tbaa !82, !noalias !781
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !781
  %i.fk = add nuw nsw i64 %i.eu, 1                ; 2 uses
  store i64 %i.fk, ptr %i.eg, align 8, !tbaa !141, !noalias !781
  %i.fl = add nsw i64 %i.ff, -1                   ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.ai
  %i.fm = add nsw i64 %i.ff, -2
  %xtraiter = and i64 %i.fl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.prol ], [ %i.fa, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.prol ], [ %i.fl, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.prol ], [ %i.fg, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fn = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.fp = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !82, !noalias !781
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fo, align 4, !tbaa !82, !noalias !781
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !745

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.preheader ], [ %i.fp, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.preheader ], [ %i.fo, %.lr.ph.i.i.i.i.prol ]
  %i.fr = icmp ult i64 %i.fm, 3
  br i1 %i.fr, label %_ZN5boost9container15move_backward_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.gd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -4
  %i.fu = load i32, ptr %i.fs, align 4, !tbaa !82, !noalias !781
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fs, align 4, !tbaa !82, !noalias !781
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !82, !noalias !781
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !82, !noalias !781
  store i32 0, ptr %i.fv, align 4, !tbaa !82, !noalias !781
  %i.fy = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -12
end_hunk_5
begin_hunk_6_@_Z14test_insert_ndIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.qq = load i64, ptr %i.b, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i160 = icmp eq i64 %i.qq, 0
  br i1 %.not3.i.i160, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit168, label %.lr.ph.i.preheader.i161

.lr.ph.i.preheader.i161:                          ; preds = %bb.bs
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i162 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check388 = icmp ult i64 %i.qq, 8
  br i1 %min.iters.check388, label %.lr.ph.i.i163.preheader, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph.i.preheader.i161
  %n.vec390 = and i64 %i.qq, -8                   ; 3 uses
  %i.qr = and i64 %i.qq, 7
  %i.qs = shl i64 %n.vec390, 2
  %i.qt = getelementptr i8, ptr %3, i64 %i.qs
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next394, %vector.body391 ] ; 2 uses
  %i.qu = shl i64 %index392, 2
  %next.gep393 = getelementptr i8, ptr %3, i64 %i.qu ; 2 uses
  %i.qv = getelementptr i8, ptr %next.gep393, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep393, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.qv, align 8, !tbaa !82
  %index.next394 = add nuw i64 %index392, 8       ; 2 uses
  %i.qw = icmp eq i64 %index.next394, %n.vec390
  br i1 %i.qw, label %middle.block395, label %vector.body391, !llvm.loop !776

middle.block395:                                  ; preds = %vector.body391
  %cmp.n396 = icmp eq i64 %i.qq, %n.vec390
  br i1 %cmp.n396, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %.lr.ph.i.preheader.i161, %middle.block395
  %.05.i.i164.ph = phi i64 [ %i.qq, %.lr.ph.i.preheader.i161 ], [ %i.qr, %middle.block395 ]
  %storemerge4.i.i165.ph = phi ptr [ %3, %.lr.ph.i.preheader.i161 ], [ %i.qt, %middle.block395 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader, %.lr.ph.i.i163
  %.05.i.i164 = phi i64 [ %i.qx, %.lr.ph.i.i163 ], [ %.05.i.i164.ph, %.lr.ph.i.i163.preheader ]
  %storemerge4.i.i165 = phi ptr [ %i.qy, %.lr.ph.i.i163 ], [ %storemerge4.i.i165.ph, %.lr.ph.i.i163.preheader ] ; 2 uses
  %i.qx = add i64 %.05.i.i164, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i165, align 4, !tbaa !82
  %i.qy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i165, i64 4
  %.not.i.i166 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i166, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i167, label %.lr.ph.i.i163, !llvm.loop !777

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i167: ; preds = %.lr.ph.i.i163, %middle.block395
  %i.qz = trunc i64 %i.qq to i32
  %i.ra = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i162, %i.qz
  store i32 %i.ra, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit168

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit168: ; preds = %bb.bs, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.rb = load i64, ptr %i.a, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i169 = icmp eq i64 %i.rb, 0
  br i1 %.not3.i.i169, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit177, label %.lr.ph.i.preheader.i170

.lr.ph.i.preheader.i170:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit168
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i171 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check400 = icmp ult i64 %i.rb, 8
  br i1 %min.iters.check400, label %.lr.ph.i.i172.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph.i.preheader.i170
  %n.vec402 = and i64 %i.rb, -8                   ; 3 uses
  %i.rc = and i64 %i.rb, 7
  %i.rd = shl i64 %n.vec402, 2
  %i.re = getelementptr i8, ptr %2, i64 %i.rd
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next406, %vector.body403 ] ; 2 uses
  %i.rf = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %2, i64 %i.rf ; 2 uses
  %i.rg = getelementptr i8, ptr %next.gep405, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep405, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.rg, align 8, !tbaa !82
  %index.next406 = add nuw i64 %index404, 8       ; 2 uses
  %i.rh = icmp eq i64 %index.next406, %n.vec402
  br i1 %i.rh, label %middle.block407, label %vector.body403, !llvm.loop !778

middle.block407:                                  ; preds = %vector.body403
  %cmp.n408 = icmp eq i64 %i.rb, %n.vec402
  br i1 %cmp.n408, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i176, label %.lr.ph.i.i172.preheader

.lr.ph.i.i172.preheader:                          ; preds = %.lr.ph.i.preheader.i170, %middle.block407
  %.05.i.i173.ph = phi i64 [ %i.rb, %.lr.ph.i.preheader.i170 ], [ %i.rc, %middle.block407 ]
  %storemerge4.i.i174.ph = phi ptr [ %2, %.lr.ph.i.preheader.i170 ], [ %i.re, %middle.block407 ]
  br label %.lr.ph.i.i172

.lr.ph.i.i172:                                    ; preds = %.lr.ph.i.i172.preheader, %.lr.ph.i.i172
  %.05.i.i173 = phi i64 [ %i.ri, %.lr.ph.i.i172 ], [ %.05.i.i173.ph, %.lr.ph.i.i172.preheader ]
  %storemerge4.i.i174 = phi ptr [ %i.rj, %.lr.ph.i.i172 ], [ %storemerge4.i.i174.ph, %.lr.ph.i.i172.preheader ] ; 2 uses
  %i.ri = add i64 %.05.i.i173, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i174, align 4, !tbaa !82
  %i.rj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i174, i64 4
  %.not.i.i175 = icmp eq i64 %i.ri, 0
  br i1 %.not.i.i175, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i176, label %.lr.ph.i.i172, !llvm.loop !779

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i176: ; preds = %.lr.ph.i.i172, %middle.block407
  %i.rk = trunc i64 %i.rb to i32
  %i.rl = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i171, %i.rk
  store i32 %i.rl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit177

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit177: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit168, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn79.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndIiEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.19", align 8 ; 14 uses
  %1 = alloca %"class.boost::container::static_vector.189", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 5, ptr %i.a, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  store i64 0, ptr %i.b, align 8, !tbaa !833
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.i = icmp eq i32 %i.g, %i.h
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.f) #25 ; 0 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.e
  tail call void @__cxa_end_catch()
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc86 unwind label %bb.h

.noexc86:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.1 = extractvalue { ptr, i32 } %i.n, 1
  %.132 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.p = icmp eq i32 %.1, %i.o
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.132) #25 ; 0 uses
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.m
  tail call void @__cxa_end_catch()
  %i.s = load i64, ptr %i.b, align 8, !tbaa !835  ; 3 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc87 unwind label %bb.p

.noexc87:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !41
  %i.u = add nsw i64 %i.s, 1
  store i64 %i.u, ptr %i.b, align 8, !tbaa !835
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.t unwind label %bb.q

bb.m:                                             ; preds = %bb.h
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.j unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.o:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.p:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn55 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.x, %bb.p ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn55, 1
  %.334 = extractvalue { ptr, i32 } %.pn55, 0
  %i.z = icmp eq i32 %.3, %i.o
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.z, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.y ; 0 uses

.sink.split:                                      ; preds = %bb.s, %bb.w
  tail call void @__cxa_end_catch()
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.l
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !836 ; 3 uses
  %.not.i.i88 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i88, label %bb.u, label %bb.v, !prof !42

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc90 unwind label %bb.z

.noexc90:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !41, !noalias !837
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !835, !noalias !837
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.ad unwind label %bb.aa

bb.w:                                             ; preds = %bb.r
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.y:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.z:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn59 = phi { ptr, i32 } [ %i.ai, %bb.aa ], [ %i.ah, %bb.z ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn59, 1
  %.536 = extractvalue { ptr, i32 } %.pn59, 0
  %i.aj = icmp eq i32 %.5, %i.o
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.aj, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.al = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split184 unwind label %bb.ak ; 0 uses

.sink.split184:                                   ; preds = %bb.ac, %bb.ai
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split184, %bb.v
  %i.am = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !838 ; 3 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !839 ; 4 uses
  %.idx = shl nsw i64 %i.ao, 2
  %i.ap = sub i64 0, %i.am
  %.not.i.i91 = icmp ugt i64 %i.ao, %i.ap
  br i1 %.not.i.i91, label %bb.ag, label %bb.ae, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i.i.i.i.i.i.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.not, label %bb.ah, label %bb.af, !prof !150

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull align 8 %0, i64 %.idx, i1 false), !noalias !840
  %.pre = load i64, ptr %i.b, align 8, !tbaa !833, !noalias !841
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc93 unwind label %bb.al

.noexc93:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.aq = phi i64 [ %.pre, %bb.af ], [ %i.am, %bb.ae ]
  %i.ar = add i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !833, !noalias !841
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.ap unwind label %bb.am

bb.ai:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split184 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ak:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.al:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn63 = phi { ptr, i32 } [ %i.av, %bb.am ], [ %i.au, %bb.al ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn63, 1
  %.738 = extractvalue { ptr, i32 } %.pn63, 0
  %i.aw = icmp eq i32 %.7, %i.o
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.aw, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.ay = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split185 unwind label %bb.ay ; 0 uses

.sink.split185:                                   ; preds = %bb.ao, %bb.aw
  tail call void @__cxa_end_catch()
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split185, %bb.ah
  %i.az = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !842 ; 2 uses
  %.idx153 = shl i64 %i.az, 2                     ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx153 ; 5 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !835, !noalias !843
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 3 uses
  %i.bd = icmp ne i64 %i.az, 0                    ; 2 uses
  %i.be = icmp ne i64 %.fr, 0
  %or.cond13.i = and i1 %i.bd, %i.be
  br i1 %or.cond13.i, label %iter.check, label %.critedge.i
end_hunk_6
begin_hunk_7_@_Z18test_capacity_0_ndIiEvv:bb.a
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cb:                                            ; preds = %bb.bw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cc:                                            ; preds = %bb.by
  %i.er = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ce

bb.cd:                                            ; preds = %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  %i.es = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn77 = phi { ptr, i32 } [ %i.es, %bb.cd ], [ %i.er, %bb.cc ] ; 2 uses
  %.14 = extractvalue { ptr, i32 } %.pn77, 1
  %.1445 = extractvalue { ptr, i32 } %.pn77, 0
  %i.et = icmp eq i32 %.14, %i.o
  %i.eu = call ptr @__cxa_begin_catch(ptr %.1445) #25 ; 0 uses
  br i1 %i.et, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.ev = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.cj ; 0 uses

.sink.split189:                                   ; preds = %bb.cf, %bb.ch
  call void @__cxa_end_catch()
  br label %bb.cg

bb.cg:                                            ; preds = %.sink.split189, %_ZN5boost9container13static_vectorIiLm0EvEC2INS0_12vec_iteratorIPiLb0EEEEET_S7_.exit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc121 unwind label %bb.ck

.noexc121:                                        ; preds = %bb.cg
  unreachable

bb.ch:                                            ; preds = %bb.ce
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 433, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %.sink.split189 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cj:                                            ; preds = %bb.cf
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.ck:                                            ; preds = %bb.cg
  %i.ey = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.ey, 1
  %.1647 = extractvalue { ptr, i32 } %i.ey, 0
  %i.ez = icmp eq i32 %.16, %i.o
  %i.fa = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.ez, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.fb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cm unwind label %bb.cp     ; 0 uses

bb.cm:                                            ; preds = %bb.cl, %bb.cn
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.cn:                                            ; preds = %bb.ck
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIiEvv)
          to label %bb.cm unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cp:                                            ; preds = %bb.cl
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.cj, %bb.cb, %bb.bs, %bb.bh, %bb.ay, %bb.ak, %bb.y, %bb.o, %bb.g, %bb.co, %bb.ci, %bb.ca, %bb.br, %bb.bg, %bb.ax, %bb.aj, %bb.x, %bb.n, %bb.f
  %.pn83.pn = phi { ptr, i32 } [ %i.ex, %bb.cj ], [ %i.fd, %bb.cp ], [ %i.fc, %bb.co ], [ %i.eq, %bb.cb ], [ %i.ew, %bb.ci ], [ %i.eh, %bb.bs ], [ %i.ep, %bb.ca ], [ %i.dn, %bb.bh ], [ %i.eg, %bb.br ], [ %i.cs, %bb.ay ], [ %i.dm, %bb.bg ], [ %i.at, %bb.ak ], [ %i.cr, %bb.ax ], [ %i.ag, %bb.y ], [ %i.as, %bb.aj ], [ %i.w, %bb.o ], [ %i.af, %bb.x ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn83.pn

bb.cr:                                            ; preds = %bb.cp, %bb.co, %bb.cj, %bb.ci, %bb.cb, %bb.ca, %bb.bs, %bb.br, %bb.bh, %bb.bg, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.y, %bb.x, %bb.o, %bb.n, %bb.g, %bb.f
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndI8value_ndEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %1 = alloca %"class.boost::container::static_vector.202", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 5, ptr %i.a, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  store i64 0, ptr %i.b, align 8, !tbaa !893
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = extractvalue { ptr, i32 } %i.e, 1
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.i = icmp eq i32 %i.g, %i.h
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.f) #25 ; 0 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.e
  tail call void @__cxa_end_catch()
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc88 unwind label %bb.h

.noexc88:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.1 = extractvalue { ptr, i32 } %i.n, 1
  %.132 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.p = icmp eq i32 %.1, %i.o
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.132) #25 ; 0 uses
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i, %bb.m
  tail call void @__cxa_end_catch()
  %i.s = load i64, ptr %i.b, align 8, !tbaa !895  ; 3 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.k, label %bb.l, !prof !42

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.p

.noexc89:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  store i32 0, ptr %i.t, align 4, !tbaa !41
  %i.u = add nsw i64 %i.s, 1
  store i64 %i.u, ptr %i.b, align 8, !tbaa !895
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.t unwind label %bb.q

bb.m:                                             ; preds = %bb.h
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.j unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.o:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.p:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn56 = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.x, %bb.p ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn56, 1
  %.334 = extractvalue { ptr, i32 } %.pn56, 0
  %i.z = icmp eq i32 %.3, %i.o
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.z, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.y ; 0 uses

.sink.split:                                      ; preds = %bb.s, %bb.w
  tail call void @__cxa_end_catch()
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.l
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !896 ; 3 uses
  %.not.i.i90 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i90, label %bb.u, label %bb.v, !prof !42

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.z

.noexc92:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !41, !noalias !897
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !895, !noalias !897
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ad unwind label %bb.aa

bb.w:                                             ; preds = %bb.r
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.y:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.z:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn60 = phi { ptr, i32 } [ %i.ai, %bb.aa ], [ %i.ah, %bb.z ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 1
  %.536 = extractvalue { ptr, i32 } %.pn60, 0
  %i.aj = icmp eq i32 %.5, %i.o
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.aj, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.al = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split189 unwind label %bb.ai ; 0 uses

.sink.split189:                                   ; preds = %bb.ac, %bb.ag
  tail call void @__cxa_end_catch()
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split189, %bb.v
  %i.am = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !898 ; 3 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !899 ; 4 uses
  %i.ao = sub i64 0, %i.am
  %.not.i.i93 = icmp ugt i64 %i.an, %i.ao
  br i1 %.not.i.i93, label %bb.af, label %bb.ae, !prof !42

bb.ae:                                            ; preds = %bb.ad
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ae
  %i.ap = getelementptr [4 x i8], ptr %1, i64 %i.am
  %i.aq = shl nuw i64 %i.an, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ap, ptr nonnull align 8 %0, i64 %i.aq, i1 false), !tbaa !41, !noalias !900
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.aj

.noexc94:                                         ; preds = %bb.af
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ae
  %i.ar = add i64 %i.am, %i.an
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !893, !noalias !901
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.an unwind label %bb.ak

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %.sink.split189 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.ai:                                            ; preds = %bb.ac
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.aj:                                            ; preds = %bb.af
  %i.au = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.ak:                                            ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn64 = phi { ptr, i32 } [ %i.av, %bb.ak ], [ %i.au, %bb.aj ] ; 2 uses
  %.7 = extractvalue { ptr, i32 } %.pn64, 1
  %.738 = extractvalue { ptr, i32 } %.pn64, 0
  %i.aw = icmp eq i32 %.7, %i.o
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.aw, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.ay = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split190 unwind label %bb.au ; 0 uses

.sink.split190:                                   ; preds = %bb.am, %bb.as
  tail call void @__cxa_end_catch()
  br label %bb.an

bb.an:                                            ; preds = %.sink.split190, %.loopexit
  %i.az = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !902 ; 2 uses
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %.idx ; 2 uses
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !895, !noalias !903
  %.fr = freeze i64 %i.bb                         ; 5 uses
  %.idx.i = shl i64 %.fr, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %.idx.i   ; 2 uses
  %i.bd = icmp ne i64 %i.az, 0
  %i.be = icmp ne i64 %.fr, 0
  %or.cond12.i = and i1 %i.bd, %i.be
  br i1 %or.cond12.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.an
end_hunk_7
begin_hunk_8_@_Z18test_capacity_0_ndI8value_ndEvv:bb.a
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cf:                                            ; preds = %bb.cb
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cg:                                            ; preds = %bb.cc
  %i.ee = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.16 = extractvalue { ptr, i32 } %i.ee, 1
  %.1647 = extractvalue { ptr, i32 } %i.ee, 0
  %i.ef = icmp eq i32 %.16, %i.o
  %i.eg = call ptr @__cxa_begin_catch(ptr %.1647) #25 ; 0 uses
  br i1 %i.ef, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.eh = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ci unwind label %bb.cl     ; 0 uses

bb.ci:                                            ; preds = %bb.ch, %bb.cj
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.cj:                                            ; preds = %bb.cg
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI8value_ndEvv)
          to label %bb.ci unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ch
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl, %bb.cf, %bb.bx, %bb.bo, %bb.bd, %bb.au, %bb.ai, %bb.y, %bb.o, %bb.g, %bb.ck, %bb.ce, %bb.bw, %bb.bn, %bb.bc, %bb.at, %bb.ah, %bb.x, %bb.n, %bb.f
  %.pn84.pn = phi { ptr, i32 } [ %i.ed, %bb.cf ], [ %i.ej, %bb.cl ], [ %i.ei, %bb.ck ], [ %i.dw, %bb.bx ], [ %i.ec, %bb.ce ], [ %i.dn, %bb.bo ], [ %i.dv, %bb.bw ], [ %i.ct, %bb.bd ], [ %i.dm, %bb.bn ], [ %i.by, %bb.au ], [ %i.cs, %bb.bc ], [ %i.at, %bb.ai ], [ %i.bx, %bb.at ], [ %i.ag, %bb.y ], [ %i.as, %bb.ah ], [ %i.w, %bb.o ], [ %i.af, %bb.x ], [ %i.m, %bb.g ], [ %i.v, %bb.n ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn84.pn

bb.cn:                                            ; preds = %bb.cl, %bb.ck, %bb.cf, %bb.ce, %bb.bx, %bb.bw, %bb.bo, %bb.bn, %bb.bd, %bb.bc, %bb.au, %bb.at, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.o, %bb.n, %bb.g, %bb.f
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndI14counting_valueEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %1 = alloca %"class.boost::container::static_vector.212", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i64 5, ptr %i.b, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !41
  %i.c = add i64 %i.a, 5
  store i64 %i.c, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  store i64 0, ptr %i.d, align 8, !tbaa !959
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8, !tbaa !961
  %.not.i.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.not, label %bb.d, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE2atEm.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE2atEm.exit: ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.dp, %bb.dg, %bb.cx, %bb.cl, %bb.bx, %bb.bl, %bb.aw, %bb.ai, %bb.v, %bb.k, %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.f:                                             ; preds = %bb.d, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE2atEm.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = extractvalue { ptr, i32 } %i.i, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.j) #25 ; 0 uses
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.h unwind label %bb.m       ; 0 uses

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h, %bb.k, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE2atEm.exit
  %i.p = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc88 unwind label %bb.o

.noexc88:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.e

bb.l:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.m:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.n:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.o:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.v = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.1 = extractvalue { ptr, i32 } %i.u, 1
  %.132 = extractvalue { ptr, i32 } %i.u, 0
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.y = icmp eq i32 %.1, %i.x
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.132) #25 ; 0 uses
  br i1 %i.y, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.q unwind label %bb.x       ; 0 uses

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q, %bb.v
  %i.ab = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !961 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.s, label %bb.t, !prof !42

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.z

.noexc89:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !80
  %i.ag = add nsw i64 %i.ad, 1
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !961
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.ae unwind label %bb.aa

bb.u:                                             ; preds = %bb.o
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.e

bb.w:                                             ; preds = %bb.u
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.x:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.y:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.z:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.al = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t
  %i.an = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn56 = phi { ptr, i32 } [ %i.an, %bb.aa ], [ %i.ak, %bb.z ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn56, 1
  %.334 = extractvalue { ptr, i32 } %.pn56, 0
  %i.ao = icmp eq i32 %.3, %i.x
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.ao, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.aq = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ad unwind label %bb.ak     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad, %bb.ai, %bb.t
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !961, !noalias !962 ; 3 uses
  %i.as = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.at = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.at, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i90 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i90, label %bb.af, label %bb.ag, !prof !42

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.am

.noexc92:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.au = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ar ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !79, !noalias !963
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !80, !noalias !963
  %i.aw = add i64 %i.ar, 1
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !961, !noalias !963
  store i64 %i.at, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.ar unwind label %bb.an

bb.ah:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.e

bb.aj:                                            ; preds = %bb.ah
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.ak:                                            ; preds = %bb.ac
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.al:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.am:                                            ; preds = %bb.af
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.bb = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bc = add i64 %i.bb, -1
  store i64 %i.bc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ao

bb.an:                                            ; preds = %bb.ag
  %i.bd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn60 = phi { ptr, i32 } [ %i.bd, %bb.an ], [ %i.ba, %bb.am ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 1
  %.536 = extractvalue { ptr, i32 } %.pn60, 0
  %i.be = icmp eq i32 %.5, %i.x
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.be, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.bg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.aq unwind label %bb.ay     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  invoke void @__cxa_end_catch()
          to label %bb.ar unwind label %bb.az

bb.ar:                                            ; preds = %bb.aq, %bb.aw, %bb.ag
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !961, !noalias !964 ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh ; 4 uses
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !102, !noalias !965 ; 9 uses
  %i.bk = sub i64 0, %i.bh
  %.not.i.i93 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not.i.i93, label %bb.at, label %bb.as, !prof !42

bb.as:                                            ; preds = %bb.ar
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.au, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !966
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = and i64 %i.bj, 3
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 3 uses
  %i.bq = or disjoint i64 %i.bp, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bp
  %next.gep229 = getelementptr i8, ptr %0, i64 %i.bq
  %next.gep230 = getelementptr i8, ptr %i.bi, i64 %i.bp ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.bi, i64 %i.bq ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep230) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep232) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !41, !noalias !966
  %wide.vec235 = load <4 x i32>, ptr %next.gep229, align 8, !tbaa !41, !noalias !966
  store <4 x i32> %wide.vec, ptr %next.gep230, align 8, !tbaa !41, !noalias !966
  store <4 x i32> %wide.vec235, ptr %next.gep232, align 8, !tbaa !41, !noalias !966
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !926

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.ph301 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i ], [ %i.bm, %middle.block ]
  %.015.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.bn, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.bo, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bs = phi ptr [ %i.bu, %scalar.ph ], [ %.ph301, %scalar.ph.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.bw, %scalar.ph ], [ %.015.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.bv, %scalar.ph ], [ %.01214.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
end_hunk_8
begin_hunk_9_@_Z18test_capacity_0_ndI14counting_valueEvv:bb.a
  ret void

bb.do:                                            ; preds = %bb.dk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.dp unwind label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke void @__cxa_end_catch()
          to label %bb.dn unwind label %bb.e

bb.dq:                                            ; preds = %bb.do
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.dr:                                            ; preds = %bb.dl
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dt unwind label %bb.du

bb.ds:                                            ; preds = %bb.dm
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %bb.dj, %bb.di, %bb.da, %bb.cz, %bb.co, %bb.cn, %bb.ca, %bb.bz, %bb.bo, %bb.bn, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.y, %bb.x, %bb.n, %bb.m, %bb.dq, %bb.dh, %bb.cy, %bb.cm, %bb.by, %bb.bm, %bb.ax, %bb.aj, %bb.w, %bb.l, %bb.e
  %.pn84.pn = phi { ptr, i32 } [ %i.iq, %bb.di ], [ %i.h, %bb.e ], [ %i.jc, %bb.dq ], [ %i.ig, %bb.cz ], [ %i.ip, %bb.dh ], [ %i.hu, %bb.cn ], [ %i.if, %bb.cy ], [ %i.gq, %bb.bz ], [ %i.ht, %bb.cm ], [ %i.fn, %bb.bn ], [ %i.gp, %bb.by ], [ %i.ca, %bb.ay ], [ %i.fm, %bb.bm ], [ %i.ay, %bb.ak ], [ %i.bz, %bb.ax ], [ %i.ai, %bb.x ], [ %i.ax, %bb.aj ], [ %i.s, %bb.m ], [ %i.ah, %bb.w ], [ %i.r, %bb.l ], [ %i.t, %bb.n ], [ %i.aj, %bb.y ], [ %i.az, %bb.al ], [ %i.cb, %bb.az ], [ %i.fo, %bb.bo ], [ %i.gr, %bb.ca ], [ %i.hv, %bb.co ], [ %i.ih, %bb.da ], [ %i.ir, %bb.dj ], [ %i.je, %bb.ds ], [ %i.jd, %bb.dr ]
  %i.jf = load i64, ptr %i.d, align 8, !tbaa !961 ; 2 uses
  %.not3.i.i150 = icmp eq i64 %i.jf, 0
  br i1 %.not3.i.i150, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit153, label %.lr.ph.preheader.i.i151

.lr.ph.preheader.i.i151:                          ; preds = %bb.dt
  %_ZZN14counting_value1cEvE2co.promoted.i.i152 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.jg = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i152, %i.jf
  store i64 %i.jg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit153

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit153: ; preds = %bb.dt, %.lr.ph.preheader.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.jh = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i154 = icmp eq i64 %i.jh, 0
  br i1 %.not3.i.i154, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit157, label %.lr.ph.preheader.i.i155

.lr.ph.preheader.i.i155:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit153
  %_ZZN14counting_value1cEvE2co.promoted.i.i156 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ji = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i156, %i.jh
  store i64 %i.ji, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit157

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit157: ; preds = %.lr.ph.preheader.i.i155, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvED2Ev.exit153
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn84.pn

bb.du:                                            ; preds = %bb.dr, %bb.dq, %bb.di, %bb.dh, %bb.cz, %bb.cy, %bb.cn, %bb.cm, %bb.bz, %bb.by, %bb.bn, %bb.bm, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.x, %bb.w, %bb.m, %bb.l
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit:
  %0 = alloca %"class.boost::container::static_vector.35", align 8 ; 16 uses
  %1 = alloca %"class.boost::container::static_vector.222", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i64 5, ptr %i.b, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false), !tbaa !82
  %i.c = add i32 %i.a, 5
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  store i64 0, ptr %i.d, align 8, !tbaa !1034
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.d       ; 0 uses

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.f = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !1036
  %.not.i.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.not, label %bb.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE2atEm.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE2atEm.exit: ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.h unwind label %bb.e

bb.d:                                             ; preds = %bb.do, %bb.df, %bb.cw, %bb.ck, %bb.bw, %bb.bk, %bb.av, %bb.ah, %bb.u, %bb.j, %bb.a, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.e:                                             ; preds = %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE2atEm.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = extractvalue { ptr, i32 } %i.i, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.m = icmp eq i32 %i.k, %i.l
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.j) #25 ; 0 uses
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.j, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvE2atEm.exit
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc88 unwind label %bb.n

.noexc88:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 425, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.d

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.l:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.m:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.n:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.1 = extractvalue { ptr, i32 } %i.u, 1
  %.132 = extractvalue { ptr, i32 } %i.u, 0
  %i.x = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.y = icmp eq i32 %.1, %i.x
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.132) #25 ; 0 uses
  br i1 %i.y, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.p unwind label %bb.w       ; 0 uses

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p, %bb.u
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !1036 ; 3 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.r, label %bb.s, !prof !42

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.y

.noexc89:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !82
  %i.af = add nsw i64 %i.ad, 1
  store i64 %i.af, ptr %i.d, align 8, !tbaa !1036
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ad unwind label %bb.z

bb.t:                                             ; preds = %bb.n
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.d

bb.v:                                             ; preds = %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.w:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.x:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.y:                                             ; preds = %bb.r
  %i.aj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.aa

bb.z:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn56 = phi { ptr, i32 } [ %i.am, %bb.z ], [ %i.aj, %bb.y ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn56, 1
  %.334 = extractvalue { ptr, i32 } %.pn56, 0
  %i.an = icmp eq i32 %.3, %i.x
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.an, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ap = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ac unwind label %bb.aj     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac, %bb.ah, %bb.s
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !1036, !noalias !1037 ; 3 uses
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i90 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i90, label %bb.ae, label %bb.af, !prof !42

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.al

.noexc92:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !82, !noalias !1038
  %i.au = add i64 %i.aq, 1
  store i64 %i.au, ptr %i.d, align 8, !tbaa !1036, !noalias !1038
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.aq unwind label %bb.am

bb.ag:                                            ; preds = %bb.aa
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.d

bb.ai:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.aj:                                            ; preds = %bb.ab
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ak:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.al:                                            ; preds = %bb.ae
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.an

bb.am:                                            ; preds = %bb.af
  %i.bb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn60 = phi { ptr, i32 } [ %i.bb, %bb.am ], [ %i.ay, %bb.al ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 1
  %.536 = extractvalue { ptr, i32 } %.pn60, 0
  %i.bc = icmp eq i32 %.5, %i.x
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.bc, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.be = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ap unwind label %bb.ax     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.ay

bb.aq:                                            ; preds = %bb.ap, %bb.av, %bb.af
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !1036, !noalias !1039 ; 3 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !141, !noalias !1040 ; 5 uses
  %i.bh = sub i64 0, %i.bf
  %.not.i.i93 = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not.i.i93, label %bb.as, label %bb.ar, !prof !42

bb.ar:                                            ; preds = %bb.aq
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.at, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ar
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bf
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1041
  %i.bj = shl nuw i64 %i.bg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bi, ptr nonnull align 8 %0, i64 %i.bj, i1 false), !tbaa !82, !noalias !1041
  %i.bk = trunc i64 %i.bg to i32
  %i.bl = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.bk
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1041
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc94 unwind label %bb.az

.noexc94:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ar
  %i.bm = add i64 %i.bg, %i.bf
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !1034, !noalias !1042
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.be unwind label %bb.ba

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %bb.d

bb.aw:                                            ; preds = %bb.au
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ax:                                            ; preds = %bb.ao
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.ay:                                            ; preds = %bb.ap
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

end_hunk_9
begin_hunk_10_@_Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv:_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  store i32 %i.it, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit171, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.dn:                                            ; preds = %bb.dj
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndIN5boost9container4test24movable_and_copyable_intEEvv)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  invoke void @__cxa_end_catch()
          to label %bb.dm unwind label %bb.d

bb.dp:                                            ; preds = %bb.dn
  %i.iu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dk
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ds unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dl
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.di, %bb.dh, %bb.cz, %bb.cy, %bb.cn, %bb.cm, %bb.bz, %bb.by, %bb.bn, %bb.bm, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.x, %bb.w, %bb.m, %bb.l, %bb.dp, %bb.dg, %bb.cx, %bb.cl, %bb.bx, %bb.bl, %bb.aw, %bb.ai, %bb.v, %bb.k, %bb.d
  %.pn84.pn = phi { ptr, i32 } [ %i.hq, %bb.dh ], [ %i.h, %bb.d ], [ %i.iu, %bb.dp ], [ %i.hg, %bb.cy ], [ %i.hp, %bb.dg ], [ %i.gu, %bb.cm ], [ %i.hf, %bb.cx ], [ %i.fe, %bb.by ], [ %i.gt, %bb.cl ], [ %i.dp, %bb.bm ], [ %i.fd, %bb.bx ], [ %i.bo, %bb.ax ], [ %i.do, %bb.bl ], [ %i.aw, %bb.aj ], [ %i.bn, %bb.aw ], [ %i.ah, %bb.w ], [ %i.av, %bb.ai ], [ %i.s, %bb.l ], [ %i.ag, %bb.v ], [ %i.r, %bb.k ], [ %i.t, %bb.m ], [ %i.ai, %bb.x ], [ %i.ax, %bb.ak ], [ %i.bp, %bb.ay ], [ %i.dq, %bb.bn ], [ %i.ff, %bb.bz ], [ %i.gv, %bb.cn ], [ %i.hh, %bb.cz ], [ %i.hr, %bb.di ], [ %i.iw, %bb.dr ], [ %i.iv, %bb.dq ]
  %i.ix = load i64, ptr %i.d, align 8, !tbaa !1036 ; 7 uses
  %.not3.i.i179 = icmp eq i64 %i.ix, 0
  br i1 %.not3.i.i179, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit187, label %.lr.ph.i.preheader.i180

.lr.ph.i.preheader.i180:                          ; preds = %bb.ds
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i181 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check321 = icmp ult i64 %i.ix, 8
  br i1 %min.iters.check321, label %.lr.ph.i.i182.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph.i.preheader.i180
  %n.vec323 = and i64 %i.ix, -8                   ; 3 uses
  %i.iy = and i64 %i.ix, 7
  %i.iz = shl i64 %n.vec323, 2
  %i.ja = getelementptr i8, ptr %1, i64 %i.iz
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next327, %vector.body324 ] ; 2 uses
  %i.jb = shl i64 %index325, 2
  %next.gep326 = getelementptr i8, ptr %1, i64 %i.jb ; 2 uses
  %i.jc = getelementptr i8, ptr %next.gep326, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep326, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.jc, align 8, !tbaa !82
  %index.next327 = add nuw i64 %index325, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next327, %n.vec323
  br i1 %i.jd, label %middle.block328, label %vector.body324, !llvm.loop !1028

middle.block328:                                  ; preds = %vector.body324
  %cmp.n329 = icmp eq i64 %i.ix, %n.vec323
  br i1 %cmp.n329, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i186, label %.lr.ph.i.i182.preheader

.lr.ph.i.i182.preheader:                          ; preds = %.lr.ph.i.preheader.i180, %middle.block328
  %.05.i.i183.ph = phi i64 [ %i.ix, %.lr.ph.i.preheader.i180 ], [ %i.iy, %middle.block328 ]
  %storemerge4.i.i184.ph = phi ptr [ %1, %.lr.ph.i.preheader.i180 ], [ %i.ja, %middle.block328 ]
  br label %.lr.ph.i.i182

.lr.ph.i.i182:                                    ; preds = %.lr.ph.i.i182.preheader, %.lr.ph.i.i182
  %.05.i.i183 = phi i64 [ %i.je, %.lr.ph.i.i182 ], [ %.05.i.i183.ph, %.lr.ph.i.i182.preheader ]
  %storemerge4.i.i184 = phi ptr [ %i.jf, %.lr.ph.i.i182 ], [ %storemerge4.i.i184.ph, %.lr.ph.i.i182.preheader ] ; 2 uses
  %i.je = add i64 %.05.i.i183, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i184, align 4, !tbaa !82
  %i.jf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i184, i64 4
  %.not.i.i185 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i185, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i186, label %.lr.ph.i.i182, !llvm.loop !1029

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i186: ; preds = %.lr.ph.i.i182, %middle.block328
  %i.jg = trunc i64 %i.ix to i32
  %i.jh = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i181, %i.jg
  store i32 %i.jh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit187

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit187: ; preds = %bb.ds, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm0ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ji = load i64, ptr %i.b, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i188 = icmp eq i64 %i.ji, 0
  br i1 %.not3.i.i188, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit196, label %.lr.ph.i.preheader.i189

.lr.ph.i.preheader.i189:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit187
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i190 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check333 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check333, label %.lr.ph.i.i191.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph.i.preheader.i189
  %n.vec335 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = and i64 %i.ji, 7
  %i.jk = shl i64 %n.vec335, 2
  %i.jl = getelementptr i8, ptr %0, i64 %i.jk
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next339, %vector.body336 ] ; 2 uses
  %i.jm = shl i64 %index337, 2
  %next.gep338 = getelementptr i8, ptr %0, i64 %i.jm ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep338, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep338, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.jn, align 8, !tbaa !82
  %index.next339 = add nuw i64 %index337, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next339, %n.vec335
  br i1 %i.jo, label %middle.block340, label %vector.body336, !llvm.loop !1030

middle.block340:                                  ; preds = %vector.body336
  %cmp.n341 = icmp eq i64 %i.ji, %n.vec335
  br i1 %cmp.n341, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %.lr.ph.i.preheader.i189, %middle.block340
  %.05.i.i192.ph = phi i64 [ %i.ji, %.lr.ph.i.preheader.i189 ], [ %i.jj, %middle.block340 ]
  %storemerge4.i.i193.ph = phi ptr [ %0, %.lr.ph.i.preheader.i189 ], [ %i.jl, %middle.block340 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader, %.lr.ph.i.i191
  %.05.i.i192 = phi i64 [ %i.jp, %.lr.ph.i.i191 ], [ %.05.i.i192.ph, %.lr.ph.i.i191.preheader ]
  %storemerge4.i.i193 = phi ptr [ %i.jq, %.lr.ph.i.i191 ], [ %storemerge4.i.i193.ph, %.lr.ph.i.i191.preheader ] ; 2 uses
  %i.jp = add i64 %.05.i.i192, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i193, align 4, !tbaa !82
  %i.jq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i193, i64 4
  %.not.i.i194 = icmp eq i64 %i.jp, 0
  br i1 %.not.i.i194, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i195, label %.lr.ph.i.i191, !llvm.loop !1031

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i195: ; preds = %.lr.ph.i.i191, %middle.block340
  %i.jr = trunc i64 %i.ji to i32
  %i.js = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i190, %i.jr
  store i32 %i.js, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit196

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit196: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i195, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm0ELm0ELb1EEEvED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn84.pn

bb.dt:                                            ; preds = %bb.dq, %bb.dp, %bb.dh, %bb.dg, %bb.cy, %bb.cx, %bb.cm, %bb.cl, %bb.by, %bb.bx, %bb.bm, %bb.bl, %bb.ax, %bb.aw, %bb.aj, %bb.ai, %bb.w, %bb.v, %bb.l, %bb.k
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndIiLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit:
  %0 = alloca %"class.boost::container::static_vector.19", align 8 ; 14 uses
  %1 = alloca %"class.boost::container::static_vector.232", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 10, ptr %i.a, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  store i64 5, ptr %i.b, align 8, !tbaa !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false), !tbaa !41
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit
  unreachable

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.c, 1
  %.028 = extractvalue { ptr, i32 } %i.c, 0
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.e = icmp eq i32 %.0, %i.d
  %i.f = tail call ptr @__cxa_begin_catch(ptr %.028) #25 ; 0 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.f
  tail call void @__cxa_end_catch()
  %i.h = load i64, ptr %i.b, align 8, !tbaa !157  ; 3 uses
  %.not.i = icmp eq i64 %i.h, 5
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc87 unwind label %bb.i

.noexc87:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !41
  %i.j = add nsw i64 %i.h, 1
  store i64 %i.j, ptr %i.b, align 8, !tbaa !157
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.m unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.c unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.h:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn50 = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.m, %bb.i ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn50, 1
  %.230 = extractvalue { ptr, i32 } %.pn50, 0
  %i.o = icmp eq i32 %.2, %i.d
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.230) #25 ; 0 uses
  br i1 %i.o, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.q = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.r ; 0 uses

.sink.split:                                      ; preds = %bb.l, %bb.p
  tail call void @__cxa_end_catch()
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1098 ; 3 uses
  %.not.i.i = icmp eq i64 %i.r, 5
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.s

.noexc89:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !41, !noalias !1099
  %i.t = add i64 %i.r, 1
  store i64 %i.t, ptr %i.b, align 8, !tbaa !157, !noalias !1099
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.w unwind label %bb.t

bb.p:                                             ; preds = %bb.k
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.r:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.s:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn54 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.w, %bb.s ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn54, 1
  %.432 = extractvalue { ptr, i32 } %.pn54, 0
  %i.y = icmp eq i32 %.4, %i.d
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.y, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split172 unwind label %bb.aa ; 0 uses

.sink.split172:                                   ; preds = %bb.v, %bb.y
  tail call void @__cxa_end_catch()
  br label %bb.w

bb.w:                                             ; preds = %.sink.split172, %bb.o
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1100 ; 3 uses
  %.not.i.i90 = icmp eq i64 %i.ab, 5
  br i1 %.not.i.i90, label %bb.x, label %.lr.ph.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !41, !noalias !1101
  %i.ad = add i64 %i.ab, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !155, !noalias !1101
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.af unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc91 unwind label %bb.ab

.noexc91:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split172 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.aa:                                            ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ab:                                            ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn58 = phi { ptr, i32 } [ %i.ah, %bb.ac ], [ %i.ag, %bb.ab ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn58, 1
  %.634 = extractvalue { ptr, i32 } %.pn58, 0
  %i.ai = icmp eq i32 %.6, %i.d
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.ai, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.ak = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split173 unwind label %bb.am ; 0 uses

.sink.split173:                                   ; preds = %bb.ae, %bb.ak
  tail call void @__cxa_end_catch()
  br label %bb.af

bb.af:                                            ; preds = %.sink.split173, %.lr.ph.i.i.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !tbaa !157, !noalias !1102 ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1103 ; 4 uses
  %.idx = shl nsw i64 %i.an, 2
  %i.ao = sub i64 5, %i.al
  %.not.i.i92 = icmp ugt i64 %i.an, %i.ao
  br i1 %.not.i.i92, label %bb.ai, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i.i.i.i.not = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.not, label %bb.aj, label %bb.ah, !prof !150

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr nonnull align 8 %0, i64 %.idx, i1 false), !noalias !1104
  %.pre = load i64, ptr %i.b, align 8, !tbaa !155, !noalias !1105
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc96 unwind label %bb.an

.noexc96:                                         ; preds = %bb.ai
  unreachable
end_hunk_10
begin_hunk_11_@_Z18test_exceptions_ndIiLm10EEvv:_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn68 = phi { ptr, i32 } [ %i.do, %bb.bl ], [ %i.dn, %bb.bk ] ; 2 uses
  %.11 = extractvalue { ptr, i32 } %.pn68, 1
  %.1139 = extractvalue { ptr, i32 } %.pn68, 0
  %i.dp = icmp eq i32 %.11, %i.d
  %i.dq = call ptr @__cxa_begin_catch(ptr %.1139) #25 ; 0 uses
  br i1 %i.dp, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.dr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split176 unwind label %bb.bs ; 0 uses

.sink.split176:                                   ; preds = %bb.bn, %bb.bq
  call void @__cxa_end_catch()
  br label %bb.bo

bb.bo:                                            ; preds = %.sink.split176, %bb.bg
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !95, !noalias !1112
  %i.dt = icmp ult i64 %i.ds, 6
  br i1 %i.dt, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i, label %bb.bp, !prof !158

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc105 unwind label %bb.bt

.noexc105:                                        ; preds = %bb.bp
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i: ; preds = %bb.bo
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.bx unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bm
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split176 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bs:                                            ; preds = %bb.bn
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.bt:                                            ; preds = %bb.bp
  %i.dw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  %i.dx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn72 = phi { ptr, i32 } [ %i.dx, %bb.bu ], [ %i.dw, %bb.bt ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn72, 1
  %.1341 = extractvalue { ptr, i32 } %.pn72, 0
  %i.dy = icmp eq i32 %.13, %i.d
  %i.dz = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.dy, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ea = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split195 unwind label %bb.ca ; 0 uses

.sink.split195:                                   ; preds = %bb.bw, %bb.by
  call void @__cxa_end_catch()
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split195, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPiLb0EEEEES9_NS7_IS8_Lb1EEET_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESJ_E4typeE.exit.i.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorIiLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc106 unwind label %bb.cb

.noexc106:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bv
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %.sink.split195 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ca:                                            ; preds = %bb.bw
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.cb:                                            ; preds = %bb.bx
  %i.ed = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.ed, 1
  %.1543 = extractvalue { ptr, i32 } %i.ed, 0
  %i.ee = icmp eq i32 %.15, %i.d
  %i.ef = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.ee, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.eg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.cd unwind label %bb.cg     ; 0 uses

bb.cd:                                            ; preds = %bb.cc, %bb.ce
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.ce:                                            ; preds = %bb.cb
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIiLm10EEvv)
          to label %bb.cd unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cc
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.g, %bb.q, %bb.z, %bb.al, %bb.az, %bb.bi, %bb.br, %bb.bz, %bb.cf, %bb.h, %bb.r, %bb.aa, %bb.am, %bb.ba, %bb.bj, %bb.bs, %bb.ca, %bb.cg
  %.pn78.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.cg ], [ %i.ec, %bb.ca ], [ %i.k, %bb.g ], [ %i.eh, %bb.cf ], [ %i.dv, %bb.bs ], [ %i.eb, %bb.bz ], [ %i.dm, %bb.bj ], [ %i.du, %bb.br ], [ %i.cr, %bb.ba ], [ %i.dl, %bb.bi ], [ %i.as, %bb.am ], [ %i.cq, %bb.az ], [ %i.af, %bb.aa ], [ %i.ar, %bb.al ], [ %i.v, %bb.r ], [ %i.ae, %bb.z ], [ %i.l, %bb.h ], [ %i.u, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn78.pn.pn

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.ca, %bb.bz, %bb.bs, %bb.br, %bb.bj, %bb.bi, %bb.ba, %bb.az, %bb.am, %bb.al, %bb.aa, %bb.z, %bb.r, %bb.q, %bb.h, %bb.g
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndI8value_ndLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit:
  %0 = alloca %"class.boost::container::static_vector.43", align 8 ; 10 uses
  %1 = alloca %"class.boost::container::static_vector.245", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 10, ptr %i.a, align 8, !tbaa !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 13 uses
  store i64 5, ptr %i.b, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false), !tbaa !41
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  unreachable

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.c, 1
  %.028 = extractvalue { ptr, i32 } %i.c, 0
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.e = icmp eq i32 %.0, %i.d
  %i.f = tail call ptr @__cxa_begin_catch(ptr %.028) #25 ; 0 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.f
  tail call void @__cxa_end_catch()
  %i.h = load i64, ptr %i.b, align 8, !tbaa !163  ; 3 uses
  %.not.i = icmp eq i64 %i.h, 5
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !42

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.i

.noexc89:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  store i32 0, ptr %i.i, align 4, !tbaa !41
  %i.j = add nsw i64 %i.h, 1
  store i64 %i.j, ptr %i.b, align 8, !tbaa !163
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.m unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.c unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.h:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn51 = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.m, %bb.i ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn51, 1
  %.230 = extractvalue { ptr, i32 } %.pn51, 0
  %i.o = icmp eq i32 %.2, %i.d
  %i.p = tail call ptr @__cxa_begin_catch(ptr %.230) #25 ; 0 uses
  br i1 %i.o, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.q = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split unwind label %bb.r ; 0 uses

.sink.split:                                      ; preds = %bb.l, %bb.p
  tail call void @__cxa_end_catch()
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1153 ; 3 uses
  %.not.i.i = icmp eq i64 %i.r, 5
  br i1 %.not.i.i, label %bb.n, label %bb.o, !prof !42

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc91 unwind label %bb.s

.noexc91:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds [4 x i8], ptr %1, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !41, !noalias !1154
  %i.t = add i64 %i.r, 1
  store i64 %i.t, ptr %i.b, align 8, !tbaa !163, !noalias !1154
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.w unwind label %bb.t

bb.p:                                             ; preds = %bb.k
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.r:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.s:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn55 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %i.w, %bb.s ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn55, 1
  %.432 = extractvalue { ptr, i32 } %.pn55, 0
  %i.y = icmp eq i32 %.4, %i.d
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.y, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split186 unwind label %bb.aa ; 0 uses

.sink.split186:                                   ; preds = %bb.v, %bb.y
  tail call void @__cxa_end_catch()
  br label %bb.w

bb.w:                                             ; preds = %.sink.split186, %bb.o
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1155 ; 3 uses
  %.not.i.i92 = icmp eq i64 %i.ab, 5
  br i1 %.not.i.i92, label %bb.x, label %.lr.ph.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.w
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !41, !noalias !1156
  %i.ad = add i64 %i.ab, 1
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !161, !noalias !1156
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.af unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc95 unwind label %bb.ab

.noexc95:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.u
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split186 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.aa:                                            ; preds = %bb.v
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.ab:                                            ; preds = %bb.x
  %i.ag = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %i.ah, %bb.ac ], [ %i.ag, %bb.ab ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn59, 1
  %.634 = extractvalue { ptr, i32 } %.pn59, 0
  %i.ai = icmp eq i32 %.6, %i.d
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.ai, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.ak = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split187 unwind label %bb.ak ; 0 uses

.sink.split187:                                   ; preds = %bb.ae, %bb.ai
  tail call void @__cxa_end_catch()
  br label %bb.af

bb.af:                                            ; preds = %.sink.split187, %.lr.ph.i.i.i.i.i.i
  %i.al = load i64, ptr %i.b, align 8, !tbaa !163, !noalias !1157 ; 3 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1158 ; 4 uses
  %i.an = sub i64 5, %i.al
  %.not.i.i96 = icmp ugt i64 %i.am, %i.an
  br i1 %.not.i.i96, label %bb.ah, label %bb.ag, !prof !42

bb.ag:                                            ; preds = %bb.af
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i.i.i.i.i, label %.loopexit162, label %.lr.ph.i.i.i.i.i.i111.preheader

.lr.ph.i.i.i.i.i.i111.preheader:                  ; preds = %bb.ag
  %i.ao = getelementptr [4 x i8], ptr %1, i64 %i.al
  %i.ap = shl nuw i64 %i.am, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr nonnull align 8 %0, i64 %i.ap, i1 false), !tbaa !41, !noalias !1159
  br label %.loopexit162

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc113 unwind label %bb.al

.noexc113:                                        ; preds = %bb.ah
  unreachable

end_hunk_11
begin_hunk_12_@_Z18test_exceptions_ndI8value_ndLm10EEvv:_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  call void @__cxa_end_catch()
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split190, %bb.bc
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1166
  %i.cz = icmp ult i64 %i.cy, 6
  br i1 %i.cz, label %.loopexit, label %bb.bl, !prof !158

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc124 unwind label %bb.bp

.noexc124:                                        ; preds = %bb.bl
  unreachable

.loopexit:                                        ; preds = %bb.bk
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bt unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bi
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split190 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bo:                                            ; preds = %bb.bj
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bp:                                            ; preds = %bb.bl
  %i.dc = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.bq:                                            ; preds = %.loopexit
  %i.dd = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn73 = phi { ptr, i32 } [ %i.dd, %bb.bq ], [ %i.dc, %bb.bp ] ; 2 uses
  %.13 = extractvalue { ptr, i32 } %.pn73, 1
  %.1341 = extractvalue { ptr, i32 } %.pn73, 0
  %i.de = icmp eq i32 %.13, %i.d
  %i.df = call ptr @__cxa_begin_catch(ptr %.1341) #25 ; 0 uses
  br i1 %i.de, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.dg = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.sink.split191 unwind label %bb.bw ; 0 uses

.sink.split191:                                   ; preds = %bb.bs, %bb.bu
  call void @__cxa_end_catch()
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split191, %.loopexit
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc125 unwind label %bb.bx

.noexc125:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.br
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %.sink.split191 unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bs
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bt
  %i.dj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.15 = extractvalue { ptr, i32 } %i.dj, 1
  %.1543 = extractvalue { ptr, i32 } %i.dj, 0
  %i.dk = icmp eq i32 %.15, %i.d
  %i.dl = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.dk, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.dm = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.bz unwind label %bb.cc     ; 0 uses

bb.bz:                                            ; preds = %bb.by, %bb.ca
  call void @__cxa_end_catch()
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.ca:                                            ; preds = %bb.bx
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI8value_ndLm10EEvv)
          to label %bb.bz unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.cc:                                            ; preds = %bb.by
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.g, %bb.q, %bb.z, %bb.aj, %bb.av, %bb.be, %bb.bn, %bb.bv, %bb.cb, %bb.h, %bb.r, %bb.aa, %bb.ak, %bb.aw, %bb.bf, %bb.bo, %bb.bw, %bb.cc
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.do, %bb.cc ], [ %i.di, %bb.bw ], [ %i.k, %bb.g ], [ %i.dn, %bb.cb ], [ %i.db, %bb.bo ], [ %i.dh, %bb.bv ], [ %i.cs, %bb.bf ], [ %i.da, %bb.bn ], [ %i.bx, %bb.aw ], [ %i.cr, %bb.be ], [ %i.as, %bb.ak ], [ %i.bw, %bb.av ], [ %i.af, %bb.aa ], [ %i.ar, %bb.aj ], [ %i.v, %bb.r ], [ %i.ae, %bb.z ], [ %i.l, %bb.h ], [ %i.u, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn79.pn.pn

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.bw, %bb.bv, %bb.bo, %bb.bn, %bb.bf, %bb.be, %bb.aw, %bb.av, %bb.ak, %bb.aj, %bb.aa, %bb.z, %bb.r, %bb.q, %bb.h, %bb.g
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 15 uses
  %1 = alloca %"class.boost::container::static_vector.255", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i64 10, ptr %i.b, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false), !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 15 uses
  store i64 5, ptr %i.c, align 8, !tbaa !1222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !tbaa !41
  %i.d = add i64 %i.a, 16
  store i64 %i.d, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.f = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.0 = extractvalue { ptr, i32 } %i.e, 1
  %.028 = extractvalue { ptr, i32 } %i.e, 0
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.i = icmp eq i32 %.0, %i.h
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.028) #25 ; 0 uses
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.d unwind label %bb.l       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d, %bb.i
  %i.l = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.n = load i64, ptr %i.c, align 8, !tbaa !1224 ; 3 uses
  %.not.i = icmp eq i64 %i.n, 5
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !42

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc90 unwind label %bb.n

.noexc90:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !80
  %i.q = add nsw i64 %i.n, 1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !1224
  store i64 %i.m, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.s unwind label %bb.o

bb.h:                                             ; preds = %bb.b
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.k:                                             ; preds = %bb.de, %bb.cv, %bb.cm, %bb.bx, %bb.bl, %bb.aw, %bb.ai, %bb.w, %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.n:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.w = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn51 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.v, %bb.n ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn51, 1
  %.230 = extractvalue { ptr, i32 } %.pn51, 0
  %i.z = icmp eq i32 %.2, %i.h
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %.230) #25 ; 0 uses
  br i1 %i.z, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ab = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.r unwind label %bb.y       ; 0 uses

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r, %bb.w, %bb.g
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !1224, !noalias !1225 ; 3 uses
  %i.ad = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i = icmp eq i64 %i.ac, 5
  br i1 %.not.i.i, label %bb.t, label %bb.u, !prof !42

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.aa

.noexc92:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !79, !noalias !1226
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !80, !noalias !1226
  %i.ah = add i64 %i.ac, 1
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !1224, !noalias !1226
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.af unwind label %bb.ab

bb.v:                                             ; preds = %bb.p
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.k

bb.x:                                             ; preds = %bb.v
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.y:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.z:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.aa:                                            ; preds = %bb.t
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.am = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn55 = phi { ptr, i32 } [ %i.ao, %bb.ab ], [ %i.al, %bb.aa ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn55, 1
  %.432 = extractvalue { ptr, i32 } %.pn55, 0
  %i.ap = icmp eq i32 %.4, %i.h
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.ap, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.ar = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ae unwind label %bb.ak     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %bb.ae, %bb.ai, %bb.u
  %i.as = load i64, ptr %i.c, align 8, !tbaa !1224, !noalias !1227 ; 3 uses
  %i.at = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.au = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i93 = icmp eq i64 %i.as, 5
  br i1 %.not.i.i93, label %bb.ag, label %.preheader, !prof !42

.preheader:                                       ; preds = %bb.af
  %i.av = getelementptr inbounds [8 x i8], ptr %1, i64 %i.as ; 2 uses
  store i32 0, ptr %i.av, align 8, !tbaa !79, !noalias !1228
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !80, !noalias !1228
  %i.ax = add i64 %i.as, 1
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !1222, !noalias !1228
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.ar unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc96 unwind label %bb.am

.noexc96:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ac
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.k

bb.aj:                                            ; preds = %bb.ah
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ak:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.al:                                            ; preds = %bb.ae
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.am:                                            ; preds = %bb.ag
end_hunk_12
begin_hunk_13_@_Z18test_exceptions_ndI14counting_valueLm10EEvv:bb.a
.noexc116:                                        ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit
  unreachable

bb.cu:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit115
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit unwind label %bb.k

bb.cw:                                            ; preds = %bb.cu
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.cx:                                            ; preds = %bb.cs
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.cy:                                            ; preds = %bb.ct
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.cz:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit
  %i.hs = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.ht = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hu = add i64 %i.ht, -1
  store i64 %i.hu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.15 = extractvalue { ptr, i32 } %i.hs, 1
  %.1543 = extractvalue { ptr, i32 } %i.hs, 0
  %i.hv = icmp eq i32 %.15, %i.h
  %i.hw = call ptr @__cxa_begin_catch(ptr %.1543) #25 ; 0 uses
  br i1 %i.hv, label %bb.da, label %bb.dd

bb.da:                                            ; preds = %bb.cz
  %i.hx = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.db unwind label %bb.dg     ; 0 uses

bb.db:                                            ; preds = %bb.da
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.dh

bb.dc:                                            ; preds = %bb.db, %bb.de
  %i.hy = load i64, ptr %i.c, align 8, !tbaa !1224 ; 2 uses
  %.not3.i.i126 = icmp eq i64 %i.hy, 0
  br i1 %.not3.i.i126, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit129, label %.lr.ph.preheader.i.i127

.lr.ph.preheader.i.i127:                          ; preds = %bb.dc
  %_ZZN14counting_value1cEvE2co.promoted.i.i128 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hz = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i128, %i.hy
  store i64 %i.hz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit129

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit129: ; preds = %bb.dc, %.lr.ph.preheader.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i130 = icmp eq i64 %i.ia, 0
  br i1 %.not3.i.i130, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i131

.lr.ph.preheader.i.i131:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit129
  %_ZZN14counting_value1cEvE2co.promoted.i.i132 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ib = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i132, %i.ia
  store i64 %i.ib, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit129, %.lr.ph.preheader.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret void

bb.dd:                                            ; preds = %bb.cz
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 452, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  invoke void @__cxa_end_catch()
          to label %bb.dc unwind label %bb.k

bb.df:                                            ; preds = %bb.dd
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.dg:                                            ; preds = %bb.da
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.dh:                                            ; preds = %bb.db
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.cy, %bb.cx, %bb.cp, %bb.co, %bb.ca, %bb.bz, %bb.bo, %bb.bn, %bb.az, %bb.ay, %bb.al, %bb.ak, %bb.z, %bb.y, %bb.m, %bb.l, %bb.df, %bb.cw, %bb.cn, %bb.by, %bb.bm, %bb.ax, %bb.aj, %bb.x, %bb.j, %bb.k
  %.pn79.pn = phi { ptr, i32 } [ %i.hq, %bb.cx ], [ %i.s, %bb.k ], [ %i.ic, %bb.df ], [ %i.hf, %bb.co ], [ %i.hp, %bb.cw ], [ %i.gr, %bb.bz ], [ %i.he, %bb.cn ], [ %i.fo, %bb.bn ], [ %i.gq, %bb.by ], [ %i.cb, %bb.ay ], [ %i.fn, %bb.bm ], [ %i.az, %bb.ak ], [ %i.ca, %bb.ax ], [ %i.aj, %bb.y ], [ %i.ay, %bb.aj ], [ %i.t, %bb.l ], [ %i.ai, %bb.x ], [ %i.r, %bb.j ], [ %i.u, %bb.m ], [ %i.ak, %bb.z ], [ %i.ba, %bb.al ], [ %i.cc, %bb.az ], [ %i.fp, %bb.bo ], [ %i.gs, %bb.ca ], [ %i.hg, %bb.cp ], [ %i.hr, %bb.cy ], [ %i.ie, %bb.dh ], [ %i.id, %bb.dg ]
  %i.if = load i64, ptr %i.c, align 8, !tbaa !1224 ; 2 uses
  %.not3.i.i133 = icmp eq i64 %i.if, 0
  br i1 %.not3.i.i133, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit136, label %.lr.ph.preheader.i.i134

.lr.ph.preheader.i.i134:                          ; preds = %bb.di
  %_ZZN14counting_value1cEvE2co.promoted.i.i135 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ig = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i135, %i.if
  store i64 %i.ig, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit136

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit136: ; preds = %.lr.ph.preheader.i.i134, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ih = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i137 = icmp eq i64 %i.ih, 0
  br i1 %.not3.i.i137, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140, label %.lr.ph.preheader.i.i138

.lr.ph.preheader.i.i138:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit136
  %_ZZN14counting_value1cEvE2co.promoted.i.i139 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ii = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i139, %i.ih
  store i64 %i.ii, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140: ; preds = %.lr.ph.preheader.i.i138, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvED2Ev.exit136
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn79.pn

bb.dj:                                            ; preds = %bb.dg, %bb.df, %bb.cx, %bb.cw, %bb.co, %bb.cn, %bb.bz, %bb.by, %bb.bn, %bb.bm, %bb.ay, %bb.ax, %bb.ak, %bb.aj, %bb.y, %bb.x, %bb.l, %bb.j
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit:
  %0 = alloca %"class.boost::container::static_vector.35", align 8 ; 16 uses
  %1 = alloca %"class.boost::container::static_vector.265", align 8 ; 21 uses
  %2 = alloca %"class.boost::container::static_vector.265", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.a = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  store i64 10, ptr %i.b, align 8, !tbaa !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 15 uses
  store i64 5, ptr %i.c, align 8, !tbaa !1306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false), !tbaa !82
  %i.d = add i32 %i.a, 16
  store i32 %i.d, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.a

.noexc:                                           ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  unreachable

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.e = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.0 = extractvalue { ptr, i32 } %i.e, 1
  %.028 = extractvalue { ptr, i32 } %i.e, 0
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.i = icmp eq i32 %.0, %i.h
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.028) #25 ; 0 uses
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.c unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.h
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.n = load i64, ptr %i.c, align 8, !tbaa !1308 ; 3 uses
  %.not.i = icmp eq i64 %i.n, 5
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.m

.noexc89:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  store i32 0, ptr %i.o, align 4, !tbaa !82
  %i.p = add nsw i64 %i.n, 1
  store i64 %i.p, ptr %i.c, align 8, !tbaa !1308
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.r unwind label %bb.n

bb.g:                                             ; preds = %bb.a
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 444, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.j:                                             ; preds = %bb.de, %bb.cv, %bb.cl, %bb.bw, %bb.bk, %bb.av, %bb.ah, %bb.v, %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.k:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.l:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.m:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn51 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %i.u, %bb.m ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn51, 1
  %.230 = extractvalue { ptr, i32 } %.pn51, 0
  %i.y = icmp eq i32 %.2, %i.h
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.230) #25 ; 0 uses
  br i1 %i.y, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.aa = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.q unwind label %bb.x       ; 0 uses

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q, %bb.v, %bb.f
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !1308, !noalias !1309 ; 3 uses
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i = icmp eq i64 %i.ab, 5
  br i1 %.not.i.i, label %bb.s, label %bb.t, !prof !42

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc91 unwind label %bb.z

.noexc91:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ae, align 4, !tbaa !82, !noalias !1310
  %i.af = add i64 %i.ab, 1
  store i64 %i.af, ptr %i.c, align 8, !tbaa !1308, !noalias !1310
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.ae unwind label %bb.aa

bb.u:                                             ; preds = %bb.o
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.j

bb.w:                                             ; preds = %bb.u
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.x:                                             ; preds = %bb.p
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.y:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.z:                                             ; preds = %bb.s
  %i.aj = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn55 = phi { ptr, i32 } [ %i.am, %bb.aa ], [ %i.aj, %bb.z ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn55, 1
  %.432 = extractvalue { ptr, i32 } %.pn55, 0
  %i.an = icmp eq i32 %.4, %i.h
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.an, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ap = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.ad unwind label %bb.aj     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ad, %bb.ah, %bb.t
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !1308, !noalias !1311 ; 3 uses
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i92 = icmp eq i64 %i.aq, 5
  br i1 %.not.i.i92, label %bb.af, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ae
  %i.at = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aq
  store i32 0, ptr %i.at, align 4, !tbaa !82, !noalias !1312
  %i.au = add i64 %i.aq, 1
  store i64 %i.au, ptr %i.c, align 8, !tbaa !1306, !noalias !1312
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.aq unwind label %bb.am

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc93 unwind label %bb.al

.noexc93:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ab
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.j

bb.ai:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.aj:                                            ; preds = %bb.ac
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.di unwind label %bb.dj

bb.ak:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.al:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
end_hunk_13
begin_hunk_14_@_Z12test_sv_elemIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_:.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !82
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.w, ptr %i.ae, align 4, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.y, ptr %i.af, align 8, !tbaa !82
  store i64 2, ptr %i.a, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 5, ptr %i.ag, align 8, !tbaa !139
  %i.ah = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.ah, ptr %2, align 8, !tbaa !82
  %i.ai = add i32 %.pre.i.i, 11
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !82
  %i.al = add i32 %.pre.i.i, 12
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.an, ptr %i.am, align 8, !tbaa !82
  %i.ao = add i32 %.pre.i.i, 13
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !82
  %i.ar = add i32 %.pre.i.i, 14
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.at, ptr %i.as, align 8, !tbaa !82
  %i.au = add i32 %.pre.i.i, 15
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS6_20insert_emplace_proxyIS8_JS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %2)
          to label %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit22 unwind label %bb.c

_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit22: ; preds = %.lr.ph.i.i.i
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i53 = icmp eq i64 %i.av, 0
  %.pre.i.i62.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  br i1 %.not3.i.i53, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit61, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit22
  %min.iters.check176 = icmp ult i64 %i.av, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i56.preheader237, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i56.preheader
  %n.vec178 = and i64 %i.av, -8                   ; 3 uses
  %i.aw = and i64 %i.av, 7
  %i.ax = shl i64 %n.vec178, 2
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next182, %vector.body179 ] ; 2 uses
  %i.az = shl i64 %index180, 2
  %next.gep181 = getelementptr i8, ptr %2, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep181, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ba, align 8, !tbaa !82
  %index.next182 = add nuw i64 %index180, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next182, %n.vec178
  br i1 %i.bb, label %middle.block183, label %vector.body179, !llvm.loop !1355

middle.block183:                                  ; preds = %vector.body179
  %cmp.n184 = icmp eq i64 %i.av, %n.vec178
  br i1 %cmp.n184, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i60, label %.lr.ph.i.i56.preheader237

.lr.ph.i.i56.preheader237:                        ; preds = %.lr.ph.i.i56.preheader, %middle.block183
  %.05.i.i57.ph = phi i64 [ %i.av, %.lr.ph.i.i56.preheader ], [ %i.aw, %middle.block183 ]
  %storemerge4.i.i58.ph = phi ptr [ %2, %.lr.ph.i.i56.preheader ], [ %i.ay, %middle.block183 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader237, %.lr.ph.i.i56
  %.05.i.i57 = phi i64 [ %i.bc, %.lr.ph.i.i56 ], [ %.05.i.i57.ph, %.lr.ph.i.i56.preheader237 ]
  %storemerge4.i.i58 = phi ptr [ %i.bd, %.lr.ph.i.i56 ], [ %storemerge4.i.i58.ph, %.lr.ph.i.i56.preheader237 ] ; 2 uses
  %i.bc = add i64 %.05.i.i57, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i58, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i58, i64 4
  %.not.i.i59 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i59, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i60, label %.lr.ph.i.i56, !llvm.loop !1356

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i60: ; preds = %.lr.ph.i.i56, %middle.block183
  %i.be = trunc i64 %i.av to i32
  %i.bf = sub i32 %.pre.i.i62.pre, %i.be          ; 2 uses
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit61

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit61: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit22, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i60
  %.pre.i.i62 = phi i32 [ %.pre.i.i62.pre, %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit22 ], [ %i.bf, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i60 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !180, !noalias !1370 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 5, ptr %i.bh, align 8, !tbaa !139
  %i.bi = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.bi, ptr %3, align 8, !tbaa !82
  %i.bj = add i32 %.pre.i.i62, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bl = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !82
  %i.bm = add i32 %.pre.i.i62, 2
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bo = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !82
  %i.bp = add i32 %.pre.i.i62, 3
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.br = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !82
  %i.bs = add i32 %.pre.i.i62, 4
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load i32, ptr %0, align 4, !tbaa !82
  store i32 %i.bu, ptr %i.bt, align 8, !tbaa !82
  %i.bv = add i32 %.pre.i.i62, 5
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not.i.i68 = icmp eq i64 %i.bg, 10
  br i1 %.not.i.i68, label %bb.a, label %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS6_20insert_emplace_proxyIS8_JS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEERKSE_mT_.exit.i69, !prof !42

bb.a:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit61
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc70 unwind label %bb.d

.noexc70:                                         ; preds = %bb.a
  unreachable

_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS6_20insert_emplace_proxyIS8_JS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEERKSE_mT_.exit.i69: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit61
  %i.bw = getelementptr inbounds [48 x i8], ptr %1, i64 %i.bg
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS6_20insert_emplace_proxyIS8_JS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %i.bw, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %3)
          to label %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit unwind label %bb.d

_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS6_20insert_emplace_proxyIS8_JS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEERKSE_mT_.exit.i69
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i73 = icmp eq i64 %i.bx, 0
  br i1 %.not3.i.i73, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit81, label %.lr.ph.i.preheader.i74

.lr.ph.i.preheader.i74:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i75 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check188 = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check188, label %.lr.ph.i.i76.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.preheader.i74
  %n.vec190 = and i64 %i.bx, -8                   ; 3 uses
  %i.by = and i64 %i.bx, 7
  %i.bz = shl i64 %n.vec190, 2
  %i.ca = getelementptr i8, ptr %3, i64 %i.bz
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next194, %vector.body191 ] ; 2 uses
  %i.cb = shl i64 %index192, 2
  %next.gep193 = getelementptr i8, ptr %3, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep193, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep193, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cc, align 8, !tbaa !82
  %index.next194 = add nuw i64 %index192, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next194, %n.vec190
  br i1 %i.cd, label %middle.block195, label %vector.body191, !llvm.loop !1359

middle.block195:                                  ; preds = %vector.body191
  %cmp.n196 = icmp eq i64 %i.bx, %n.vec190
  br i1 %cmp.n196, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i80, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %.lr.ph.i.preheader.i74, %middle.block195
  %.05.i.i77.ph = phi i64 [ %i.bx, %.lr.ph.i.preheader.i74 ], [ %i.by, %middle.block195 ]
  %storemerge4.i.i78.ph = phi ptr [ %3, %.lr.ph.i.preheader.i74 ], [ %i.ca, %middle.block195 ]
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.preheader, %.lr.ph.i.i76
  %.05.i.i77 = phi i64 [ %i.ce, %.lr.ph.i.i76 ], [ %.05.i.i77.ph, %.lr.ph.i.i76.preheader ]
  %storemerge4.i.i78 = phi ptr [ %i.cf, %.lr.ph.i.i76 ], [ %storemerge4.i.i78.ph, %.lr.ph.i.i76.preheader ] ; 2 uses
  %i.ce = add i64 %.05.i.i77, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i78, align 4, !tbaa !82
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i78, i64 4
  %.not.i.i79 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i79, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i80, label %.lr.ph.i.i76, !llvm.loop !1360

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i80: ; preds = %.lr.ph.i.i76, %middle.block195
  %i.cg = trunc i64 %i.bx to i32
  %i.ch = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i75, %i.cg
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit81

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit81: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS5_Lb1EEEOS5_.exit, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %.not.i82 = icmp eq i64 %i.ci, 10
  br i1 %.not.i82, label %bb.b, label %.lr.ph.i.preheader.i.i.i.i.i, !prof !42

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit81
  %i.cj = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i64 5, ptr %i.ck, align 8, !tbaa !139
  %.pre.i.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cl = add i32 %.pre.i.i.i.i.i, 5              ; 2 uses
  store i32 %i.cl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.cm = add nsw i64 %i.ci, 1
  br label %.lr.ph.i.i97

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit81
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc84 unwind label %bb.e

.noexc84:                                         ; preds = %bb.b
  unreachable

.lr.ph.i.i97:                                     ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %i.cn = phi i32 [ %i.db, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i ], [ %i.cl, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %.05.i.i98 = phi i64 [ %i.co, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i ], [ %i.cm, %.lr.ph.i.preheader.i.i.i.i.i ]
  %storemerge4.i.i99 = phi ptr [ %i.dc, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i ], [ %1, %.lr.ph.i.preheader.i.i.i.i.i ] ; 5 uses
  %i.co = add i64 %.05.i.i98, -1                  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i99, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i100.preheader

.lr.ph.i.i.i.i.i.i100.preheader:                  ; preds = %.lr.ph.i.i97
  %min.iters.check200 = icmp ult i64 %i.cq, 8
  br i1 %min.iters.check200, label %.lr.ph.i.i.i.i.i.i100.preheader236, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph.i.i.i.i.i.i100.preheader
  %n.vec202 = and i64 %i.cq, -8                   ; 3 uses
  %i.cr = and i64 %i.cq, 7
  %i.cs = shl i64 %n.vec202, 2
  %i.ct = getelementptr i8, ptr %storemerge4.i.i99, i64 %i.cs
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next206, %vector.body203 ] ; 2 uses
  %i.cu = shl i64 %index204, 2
  %next.gep205 = getelementptr i8, ptr %storemerge4.i.i99, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep205, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep205, align 4, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.cv, align 4, !tbaa !82
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next206, %n.vec202
  br i1 %i.cw, label %middle.block207, label %vector.body203, !llvm.loop !1361

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %i.cq, %n.vec202
  br i1 %cmp.n208, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i100.preheader236

.lr.ph.i.i.i.i.i.i100.preheader236:               ; preds = %.lr.ph.i.i.i.i.i.i100.preheader, %middle.block207
  %.05.i.i.i.i.i.i.ph = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.i100.preheader ], [ %i.cr, %middle.block207 ]
  %storemerge4.i.i.i.i.i.i.ph = phi ptr [ %storemerge4.i.i99, %.lr.ph.i.i.i.i.i.i100.preheader ], [ %i.ct, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i100:                            ; preds = %.lr.ph.i.i.i.i.i.i100.preheader236, %.lr.ph.i.i.i.i.i.i100
  %.05.i.i.i.i.i.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i.i100 ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i100.preheader236 ]
  %storemerge4.i.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i100 ], [ %storemerge4.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i100.preheader236 ] ; 2 uses
  %i.cx = add i64 %.05.i.i.i.i.i.i, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.i, align 4, !tbaa !82
  %i.cy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i.i101 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i101, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i100, !llvm.loop !1362

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i100, %middle.block207
  %i.cz = trunc i64 %i.cq to i32
  %i.da = sub i32 %i.cn, %i.cz                    ; 2 uses
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i, %.lr.ph.i.i97
  %i.db = phi i32 [ %i.da, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i.i.i.i.i ], [ %i.cn, %.lr.ph.i.i97 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i99, i64 48
  %.not.i.i102 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i102, label %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i97, !llvm.loop !1363

_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  %i.de = load i64, ptr %i.ag, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i112 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i112, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit120, label %.lr.ph.i.preheader.i113

.lr.ph.i.preheader.i113:                          ; preds = %bb.c
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i114 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.de, 8
  br i1 %min.iters.check, label %.lr.ph.i.i115.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i113
  %n.vec = and i64 %i.de, -8                      ; 3 uses
  %i.df = and i64 %i.de, 7
  %i.dg = shl i64 %n.vec, 2
  %i.dh = getelementptr i8, ptr %2, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.dj, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %.lr.ph.i.preheader.i113, %middle.block
  %.05.i.i116.ph = phi i64 [ %i.de, %.lr.ph.i.preheader.i113 ], [ %i.df, %middle.block ]
  %storemerge4.i.i117.ph = phi ptr [ %2, %.lr.ph.i.preheader.i113 ], [ %i.dh, %middle.block ]
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115
  %.05.i.i116 = phi i64 [ %i.dl, %.lr.ph.i.i115 ], [ %.05.i.i116.ph, %.lr.ph.i.i115.preheader ]
  %storemerge4.i.i117 = phi ptr [ %i.dm, %.lr.ph.i.i115 ], [ %storemerge4.i.i117.ph, %.lr.ph.i.i115.preheader ] ; 2 uses
  %i.dl = add i64 %.05.i.i116, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i117, align 4, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i117, i64 4
  %.not.i.i118 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i118, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, label %.lr.ph.i.i115, !llvm.loop !1365

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119: ; preds = %.lr.ph.i.i115, %middle.block
  %i.dn = trunc i64 %i.de to i32
  %i.do = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i114, %i.dn
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit120

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit120: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit138

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS6_20insert_emplace_proxyIS8_JS5_EEEEENS0_12vec_iteratorIPS5_Lb0EEERKSE_mT_.exit.i69, %bb.a
  %i.dp = landingpad { ptr, i32 }
          cleanup
  %i.dq = load i64, ptr %i.bh, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i121 = icmp eq i64 %i.dq, 0
  br i1 %.not3.i.i121, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit129, label %.lr.ph.i.preheader.i122

.lr.ph.i.preheader.i122:                          ; preds = %bb.d
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i123 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check212 = icmp ult i64 %i.dq, 8
  br i1 %min.iters.check212, label %.lr.ph.i.i124.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.lr.ph.i.preheader.i122
  %n.vec214 = and i64 %i.dq, -8                   ; 3 uses
  %i.dr = and i64 %i.dq, 7
  %i.ds = shl i64 %n.vec214, 2
  %i.dt = getelementptr i8, ptr %3, i64 %i.ds
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.du = shl i64 %index216, 2
  %next.gep217 = getelementptr i8, ptr %3, i64 %i.du ; 2 uses
  %i.dv = getelementptr i8, ptr %next.gep217, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep217, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.dv, align 8, !tbaa !82
  %index.next218 = add nuw i64 %index216, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next218, %n.vec214
  br i1 %i.dw, label %middle.block219, label %vector.body215, !llvm.loop !1366

middle.block219:                                  ; preds = %vector.body215
  %cmp.n220 = icmp eq i64 %i.dq, %n.vec214
  br i1 %cmp.n220, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i128, label %.lr.ph.i.i124.preheader

.lr.ph.i.i124.preheader:                          ; preds = %.lr.ph.i.preheader.i122, %middle.block219
  %.05.i.i125.ph = phi i64 [ %i.dq, %.lr.ph.i.preheader.i122 ], [ %i.dr, %middle.block219 ]
  %storemerge4.i.i126.ph = phi ptr [ %3, %.lr.ph.i.preheader.i122 ], [ %i.dt, %middle.block219 ]
  br label %.lr.ph.i.i124

.lr.ph.i.i124:                                    ; preds = %.lr.ph.i.i124.preheader, %.lr.ph.i.i124
  %.05.i.i125 = phi i64 [ %i.dx, %.lr.ph.i.i124 ], [ %.05.i.i125.ph, %.lr.ph.i.i124.preheader ]
  %storemerge4.i.i126 = phi ptr [ %i.dy, %.lr.ph.i.i124 ], [ %storemerge4.i.i126.ph, %.lr.ph.i.i124.preheader ] ; 2 uses
  %i.dx = add i64 %.05.i.i125, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i126, align 4, !tbaa !82
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i126, i64 4
  %.not.i.i127 = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i127, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i128, label %.lr.ph.i.i124, !llvm.loop !1367

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i128: ; preds = %.lr.ph.i.i124, %middle.block219
  %i.dz = trunc i64 %i.dq to i32
  %i.ea = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i123, %i.dz
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit129

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit129: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i128, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit138

bb.e:                                             ; preds = %bb.b
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit138

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit138: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit129, %bb.e
  %.pn17 = phi { ptr, i32 } [ %i.eb, %bb.e ], [ %i.dp, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit129 ], [ %i.dd, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit120 ]
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !180 ; 2 uses
  %.not3.i.i139 = icmp eq i64 %i.ec, 0
end_hunk_14
