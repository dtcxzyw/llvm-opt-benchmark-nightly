Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z12test_ctor_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm:bb.a
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

bb.r:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.y unwind label %bb.z

bb.s:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i24

bb.u:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i24

bb.v:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i24

bb.w:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i24

bb.x:                                             ; preds = %bb.j
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.x
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.w, %.thread ]
  %min.iters.check43 = icmp ult i64 %0, 8
  br i1 %min.iters.check43, label %.lr.ph.i.i.preheader, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec45 = and i64 %0, 8                        ; 3 uses
  %i.am = and i64 %0, 7
  %i.an = shl nuw nsw i64 %n.vec45, 2
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next49, %vector.body46 ] ; 2 uses
  %i.ap = shl i64 %index47, 2
  %next.gep48 = getelementptr i8, ptr %1, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep48, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.aq, align 8, !tbaa !82
  %index.next49 = add nuw i64 %index47, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next49, %n.vec45
  br i1 %i.ar, label %middle.block50, label %vector.body46, !llvm.loop !277

middle.block50:                                   ; preds = %vector.body46
  %cmp.n51 = icmp eq i64 %0, %n.vec45
  br i1 %cmp.n51, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block50
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.am, %middle.block50 ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.ao, %middle.block50 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.as = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i22 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i22, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !278

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block50
  %i.au = trunc nuw nsw i64 %0 to i32
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.x, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.y:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.y, %bb.r ], [ %i.x, %bb.q ], [ %i.g, %bb.f ], [ %i.z, %bb.s ] ; 2 uses
  br i1 %.not14.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31, label %..lr.ph.i.preheader.i24_crit_edge

..lr.ph.i.preheader.i24_crit_edge:                ; preds = %bb.y
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i24

.lr.ph.i.preheader.i24:                           ; preds = %..lr.ph.i.preheader.i24_crit_edge, %bb.t, %bb.u, %bb.v, %bb.w
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25 = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25.pre, %..lr.ph.i.preheader.i24_crit_edge ], [ %i.ac, %bb.t ], [ %i.af, %bb.u ], [ %i.ai, %bb.v ], [ %i.al, %bb.w ]
  %.pn1137 = phi { ptr, i32 } [ %.pn11, %..lr.ph.i.preheader.i24_crit_edge ], [ %i.aa, %bb.t ], [ %i.ad, %bb.u ], [ %i.ag, %bb.v ], [ %i.aj, %bb.w ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i26.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i24
  %n.vec = and i64 %0, 8                          ; 3 uses
  %i.aw = and i64 %0, 7
  %i.ax = shl nuw nsw i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ba, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %.lr.ph.i.preheader.i24, %middle.block
  %.05.i.i27.ph = phi i64 [ %0, %.lr.ph.i.preheader.i24 ], [ %i.aw, %middle.block ]
  %storemerge4.i.i28.ph = phi ptr [ %1, %.lr.ph.i.preheader.i24 ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %.lr.ph.i.i26
  %.05.i.i27 = phi i64 [ %i.bc, %.lr.ph.i.i26 ], [ %.05.i.i27.ph, %.lr.ph.i.i26.preheader ]
  %storemerge4.i.i28 = phi ptr [ %i.bd, %.lr.ph.i.i26 ], [ %storemerge4.i.i28.ph, %.lr.ph.i.i26.preheader ] ; 2 uses
  %i.bc = add i64 %.05.i.i27, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i28, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i28, i64 4
  %.not.i.i29 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i29, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30, label %.lr.ph.i.i26, !llvm.loop !280

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30: ; preds = %.lr.ph.i.i26, %middle.block
  %i.be = trunc nuw nsw i64 %0 to i32
  %i.bf = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i25, %i.be
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit31: ; preds = %bb.y, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30
  %.pn1138 = phi { ptr, i32 } [ %.pn11, %bb.y ], [ %.pn1137, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn1138

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #26
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
  %.pre.i.i.i = load i32, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %.017.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.b = add i64 %.017.i.i.i.prol, -1             ; 2 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i.prol, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !281

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.017.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i ], [ %i.b, %.lr.ph.i.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i ], [ %i.c, %.lr.ph.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %_ZN5boost9container13static_vectorIiLm10EvEC2EmRKi.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  store i32 %.pre.i.i.i, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  store i32 %.pre.i.i.i, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  store i32 %.pre.i.i.i, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 20
  store i32 %.pre.i.i.i, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 24
  store i32 %.pre.i.i.i, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 28
  %i.l = add i64 %.017.i.i.i, -8                  ; 2 uses
  store i32 %.pre.i.i.i, ptr %i.k, align 4, !tbaa !41
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
  %i.x = load i32, ptr %1, align 4, !tbaa !41
  %i.y = load i32, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !41
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !41
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
  br i1 %.not15.i.i.i, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %.pre.i.i.i = load i32, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %.017.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.b = add i64 %.017.i.i.i.prol, -1             ; 2 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i.prol, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !282

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.017.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i ], [ %i.b, %.lr.ph.i.i.i.prol ]
  %.01416.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i ], [ %i.c, %.lr.ph.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ %.017.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.01416.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i, ptr %.01416.i.i.i, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  store i32 %.pre.i.i.i, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  store i32 %.pre.i.i.i, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  store i32 %.pre.i.i.i, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  store i32 %.pre.i.i.i, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 20
  store i32 %.pre.i.i.i, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 24
  store i32 %.pre.i.i.i, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 28
  %i.l = add i64 %.017.i.i.i, -8                  ; 2 uses
  store i32 %.pre.i.i.i, ptr %i.k, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.7, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2EmRKS2_.exit
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
  br i1 %i.w, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20, label %bb.i

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20: ; preds = %bb.e
  %i.x = load i32, ptr %1, align 4, !tbaa !77
  %i.y = load i32, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !77
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %1, align 4, !tbaa !77
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !77 ; 2 uses
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !77
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI8value_ndLm10EEvmRKT_)
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

bb.i:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20, %bb.e
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
define linkonce_odr hidden void @_Z12test_ctor_ndI14counting_valueLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i: ; preds = %bb.a
  %.not15.i.i.i = icmp eq i64 %0, 0               ; 3 uses
  br i1 %.not15.i.i.i, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2EmRKS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.017.i.i.i.prol = phi i64 [ %i.c, %.prol.preheader ], [ %0, %.lr.ph.i.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.d, %.prol.preheader ], [ %2, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.c = add i64 %.017.i.i.i.prol, -1             ; 2 uses
  store <2 x i32> %i.b, ptr %.01416.i.i.i.prol, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !283

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.017.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.i.i ], [ %i.c, %.prol.preheader ]
  %.01416.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i ], [ %i.d, %.prol.preheader ]
  %i.e = icmp ult i64 %0, 8
  br i1 %i.e, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.017.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.new ], [ %.017.i.i.i.unr, %.prol.loopexit ]
  %.01416.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.new ], [ %.01416.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  store <2 x i32> %i.b, ptr %.01416.i.i.i, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  store <2 x i32> %i.b, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  store <2 x i32> %i.b, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 24
  store <2 x i32> %i.b, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 32
  store <2 x i32> %i.b, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 40
  store <2 x i32> %i.b, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 48
  store <2 x i32> %i.b, ptr %i.k, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 56
  %i.m = add i64 %.017.i.i.i, -8                  ; 2 uses
  store <2 x i32> %i.b, ptr %i.l, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 64
  %.not.i.i.i.7 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.new, !llvm.loop !3

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %i.o = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, %0
  store i64 %i.o, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2EmRKS2_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2EmRKS2_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i, %._crit_edge.i.i.i
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2EmRKS2_.exit
  %i.q = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.q, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit23, %bb.k, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20, %bb.j, %bb.c, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2EmRKS2_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = extractvalue { ptr, i32 } %i.s, 1
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.w = icmp eq i32 %i.u, %i.v
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #25 ; 0 uses
  br i1 %i.w, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.y = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.h unwind label %bb.s       ; 0 uses

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h, %bb.q
  %i.z = icmp samesign ugt i64 %0, 1
  br i1 %i.z, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.aa = load i32, ptr %1, align 4, !tbaa !79
  %i.ab = load i32, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ac, i1 %i.ah, i1 false
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ai)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20 unwind label %bb.e ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20: ; preds = %bb.j
  %i.ak = load i32, ptr %1, align 4, !tbaa !79
  %i.al = icmp eq i32 %i.ak, %i.ab
  %i.am = load i32, ptr %i.ad, align 4
  %i.an = icmp eq i32 %i.am, %i.ag
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ao)
          to label %bb.k unwind label %bb.e       ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit20
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %1, align 4, !tbaa !79
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = load i32, ptr %i.ad, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp eq i32 %i.au, %i.aw
  %i.ay = select i1 %i.at, i1 %i.ax, i1 false
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ay)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit23 unwind label %bb.e ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit23: ; preds = %bb.k
  %i.ba = load i32, ptr %1, align 4, !tbaa !79
  %i.bb = icmp eq i32 %i.ba, %i.as
  %i.bc = load i32, ptr %i.ad, align 4
  %i.bd = icmp eq i32 %i.bc, %i.aw
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  %i.bf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.be)
          to label %bb.l unwind label %bb.e       ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit23
  %i.bg = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %bb.x    ; 0 uses

.thread:                                          ; preds = %bb.o
  %i.bm = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  store i64 %i.bn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i

bb.p:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndI14counting_valueLm10EEvmRKT_)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.e

bb.r:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.s:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.t:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i34.sink.split

bb.v:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i34.sink.split

bb.w:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i34.sink.split

bb.x:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i34.sink.split

bb.y:                                             ; preds = %bb.i
  br i1 %.not15.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.preheader.i.i_crit_edge

..lr.ph.preheader.i.i_crit_edge:                  ; preds = %bb.y
  %_ZZN14counting_value1cEvE2co.promoted.i.i.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %..lr.ph.preheader.i.i_crit_edge, %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %..lr.ph.preheader.i.i_crit_edge ], [ %i.bn, %.thread ]
  %i.bv = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %0
  store i64 %i.bv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.y, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.e
  %.pn16 = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %i.r, %bb.e ], [ %i.bp, %bb.s ], [ %i.bo, %bb.r ] ; 2 uses
  br i1 %.not15.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit36, label %.lr.ph.preheader.i.i34

.lr.ph.preheader.i.i34.sink.split:                ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.pn1649.ph = phi { ptr, i32 } [ %i.bu, %bb.x ], [ %i.bt, %bb.w ], [ %i.bs, %bb.v ], [ %i.br, %bb.u ]
  %i.bw = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bx = add i64 %i.bw, -1
  store i64 %i.bx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i34

.lr.ph.preheader.i.i34:                           ; preds = %.lr.ph.preheader.i.i34.sink.split, %bb.z
  %.pn1649 = phi { ptr, i32 } [ %.pn16, %bb.z ], [ %.pn1649.ph, %.lr.ph.preheader.i.i34.sink.split ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i35 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.by = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i35, %0
  store i64 %i.by, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit36

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit36: ; preds = %bb.z, %.lr.ph.preheader.i.i34
  %.pn1650 = phi { ptr, i32 } [ %.pn16, %bb.z ], [ %.pn1649, %.lr.ph.preheader.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn1650

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
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
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %i.b = phi i32 [ %i.e, %.lr.ph.i.i.i.prol ], [ %.pre.i.i, %.lr.ph.i.preheader.i.i ]
  %.017.i.i.i.prol = phi i64 [ %i.c, %.lr.ph.i.i.i.prol ], [ %0, %.lr.ph.i.preheader.i.i ]
  %.01416.i.i.i.prol = phi ptr [ %i.f, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.c = add i64 %.017.i.i.i.prol, -1             ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.d, ptr %.01416.i.i.i.prol, align 4, !tbaa !82
  %i.e = add i32 %i.b, 1                          ; 3 uses
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !284

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
  %i.i = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.i, ptr %.01416.i.i.i, align 4, !tbaa !82
  %i.j = add i32 %i.h, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 4
  %i.l = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.l, ptr %i.k, align 4, !tbaa !82
  %i.m = add i32 %i.h, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 8
  %i.o = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.o, ptr %i.n, align 4, !tbaa !82
  %i.p = add i32 %i.h, 3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 12
  %i.r = add i64 %.017.i.i.i, -4                  ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.s, ptr %i.q, align 4, !tbaa !82
  %i.t = add i32 %i.h, 4                          ; 2 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2ENS0_27vector_uninitialized_size_tEm.exit.i.i
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 56, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.q, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23, %bb.k, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20, %bb.j, %bb.c, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2EmRKS3_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.f:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = extractvalue { ptr, i32 } %i.y, 1
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.z) #25 ; 0 uses
  br i1 %i.ac, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.h unwind label %bb.s       ; 0 uses

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h, %bb.q
  %i.af = icmp samesign ugt i64 %0, 1
  br i1 %i.af, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %1, align 4, !tbaa !82
  %i.ah = load i32, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ai)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20 unwind label %bb.e ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20: ; preds = %bb.j
  %i.ak = load i32, ptr %1, align 4, !tbaa !82
  %i.al = icmp eq i32 %i.ak, %i.ah
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.al)
          to label %bb.k unwind label %bb.e       ; 0 uses

bb.k:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %1, align 4, !tbaa !82
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !82 ; 2 uses
  %i.aq = icmp eq i32 %i.ao, %i.ap
  %i.ar = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.aq)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23 unwind label %bb.e ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23: ; preds = %bb.k
  %i.as = load i32, ptr %1, align 4, !tbaa !82
  %i.at = icmp eq i32 %i.as, %i.ap
  %i.au = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.at)
          to label %bb.l unwind label %bb.e       ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit23
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.u       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ay = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 69, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %bb.x    ; 0 uses

.thread:                                          ; preds = %bb.o
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

bb.p:                                             ; preds = %bb.f
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 58, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_ctor_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.e

bb.r:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.s:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.t:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i35.sink.split

bb.v:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i35.sink.split

bb.w:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i35.sink.split

bb.x:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i35.sink.split

bb.y:                                             ; preds = %bb.i
  br i1 %.not15.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.y
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.bc, %.thread ]
  %min.iters.check56 = icmp ult i64 %0, 8
  br i1 %min.iters.check56, label %.lr.ph.i.i.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.i.preheader.i
  %n.vec58 = and i64 %0, 8                        ; 3 uses
  %i.bk = and i64 %0, 7
  %i.bl = shl nuw nsw i64 %n.vec58, 2
  %i.bm = getelementptr i8, ptr %2, i64 %i.bl
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next62, %vector.body59 ] ; 2 uses
  %i.bn = shl i64 %index60, 2
  %next.gep61 = getelementptr i8, ptr %2, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep61, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep61, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bo, align 8, !tbaa !82
  %index.next62 = add nuw i64 %index60, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.bp, label %middle.block63, label %vector.body59, !llvm.loop !285

middle.block63:                                   ; preds = %vector.body59
  %cmp.n64 = icmp eq i64 %0, %n.vec58
  br i1 %cmp.n64, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block63
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.bk, %middle.block63 ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.bm, %middle.block63 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.bq, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bq = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i33 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i33, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !286

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block63
  %i.bs = trunc nuw nsw i64 %0 to i32
  %i.bt = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bs
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
end_hunk_0
begin_hunk_1_@_Z14test_resize_ncIN5boost9container4test24movable_and_copyable_intELm10EEvm:bb.a
bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.g

bb.r:                                             ; preds = %bb.p
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.s:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.t:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i25.sink.split

bb.v:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i25.sink.split

bb.w:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i25.sink.split

bb.x:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i25.sink.split

bb.y:                                             ; preds = %bb.k
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.y
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.w, %.thread ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %0, 8                          ; 3 uses
  %i.ae = and i64 %0, 7
  %i.af = shl nuw nsw i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %1, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ai, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.ae, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ak, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ak = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i23 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i23, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !290

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %i.am = trunc nuw nsw i64 %0 to i32
  %i.an = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.am
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.y, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.g
  %i.ao = phi i64 [ %0, %bb.s ], [ %0, %bb.r ], [ %i.f, %bb.g ], [ %0, %bb.t ] ; 2 uses
  %.pn11 = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.x, %bb.r ], [ %i.g, %bb.g ], [ %i.z, %bb.t ] ; 2 uses
  %.not3.i.i24 = icmp eq i64 %i.ao, 0
  br i1 %.not3.i.i24, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32, label %.lr.ph.i.preheader.i25

.lr.ph.i.preheader.i25.sink.split:                ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.pn1142.ph = phi { ptr, i32 } [ %i.ad, %bb.x ], [ %i.ac, %bb.w ], [ %i.ab, %bb.v ], [ %i.aa, %bb.u ]
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i25

.lr.ph.i.preheader.i25:                           ; preds = %.lr.ph.i.preheader.i25.sink.split, %bb.z
  %.pn1142 = phi { ptr, i32 } [ %.pn11, %bb.z ], [ %.pn1142.ph, %.lr.ph.i.preheader.i25.sink.split ]
  %i.ar = phi i64 [ %i.ao, %bb.z ], [ %0, %.lr.ph.i.preheader.i25.sink.split ] ; 6 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i26 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check47 = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check47, label %.lr.ph.i.i27.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.preheader.i25
  %n.vec49 = and i64 %i.ar, -8                    ; 3 uses
  %i.as = and i64 %i.ar, 7
  %i.at = shl i64 %n.vec49, 2
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.av = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep52, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.aw, align 8, !tbaa !82
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next53, %n.vec49
  br i1 %i.ax, label %middle.block54, label %vector.body50, !llvm.loop !291

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %i.ar, %n.vec49
  br i1 %cmp.n55, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31, label %.lr.ph.i.i27.preheader

.lr.ph.i.i27.preheader:                           ; preds = %.lr.ph.i.preheader.i25, %middle.block54
  %.05.i.i28.ph = phi i64 [ %i.ar, %.lr.ph.i.preheader.i25 ], [ %i.as, %middle.block54 ]
  %storemerge4.i.i29.ph = phi ptr [ %1, %.lr.ph.i.preheader.i25 ], [ %i.au, %middle.block54 ]
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %.lr.ph.i.i27
  %.05.i.i28 = phi i64 [ %i.ay, %.lr.ph.i.i27 ], [ %.05.i.i28.ph, %.lr.ph.i.i27.preheader ]
  %storemerge4.i.i29 = phi ptr [ %i.az, %.lr.ph.i.i27 ], [ %storemerge4.i.i29.ph, %.lr.ph.i.i27.preheader ] ; 2 uses
  %i.ay = add i64 %.05.i.i28, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i29, align 4, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i29, i64 4
  %.not.i.i30 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i30, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31, label %.lr.ph.i.i27, !llvm.loop !292

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31: ; preds = %.lr.ph.i.i27, %middle.block54
  %i.ba = trunc nuw nsw i64 %i.ar to i32
  %i.bb = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i26, %i.ba
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit32: ; preds = %bb.z, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31
  %.pn1143 = phi { ptr, i32 } [ %.pn11, %bb.z ], [ %.pn1142, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn1143

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #26
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
  %.pre.i.i.i.i = load i32, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i.i ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.b = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !293

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.017.i.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  store i32 %.pre.i.i.i.i, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  store i32 %.pre.i.i.i.i, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  store i32 %.pre.i.i.i.i, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  store i32 %.pre.i.i.i.i, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 20
  store i32 %.pre.i.i.i.i, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 24
  store i32 %.pre.i.i.i.i, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 28
  %i.l = add i64 %.017.i.i.i.i, -8                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %i.k, align 4, !tbaa !41
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
  %i.x = load i32, ptr %1, align 4, !tbaa !41
  %i.y = load i32, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !41
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = load i32, ptr %1, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41 ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIiLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !41
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.b
  %.pre.i.i.i.i = load i32, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.b, %.lr.ph.i.i.i.i.prol ], [ %0, %.lr.ph.preheader.i.i.i.i ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.c, %.lr.ph.i.i.i.i.prol ], [ %2, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.b = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !294

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.017.i.i.i.i.unr = phi i64 [ %0, %.lr.ph.preheader.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.prol ]
  %i.d = icmp ult i64 %0, 8
  br i1 %i.d, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  store i32 %.pre.i.i.i.i, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  store i32 %.pre.i.i.i.i, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  store i32 %.pre.i.i.i.i, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  store i32 %.pre.i.i.i.i, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 20
  store i32 %.pre.i.i.i.i, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 24
  store i32 %.pre.i.i.i.i, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 28
  %i.l = add i64 %.017.i.i.i.i, -8                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %i.k, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 32
  %.not.i.i.i.i.7 = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
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
  br i1 %i.w, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21, label %bb.i

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21: ; preds = %bb.e
  %i.x = load i32, ptr %1, align 4, !tbaa !77
  %i.y = load i32, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !77
  %i.ac = icmp eq i32 %i.ab, %i.y
  %i.ad = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = load i32, ptr %1, align 4, !tbaa !77
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !77 ; 2 uses
  %i.ah = icmp eq i32 %i.af, %i.ag
  %i.ai = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ah) ; 0 uses
  %i.aj = load i32, ptr %1, align 4, !tbaa !77
  %i.ak = icmp eq i32 %i.aj, %i.ag
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_, i1 noundef zeroext true) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI8value_ndLm10EEvmRKT_)
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

bb.i:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21, %bb.e
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
define linkonce_odr hidden void @_Z14test_resize_ndI14counting_valueLm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not15.i.i.i.i = icmp eq i64 %0, 0             ; 2 uses
  br i1 %.not15.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %_ZZN14counting_value1cEvE2co.promoted.i.i11.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !41 ; 9 uses
  %xtraiter = and i64 %0, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i, %.prol.preheader
  %.017.i.i.i.i.prol = phi i64 [ %i.c, %.prol.preheader ], [ %0, %.lr.ph.i.i.i.i ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.d, %.prol.preheader ], [ %2, %.lr.ph.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i ]
  %i.c = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  store <2 x i32> %i.b, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !295

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i
  %.017.i.i.i.i.unr = phi i64 [ %0, %.lr.ph.i.i.i.i ], [ %i.c, %.prol.preheader ]
  %.01416.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i ], [ %i.d, %.prol.preheader ]
  %i.e = icmp ult i64 %0, 8
  br i1 %i.e, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.sink.split.i.i, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.new
  %.017.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.new ], [ %.017.i.i.i.i.unr, %.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.new ], [ %.01416.i.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  store <2 x i32> %i.b, ptr %.01416.i.i.i.i, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  store <2 x i32> %i.b, ptr %i.f, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  store <2 x i32> %i.b, ptr %i.g, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 24
  store <2 x i32> %i.b, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 32
  store <2 x i32> %i.b, ptr %i.i, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 40
  store <2 x i32> %i.b, ptr %i.j, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 48
  store <2 x i32> %i.b, ptr %i.k, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 56
  %i.m = add i64 %.017.i.i.i.i, -8                ; 2 uses
  store <2 x i32> %i.b, ptr %i.l, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 64
  %.not.i.i.i.i.7 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.sink.split.i.i, label %.lr.ph.i.i.i.i.new, !llvm.loop !3

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.sink.split.i.i: ; preds = %.lr.ph.i.i.i.i.new, %.prol.loopexit
  %.sink.i.i = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i11.i.i, %0
  store i64 %.sink.i.i, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.sink.split.i.i, %bb.c
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.s, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit24, %bb.m, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21, %bb.l, %bb.e, %bb.d
  %i.q = phi i64 [ 0, %bb.b ], [ %0, %bb.s ], [ %0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit24 ], [ %0, %bb.m ], [ %0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21 ], [ %0, %bb.l ], [ %0, %bb.e ], [ %0, %bb.d ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = extractvalue { ptr, i32 } %i.s, 1
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.w = icmp eq i32 %i.u, %i.v
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.t) #25 ; 0 uses
  br i1 %i.w, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.y = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.j unwind label %bb.u       ; 0 uses

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.v

bb.k:                                             ; preds = %bb.j, %bb.s
  %i.z = icmp samesign ugt i64 %0, 1
  br i1 %i.z, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.aa = load i32, ptr %1, align 4, !tbaa !79
  %i.ab = load i32, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ac, i1 %i.ah, i1 false
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ai)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21 unwind label %bb.g ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21: ; preds = %bb.l
  %i.ak = load i32, ptr %1, align 4, !tbaa !79
  %i.al = icmp eq i32 %i.ak, %i.ab
  %i.am = load i32, ptr %i.ad, align 4
  %i.an = icmp eq i32 %i.am, %i.ag
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ao)
          to label %bb.m unwind label %bb.g       ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit21
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %1, align 4, !tbaa !79
  %i.as = load i32, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %i.at = icmp eq i32 %i.ar, %i.as
  %i.au = load i32, ptr %i.ad, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = icmp eq i32 %i.au, %i.aw
  %i.ay = select i1 %i.at, i1 %i.ax, i1 false
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.ay)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit24 unwind label %bb.g ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit24: ; preds = %bb.m
  %i.ba = load i32, ptr %1, align 4, !tbaa !79
  %i.bb = icmp eq i32 %i.ba, %i.as
  %i.bc = load i32, ptr %i.ad, align 4
  %i.bd = icmp eq i32 %i.bc, %i.aw
  %i.be = select i1 %i.bb, i1 %i.bd, i1 false
  %i.bf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext %i.be)
          to label %bb.n unwind label %bb.g       ; 0 uses

bb.n:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE2atEm.exit24
  %i.bg = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.x       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.y       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %bb.z    ; 0 uses

.thread:                                          ; preds = %bb.q
  %i.bm = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bn = add i64 %i.bm, -1                       ; 2 uses
  store i64 %i.bn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i

bb.r:                                             ; preds = %bb.h
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndI14counting_valueLm10EEvmRKT_)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.g

bb.t:                                             ; preds = %bb.r
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.u:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.v:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i35.sink.split

bb.x:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i35.sink.split

bb.y:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i35.sink.split

bb.z:                                             ; preds = %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i35.sink.split

bb.aa:                                            ; preds = %bb.k
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.preheader.i.i_crit_edge

..lr.ph.preheader.i.i_crit_edge:                  ; preds = %bb.aa
  %_ZZN14counting_value1cEvE2co.promoted.i.i.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %..lr.ph.preheader.i.i_crit_edge, %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %..lr.ph.preheader.i.i_crit_edge ], [ %i.bn, %.thread ]
  %i.bv = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %0
  store i64 %i.bv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.aa, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.g
  %i.bw = phi i64 [ %0, %bb.v ], [ %i.q, %bb.g ], [ %0, %bb.u ], [ %0, %bb.t ] ; 2 uses
  %.pn16 = phi { ptr, i32 } [ %i.bq, %bb.v ], [ %i.r, %bb.g ], [ %i.bp, %bb.u ], [ %i.bo, %bb.t ] ; 2 uses
  %.not3.i.i34 = icmp eq i64 %i.bw, 0
  br i1 %.not3.i.i34, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, label %.lr.ph.preheader.i.i35

.lr.ph.preheader.i.i35.sink.split:                ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.pn1653.ph = phi { ptr, i32 } [ %i.bu, %bb.z ], [ %i.bt, %bb.y ], [ %i.bs, %bb.x ], [ %i.br, %bb.w ]
  %i.bx = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i35

.lr.ph.preheader.i.i35:                           ; preds = %.lr.ph.preheader.i.i35.sink.split, %bb.ab
  %.pn1653 = phi { ptr, i32 } [ %.pn16, %bb.ab ], [ %.pn1653.ph, %.lr.ph.preheader.i.i35.sink.split ]
  %i.bz = phi i64 [ %i.bw, %bb.ab ], [ %0, %.lr.ph.preheader.i.i35.sink.split ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i36 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ca = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i36, %i.bz
  store i64 %i.ca, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37: ; preds = %bb.ab, %.lr.ph.preheader.i.i35
  %.pn1654 = phi { ptr, i32 } [ %.pn16, %bb.ab ], [ %.pn1653, %.lr.ph.preheader.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn1654

bb.ac:                                            ; preds = %bb.u, %bb.t
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_(i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = icmp ugt i64 %0, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not15.i.i.i.i = icmp eq i64 %0, 0             ; 2 uses
  br i1 %.not15.i.i.i.i, label %.loopexit, label %.lr.ph.i.i11.i.i.preheader

.lr.ph.i.i11.i.i.preheader:                       ; preds = %bb.c
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %xtraiter = and i64 %0, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol

.lr.ph.i.i11.i.i.prol:                            ; preds = %.lr.ph.i.i11.i.i.preheader, %.lr.ph.i.i11.i.i.prol
  %i.b = phi i32 [ %i.e, %.lr.ph.i.i11.i.i.prol ], [ %.pre, %.lr.ph.i.i11.i.i.preheader ]
  %.017.i.i.i.i.prol = phi i64 [ %i.c, %.lr.ph.i.i11.i.i.prol ], [ %0, %.lr.ph.i.i11.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.f, %.lr.ph.i.i11.i.i.prol ], [ %2, %.lr.ph.i.i11.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.preheader ]
  %i.c = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.d, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !82
  %i.e = add i32 %i.b, 1                          ; 3 uses
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.prol, !llvm.loop !296

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
  %i.i = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.i, ptr %.01416.i.i.i.i, align 4, !tbaa !82
  %i.j = add i32 %i.h, 1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.l = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.l, ptr %i.k, align 4, !tbaa !82
  %i.m = add i32 %i.h, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.o = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.o, ptr %i.n, align 4, !tbaa !82
  %i.p = add i32 %i.h, 3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.r = add i64 %.017.i.i.i.i, -4                ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !82
  store i32 %i.s, ptr %i.q, align 4, !tbaa !82
  %i.t = add i32 %i.h, 4                          ; 2 uses
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i12.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i12.i.i.3, label %.loopexit, label %.lr.ph.i.i11.i.i, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.i.prol.loopexit, %.lr.ph.i.i11.i.i, %bb.c
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %.loopexit
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.44) #24
          to label %.noexc18 unwind label %bb.g

.noexc18:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.r, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24, %bb.l, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21, %bb.k, %bb.d, %.loopexit
  %i.x = phi i64 [ 0, %bb.b ], [ %0, %bb.r ], [ %0, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24 ], [ %0, %bb.l ], [ %0, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21 ], [ %0, %bb.k ], [ %0, %bb.d ], [ %0, %.loopexit ]
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container12out_of_rangeE
          catch ptr null                          ; 2 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  %i.ab = extractvalue { ptr, i32 } %i.z, 1
  %i.ac = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container12out_of_rangeE) #25
  %i.ad = icmp eq i32 %i.ab, %i.ac
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.aa) #25 ; 0 uses
  br i1 %i.ad, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.i unwind label %bb.t       ; 0 uses

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.u

bb.j:                                             ; preds = %bb.i, %bb.r
  %i.ag = icmp samesign ugt i64 %0, 1
  br i1 %i.ag, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %1, align 4, !tbaa !82
  %i.ai = load i32, ptr %2, align 8, !tbaa !82    ; 2 uses
  %i.aj = icmp eq i32 %i.ah, %i.ai
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.aj)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21 unwind label %bb.f ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21: ; preds = %bb.k
  %i.al = load i32, ptr %1, align 4, !tbaa !82
  %i.am = icmp eq i32 %i.al, %i.ai
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.am)
          to label %bb.l unwind label %bb.f       ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit21
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %1, align 4, !tbaa !82
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !82 ; 2 uses
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.ar)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24 unwind label %bb.f ; 0 uses

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24: ; preds = %bb.l
  %i.at = load i32, ptr %1, align 4, !tbaa !82
  %i.au = icmp eq i32 %i.at, %i.aq
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext %i.au)
          to label %bb.m unwind label %bb.f       ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE2atEm.exit24
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ay = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.v       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.x       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 150, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_, i1 noundef zeroext true)
          to label %.thread unwind label %bb.y    ; 0 uses

.thread:                                          ; preds = %bb.p
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

bb.q:                                             ; preds = %bb.g
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_resize_ndIN5boost9container4test24movable_and_copyable_intELm10EEvmRKT_)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.f

bb.s:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

bb.t:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

bb.u:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i36.sink.split

bb.w:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i36.sink.split

bb.x:                                             ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i36.sink.split

bb.y:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i36.sink.split

bb.z:                                             ; preds = %bb.j
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %..lr.ph.i.preheader.i_crit_edge

..lr.ph.i.preheader.i_crit_edge:                  ; preds = %bb.z
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %..lr.ph.i.preheader.i_crit_edge, %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.pre, %..lr.ph.i.preheader.i_crit_edge ], [ %i.bd, %.thread ]
  %min.iters.check = icmp ult i64 %0, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %0, 8                          ; 3 uses
  %i.bl = and i64 %0, 7
  %i.bm = shl nuw nsw i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %2, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bp, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %0, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %0, %.lr.ph.i.preheader.i ], [ %i.bl, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.br = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.bs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i34 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i34, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !298

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %i.bt = trunc nuw nsw i64 %0 to i32
  %i.bu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bt
end_hunk_1
begin_hunk_2_@_Z23test_copy_and_assign_ndI8value_ndLm10EEvRKT_:bb.a
_ZN5boost9container6vectorI8value_ndvvED2Ev.exit: ; preds = %bb.ag, %.noexc64.8, %.noexc64.7, %.noexc64.6, %.noexc64.5, %.noexc64.4, %.noexc64.3, %.noexc64.2, %.noexc64.1, %.noexc64, %.lr.ph.i60.preheader
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !105, !noalias !364 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.eo, %i.b
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, %.lr.ph.i.i.i67
  %.sroa.04.09.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i67 ], [ %i.eo, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit ] ; 2 uses
  %i.ep = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i68 = icmp eq ptr %i.ep, %i.b
  br i1 %.not.i.i.i68, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i67, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i67, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %.not.i.i69 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i69, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit70, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.er = load ptr, ptr %3, align 8, !tbaa !127
  %i.es = shl i64 %i.eq, 2
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.es) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit70

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit70: ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ai:                                            ; preds = %bb.c
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit148:                                     ; preds = %bb.l
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp149:                            ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, %bb.k
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit148, %.loopexit.split-lp149, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ai ], [ %lpad.loopexit150, %.loopexit148 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ap

.loopexit142:                                     ; preds = %bb.o
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp143:                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, %.loopexit147, %bb.n
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp143, %.loopexit142
  %lpad.phi146 = phi { ptr, i32 } [ %lpad.loopexit144, %.loopexit142 ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ap

bb.al:                                            ; preds = %bb.q, %bb.p, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit34
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit43
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit52
  %i.ew = landingpad { ptr, i32 }
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
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.am ], [ %i.ew, %bb.an ], [ %lpad.phi, %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit72 ], [ %lpad.loopexit139, %.loopexit ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al, %bb.ak, %bb.aj, %bb.j
  %.pn17 = phi { ptr, i32 } [ %lpad.phi157, %bb.j ], [ %.pn13.pn.pn, %bb.ao ], [ %i.eu, %bb.al ], [ %lpad.phi146, %bb.ak ], [ %.pn, %bb.aj ]
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !105, !noalias !365 ; 2 uses
  %.not8.i.i.i73 = icmp eq ptr %i.ex, %i.b
  br i1 %.not8.i.i.i73, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77, label %.lr.ph.i.i.i74

.lr.ph.i.i.i74:                                   ; preds = %bb.ap, %.lr.ph.i.i.i74
  %.sroa.04.09.i.i.i75 = phi ptr [ %i.ey, %.lr.ph.i.i.i74 ], [ %i.ex, %bb.ap ] ; 2 uses
  %i.ey = load ptr, ptr %.sroa.04.09.i.i.i75, align 8, !tbaa !105 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i75, i64 noundef 24) #25
  %.not.i.i.i76 = icmp eq ptr %i.ey, %i.b
  br i1 %.not.i.i.i76, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77, label %.lr.ph.i.i.i74, !llvm.loop !7

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77: ; preds = %.lr.ph.i.i.i74, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !125 ; 2 uses
  %.not.i.i78 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i78, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit79, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI8value_ndEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit77
  %i.fa = load ptr, ptr %3, align 8, !tbaa !127
  %i.fb = shl i64 %i.ez, 2
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fb) #25
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
  %i.av = add nuw nsw i64 %i.ar, 1
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
  %.not215 = icmp eq i64 %i.cj, 0
  br i1 %.not215, label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

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
  %next.gep224 = getelementptr i8, ptr %2, i64 %i.cp
  %next.gep225 = getelementptr i8, ptr %7, i64 %i.co
  %next.gep226 = getelementptr i8, ptr %7, i64 %i.cp
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !41
  %wide.vec228 = load <4 x i32>, ptr %next.gep224, align 8, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep225, align 8, !tbaa !41
  store <4 x i32> %wide.vec228, ptr %next.gep226, align 8, !tbaa !41
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
  %i.db = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.da)
          to label %.noexc32 unwind label %.loopexit.split-lp170 ; 0 uses

.noexc32:                                         ; preds = %bb.n
  %.not5.i26 = icmp eq i64 %i.cx, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0131.0 = phi ptr [ %i.dk, %.noexc33 ], [ %7, %.noexc32 ] ; 3 uses
  %.sroa.0136.0 = phi ptr [ %i.dj, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0131.0, %i.cz
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i29
  %i.dc = load <2 x i32>, ptr %.sroa.0136.0, align 4
  %i.dd = load <2 x i32>, ptr %.sroa.0131.0, align 4
  %i.de = icmp eq <2 x i32> %i.dc, %i.dd          ; 2 uses
  %i.df = extractelement <2 x i1> %i.de, i64 0
  %i.dg = extractelement <2 x i1> %i.de, i64 1
  %i.dh = select i1 %i.df, i1 %i.dg, i1 false
  %i.di = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.dh)
          to label %.noexc33 unwind label %.loopexit169 ; 0 uses

.noexc33:                                         ; preds = %bb.o
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0131.0, i64 8
  %.not.i31 = icmp eq ptr %i.dj, %i.cy
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !370

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  %.not3.i.i35 = icmp eq i64 %i.cj, 0
  br i1 %.not3.i.i35, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34
  %_ZZN14counting_value1cEvE2co.promoted.i.i37 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dl = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i37, %i.cj
  store i64 %i.dl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, %.lr.ph.preheader.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %bb.al

bb.q:                                             ; preds = %bb.p
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.r unwind label %bb.al

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !102 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 5 uses
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !128
  %i.do = icmp ugt i64 %i.dm, 10
  br i1 %i.do, label %bb.s, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc48 unwind label %bb.am

.noexc48:                                         ; preds = %bb.s
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39: ; preds = %bb.r
  %.not17.i.i.i40 = icmp eq i64 %i.dm, 0          ; 2 uses
  br i1 %.not17.i.i.i40, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i42 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %xtraiter258 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i41, %.prol.preheader
  %.020.i.i.i43.prol = phi i64 [ %i.dp, %.prol.preheader ], [ %i.dm, %.lr.ph.i.i.i41 ]
  %.0819.i.i.i44.prol = phi ptr [ %i.dr, %.prol.preheader ], [ %2, %.lr.ph.i.i.i41 ] ; 2 uses
  %.01618.i.i.i45.prol = phi ptr [ %i.ds, %.prol.preheader ], [ %8, %.lr.ph.i.i.i41 ] ; 2 uses
  %prol.iter260 = phi i64 [ %prol.iter260.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i41 ]
  %i.dp = add i64 %.020.i.i.i43.prol, -1          ; 2 uses
  %i.dq = load <2 x i32>, ptr %.0819.i.i.i44.prol, align 4, !tbaa !41
  store <2 x i32> %i.dq, ptr %.01618.i.i.i45.prol, align 4, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44.prol, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45.prol, i64 8 ; 2 uses
  %prol.iter260.next = add i64 %prol.iter260, 1   ; 2 uses
  %prol.iter260.cmp.not = icmp eq i64 %prol.iter260.next, %xtraiter258
  br i1 %prol.iter260.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !375

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i41
  %.020.i.i.i43.unr = phi i64 [ %i.dm, %.lr.ph.i.i.i41 ], [ %i.dp, %.prol.preheader ]
  %.0819.i.i.i44.unr = phi ptr [ %2, %.lr.ph.i.i.i41 ], [ %i.dr, %.prol.preheader ]
  %.01618.i.i.i45.unr = phi ptr [ %8, %.lr.ph.i.i.i41 ], [ %i.ds, %.prol.preheader ]
  %i.dt = icmp ult i64 %i.dm, 8
  br i1 %i.dt, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41.new

.lr.ph.i.i.i41.new:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.i41.new
  %.020.i.i.i43 = phi i64 [ %i.ep, %.lr.ph.i.i.i41.new ], [ %.020.i.i.i43.unr, %.prol.loopexit ]
  %.0819.i.i.i44 = phi ptr [ %i.er, %.lr.ph.i.i.i41.new ], [ %.0819.i.i.i44.unr, %.prol.loopexit ] ; 9 uses
  %.01618.i.i.i45 = phi ptr [ %i.es, %.lr.ph.i.i.i41.new ], [ %.01618.i.i.i45.unr, %.prol.loopexit ] ; 9 uses
  %i.du = load <2 x i32>, ptr %.0819.i.i.i44, align 4, !tbaa !41
  store <2 x i32> %i.du, ptr %.01618.i.i.i45, align 4, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 8
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !41
  store <2 x i32> %i.dx, ptr %i.dw, align 4, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 16
  %i.ea = load <2 x i32>, ptr %i.dy, align 4, !tbaa !41
  store <2 x i32> %i.ea, ptr %i.dz, align 4, !tbaa !41
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 24
  %i.ed = load <2 x i32>, ptr %i.eb, align 4, !tbaa !41
  store <2 x i32> %i.ed, ptr %i.ec, align 4, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 32
  %i.eg = load <2 x i32>, ptr %i.ee, align 4, !tbaa !41
  store <2 x i32> %i.eg, ptr %i.ef, align 4, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 40
  %i.ej = load <2 x i32>, ptr %i.eh, align 4, !tbaa !41
  store <2 x i32> %i.ej, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 48
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !41
  store <2 x i32> %i.em, ptr %i.el, align 4, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 56
  %i.ep = add i64 %.020.i.i.i43, -8               ; 2 uses
  %i.eq = load <2 x i32>, ptr %i.en, align 4, !tbaa !41
  store <2 x i32> %i.eq, ptr %i.eo, align 4, !tbaa !41
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 64
  %.not.i.i.i46.7 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i46.7, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41.new, !llvm.loop !8

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41.new, %.prol.loopexit
  %i.et = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i42, %i.dm
  store i64 %i.et, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49: ; preds = %._crit_edge.i.i.i47, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %.idx160 = shl nuw nsw i64 %i.dm, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx160
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dm
  %i.ew = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc56 unwind label %.loopexit.split-lp165 ; 0 uses

.noexc56:                                         ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  br i1 %.not17.i.i.i40, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.noexc56, %.noexc57
  %.sroa.0125.0 = phi ptr [ %i.fe, %.noexc57 ], [ %2, %.noexc56 ] ; 2 uses
  %.sroa.0120.0 = phi ptr [ %i.ff, %.noexc57 ], [ %8, %.noexc56 ] ; 3 uses
  %.not4.i54 = icmp eq ptr %.sroa.0120.0, %i.ev
  br i1 %.not4.i54, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i53
  %i.ex = load <2 x i32>, ptr %.sroa.0125.0, align 4
  %i.ey = load <2 x i32>, ptr %.sroa.0120.0, align 4
  %i.ez = icmp eq <2 x i32> %i.ex, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x i1> %i.ez, i64 0
  %i.fb = extractelement <2 x i1> %i.ez, i64 1
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.fc)
          to label %.noexc57 unwind label %.loopexit164 ; 0 uses

.noexc57:                                         ; preds = %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0125.0, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0120.0, i64 8
  %.not.i55 = icmp eq ptr %i.fe, %i.eu
  br i1 %.not.i55, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53, !llvm.loop !370

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58: ; preds = %.noexc57, %.lr.ph.i53, %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.fg, align 8, !tbaa !135
  %i.fh = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc60 unwind label %bb.an  ; 25 uses

.noexc60:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.fh, ptr %9, align 8, !tbaa !134
  store i64 10, ptr %i.fi, align 8, !tbaa !75
  %_ZZN14counting_value1cEvE2co.promoted.i.i59 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fj = load <2 x i32>, ptr %0, align 4, !tbaa !41 ; 5 uses
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.fl = extractelement <2 x i32> %i.fj, i64 1   ; 8 uses
  %i.fm = extractelement <2 x i32> %i.fj, i64 0   ; 8 uses
  store <8 x i32> %i.fk, ptr %i.fh, align 4, !tbaa !41
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  store i32 %i.fl, ptr %i.fo, align 4, !tbaa !80
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !79
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  store i32 %i.fl, ptr %i.fq, align 4, !tbaa !80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store i32 %i.fm, ptr %i.fr, align 4, !tbaa !79
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  store i32 %i.fl, ptr %i.fs, align 4, !tbaa !80
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 %i.fm, ptr %i.ft, align 4, !tbaa !79
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 60
  store i32 %i.fl, ptr %i.fu, align 4, !tbaa !80
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  store i32 %i.fm, ptr %i.fv, align 4, !tbaa !79
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  store i32 %i.fl, ptr %i.fw, align 4, !tbaa !80
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  store i32 %i.fm, ptr %i.fx, align 4, !tbaa !79
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  store i32 %i.fl, ptr %i.fy, align 4, !tbaa !80
  %i.fz = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i59, 10 ; 3 uses
  store i64 %i.fz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ga = load i64, ptr %i.dn, align 8, !tbaa !102, !noalias !388 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.ga, 3
  %i.gb = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 8 uses
  %.not = icmp eq i64 %i.ga, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60, %.lr.ph.i.i
  %.sroa.04.021.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %8, %.noexc60 ] ; 3 uses
  %.sroa.3.020.i.i = phi i64 [ %i.ge, %.lr.ph.i.i ], [ 10, %.noexc60 ]
  store i32 %i.fm, ptr %.sroa.04.021.i.i, align 4, !tbaa !79
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 4
  store i32 %i.fl, ptr %i.gc, align 4, !tbaa !80
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 8 ; 3 uses
  %i.ge = add nsw i64 %.sroa.3.020.i.i, -1        ; 3 uses
  %i.gf = icmp ne i64 %i.ge, 0                    ; 2 uses
  %i.gg = icmp ne ptr %i.gd, %i.gb                ; 2 uses
  %or.cond.i.i = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !378

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  br i1 %i.gf, label %.critedge.i.i.thread, label %bb.u

bb.u:                                             ; preds = %.critedge.i.i
  %i.gh = ptrtoint ptr %i.gb to i64
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  br i1 %i.gg, label %.lr.ph.preheader.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.u
  %i.gl = sub i64 %i.fz, %i.gk
  store i64 %i.gl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.u
  %i.gm = sub i64 %i.ga, %i.gk
  br label %bb.w

.critedge.i.i.thread:                             ; preds = %.noexc60, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i153 = phi i64 [ %i.ge, %.critedge.i.i ], [ 10, %.noexc60 ] ; 8 uses
  %i.gn = sub i64 10, %i.ga
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i153, %i.gn
  br i1 %.not.i.i.i.i, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check235 = icmp ult i64 %.sroa.3.0.lcssa.i.i153, 4
  br i1 %min.iters.check235, label %.lr.ph.i.i.i.i.i.i.i.i.preheader253, label %vector.ph236

vector.ph236:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec237 = and i64 %.sroa.3.0.lcssa.i.i153, -4 ; 3 uses
  %i.go = and i64 %.sroa.3.0.lcssa.i.i153, 3
  %i.gp = shl i64 %n.vec237, 3
  %i.gq = getelementptr i8, ptr %i.gb, i64 %i.gp
  %next.gep244 = getelementptr i8, ptr %i.gb, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep244) ]
  %interleaved.vec246 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec246, ptr %i.gb, align 8, !tbaa !41, !noalias !389
  store <4 x i32> %interleaved.vec246, ptr %next.gep244, align 8, !tbaa !41, !noalias !389
  %i.gr = icmp eq i64 %n.vec237, 4
  br i1 %i.gr, label %middle.block249, label %vector.body240.1

vector.body240.1:                                 ; preds = %vector.ph236
  %next.gep242.1 = getelementptr i8, ptr %i.gb, i64 32 ; 2 uses
  %next.gep244.1 = getelementptr i8, ptr %i.gb, i64 48 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep242.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep244.1) ]
  %interleaved.vec246.1 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec246.1, ptr %next.gep242.1, align 8, !tbaa !41, !noalias !389
  store <4 x i32> %interleaved.vec246.1, ptr %next.gep244.1, align 8, !tbaa !41, !noalias !389
  br label %middle.block249

middle.block249:                                  ; preds = %vector.body240.1, %vector.ph236
  %cmp.n250 = icmp eq i64 %.sroa.3.0.lcssa.i.i153, %n.vec237
  br i1 %cmp.n250, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader253

.lr.ph.i.i.i.i.i.i.i.i.preheader253:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block249
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.go, %middle.block249 ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gq, %middle.block249 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader253, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader253 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader253 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %i.fm, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !79, !noalias !389
  %i.gs = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.fl, ptr %i.gs, align 4, !tbaa !80, !noalias !389
  %i.gt = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 8
  %i.gu = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !383

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block249
  %i.gv = add i64 %.sroa.3.0.lcssa.i.i153, %i.fz
  store i64 %i.gv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !389
  %i.gw = add i64 %.sroa.3.0.lcssa.i.i153, %i.ga
  br label %bb.w

bb.v:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %storemerge.i.i = phi i64 [ %i.gw, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.gm, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.dn, align 8, !tbaa !128
  %i.gx = icmp eq i64 %storemerge.i.i, 10
  %i.gy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.gx)
          to label %.lr.ph.i66 unwind label %.loopexit.split-lp ; 0 uses

.lr.ph.i66:                                       ; preds = %bb.w
end_hunk_2
begin_hunk_3_@_Z12test_sv_elemI8value_ndLm10EEvRKT_:.lr.ph.i.i.i
  br i1 %.not.i59, label %.noexc61, label %.lr.ph.preheader.i.i.i.i.i.i, !prof !42

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
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5, ptr %i.b, align 8, !tbaa !128
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !41 ; 3 uses
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.e = extractelement <2 x i32> %i.c, i64 1     ; 11 uses
  %i.f = extractelement <2 x i32> %i.c, i64 0     ; 11 uses
  store <8 x i32> %i.d, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !79
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.e, ptr %i.h, align 4, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 5, ptr %i.j, align 8, !tbaa !128
  store i32 %i.f, ptr %i.i, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.e, ptr %i.k, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 %i.f, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i32 %i.e, ptr %i.m, align 4, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %i.f, ptr %i.n, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %i.e, ptr %i.o, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.f, ptr %i.p, align 8, !tbaa !79
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.e, ptr %i.q, align 4, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 %i.f, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %i.e, ptr %i.s, align 4, !tbaa !80
  store i64 2, ptr %i.a, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i64 5, ptr %i.t, align 8, !tbaa !128
  store i32 %i.f, ptr %2, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.e, ptr %i.u, align 4, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %i.v, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.e, ptr %i.w, align 4, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.f, ptr %i.x, align 8, !tbaa !79
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.e, ptr %i.y, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.f, ptr %i.z, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.e, ptr %i.aa, align 4, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.f, ptr %i.ab, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.e, ptr %i.ac, align 4, !tbaa !80
  %i.ad = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 15
  store i64 %i.ad, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(88) %2)
          to label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22 unwind label %bb.c

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i50 = icmp eq i64 %i.ae, 0
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8 ; 2 uses
  br i1 %.not3.i.i50, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53, label %.lr.ph.preheader.i.i51

.lr.ph.preheader.i.i51:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22
  %i.af = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre, %i.ae ; 2 uses
  store i64 %i.af, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22, %.lr.ph.preheader.i.i51
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i54 = phi i64 [ %i.af, %.lr.ph.preheader.i.i51 ], [ %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre, %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !176, !noalias !1354 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store i64 5, ptr %i.ah, align 8, !tbaa !128
  %i.ai = load <2 x i32>, ptr %0, align 4, !tbaa !41 ; 3 uses
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  store <8 x i32> %i.aj, ptr %3, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.al = extractelement <2 x i32> %i.ai, i64 0
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.an = extractelement <2 x i32> %i.ai, i64 1
  store i32 %i.an, ptr %i.am, align 4, !tbaa !80
  %i.ao = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i54, 5
  store i64 %i.ao, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i61 = icmp eq i64 %i.ag, 10
  br i1 %.not.i.i61, label %bb.a, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62, !prof !42

bb.a:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc63 unwind label %bb.d

.noexc63:                                         ; preds = %bb.a
  unreachable

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53
  %i.ap = getelementptr inbounds [88 x i8], ptr %1, i64 %i.ag
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull %i.ap, i64 noundef 1, ptr nonnull align 8 dereferenceable(88) %3)
          to label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit unwind label %bb.d

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i66 = icmp eq i64 %i.aq, 0
  br i1 %.not3.i.i66, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69, label %.lr.ph.preheader.i.i67

.lr.ph.preheader.i.i67:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i68 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ar = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i68, %i.aq
  store i64 %i.ar, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit, %.lr.ph.preheader.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.as = load i64, ptr %i.a, align 8, !tbaa !176 ; 6 uses
  %.not.i70 = icmp eq i64 %i.as, 10
  br i1 %.not.i70, label %bb.b, label %.lr.ph.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69
  %i.at = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i64 5, ptr %i.au, align 8, !tbaa !128
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.av = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 5 ; 4 uses
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.aw = add i64 %i.as, 1
  %i.ax = and i64 %i.as, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ax, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i.prol = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i.i.i.i.i.prol, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol, label %.lr.ph.preheader.i.i.i.i.i.i.prol

.lr.ph.preheader.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.prol
  %i.ba = sub i64 %i.av, %i.az                    ; 2 uses
  store i64 %i.ba, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.prol, %.lr.ph.i.i.prol
  %i.bb = phi i64 [ %i.av, %.lr.ph.i.i.prol ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.prol ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.unr = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %i.as, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %.unr = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %i.bd = icmp eq i64 %i.as, 0
  br i1 %i.bd, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc72 unwind label %bb.e

.noexc72:                                         ; preds = %bb.b
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1
  %.05.i.i = phi i64 [ %i.bj, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bo, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.be = phi i64 [ %i.bn, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 80
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i
  %i.bh = sub i64 %i.be, %i.bg                    ; 2 uses
  store i64 %i.bh, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i
  %i.bi = phi i64 [ %i.be, %.lr.ph.i.i ], [ %i.bh, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.bj = add i64 %.05.i.i, -2                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 168
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i.1 = icmp eq i64 %i.bl, 0
  br i1 %.not3.i.i.i.i.i.i.1, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1, label %.lr.ph.preheader.i.i.i.i.i.i.1

.lr.ph.preheader.i.i.i.i.i.i.1:                   ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i
  %i.bm = sub i64 %i.bi, %i.bl                    ; 2 uses
  store i64 %i.bm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.1, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i
  %i.bn = phi i64 [ %i.bi, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i.i.1 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 176
  %.not.i.i80.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i80.1, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1353

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1, %.lr.ph.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load i64, ptr %i.t, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i85 = icmp eq i64 %i.bq, 0
  br i1 %.not3.i.i85, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88, label %.lr.ph.preheader.i.i86

.lr.ph.preheader.i.i86:                           ; preds = %bb.c
  %_ZZN14counting_value1cEvE2co.promoted.i.i87 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.br = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i87, %i.bq
  store i64 %i.br, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88: ; preds = %.lr.ph.preheader.i.i86, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62, %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load i64, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i89 = icmp eq i64 %i.bt, 0
  br i1 %.not3.i.i89, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %bb.d
  %_ZZN14counting_value1cEvE2co.promoted.i.i91 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bu = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i91, %i.bt
  store i64 %i.bu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92: ; preds = %.lr.ph.preheader.i.i90, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

bb.e:                                             ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92, %bb.e
  %.pn17 = phi { ptr, i32 } [ %i.bv, %bb.e ], [ %i.bs, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92 ], [ %i.bp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88 ]
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !176 ; 5 uses
  %.not3.i.i97 = icmp eq i64 %i.bw, 0
  br i1 %.not3.i.i97, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i98

.lr.ph.preheader.i.i98:                           ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96
  %_ZZN14counting_value1cEvE2co.promoted.i.i99 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8 ; 3 uses
  %xtraiter130 = and i64 %i.bw, 1
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %.lr.ph.i.i100.prol.loopexit, label %.lr.ph.i.i100.prol

.lr.ph.i.i100.prol:                               ; preds = %.lr.ph.preheader.i.i98
  %i.bx = add nsw i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i103.prol = icmp eq i64 %i.bz, 0
  br i1 %.not3.i.i.i.i.i.i103.prol, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol, label %.lr.ph.preheader.i.i.i.i.i.i104.prol

.lr.ph.preheader.i.i.i.i.i.i104.prol:             ; preds = %.lr.ph.i.i100.prol
  %i.ca = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i99, %i.bz ; 2 uses
  store i64 %i.ca, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104.prol, %.lr.ph.i.i100.prol
  %i.cb = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i99, %.lr.ph.i.i100.prol ], [ %i.ca, %.lr.ph.preheader.i.i.i.i.i.i104.prol ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.lr.ph.i.i100.prol.loopexit

.lr.ph.i.i100.prol.loopexit:                      ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol, %.lr.ph.preheader.i.i98
  %.05.i.i101.unr = phi i64 [ %i.bw, %.lr.ph.preheader.i.i98 ], [ %i.bx, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %storemerge4.i.i102.unr = phi ptr [ %1, %.lr.ph.preheader.i.i98 ], [ %i.cc, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %.unr132 = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i99, %.lr.ph.preheader.i.i98 ], [ %i.cb, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %i.cd = icmp eq i64 %i.bw, 1
  br i1 %i.cd, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1
  %.05.i.i101 = phi i64 [ %i.cj, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %.05.i.i101.unr, %.lr.ph.i.i100.prol.loopexit ]
  %storemerge4.i.i102 = phi ptr [ %i.co, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %storemerge4.i.i102.unr, %.lr.ph.i.i100.prol.loopexit ] ; 3 uses
  %i.ce = phi i64 [ %i.cn, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %.unr132, %.lr.ph.i.i100.prol.loopexit ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 80
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i103 = icmp eq i64 %i.cg, 0
  br i1 %.not3.i.i.i.i.i.i103, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105, label %.lr.ph.preheader.i.i.i.i.i.i104

.lr.ph.preheader.i.i.i.i.i.i104:                  ; preds = %.lr.ph.i.i100
  %i.ch = sub i64 %i.ce, %i.cg                    ; 2 uses
  store i64 %i.ch, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104, %.lr.ph.i.i100
  %i.ci = phi i64 [ %i.ce, %.lr.ph.i.i100 ], [ %i.ch, %.lr.ph.preheader.i.i.i.i.i.i104 ] ; 2 uses
  %i.cj = add i64 %.05.i.i101, -2                 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 168
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i.i.i.i.i103.1 = icmp eq i64 %i.cl, 0
  br i1 %.not3.i.i.i.i.i.i103.1, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1, label %.lr.ph.preheader.i.i.i.i.i.i104.1

.lr.ph.preheader.i.i.i.i.i.i104.1:                ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105
  %i.cm = sub i64 %i.ci, %i.cl                    ; 2 uses
  store i64 %i.cm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104.1, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105
  %i.cn = phi i64 [ %i.ci, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i.i104.1 ]
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 176
  %.not.i.i106.1 = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i106.1, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.i.i100, !llvm.loop !1353

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107: ; preds = %.lr.ph.i.i100.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z12test_sv_elemIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i:
  %1 = alloca %"class.boost::container::static_vector.324", align 8 ; 23 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 16 uses
  %3 = alloca %"class.boost::container::static_vector.35", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 4 uses
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 15 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !82
  %i.c = add i32 %.pre.i.i, 1
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.d = load i32, ptr %0, align 4, !tbaa !82
  %i.e = add i32 %.pre.i.i, 2
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.f = load i32, ptr %0, align 4, !tbaa !82
  %i.g = add i32 %.pre.i.i, 3
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !82
  %i.i = add i32 %.pre.i.i, 4
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.j = load i32, ptr %0, align 4, !tbaa !82
  %i.k = add i32 %.pre.i.i, 5
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 5, ptr %i.l, align 8, !tbaa !139
  store i32 %i.b, ptr %1, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.d, ptr %i.m, align 4, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.f, ptr %i.n, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.h, ptr %i.o, align 4, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.j, ptr %i.p, align 8, !tbaa !82
  %i.q = load i32, ptr %0, align 4, !tbaa !82
  %i.r = add i32 %.pre.i.i, 6
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.s = load i32, ptr %0, align 4, !tbaa !82
  %i.t = add i32 %.pre.i.i, 7
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.u = load i32, ptr %0, align 4, !tbaa !82
  %i.v = add i32 %.pre.i.i, 8
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.w = load i32, ptr %0, align 4, !tbaa !82
  %i.x = add i32 %.pre.i.i, 9
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.y = load i32, ptr %0, align 4, !tbaa !82
  %i.z = add i32 %.pre.i.i, 10
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 5, ptr %i.ab, align 8, !tbaa !139
  store i32 %i.q, ptr %i.aa, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.s, ptr %i.ac, align 4, !tbaa !82
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
end_hunk_3
begin_hunk_4_@_Z12test_sv_elemIN5boost9container4test24movable_and_copyable_intELm10EEvRKT_:.lr.ph.i.i.i
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
  %i.cm = add nuw nsw i64 %i.ci, 1
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
  br i1 %.not3.i.i139, label %_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvED2Ev.exit153, label %.lr.ph.i.preheader.i140

.lr.ph.i.preheader.i140:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit138
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i141 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  br label %.lr.ph.i.i142

.lr.ph.i.i142:                                    ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i151, %.lr.ph.i.preheader.i140
  %i.ed = phi i32 [ %i.er, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i151 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i141, %.lr.ph.i.preheader.i140 ] ; 2 uses
  %.05.i.i143 = phi i64 [ %i.ee, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i151 ], [ %i.ec, %.lr.ph.i.preheader.i140 ]
  %storemerge4.i.i144 = phi ptr [ %i.es, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEELm10ELm0ELb1EEEE7destroyIS7_EEvRS8_PT_.exit.i.i151 ], [ %1, %.lr.ph.i.preheader.i140 ] ; 5 uses
  %i.ee = add i64 %.05.i.i143, -1                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %storemerge4.i.i144, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i.i.i.i.i145 = icmp eq i64 %i.eg, 0
end_hunk_4
begin_hunk_5_@_Z20test_copy_and_assignIiLm10EN5boost9container6vectorIivvEEEvRKT1_:bb.a
  %i.af = getelementptr inbounds i8, ptr %2, i64 %.idx57
  %i.ag = load ptr, ptr %0, align 8, !tbaa !111, !noalias !1463 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !109, !noalias !1464 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = icmp eq i64 %storemerge.i, %i.ah
  %i.ak = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_, i1 noundef zeroext %i.aj) ; 0 uses
  %.not5.i17 = icmp eq i64 %storemerge.i, 0
  br i1 %.not5.i17, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_.exit26, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.noexc24, %.noexc25
  %.sroa.033.0 = phi ptr [ %i.ap, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.sroa.028.0 = phi ptr [ %i.aq, %.noexc25 ], [ %i.ag, %.noexc24 ] ; 3 uses
  %.not4.i21 = icmp eq ptr %.sroa.028.0, %i.ai
  br i1 %.not4.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_.exit26, label %.noexc25

.noexc25:                                         ; preds = %.lr.ph.i20
  %i.al = load i32, ptr %.sroa.033.0, align 4, !tbaa !41
  %i.am = load i32, ptr %.sroa.028.0, align 4, !tbaa !41
  %i.an = icmp eq i32 %i.al, %i.am
  %i.ao = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_, i1 noundef zeroext %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 4
  %.not.i22 = icmp eq ptr %i.ap, %i.af
  br i1 %.not.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_.exit26, label %.lr.ph.i20, !llvm.loop !17

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS2_IS3_Lb1EEEEvT_S6_T0_S7_.exit26: ; preds = %.noexc25, %.lr.ph.i20, %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca ptr, align 8      ; 5 uses
  %1 = alloca %"class.boost::container::static_vector.19", align 8 ; 6 uses
  %2 = alloca %"class.boost::container::static_vector.19", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1504 ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !1505 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %bb.b, label %bb.c, !prof !185

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !187, !noalias !1506
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i.i.i, %bb.b ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.e, %bb.b ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %1, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1506 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41, !noalias !1507
  store i32 %i.i, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1507
  %i.j = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.k = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1477

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.in.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i.i.i, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.e, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %.03.i.i.i.i.i.i, 3
  br i1 %i.l, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.in.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.m = load ptr, ptr %.in.i.i.i.i.i.i.i, align 8, !tbaa !188, !noalias !1506 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41, !noalias !1507
  store i32 %i.o, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1507
  %i.p = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !188, !noalias !1506 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41, !noalias !1507
  store i32 %i.s, ptr %i.p, align 4, !tbaa !41, !noalias !1507
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !188, !noalias !1506 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41, !noalias !1507
  store i32 %i.w, ptr %i.t, align 4, !tbaa !41, !noalias !1507
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !188, !noalias !1506 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41, !noalias !1507
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !41, !noalias !1507
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !19

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1506
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit

_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i.i.i
  %i.ad = phi i64 [ 0, %bb.a ], [ %i.e, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i.i.i ] ; 4 uses
  %i.ae = load i64, ptr %0, align 8, !tbaa !114
  %i.af = icmp eq i64 %i.ad, %i.ae
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_, i1 noundef zeroext %i.af) ; 0 uses
  %.idx = shl nuw nsw i64 %i.ad, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1508 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ai, %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit ]
  %.03.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit ]
  %i.ak = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost9container13static_vectorIiLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb1EEEEET_SL_.exit ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.am = icmp eq i64 %i.ad, %.0.lcssa.i.i.i
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.am) ; 0 uses
  %.not5.i = icmp eq i64 %i.ad, 0
  br i1 %.not5.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i, %.noexc13
  %.sroa.046.0 = phi ptr [ %i.au, %.noexc13 ], [ %i.ai, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i ] ; 3 uses
  %.sroa.051.0 = phi ptr [ %i.at, %.noexc13 ], [ %1, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.046.0, %i.a
  br i1 %.not4.i, label %.critedge.i, label %.noexc13

.noexc13:                                         ; preds = %.lr.ph.i
  %i.ao = load i32, ptr %.sroa.051.0, align 4, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  %i.ar = icmp eq i32 %i.ao, %i.aq
  %i.as = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 4 ; 2 uses
  %i.au = load ptr, ptr %.sroa.046.0, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.at, %i.ah
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1484

.critedge.i:                                      ; preds = %.lr.ph.i, %.noexc13, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.av = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1509 ; 3 uses
  %.not73 = icmp eq ptr %i.aw, %i.a
  br i1 %.not73, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.aw, %.critedge.i ]
  %.03.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ 0, %.critedge.i ] ; 3 uses
  %i.ay = add nuw i64 %.03.i.i.i.i, 1             ; 5 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !105, !noalias !1510 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp samesign ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.not.i.i, label %bb.d, label %.noexc15, !prof !185

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  store ptr %i.aw, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !187, !noalias !1511
  %xtraiter84 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i, %bb.d ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ay, %bb.d ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %bb.d ] ; 2 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  %i.ba = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1511 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41, !noalias !1512
  store i32 %i.bc, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1512
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.be = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1497

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %bb.d ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.ay, %bb.d ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %bb.d ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.03.i.i.i.i, 3
  br i1 %i.bf, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.in.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.in.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bg = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !188, !noalias !1511 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41, !noalias !1512
  store i32 %i.bi, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1512
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !188, !noalias !1511 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41, !noalias !1512
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !41, !noalias !1512
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !188, !noalias !1511 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41, !noalias !1512
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !41, !noalias !1512
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !188, !noalias !1511 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41, !noalias !1512
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !41, !noalias !1512
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bw = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !19

.noexc15:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorIiLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit: ; preds = %.critedge.i, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i
  %i.bx = phi i64 [ %i.ay, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6insertINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPiLb0EEENSN_ISO_Lb1EEET_SR_PNS_11move_detail13disable_if_orIvNSS_14is_convertibleISR_mEENS2_17is_input_iteratorISR_Xsr21has_iterator_categoryISR_EE5valueEEENSS_5bool_ILb0EEESZ_E4typeE.exit.i ], [ 0, %.critedge.i ] ; 4 uses
  %i.by = load i64, ptr %0, align 8, !tbaa !114
  %i.bz = icmp eq i64 %i.bx, %i.by
  %i.ca = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIiLm10EN5boost9container4listIivEEEvRKT1_, i1 noundef zeroext %i.bz) ; 0 uses
  %.idx57 = shl nuw nsw i64 %i.bx, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx57
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1513 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cc, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit, %.lr.ph.i.i.i17
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i.i.i17 ], [ %i.cc, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ]
  %.03.i.i.i18 = phi i64 [ %i.ce, %.lr.ph.i.i.i17 ], [ 0, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ]
  %i.ce = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !18

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20: ; preds = %.lr.ph.i.i.i17, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE6assignINS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS2_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEEvT_SN_PNS_11move_detail13disable_if_orIvNSO_14is_convertibleISN_mEENSO_4and_INSO_12is_differentINSO_17integral_constantIjLj0EEESV_EENS2_21is_not_input_iteratorISN_EENSO_5bool_ILb1EEES10_EENSZ_ILb0EEES12_E4typeE.exit ], [ %i.ce, %.lr.ph.i.i.i17 ]
  %i.cg = icmp eq i64 %i.bx, %.0.lcssa.i.i.i21
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.cg) ; 0 uses
  %.not5.i22 = icmp eq i64 %i.bx, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20, %.noexc30
  %.sroa.038.0 = phi ptr [ %i.cn, %.noexc30 ], [ %2, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %i.co, %.noexc30 ], [ %i.cc, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.033.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.noexc30

.noexc30:                                         ; preds = %.lr.ph.i25
  %i.ci = load i32, ptr %.sroa.038.0, align 4, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !41
  %i.cl = icmp eq i32 %i.ci, %i.ck
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_, i1 noundef zeroext %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 4 ; 2 uses
  %i.co = load ptr, ptr %.sroa.033.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31, label %.lr.ph.i25, !llvm.loop !1484

_Z19test_compare_rangesIN5boost9container12vec_iteratorIPiLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS7_8bhtraitsINS1_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEvT_SM_T0_SN_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !111    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !190

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ab = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ab, ptr %.0.i.i.i.i, align 4, !tbaa !41
  %i.ac = icmp ne ptr %2, %i.x
  %i.ad = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, !prof !190

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = sub i64 %i.af, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 4 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !110
  %i.ai = shl i64 %i.ah, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ai) #25
  %.pre = load i64, ptr %i.d, align 8, !tbaa !189
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRKiEEEEEvPimSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.i
  %i.aj = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !111
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !189
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.al = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.al, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !184
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !49
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #20

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.43", align 8 ; 5 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !1542 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !prof !42

end_hunk_5
begin_hunk_6_@_Z20test_copy_and_assignI8value_ndLm10EN5boost9container6vectorIS0_vvEEEvRKT1_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %.idx54
  %i.be = load ptr, ptr %0, align 8, !tbaa !126, !noalias !1596 ; 2 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !1597 ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = icmp eq i64 %i.t, %i.bf
  %i.bi = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.bh) ; 0 uses
  %.not5.i16 = icmp eq i64 %i.t, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.032.0 = phi ptr [ %i.bn, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %i.bo, %.noexc24 ], [ %i.be, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.027.0, %i.bg
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.noexc24

.noexc24:                                         ; preds = %.lr.ph.i19
  %i.bj = load i32, ptr %.sroa.032.0, align 4, !tbaa !77
  %i.bk = load i32, ptr %.sroa.027.0, align 4, !tbaa !77
  %i.bl = icmp eq i32 %i.bj, %i.bk
  %i.bm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.bl) ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 4
  %.not.i21 = icmp eq ptr %i.bn, %i.bd
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !20

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca ptr, align 8      ; 5 uses
  %1 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  %2 = alloca %"class.boost::container::static_vector.43", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1637 ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.d = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.e = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 5 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105, !noalias !1638 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %bb.b, label %bb.c, !prof !185

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !192, !noalias !1639
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i.i.i, %bb.b ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.e, %bb.b ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %1, %bb.b ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1639 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41, !noalias !1640
  store i32 %i.i, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1640
  %i.j = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.k = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1610

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %bb.b
  %.in.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i.i.i, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.e, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %bb.b ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %.03.i.i.i.i.i.i, 3
  br i1 %i.l, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.in.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.m = load ptr, ptr %.in.i.i.i.i.i.i.i, align 8, !tbaa !188, !noalias !1639 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41, !noalias !1640
  store i32 %i.o, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1640
  %i.p = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !188, !noalias !1639 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !41, !noalias !1640
  store i32 %i.s, ptr %i.p, align 4, !tbaa !41, !noalias !1640
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !188, !noalias !1639 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41, !noalias !1640
  store i32 %i.w, ptr %i.t, align 4, !tbaa !41, !noalias !1640
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !188, !noalias !1639 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41, !noalias !1640
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !41, !noalias !1640
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !22

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1639
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i
  %i.ad = phi i64 [ 0, %bb.a ], [ %i.e, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i ] ; 4 uses
  %i.ae = load i64, ptr %0, align 8, !tbaa !114
  %i.af = icmp eq i64 %i.ad, %i.ae
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.af) ; 0 uses
  %.idx = shl nuw nsw i64 %i.ad, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1641 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ai, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ]
  %.03.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ]
  %i.ak = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.am = icmp eq i64 %i.ad, %.0.lcssa.i.i.i
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.am) ; 0 uses
  %.not5.i = icmp eq i64 %i.ad, 0
  br i1 %.not5.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, %.noexc13
  %.sroa.046.0 = phi ptr [ %i.au, %.noexc13 ], [ %i.ai, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ] ; 3 uses
  %.sroa.051.0 = phi ptr [ %i.at, %.noexc13 ], [ %1, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.046.0, %i.a
  br i1 %.not4.i, label %.critedge.i, label %.noexc13

.noexc13:                                         ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 16
  %i.ap = load i32, ptr %.sroa.051.0, align 4, !tbaa !77
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 4 ; 2 uses
  %i.au = load ptr, ptr %.sroa.046.0, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.at, %i.ah
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1617

.critedge.i:                                      ; preds = %.lr.ph.i, %.noexc13, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.av = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1642 ; 3 uses
  %.not73 = icmp eq ptr %i.aw, %i.a
  br i1 %.not73, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.aw, %.critedge.i ]
  %.03.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ 0, %.critedge.i ] ; 3 uses
  %i.ay = add nuw i64 %.03.i.i.i.i, 1             ; 5 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !105, !noalias !1643 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp samesign ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.not.i.i, label %bb.d, label %.noexc15, !prof !185

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  store ptr %i.aw, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !192, !noalias !1644
  %xtraiter84 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i, %bb.d ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ay, %bb.d ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %bb.d ] ; 2 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  %i.ba = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1644 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bc, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1645
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.be = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1630

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %bb.d ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.ay, %bb.d ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %bb.d ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.03.i.i.i.i, 3
  br i1 %i.bf, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.in.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.in.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bg = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bi, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1645
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !41, !noalias !1645
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !41, !noalias !1645
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !41, !noalias !1645
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bw = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

.noexc15:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit: ; preds = %.critedge.i, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i
  %i.bx = phi i64 [ %i.ay, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i ], [ 0, %.critedge.i ] ; 4 uses
  %i.by = load i64, ptr %0, align 8, !tbaa !114
  %i.bz = icmp eq i64 %i.bx, %i.by
  %i.ca = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.bz) ; 0 uses
  %.idx57 = shl nuw nsw i64 %i.bx, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx57
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1646 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cc, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, %.lr.ph.i.i.i17
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i.i.i17 ], [ %i.cc, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ]
  %.03.i.i.i18 = phi i64 [ %i.ce, %.lr.ph.i.i.i17 ], [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ]
  %i.ce = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20: ; preds = %.lr.ph.i.i.i17, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ], [ %i.ce, %.lr.ph.i.i.i17 ]
  %i.cg = icmp eq i64 %i.bx, %.0.lcssa.i.i.i21
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cg) ; 0 uses
  %.not5.i22 = icmp eq i64 %i.bx, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, %.noexc30
  %.sroa.038.0 = phi ptr [ %i.cn, %.noexc30 ], [ %2, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %i.co, %.noexc30 ], [ %i.cc, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.033.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.noexc30

.noexc30:                                         ; preds = %.lr.ph.i25
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16
  %i.cj = load i32, ptr %.sroa.038.0, align 4, !tbaa !77
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !77
  %i.cl = icmp eq i32 %i.cj, %i.ck
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 4 ; 2 uses
  %i.co = load ptr, ptr %.sroa.033.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25, !llvm.loop !1617

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !126    ; 9 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = ptrtoaddr ptr %i.s to i64
  %i.y = ptrtoaddr ptr %2 to i64
  %i.z = add i64 %i.y, -4
  %i.aa = sub i64 %i.z, %i.u                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 44
  %i.ad = sub i64 %i.u, %i.x
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.s, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.load15 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !41
  %i.aj = getelementptr i8, ptr %next.gep14, i64 16
  store <4 x i32> %wide.load, ptr %next.gep14, align 4, !tbaa !41
  store <4 x i32> %wide.load15, ptr %i.aj, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader35

.lr.ph.i.i.i.preheader35:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.018.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader35, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader35 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader35 ] ; 2 uses
  %i.al = load i32, ptr %.018.i.i.i, align 4, !tbaa !41
  store i32 %i.al, ptr %.01517.i.i.i, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1648

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.an, %.lr.ph.i.i.i ] ; 3 uses
  %.015.lcssa.i.i.i18 = ptrtoaddr ptr %.015.lcssa.i.i.i to i64
  %i.ao = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ao, ptr %.015.lcssa.i.i.i, align 4, !tbaa !41
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 4 uses
  %i.aq = shl i64 %i.v, 2
  %i.ar = add i64 %i.aq, %i.u
  %i.as = add i64 %i.ar, -4
  %i.at = sub i64 %i.as, %i.a                     ; 2 uses
  %i.au = lshr i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check21 = icmp ult i64 %i.at, 76
  br i1 %min.iters.check21, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck17

vector.memcheck17:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.aw = shl i64 %3, 2
  %i.ax = add i64 %i.aw, %.015.lcssa.i.i.i18
  %i.ay = sub i64 %i.a, %i.ax
  %diff.check19 = icmp ugt i64 %i.ay, -32
  br i1 %diff.check19, label %.lr.ph.i20.i.i.preheader, label %vector.ph22

vector.ph22:                                      ; preds = %vector.memcheck17
  %n.vec23 = and i64 %i.av, 9223372036854775800   ; 3 uses
  %i.az = shl i64 %n.vec23, 2                     ; 2 uses
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.az
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 2 uses
  %i.bc = shl i64 %index25, 2                     ; 2 uses
  %next.gep26 = getelementptr i8, ptr %2, i64 %i.bc ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.ap, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load28 = load <4 x i32>, ptr %next.gep26, align 4, !tbaa !41
  %wide.load29 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !41
  %i.be = getelementptr i8, ptr %next.gep27, i64 16
  store <4 x i32> %wide.load28, ptr %next.gep27, align 4, !tbaa !41
  store <4 x i32> %wide.load29, ptr %i.be, align 4, !tbaa !41
  %index.next30 = add nuw i64 %index25, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bf, label %middle.block31, label %vector.body24, !llvm.loop !1649

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.av, %n.vec23
  br i1 %cmp.n32, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck17, %.lr.ph.i20.preheader.i.i, %middle.block31
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck17 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.ba, %middle.block31 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ap, %vector.memcheck17 ], [ %i.ap, %.lr.ph.i20.preheader.i.i ], [ %i.bb, %middle.block31 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %.018.i21.i.i = phi ptr [ %i.bh, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bi, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bg = load i32, ptr %.018.i21.i.i, align 4, !tbaa !41
  store i32 %i.bg, ptr %.01517.i22.i.i, align 4, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bh, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1650

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block31, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !125
  %i.bk = shl i64 %i.bj, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bk) #25
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !193
  br label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit

_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.g
  %i.bl = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %bb.g ]
  %i.bm = ptrtoint ptr %2 to i64
  %i.bn = ptrtoint ptr %i.t to i64
  %i.bo = sub i64 %i.bm, %i.bn
  store ptr %i.s, ptr %1, align 8, !tbaa !126
  %i.bp = add i64 %i.bl, %3
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !193
  store i64 %i.p, ptr %i.b, align 8, !tbaa !75
  %i.bq = getelementptr inbounds i8, ptr %i.s, i64 %i.bo
  store ptr %i.bq, ptr %0, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1683 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1684
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %i.e = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.i, %.prol.preheader ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.f, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1684
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.i = add i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1661

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %.prol.preheader ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.prol.preheader ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.h, %.prol.preheader ]
  %i.j = icmp ult i64 %i.b, 8
  br i1 %i.j, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.new:                     ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.new
  %i.k = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.l, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1684
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !41, !noalias !1684
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !41, !noalias !1684
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !41, !noalias !1684
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.x, ptr %i.w, align 4, !tbaa !41, !noalias !1684
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 40
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !41, !noalias !1684
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 48
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !41, !noalias !1684
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 56
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !1684
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 64
  %i.aj = add i64 %.015.i.i.i.i.i.i.i.i.i, -8     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1685
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.ak = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.b
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1684
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i
  store i64 %i.b, ptr %i.c, align 8, !tbaa !128
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp68 ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1686 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = icmp eq i64 %i.b, %i.an
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ap)
          to label %.noexc unwind label %.loopexit.split-lp68 ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.052.0 = phi ptr [ %i.az, %.noexc13 ], [ %0, %.noexc ] ; 3 uses
  %.sroa.057.0 = phi ptr [ %i.ay, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.052.0, %i.ao
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ar = load <2 x i32>, ptr %.sroa.057.0, align 4
  %i.as = load <2 x i32>, ptr %.sroa.052.0, align 4
  %i.at = icmp eq <2 x i32> %i.ar, %i.as          ; 2 uses
  %i.au = extractelement <2 x i1> %i.at, i64 0
  %i.av = extractelement <2 x i1> %i.at, i64 1
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.aw)
          to label %.noexc13 unwind label %.loopexit67 ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.057.0, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8
  %.not.i = icmp eq ptr %i.ay, %i.am
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ba = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.b
  store i64 %i.ba, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !128
  %i.bc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1687 ; 8 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.bd, 10
  br i1 %.not.i.i.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1688
  %xtraiter84 = and i64 %i.bd, 7                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.prol.loopexit83, label %.prol.preheader82

.prol.preheader82:                                ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader82
  %i.bf = phi ptr [ %i.bh, %.prol.preheader82 ], [ %0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bj, %.prol.preheader82 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bi, %.prol.preheader82 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.prol.preheader82 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.bg, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1688
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bj = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.prol.loopexit83, label %.prol.preheader82, !llvm.loop !1676

.prol.loopexit83:                                 ; preds = %.prol.preheader82, %.lr.ph.i.i.i.i.i.i.i
  %.unr87 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bh, %.prol.preheader82 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bj, %.prol.preheader82 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bi, %.prol.preheader82 ]
  %i.bk = icmp ult i64 %i.bd, 8
  br i1 %i.bk, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit83, %.lr.ph.i.i.i.i.i.i.i.new
  %i.bl = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.unr87, %.prol.loopexit83 ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit83 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit83 ] ; 9 uses
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.bm, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1688
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.bp, ptr %i.bo, align 4, !tbaa !41, !noalias !1688
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.bs, ptr %i.br, align 4, !tbaa !41, !noalias !1688
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.bv = load <2 x i32>, ptr %i.bt, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !41, !noalias !1688
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.by = load <2 x i32>, ptr %i.bw, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.by, ptr %i.bx, align 4, !tbaa !41, !noalias !1688
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !41, !noalias !1688
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !41, !noalias !1688
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ch = load <2 x i32>, ptr %i.cf, align 4, !tbaa !41, !noalias !1688
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !41, !noalias !1688
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.ck = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit83
  %i.cl = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bd
  store i64 %i.cl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1688
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !128
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cn = load i64, ptr %i.bb, align 8, !tbaa !102, !noalias !1689 ; 3 uses
  %.idx66 = shl nsw i64 %i.cn, 3
  %i.co = getelementptr inbounds i8, ptr %2, i64 %.idx66
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1690 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cp
  %i.cr = icmp eq i64 %i.cn, %i.cp
  %i.cs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.cr)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.cn, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.044.0 = phi ptr [ %i.da, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.db, %.noexc24 ], [ %0, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.039.0, %i.cq
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.ct = load <2 x i32>, ptr %.sroa.044.0, align 4
  %i.cu = load <2 x i32>, ptr %.sroa.039.0, align 4
  %i.cv = icmp eq <2 x i32> %i.ct, %i.cu          ; 2 uses
  %i.cw = extractelement <2 x i1> %i.cv, i64 0
  %i.cx = extractelement <2 x i1> %i.cv, i64 1
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.cy)
          to label %.noexc24 unwind label %.loopexit ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  %.not.i21 = icmp eq ptr %i.da, %i.co
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !24

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  %i.dc = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i26 = icmp eq i64 %i.dc, 0
  br i1 %.not3.i.i26, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29, label %.lr.ph.preheader.i.i27

.lr.ph.preheader.i.i27:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25
  %_ZZN14counting_value1cEvE2co.promoted.i.i28 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i28, %i.dc
  store i64 %i.dd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, %.lr.ph.preheader.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit67:                                      ; preds = %bb.e
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp68:                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, %bb.d
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp68, %.loopexit67
  %lpad.phi71 = phi { ptr, i32 } [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ]
  %.not3.i.i30 = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i30, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33, label %.lr.ph.preheader.i.i31

.lr.ph.preheader.i.i31:                           ; preds = %bb.j
  %_ZZN14counting_value1cEvE2co.promoted.i.i32 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.de = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i32, %i.b
  store i64 %i.de, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33: ; preds = %bb.j, %.lr.ph.preheader.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.l

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.df = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i34 = icmp eq i64 %i.df, 0
  br i1 %.not3.i.i34, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, label %.lr.ph.preheader.i.i35

.lr.ph.preheader.i.i35:                           ; preds = %bb.k
  %_ZZN14counting_value1cEvE2co.promoted.i.i36 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dg = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i36, %i.df
  store i64 %i.dg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37: ; preds = %bb.k, %.lr.ph.preheader.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37 ], [ %lpad.phi71, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1731 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1732 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.c, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1733
  %xtraiter = and i64 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %i.f = phi ptr [ %i.h, %.prol.preheader ], [ %i.a, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.j, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.i, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.g, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1733
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.j = add i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1703

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.h, %.prol.preheader ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.j, %.prol.preheader ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.prol.preheader ]
  %i.k = icmp ult i64 %i.c, 8
  br i1 %i.k, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.new:                     ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.new
  %i.l = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.m, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1733
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !41, !noalias !1733
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !41, !noalias !1733
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.v, ptr %i.u, align 4, !tbaa !41, !noalias !1733
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.y = load <2 x i32>, ptr %i.w, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.y, ptr %i.x, align 4, !tbaa !41, !noalias !1733
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 40
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !41, !noalias !1733
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 48
  %i.ae = load <2 x i32>, ptr %i.ac, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !41, !noalias !1733
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 56
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !tbaa !41, !noalias !1733
  store <2 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !41, !noalias !1733
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 64
  %i.ak = add i64 %.015.i.i.i.i.i.i.i.i.i, -8     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1734
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.al = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.c
  store i64 %i.al, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1733
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !128
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp68 ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ao = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1735 ; 2 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1736 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = icmp eq i64 %i.c, %i.ap
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ar)
          to label %.noexc unwind label %.loopexit.split-lp68 ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.052.0 = phi ptr [ %i.bb, %.noexc13 ], [ %i.ao, %.noexc ] ; 3 uses
  %.sroa.057.0 = phi ptr [ %i.ba, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.052.0, %i.aq
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = load <2 x i32>, ptr %.sroa.057.0, align 4
  %i.au = load <2 x i32>, ptr %.sroa.052.0, align 4
  %i.av = icmp eq <2 x i32> %i.at, %i.au          ; 2 uses
  %i.aw = extractelement <2 x i1> %i.av, i64 0
  %i.ax = extractelement <2 x i1> %i.av, i64 1
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ay)
          to label %.noexc13 unwind label %.loopexit67 ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.057.0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8
  %.not.i = icmp eq ptr %i.ba, %i.an
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bc = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.c
  store i64 %i.bc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !128
  %i.be = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1737 ; 2 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1738 ; 8 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.bg, 10
  br i1 %.not.i.i.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1739
  %xtraiter84 = and i64 %i.bg, 7                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.prol.loopexit83, label %.prol.preheader82

.prol.preheader82:                                ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader82
  %i.bi = phi ptr [ %i.bk, %.prol.preheader82 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bm, %.prol.preheader82 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bl, %.prol.preheader82 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.prol.preheader82 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.bj, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1739
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bm = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.prol.loopexit83, label %.prol.preheader82, !llvm.loop !1722

.prol.loopexit83:                                 ; preds = %.prol.preheader82, %.lr.ph.i.i.i.i.i.i.i
  %.unr87 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bk, %.prol.preheader82 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bm, %.prol.preheader82 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %.prol.preheader82 ]
  %i.bn = icmp ult i64 %i.bg, 8
  br i1 %i.bn, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit83, %.lr.ph.i.i.i.i.i.i.i.new
  %i.bo = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.unr87, %.prol.loopexit83 ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit83 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit83 ] ; 9 uses
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.bp, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1739
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.bs, ptr %i.br, align 4, !tbaa !41, !noalias !1739
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bv = load <2 x i32>, ptr %i.bt, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !41, !noalias !1739
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.by = load <2 x i32>, ptr %i.bw, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.by, ptr %i.bx, align 4, !tbaa !41, !noalias !1739
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !41, !noalias !1739
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !41, !noalias !1739
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.ch = load <2 x i32>, ptr %i.cf, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !41, !noalias !1739
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ck = load <2 x i32>, ptr %i.ci, align 4, !tbaa !41, !noalias !1739
  store <2 x i32> %i.ck, ptr %i.cj, align 4, !tbaa !41, !noalias !1739
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.cn = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit83
  %i.co = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bg
  store i64 %i.co, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1739
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !128
  %i.cp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cq = load i64, ptr %i.bd, align 8, !tbaa !102, !noalias !1740 ; 3 uses
  %.idx66 = shl nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds i8, ptr %2, i64 %.idx66
  %i.cs = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1741 ; 2 uses
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1742 ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = icmp eq i64 %i.cq, %i.ct
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.cv)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.cq, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.044.0 = phi ptr [ %i.de, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.df, %.noexc24 ], [ %i.cs, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.039.0, %i.cu
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.cx = load <2 x i32>, ptr %.sroa.044.0, align 4
  %i.cy = load <2 x i32>, ptr %.sroa.039.0, align 4
  %i.cz = icmp eq <2 x i32> %i.cx, %i.cy          ; 2 uses
  %i.da = extractelement <2 x i1> %i.cz, i64 0
  %i.db = extractelement <2 x i1> %i.cz, i64 1
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  %i.dd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.dc)
          to label %.noexc24 unwind label %.loopexit ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  %.not.i21 = icmp eq ptr %i.de, %i.cr
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !24

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  %i.dg = load i64, ptr %i.bd, align 8, !tbaa !102 ; 2 uses
end_hunk_6
begin_hunk_7_@_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_:bb.a
  %.sroa.0.i.i.i.i.i.i = alloca ptr, align 8      ; 5 uses
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1784 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !128
  %i.d = icmp eq ptr %i.b, %i.a
  br i1 %i.d, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.f = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 7 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105, !noalias !1785 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %bb.b, !prof !185

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !197, !noalias !1786
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1787
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %.sroa.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.prol.preheader ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.h = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1786 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !41, !noalias !1787
  store <2 x i32> %i.j, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1787
  %i.k = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.l = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1755

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.h, %.prol.preheader ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.l, %.prol.preheader ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.k, %.prol.preheader ]
  %i.m = icmp ult i64 %.03.i.i.i.i.i.i, 3
  br i1 %i.m, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.new:                     ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.new
  %.in.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.in.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.n = load ptr, ptr %.in.i.i.i.i.i.i.i, align 8, !tbaa !188, !noalias !1786 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !41, !noalias !1787
  store <2 x i32> %i.p, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1787
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !188, !noalias !1786 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load <2 x i32>, ptr %i.s, align 4, !tbaa !41, !noalias !1787
  store <2 x i32> %i.t, ptr %i.q, align 4, !tbaa !41, !noalias !1787
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !188, !noalias !1786 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !41, !noalias !1787
  store <2 x i32> %i.x, ptr %i.u, align 4, !tbaa !41, !noalias !1787
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !188, !noalias !1786 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load <2 x i32>, ptr %i.aa, align 4, !tbaa !41, !noalias !1787
  store <2 x i32> %i.ab, ptr %i.y, align 4, !tbaa !41, !noalias !1787
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.ad = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.ae = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.f
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1787
  store i64 %i.f, ptr %i.c, align 8, !tbaa !128, !noalias !1786
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1786
  unreachable

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.af = phi i64 [ 0, %bb.a ], [ %i.f, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.ag = load i64, ptr %0, align 8, !tbaa !114
  %i.ah = icmp eq i64 %i.af, %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.ah)
          to label %bb.c unwind label %.loopexit.split-lp71 ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1788 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.ak, %i.a
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %i.al = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.ak, %bb.c ]
  %.03.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %i.am = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.am, %.lr.ph.i.i.i ]
  %i.ao = icmp eq i64 %i.af, %.0.lcssa.i.i.i
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.ao)
          to label %.noexc unwind label %.loopexit.split-lp71 ; 0 uses

.noexc:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %.not5.i = icmp eq i64 %i.af, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.058.0 = phi ptr [ %i.az, %.noexc13 ], [ %i.ak, %.noexc ] ; 3 uses
  %.sroa.063.0 = phi ptr [ %i.ay, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.058.0, %i.a
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.058.0, i64 16
  %i.ar = load <2 x i32>, ptr %.sroa.063.0, align 4
  %i.as = load <2 x i32>, ptr %i.aq, align 4
  %i.at = icmp eq <2 x i32> %i.ar, %i.as          ; 2 uses
  %i.au = extractelement <2 x i1> %i.at, i64 0
  %i.av = extractelement <2 x i1> %i.at, i64 1
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.aw)
          to label %.noexc13 unwind label %.loopexit70 ; 0 uses

.noexc13:                                         ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 8 ; 2 uses
  %i.az = load ptr, ptr %.sroa.058.0, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !1762

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ba = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.af
  store i64 %i.ba, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store i64 0, ptr %i.bb, align 8, !tbaa !128
  %i.bc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1789 ; 3 uses
  %.not94 = icmp eq ptr %i.bd, %i.a
  br i1 %.not94, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i
  store i64 0, ptr %i.bb, align 8, !tbaa !128
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %i.be = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.bd, %.critedge.i ]
  %.03.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i ], [ 0, %.critedge.i ] ; 3 uses
  %i.bf = add nuw i64 %.03.i.i.i.i, 1             ; 7 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !105, !noalias !1790 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp samesign ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.not.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %bb.e, !prof !185

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  store ptr %i.bd, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !197, !noalias !1791
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1792
  %xtraiter106 = and i64 %i.bf, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.prol.loopexit105, label %.prol.preheader104

.prol.preheader104:                               ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader104
  %.in.i.i.i.i.i.prol = phi ptr [ %i.bh, %.prol.preheader104 ], [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.prol.preheader104 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bk, %.prol.preheader104 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.prol.preheader104 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bh = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1791 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !41, !noalias !1792
  store <2 x i32> %i.bj, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1792
  %i.bk = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bl = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.prol.loopexit105, label %.prol.preheader104, !llvm.loop !1775

.prol.loopexit105:                                ; preds = %.prol.preheader104, %.lr.ph.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bh, %.prol.preheader104 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %.prol.preheader104 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bk, %.prol.preheader104 ]
  %i.bm = icmp ult i64 %.03.i.i.i.i, 3
  br i1 %i.bm, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit105, %.lr.ph.i.i.i.i.i.i.i.new
  %.in.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.in.i.i.i.i.i.unr, %.prol.loopexit105 ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit105 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit105 ] ; 5 uses
  %i.bn = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !188, !noalias !1791 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !41, !noalias !1792
  store <2 x i32> %i.bp, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1792
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !188, !noalias !1791 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !41, !noalias !1792
  store <2 x i32> %i.bt, ptr %i.bq, align 4, !tbaa !41, !noalias !1792
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !188, !noalias !1791 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load <2 x i32>, ptr %i.bw, align 4, !tbaa !41, !noalias !1792
  store <2 x i32> %i.bx, ptr %i.bu, align 4, !tbaa !41, !noalias !1792
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !188, !noalias !1791 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !41, !noalias !1792
  store <2 x i32> %i.cb, ptr %i.by, align 4, !tbaa !41, !noalias !1792
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.cd = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit105
  %i.ce = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bf
  store i64 %i.ce, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1792
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !128, !noalias !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.e
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cf = phi i64 [ %i.bf, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  %i.cg = load i64, ptr %0, align 8, !tbaa !114
  %i.ch = icmp eq i64 %i.cf, %i.cg
  %i.ci = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.ch)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit
  %i.cj = load i64, ptr %i.bb, align 8, !tbaa !102, !noalias !1793 ; 3 uses
  %.idx69 = shl nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds i8, ptr %2, i64 %.idx69
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1794 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cl, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.f, %.lr.ph.i.i.i17
  %i.cm = phi ptr [ %i.co, %.lr.ph.i.i.i17 ], [ %i.cl, %bb.f ]
  %.03.i.i.i18 = phi i64 [ %i.cn, %.lr.ph.i.i.i17 ], [ 0, %bb.f ]
  %i.cn = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.co, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20: ; preds = %.lr.ph.i.i.i17, %bb.f
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %bb.f ], [ %i.cn, %.lr.ph.i.i.i17 ]
  %i.cp = icmp eq i64 %i.cj, %.0.lcssa.i.i.i21
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cp)
          to label %.noexc29 unwind label %.loopexit.split-lp ; 0 uses

.noexc29:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  %.not5.i22 = icmp eq i64 %i.cj, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.noexc29, %.noexc30
  %.sroa.050.0 = phi ptr [ %i.cz, %.noexc30 ], [ %2, %.noexc29 ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.da, %.noexc30 ], [ %i.cl, %.noexc29 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.045.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i25
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.cs = load <2 x i32>, ptr %.sroa.050.0, align 4
  %i.ct = load <2 x i32>, ptr %i.cr, align 4
  %i.cu = icmp eq <2 x i32> %i.cs, %i.ct          ; 2 uses
  %i.cv = extractelement <2 x i1> %i.cu, i64 0
  %i.cw = extractelement <2 x i1> %i.cu, i64 1
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cx)
          to label %.noexc30 unwind label %.loopexit ; 0 uses

.noexc30:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %.sroa.045.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cz, %i.ck
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25, !llvm.loop !1762

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %.noexc29
  %i.db = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i32 = icmp eq i64 %i.db, 0
  br i1 %.not3.i.i32, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35, label %.lr.ph.preheader.i.i33

.lr.ph.preheader.i.i33:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31
  %_ZZN14counting_value1cEvE2co.promoted.i.i34 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dc = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i34, %i.db
  store i64 %i.dc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, %.lr.ph.preheader.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit70:                                      ; preds = %bb.d
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp71:                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp71, %.loopexit70
  %lpad.phi74 = phi { ptr, i32 } [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
  %.not3.i.i36 = icmp eq i64 %i.af, 0
  br i1 %.not3.i.i36, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39, label %.lr.ph.preheader.i.i37

.lr.ph.preheader.i.i37:                           ; preds = %bb.h
  %_ZZN14counting_value1cEvE2co.promoted.i.i38 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i38, %i.af
  store i64 %i.dd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39: ; preds = %bb.h, %.lr.ph.preheader.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, %bb.e, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.de = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i40 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i40, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, label %.lr.ph.preheader.i.i41

.lr.ph.preheader.i.i41:                           ; preds = %bb.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i42 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.df = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i42, %i.de
  store i64 %i.df, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43: ; preds = %bb.i, %.lr.ph.preheader.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43 ], [ %lpad.phi74, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %_ZZN14counting_value1cEvE2co.promoted.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.c = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i, %i.b
  store i64 %i.c, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit: ; preds = %.lr.ph.preheader.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !133  ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !136
  %i.g = shl i64 %i.e, 3
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.g) #25
  br label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1797 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !105 ; 2 uses
  %i.d = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i, i64 noundef 24) #25
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_7
begin_hunk_8_@_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_:bb.a
  %cmp.n149 = icmp eq i64 %i.be, %n.vec143
  br i1 %cmp.n149, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i33, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %.lr.ph.i.preheader.i27, %middle.block148
  %.05.i.i30.ph = phi i64 [ %i.be, %.lr.ph.i.preheader.i27 ], [ %i.bf, %middle.block148 ]
  %storemerge4.i.i31.ph = phi ptr [ %2, %.lr.ph.i.preheader.i27 ], [ %i.bh, %middle.block148 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29
  %.05.i.i30 = phi i64 [ %i.bl, %.lr.ph.i.i29 ], [ %.05.i.i30.ph, %.lr.ph.i.i29.preheader ]
  %storemerge4.i.i31 = phi ptr [ %i.bm, %.lr.ph.i.i29 ], [ %storemerge4.i.i31.ph, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.bl = add i64 %.05.i.i30, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !82
  %i.bm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  %.not.i.i32 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i32, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i33, label %.lr.ph.i.i29, !llvm.loop !1878

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i33: ; preds = %.lr.ph.i.i29, %middle.block148
  %i.bn = trunc i64 %i.be to i32
  %i.bo = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i28, %i.bn
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit34

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit34: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit82:                                      ; preds = %bb.e
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp83:                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, %bb.d
  %lpad.loopexit.split-lp85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp83, %.loopexit82
  %lpad.phi86 = phi { ptr, i32 } [ %lpad.loopexit84, %.loopexit82 ], [ %lpad.loopexit.split-lp85, %.loopexit.split-lp83 ]
  %.not3.i.i35 = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43, label %.lr.ph.i.preheader.i36

.lr.ph.i.preheader.i36:                           ; preds = %bb.j
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i37 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i36
  %n.vec = and i64 %i.b, -8                       ; 3 uses
  %i.bp = and i64 %i.b, 7
  %i.bq = shl i64 %n.vec, 2
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.bt, align 8, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !1879

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.preheader.i36, %middle.block
  %.05.i.i39.ph = phi i64 [ %i.b, %.lr.ph.i.preheader.i36 ], [ %i.bp, %middle.block ]
  %storemerge4.i.i40.ph = phi ptr [ %1, %.lr.ph.i.preheader.i36 ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.05.i.i39 = phi i64 [ %i.bv, %.lr.ph.i.i38 ], [ %.05.i.i39.ph, %.lr.ph.i.i38.preheader ]
  %storemerge4.i.i40 = phi ptr [ %i.bw, %.lr.ph.i.i38 ], [ %storemerge4.i.i40.ph, %.lr.ph.i.i38.preheader ] ; 2 uses
  %i.bv = add i64 %.05.i.i39, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i40, align 4, !tbaa !82
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i40, i64 4
  %.not.i.i41 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i41, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42, label %.lr.ph.i.i38, !llvm.loop !1880

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42: ; preds = %.lr.ph.i.i38, %middle.block
  %i.bx = trunc nuw nsw i64 %i.b to i32
  %i.by = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i37, %i.bx
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43: ; preds = %bb.j, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.l

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bz = load i64, ptr %i.ac, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i44 = icmp eq i64 %i.bz, 0
  br i1 %.not3.i.i44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit52, label %.lr.ph.i.preheader.i45

.lr.ph.i.preheader.i45:                           ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i46 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check129 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check129, label %.lr.ph.i.i47.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %.lr.ph.i.preheader.i45
  %n.vec131 = and i64 %i.bz, -8                   ; 3 uses
  %i.ca = and i64 %i.bz, 7
  %i.cb = shl i64 %n.vec131, 2
  %i.cc = getelementptr i8, ptr %2, i64 %i.cb
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next135, %vector.body132 ] ; 2 uses
  %i.cd = shl i64 %index133, 2
  %next.gep134 = getelementptr i8, ptr %2, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep134, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ce, align 8, !tbaa !82
  %index.next135 = add nuw i64 %index133, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next135, %n.vec131
  br i1 %i.cf, label %middle.block136, label %vector.body132, !llvm.loop !1881

middle.block136:                                  ; preds = %vector.body132
  %cmp.n137 = icmp eq i64 %i.bz, %n.vec131
  br i1 %cmp.n137, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i51, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %.lr.ph.i.preheader.i45, %middle.block136
  %.05.i.i48.ph = phi i64 [ %i.bz, %.lr.ph.i.preheader.i45 ], [ %i.ca, %middle.block136 ]
  %storemerge4.i.i49.ph = phi ptr [ %2, %.lr.ph.i.preheader.i45 ], [ %i.cc, %middle.block136 ]
  br label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.preheader, %.lr.ph.i.i47
  %.05.i.i48 = phi i64 [ %i.cg, %.lr.ph.i.i47 ], [ %.05.i.i48.ph, %.lr.ph.i.i47.preheader ]
  %storemerge4.i.i49 = phi ptr [ %i.ch, %.lr.ph.i.i47 ], [ %storemerge4.i.i49.ph, %.lr.ph.i.i47.preheader ] ; 2 uses
  %i.cg = add i64 %.05.i.i48, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i49, align 4, !tbaa !82
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i49, i64 4
  %.not.i.i50 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i50, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i51, label %.lr.ph.i.i47, !llvm.loop !1882

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i51: ; preds = %.lr.ph.i.i47, %middle.block136
  %i.ci = trunc i64 %i.bz to i32
  %i.cj = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i46, %i.ci
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit52

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit52: ; preds = %bb.k, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit52, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit52 ], [ %lpad.phi86, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit43 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !147, !noalias !1940 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !1941 ; 22 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i2.i.i.i = icmp ugt i64 %i.c, 10
  br i1 %.not.i.i2.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942 ; 2 uses
  %i.e = add nsw i64 %i.c, -1
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.f = phi i32 [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ]
  %i.g = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ]
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82, !noalias !1942
  store i32 %i.h, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !1942
  %i.i = add i32 %i.f, 1                          ; 3 uses
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.l = add i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1903

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr137 = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.e, 3
  br i1 %i.m, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.n = phi i32 [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.o = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr137, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82, !noalias !1942
  store i32 %i.p, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !1942
  %i.q = add i32 %i.n, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 4
  %i.t = load i32, ptr %i.r, align 4, !tbaa !82, !noalias !1942
  store i32 %i.t, ptr %i.s, align 4, !tbaa !82, !noalias !1942
  %i.u = add i32 %i.n, 2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.x = load i32, ptr %i.v, align 4, !tbaa !82, !noalias !1942
  store i32 %i.x, ptr %i.w, align 4, !tbaa !82, !noalias !1942
  %i.y = add i32 %i.n, 3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !82, !noalias !1942
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !82, !noalias !1942
  %i.ac = add i32 %i.n, 4                         ; 2 uses
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1942
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.af = add i64 %.015.i.i.i.i.i.i.i.i.i, -4     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1904

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1943
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.a
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp83 ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit
  %.idx = shl nuw nsw i64 %i.c, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ai = load ptr, ptr %0, align 8, !tbaa !147, !noalias !1944 ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !1945 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = icmp eq i64 %i.c, %i.aj
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.al)
          to label %.noexc unwind label %.loopexit.split-lp83 ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.067.0 = phi ptr [ %i.as, %.noexc13 ], [ %i.ai, %.noexc ] ; 3 uses
  %.sroa.072.0 = phi ptr [ %i.ar, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.067.0, %i.ak
  br i1 %.not4.i, label %.lr.ph.i.preheader.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.an = load i32, ptr %.sroa.072.0, align 4, !tbaa !82
  %i.ao = load i32, ptr %.sroa.067.0, align 4, !tbaa !82
  %i.ap = icmp eq i32 %i.an, %i.ao
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.ap)
          to label %.noexc13 unwind label %.loopexit82 ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.072.0, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 4
  %.not.i = icmp eq ptr %i.ar, %i.ah
  br i1 %.not.i, label %.lr.ph.i.preheader.i, label %.lr.ph.i, !llvm.loop !28

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check102 = icmp ult i64 %i.c, 8
  br i1 %min.iters.check102, label %.lr.ph.i.i.preheader, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.preheader.i
  %n.vec104 = and i64 %i.c, -8                    ; 3 uses
  %i.at = and i64 %i.c, 7
  %i.au = shl i64 %n.vec104, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next108, %vector.body105 ] ; 2 uses
  %i.aw = shl i64 %index106, 2
  %next.gep107 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep107, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep107, align 8, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ax, align 8, !tbaa !82
  %index.next108 = add nuw i64 %index106, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next108, %n.vec104
  br i1 %i.ay, label %middle.block109, label %vector.body105, !llvm.loop !1911

middle.block109:                                  ; preds = %vector.body105
  %cmp.n110 = icmp eq i64 %i.c, %n.vec104
  br i1 %cmp.n110, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block109
  %.05.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.preheader.i ], [ %i.at, %middle.block109 ]
  %storemerge4.i.i.ph = phi ptr [ %1, %.lr.ph.i.preheader.i ], [ %i.av, %middle.block109 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1912

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block109
  %i.bb = trunc nuw nsw i64 %i.c to i32
  %i.bc = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.bb
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !139
  %i.be = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !147, !noalias !1946 ; 2 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !1947 ; 7 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %.not.i.i2.i = icmp ugt i64 %i.bg, 10
  br i1 %.not.i.i2.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948 ; 2 uses
  %xtraiter138 = and i64 %i.bg, 3                 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %i.bi = phi i32 [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bj = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !82, !noalias !1948
  store i32 %i.bk, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !1948
  %i.bl = add i32 %i.bi, 1                        ; 3 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bo = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1925

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.unr141 = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr142 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bg, 4
  br i1 %i.bp, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.bq = phi i32 [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr141, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.br = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr142, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !82, !noalias !1948
  store i32 %i.bs, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !82, !noalias !1948
  %i.bt = add i32 %i.bq, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !82, !noalias !1948
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !82, !noalias !1948
  %i.bx = add i32 %i.bq, 2
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !82, !noalias !1948
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !82, !noalias !1948
  %i.cb = add i32 %i.bq, 3
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !82, !noalias !1948
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !82, !noalias !1948
  %i.cf = add i32 %i.bq, 4                        ; 2 uses
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !1948
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ci = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1904

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %.critedge.i
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !139
  %i.cj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_6vectorIS3_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.ck = load i64, ptr %i.bd, align 8, !tbaa !141, !noalias !1949 ; 3 uses
  %.idx81 = shl nsw i64 %i.ck, 2
  %i.cl = getelementptr inbounds i8, ptr %2, i64 %.idx81
  %i.cm = load ptr, ptr %0, align 8, !tbaa !147, !noalias !1950 ; 2 uses
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !1951 ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = icmp eq i64 %i.ck, %i.cn
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_, i1 noundef zeroext %i.cp)
          to label %.noexc23 unwind label %.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.ck, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEENS2_IS5_Lb1EEEEvT_S8_T0_S9_.exit25, label %.lr.ph.i19

end_hunk_8
begin_hunk_9_@_Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_:bb.a
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !41, !noalias !2230
  store i32 %i.dg, ptr %.06.i.i45.i.i.i.i.i, align 4, !tbaa !41, !noalias !2230
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !105, !noalias !2230 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i45.i.i.i.i.i, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !41, !noalias !2230
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !41, !noalias !2230
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !105, !noalias !2230 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i45.i.i.i.i.i, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !41, !noalias !2230
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !41, !noalias !2230
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !105, !noalias !2230 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i.i45.i.i.i.i.i, i64 12
  %i.dr = add i64 %.035.i.i46.i.i.i.i.i, -4       ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41, !noalias !2230
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !41, !noalias !2230
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !105, !noalias !2230 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i45.i.i.i.i.i, i64 16
  %.not.i.i47.i.i.i.i.i.3 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i47.i.i.i.i.i.3, label %.loopexit55.i.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i.i, !llvm.loop !2214

.loopexit55.i.i.i.i.i:                            ; preds = %.lr.ph.i.i44.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit
  %.lcssa124 = phi ptr [ %.lcssa124.unr, %.lr.ph.i.i44.i.i.i.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i44.i.i.i.i.i ] ; 2 uses
  %i.dw = sub i64 %.0.lcssa.i.i8.i, %i.aq         ; 3 uses
  %xtraiter128 = and i64 %i.dw, 3                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i49.i.i.i.i.i.prol

.lr.ph.i.i49.i.i.i.i.i.prol:                      ; preds = %.loopexit55.i.i.i.i.i, %.lr.ph.i.i49.i.i.i.i.i.prol
  %i.dx = phi ptr [ %i.ea, %.lr.ph.i.i49.i.i.i.i.i.prol ], [ %.lcssa124, %.loopexit55.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.ec, %.lr.ph.i.i49.i.i.i.i.i.prol ], [ %i.dw, %.loopexit55.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.eb, %.lr.ph.i.i49.i.i.i.i.i.prol ], [ %i.q, %.loopexit55.i.i.i.i.i ] ; 3 uses
  %prol.iter130 = phi i64 [ %prol.iter130.next, %.lr.ph.i.i49.i.i.i.i.i.prol ], [ 0, %.loopexit55.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !41, !noalias !2231
  store i32 %i.dz, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2231
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !105, !noalias !2231 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ec = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter130.next = add i64 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i64 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i49.i.i.i.i.i.prol, !llvm.loop !2222

.lr.ph.i.i49.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i49.i.i.i.i.i.prol, %.loopexit55.i.i.i.i.i
  %.unr131 = phi ptr [ %.lcssa124, %.loopexit55.i.i.i.i.i ], [ %i.ea, %.lr.ph.i.i49.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.dw, %.loopexit55.i.i.i.i.i ], [ %i.ec, %.lr.ph.i.i49.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %i.q, %.loopexit55.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.i49.i.i.i.i.i.prol ]
  %i.ed = sub i64 %i.aq, %.0.lcssa.i.i8.i
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %.loopexit, label %.lr.ph.i.i49.i.i.i.i.i

.lr.ph.i.i49.i.i.i.i.i:                           ; preds = %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i.i
  %i.ef = phi ptr [ %i.eu, %.lr.ph.i.i49.i.i.i.i.i ], [ %.unr131, %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i49.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ev, %.lr.ph.i.i49.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !41, !noalias !2231
  store i32 %i.eh, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2231
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !105, !noalias !2231 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !41, !noalias !2231
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !41, !noalias !2231
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !105, !noalias !2231 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !41, !noalias !2231
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !41, !noalias !2231
  %i.eq = load ptr, ptr %i.em, align 8, !tbaa !105, !noalias !2231 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !41, !noalias !2231
  store i32 %i.et, ptr %i.er, align 4, !tbaa !41, !noalias !2231
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !105, !noalias !2231
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ew = add i64 %.015.i.i.i.i.i.i.i, -4         ; 2 uses
  %.not.i.i50.i.i.i.i.i.3 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.i50.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i49.i.i.i.i.i, !llvm.loop !22

_ZN5boost9container31expand_forward_and_insert_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEEvRT_T0_SR_mT1_.exit.loopexit6.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !2227
  br label %.loopexit

.noexc:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i49.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZN5boost9container31expand_forward_and_insert_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEEvRT_T0_SR_mT1_.exit.loopexit6.i.i.i, %bb.d, %bb.c
  %i.ex = phi i64 [ %.pre.i.i.i, %_ZN5boost9container31expand_forward_and_insert_allocINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEEvRT_T0_SR_mT1_.exit.loopexit6.i.i.i ], [ %.0386787, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.f, %bb.d ], [ %.0386787, %bb.c ], [ %.0386787, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i49.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i49.i.i.i.i.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ey = add i64 %i.ex, %.0.lcssa.i.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ez = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext true) ; 0 uses
  %i.fa = icmp eq i64 %i.ey, 8
  %i.fb = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fa) ; 0 uses
  %.not = icmp eq i64 %.0386787, 0
  br i1 %.not, label %.preheader57, label %.lr.ph

.preheader57:                                     ; preds = %.lr.ph, %.loopexit
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0386787 ; 4 uses
  %i.fc = load i32, ptr %invariant.gep, align 4, !tbaa !77
  %i.fd = icmp eq i32 %i.fc, 100
  %i.fe = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fd) ; 0 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.ff = load i32, ptr %gep.1, align 4, !tbaa !77
  %i.fg = icmp eq i32 %i.ff, 101
  %i.fh = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fg) ; 0 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.fi = load i32, ptr %gep.2, align 4, !tbaa !77
  %i.fj = icmp eq i32 %i.fi, 102
  %i.fk = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fj) ; 0 uses
  %.not68 = icmp eq i64 %.0386787, 5
  br i1 %.not68, label %bb.b, label %.lr.ph66

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.03461 = phi i64 [ %i.fq, %.lr.ph ], [ 0, %.loopexit ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03461
  %i.fm = trunc nuw nsw i64 %.03461 to i32
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !77
  %i.fo = icmp eq i32 %i.fn, %i.fm
  %i.fp = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fo) ; 0 uses
  %i.fq = add nuw nsw i64 %.03461, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.fq, %.0386787
  br i1 %exitcond.not, label %.preheader57, label %.lr.ph, !llvm.loop !2223

.lr.ph66:                                         ; preds = %.preheader57
  %i.fr = trunc nuw nsw i64 %.0386787 to i32
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.fs = add nuw nsw i64 %.0386787, 1
  %indvars.iv.next = add nsw i64 %indvars.iv86, -1 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.next, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ft = load i64, ptr %i.a, align 8, !tbaa !120 ; 3 uses
  store i64 %i.ft, ptr %i.b, align 8, !tbaa !118
  %i.fu = icmp ugt i64 %i.ft, 10
  br i1 %i.fu, label %._crit_edge89, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.h:                                             ; preds = %.lr.ph66, %bb.h
  %.065 = phi i64 [ 0, %.lr.ph66 ], [ %i.gb, %bb.h ] ; 3 uses
  %gep64 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.065
  %i.fv = getelementptr inbounds nuw i8, ptr %gep64, i64 12
  %i.fw = trunc nuw nsw i64 %.065 to i32
  %i.fx = add nuw nsw i32 %i.fw, %i.fr
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !77
  %i.fz = icmp eq i32 %i.fy, %i.fx
  %i.ga = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI8value_ndLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.fz) ; 0 uses
  %i.gb = add nuw nsw i64 %.065, 1                ; 2 uses
  %exitcond73.not = icmp eq i64 %i.gb, %umax88
  br i1 %exitcond73.not, label %._crit_edge, label %bb.h, !llvm.loop !2224
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::container::dtl::insert_range_proxy.126", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03875 = phi i64 [ 0, %bb.a ], [ %i.cv, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 8 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !102  ; 11 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !128
  %i.e = icmp ugt i64 %i.d, 10
  br i1 %i.e, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not17.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.020.i.i.i.prol = phi i64 [ %i.f, %.prol.preheader ], [ %i.d, %.lr.ph.i.i.i ]
  %.0819.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %0, %.lr.ph.i.i.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.i, %.prol.preheader ], [ %3, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.f = add i64 %.020.i.i.i.prol, -1             ; 2 uses
  %i.g = load <2 x i32>, ptr %.0819.i.i.i.prol, align 4, !tbaa !41
  store <2 x i32> %i.g, ptr %.01618.i.i.i.prol, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2232

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.020.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i ], [ %i.f, %.prol.preheader ]
  %.0819.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.h, %.prol.preheader ]
  %.01618.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i ], [ %i.i, %.prol.preheader ]
  %i.j = icmp ult i64 %i.d, 8
  br i1 %i.j, label %.unr-lcssa, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.020.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.new ], [ %.020.i.i.i.unr, %.prol.loopexit ]
  %.0819.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.new ], [ %.0819.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.01618.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.new ], [ %.01618.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.k = load <2 x i32>, ptr %.0819.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.k, ptr %.01618.i.i.i, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !41
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !41
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 24
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !41
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 32
  %i.w = load <2 x i32>, ptr %i.u, align 4, !tbaa !41
  store <2 x i32> %i.w, ptr %i.v, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 40
  %i.z = load <2 x i32>, ptr %i.x, align 4, !tbaa !41
  store <2 x i32> %i.z, ptr %i.y, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 48
  %i.ac = load <2 x i32>, ptr %i.aa, align 4, !tbaa !41
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 56
  %i.af = add i64 %.020.i.i.i, -8                 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !tbaa !41
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 64
  %.not.i.i.i.7 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !8

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %i.aj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, %i.d
  store i64 %i.aj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i = icmp samesign ugt i64 %i.d, 7
  br i1 %.not.i.i, label %bb.f, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.unr-lcssa
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03875 ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !2242
  %i.am = icmp samesign eq i64 %i.d, %.03875
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i.i.i:                               ; preds = %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2243
  %i.an = load <4 x i32>, ptr %1, align 8, !tbaa !41, !noalias !2243
  store <4 x i32> %i.an, ptr %i.al, align 8, !tbaa !41, !noalias !2243
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = load <2 x i32>, ptr %i.c, align 8, !tbaa !41, !noalias !2243
  store <2 x i32> %i.ap, ptr %i.ao, align 8, !tbaa !41, !noalias !2243
  %i.aq = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 3
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2243
  br label %bb.g

bb.e:                                             ; preds = %.thread
  store ptr %1, ptr %2, align 8, !tbaa !208, !noalias !2242
  invoke void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 3, ptr noundef nonnull align 8 dead_on_return %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !128, !noalias !2242
  br label %bb.g

bb.f:                                             ; preds = %.unr-lcssa
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i
  %i.ar = phi i64 [ %.pre.i.i.i, %.noexc ], [ %.03875, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !2242
  %i.as = add i64 %i.ar, 3
  store i64 %i.as, ptr %i.b, align 8, !tbaa !128, !noalias !2242
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.au = load i64, ptr %i.b, align 8, !tbaa !102
  %i.av = icmp eq i64 %i.au, 8
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.av)
          to label %.preheader61 unwind label %bb.j ; 0 uses

.preheader61:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03875, 0
  %.pre80 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  br i1 %.not, label %.preheader60, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  %i.ax = add i64 %.pre80, 1
  br label %.lr.ph

.preheader60:                                     ; preds = %bb.k, %.preheader61
  %i.ay = phi i64 [ %.pre80, %.preheader61 ], [ %i.bu, %bb.k ]
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !79
  %i.bb = icmp eq i32 %i.ba, 100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  %i.bg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.bf)
          to label %bb.m unwind label %bb.o       ; 0 uses

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.bj = phi i64 [ %i.bt, %bb.k ], [ %i.ax, %.lr.ph.preheader ]
  %.03469 = phi i64 [ %i.bv, %bb.k ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03469 ; 2 uses
  %i.bl = trunc nuw nsw i64 %.03469 to i32
  store i64 %i.bj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bm = load i32, ptr %i.bk, align 8, !tbaa !79
  %i.bn = icmp eq i32 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = select i1 %i.bn, i1 %i.bq, i1 false
  %i.bs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.br)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %.lr.ph
  %i.bt = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.bu = add i64 %i.bt, -1                       ; 2 uses
  store i64 %i.bu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bv = add nuw nsw i64 %.03469, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %.03875
  br i1 %exitcond.not, label %.preheader60, label %.lr.ph, !llvm.loop !2239

bb.l:                                             ; preds = %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

.lr.ph74:                                         ; preds = %.preheader
  %i.bz = trunc nuw nsw i64 %.03875 to i32
  br label %bb.p

bb.m:                                             ; preds = %.preheader60
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ca = load i32, ptr %gep.1, align 8, !tbaa !79
  %i.cb = icmp eq i32 %i.ca, 101
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  %i.cg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.cf)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ch = load i32, ptr %gep.2, align 8, !tbaa !79
  %i.ci = icmp eq i32 %i.ch, 102
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.cm)
          to label %.preheader unwind label %bb.o ; 0 uses

.preheader:                                       ; preds = %bb.n
  %i.co = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not76 = icmp eq i64 %.03875, 5
  br i1 %.not76, label %._crit_edge, label %.lr.ph74

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader60
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cs = add i64 %i.cr, -1
  store i64 %i.cs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %i.cp, %.preheader ], [ %i.di, %bb.q ]
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge
  %i.cu = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.ct
  store i64 %i.cu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %._crit_edge, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cv = add nuw nsw i64 %.03875, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond79.not = icmp eq i64 %i.cv, 6
  br i1 %exitcond79.not, label %bb.b, label %bb.c, !llvm.loop !2240

bb.p:                                             ; preds = %.lr.ph74, %bb.q
  %i.cw = phi i64 [ %i.co, %.lr.ph74 ], [ %i.dh, %bb.q ]
  %.073 = phi i64 [ 0, %.lr.ph74 ], [ %i.dj, %bb.q ] ; 3 uses
  %gep72 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.073 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %gep72, i64 24
  %i.cy = trunc nuw nsw i64 %.073 to i32
  %i.cz = add nuw nsw i32 %i.cy, %i.bz
  store i64 %i.cw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.da = load i32, ptr %i.cx, align 8, !tbaa !79
  %i.db = icmp eq i32 %i.da, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %gep72, i64 28
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = select i1 %i.db, i1 %i.de, i1 false
  %i.dg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_, i1 noundef zeroext %i.df)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.dh = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.di = add i64 %i.dh, -1                       ; 2 uses
  store i64 %i.di, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dj = add nuw nsw i64 %.073, 1                ; 2 uses
  %exitcond78.not = icmp eq i64 %i.dj, %umax
  br i1 %exitcond78.not, label %._crit_edge, label %bb.p, !llvm.loop !2241

bb.r:                                             ; preds = %bb.p
  %i.dk = landingpad { ptr, i32 }
          cleanup
  %i.dl = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dm = add i64 %i.dl, -1
  store i64 %i.dm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.j, %bb.l, %bb.o, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bw, %bb.l ], [ %i.cq, %bb.o ], [ %i.dk, %bb.r ], [ %i.bi, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not3.i.i42, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45, label %.lr.ph.preheader.i.i43

.lr.ph.preheader.i.i43:                           ; preds = %bb.s
  %_ZZN14counting_value1cEvE2co.promoted.i.i44 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.do = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i44, %i.dn
  store i64 %i.do, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45: ; preds = %bb.s, %.lr.ph.preheader.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::container::dtl::insert_range_proxy.126", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03875 = phi i64 [ 0, %bb.a ], [ %i.cz, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 8 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = load i64, ptr %i.a, align 8, !tbaa !102  ; 11 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !128
  %i.d = icmp ugt i64 %i.c, 10
  br i1 %i.d, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %xtraiter = and i64 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.020.i.i.i.prol = phi i64 [ %i.e, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i ]
  %.0819.i.i.i.prol = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph.i.i.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %3, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.e = add i64 %.020.i.i.i.prol, -1             ; 2 uses
  %i.f = load <2 x i32>, ptr %.0819.i.i.i.prol, align 4, !tbaa !41
  store <2 x i32> %i.f, ptr %.01618.i.i.i.prol, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2244

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.020.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %i.e, %.prol.preheader ]
  %.0819.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.g, %.prol.preheader ]
  %.01618.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i ], [ %i.h, %.prol.preheader ]
  %i.i = icmp ult i64 %i.c, 8
  br i1 %i.i, label %.unr-lcssa, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.020.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.new ], [ %.020.i.i.i.unr, %.prol.loopexit ]
  %.0819.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.new ], [ %.0819.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.01618.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.new ], [ %.01618.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.j = load <2 x i32>, ptr %.0819.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.j, ptr %.01618.i.i.i, align 4, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !41
  store <2 x i32> %i.m, ptr %i.l, align 4, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !41
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 24
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !41
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 32
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !41
  store <2 x i32> %i.v, ptr %i.u, align 4, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 40
  %i.y = load <2 x i32>, ptr %i.w, align 4, !tbaa !41
  store <2 x i32> %i.y, ptr %i.x, align 4, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 48
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !41
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 56
  %i.ae = add i64 %.020.i.i.i, -8                 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 4, !tbaa !41
  store <2 x i32> %i.af, ptr %i.ad, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 64
  %.not.i.i.i.7 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.new, !llvm.loop !8

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %i.ai = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, %i.c
  store i64 %i.ai, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not.i.i = icmp samesign ugt i64 %i.c, 7
  br i1 %.not.i.i, label %bb.f, label %.thread, !prof !149

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %.unr-lcssa
  %i.aj = load ptr, ptr %1, align 8, !tbaa !134, !noalias !2256 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03875 ; 8 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.c ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !2257
  %i.am = icmp samesign eq i64 %i.c, %.03875
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i.i.i:                               ; preds = %.thread
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2258
  %i.an = load <2 x i32>, ptr %i.aj, align 4, !tbaa !41, !noalias !2258
  store <2 x i32> %i.an, ptr %i.al, align 8, !tbaa !41, !noalias !2258
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load <2 x i32>, ptr %i.ao, align 4, !tbaa !41, !noalias !2258
  store <2 x i32> %i.aq, ptr %i.ap, align 8, !tbaa !41, !noalias !2258
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load <2 x i32>, ptr %i.ar, align 4, !tbaa !41, !noalias !2258
  store <2 x i32> %i.at, ptr %i.as, align 8, !tbaa !41, !noalias !2258
  %i.au = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 3
  store i64 %i.au, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2258
  br label %bb.g

bb.e:                                             ; preds = %.thread
  store ptr %i.aj, ptr %2, align 8, !tbaa !208, !noalias !2257
  invoke void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 3, ptr noundef nonnull align 8 dead_on_return %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.e
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !128, !noalias !2257
  br label %bb.g

bb.f:                                             ; preds = %.unr-lcssa
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i
  %i.av = phi i64 [ %.pre.i.i.i, %.noexc ], [ %.03875, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !2257
  %i.aw = add i64 %i.av, 3
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !128, !noalias !2257
  %i.ax = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !102
  %i.az = icmp eq i64 %i.ay, 8
  %i.ba = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.az)
          to label %.preheader61 unwind label %bb.j ; 0 uses

.preheader61:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03875, 0
  %.pre80 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  br i1 %.not, label %.preheader60, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  %i.bb = add i64 %.pre80, 1
  br label %.lr.ph

.preheader60:                                     ; preds = %bb.k, %.preheader61
  %i.bc = phi i64 [ %.pre80, %.preheader61 ], [ %i.by, %bb.k ]
  %i.bd = add i64 %i.bc, 1
  store i64 %i.bd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.be = load i32, ptr %i.ak, align 8, !tbaa !79
  %i.bf = icmp eq i32 %i.be, 100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = select i1 %i.bf, i1 %i.bi, i1 false
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bj)
          to label %bb.m unwind label %bb.o       ; 0 uses

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.bn = phi i64 [ %i.bx, %bb.k ], [ %i.bb, %.lr.ph.preheader ]
  %.03469 = phi i64 [ %i.bz, %bb.k ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03469 ; 2 uses
  %i.bp = trunc nuw nsw i64 %.03469 to i32
  store i64 %i.bn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bq = load i32, ptr %i.bo, align 8, !tbaa !79
  %i.br = icmp eq i32 %i.bq, %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = select i1 %i.br, i1 %i.bu, i1 false
  %i.bw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.bv)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %.lr.ph
  %i.bx = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.by = add i64 %i.bx, -1                       ; 2 uses
  store i64 %i.by, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bz = add nuw nsw i64 %.03469, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %.03875
  br i1 %exitcond.not, label %.preheader60, label %.lr.ph, !llvm.loop !2253

bb.l:                                             ; preds = %.lr.ph
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cc = add i64 %i.cb, -1
  store i64 %i.cc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

.lr.ph74:                                         ; preds = %.preheader
  %i.cd = trunc nuw nsw i64 %.03875 to i32
  br label %bb.p

bb.m:                                             ; preds = %.preheader60
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ce = load i32, ptr %gep.1, align 8, !tbaa !79
  %i.cf = icmp eq i32 %i.ce, 101
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = select i1 %i.cf, i1 %i.ci, i1 false
  %i.ck = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cj)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.cl = load i32, ptr %gep.2, align 8, !tbaa !79
  %i.cm = icmp eq i32 %i.cl, 102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, 0
  %i.cq = select i1 %i.cm, i1 %i.cp, i1 false
  %i.cr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cq)
          to label %.preheader unwind label %bb.o ; 0 uses

.preheader:                                       ; preds = %bb.n
  %i.cs = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.ct = add i64 %i.cs, -1                       ; 2 uses
  store i64 %i.ct, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not76 = icmp eq i64 %.03875, 5
  br i1 %.not76, label %._crit_edge, label %.lr.ph74

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader60
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cw = add i64 %i.cv, -1
  store i64 %i.cw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

._crit_edge:                                      ; preds = %bb.q, %.preheader
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %i.ct, %.preheader ], [ %i.dm, %bb.q ]
  %i.cx = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge
  %i.cy = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.cx
  store i64 %i.cy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %._crit_edge, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cz = add nuw nsw i64 %.03875, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond79.not = icmp eq i64 %i.cz, 6
  br i1 %exitcond79.not, label %bb.b, label %bb.c, !llvm.loop !2254

bb.p:                                             ; preds = %.lr.ph74, %bb.q
  %i.da = phi i64 [ %i.cs, %.lr.ph74 ], [ %i.dl, %bb.q ]
  %.073 = phi i64 [ 0, %.lr.ph74 ], [ %i.dn, %bb.q ] ; 3 uses
  %gep72 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.073 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %gep72, i64 24
  %i.dc = trunc nuw nsw i64 %.073 to i32
  %i.dd = add nuw nsw i32 %i.dc, %i.cd
  store i64 %i.da, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.de = load i32, ptr %i.db, align 8, !tbaa !79
  %i.df = icmp eq i32 %i.de, %i.dd
  %i.dg = getelementptr inbounds nuw i8, ptr %gep72, i64 28
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = select i1 %i.df, i1 %i.di, i1 false
  %i.dk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.dj)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.dl = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.dm = add i64 %i.dl, -1                       ; 2 uses
  store i64 %i.dm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dn = add nuw nsw i64 %.073, 1                ; 2 uses
  %exitcond78.not = icmp eq i64 %i.dn, %umax
  br i1 %exitcond78.not, label %._crit_edge, label %bb.p, !llvm.loop !2255

bb.r:                                             ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dq = add i64 %i.dp, -1
  store i64 %i.dq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i, %bb.j, %bb.l, %bb.o, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.i ], [ %i.ca, %bb.l ], [ %i.cu, %bb.o ], [ %i.do, %bb.r ], [ %i.bm, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i42 = icmp eq i64 %i.dr, 0
  br i1 %.not3.i.i42, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45, label %.lr.ph.preheader.i.i43

.lr.ph.preheader.i.i43:                           ; preds = %bb.s
  %_ZZN14counting_value1cEvE2co.promoted.i.i44 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ds = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i44, %i.dr
  store i64 %i.ds, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit45: ; preds = %bb.s, %.lr.ph.preheader.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::container::dtl::insert_range_proxy.131", align 8 ; 4 uses
  %.sroa.0.i.i.i = alloca ptr, align 8            ; 5 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03878 = phi i64 [ 0, %bb.a ], [ %i.dx, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 9 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load i64, ptr %i.a, align 8, !tbaa !102  ; 12 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !128
  %i.e = icmp ugt i64 %i.d, 10
  br i1 %i.e, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not17.i.i.i, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %xtraiter = and i64 %i.d, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.020.i.i.i.prol = phi i64 [ %i.f, %.prol.preheader ], [ %i.d, %.lr.ph.i.i.i ]
  %.0819.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %0, %.lr.ph.i.i.i ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.i, %.prol.preheader ], [ %3, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.f = add i64 %.020.i.i.i.prol, -1             ; 2 uses
  %i.g = load <2 x i32>, ptr %.0819.i.i.i.prol, align 4, !tbaa !41
  store <2 x i32> %i.g, ptr %.01618.i.i.i.prol, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2259

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.020.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i ], [ %i.f, %.prol.preheader ]
  %.0819.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.h, %.prol.preheader ]
  %.01618.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i ], [ %i.i, %.prol.preheader ]
  %i.j = icmp ult i64 %i.d, 8
  br i1 %i.j, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.020.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.new ], [ %.020.i.i.i.unr, %.prol.loopexit ]
  %.0819.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.new ], [ %.0819.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %.01618.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.new ], [ %.01618.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.k = load <2 x i32>, ptr %.0819.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.k, ptr %.01618.i.i.i, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !41
  store <2 x i32> %i.n, ptr %i.m, align 4, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !41
  store <2 x i32> %i.q, ptr %i.p, align 4, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 24
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !41
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 32
  %i.w = load <2 x i32>, ptr %i.u, align 4, !tbaa !41
  store <2 x i32> %i.w, ptr %i.v, align 4, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 40
  %i.z = load <2 x i32>, ptr %i.x, align 4, !tbaa !41
  store <2 x i32> %i.z, ptr %i.y, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 48
  %i.ac = load <2 x i32>, ptr %i.aa, align 4, !tbaa !41
  store <2 x i32> %i.ac, ptr %i.ab, align 4, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 56
  %i.af = add i64 %.020.i.i.i, -8                 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !tbaa !41
  store <2 x i32> %i.ag, ptr %i.ae, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.0819.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 64
  %.not.i.i.i.7 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.7, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.new, !llvm.loop !8

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.new, %.prol.loopexit
  %i.aj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, %i.d
  store i64 %i.aj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %._crit_edge.i.i.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !2276 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !105
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !105 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03878 ; 8 uses
  %.not2.i.i.i = icmp eq ptr %i.ak, %i.an
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit, %.lr.ph.i.i.i41
  %i.ap = phi ptr [ %i.ar, %.lr.ph.i.i.i41 ], [ %i.ak, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit ]
  %.03.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i41 ], [ 0, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit ] ; 2 uses
  %i.aq = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !105, !noalias !2277 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.ar, %i.an
  br i1 %.not.i.i.i42, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i41, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i: ; preds = %.lr.ph.i.i.i41
  %i.as = sub nuw nsw i64 10, %i.d
  %.not.i.not.i = icmp samesign ult i64 %.03.i.i.i, %i.as
  br i1 %.not.i.not.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i, label %bb.h, !prof !185

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i: ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %.0.lcssa.i.i8.i = phi i64 [ %i.aq, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ], [ 0, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.d ; 3 uses
  store ptr %i.ak, ptr %.sroa.0.i.i.i, align 8, !tbaa !197, !noalias !2278
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !2278
  %i.au = icmp samesign eq i64 %i.d, %.03878
  %.not13.i.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i8.i, 0 ; 2 uses
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i
  br i1 %.not13.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2279
  %xtraiter101 = and i64 %.0.lcssa.i.i8.i, 3      ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.prol.loopexit100, label %.prol.preheader99

.prol.preheader99:                                ; preds = %.lr.ph.i.i.i.i.i.i, %.prol.preheader99
  %.in.i.i.i.i.prol = phi ptr [ %i.av, %.prol.preheader99 ], [ %.sroa.0.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.prol = phi i64 [ %i.az, %.prol.preheader99 ], [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.prol.preheader99 ], [ %i.at, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.prol.preheader99 ], [ 0, %.lr.ph.i.i.i.i.i.i ]
  %i.av = load ptr, ptr %.in.i.i.i.i.prol, align 8, !tbaa !188, !noalias !2278 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.prol) ]
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !41, !noalias !2279
  store <2 x i32> %i.ax, ptr %.01214.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !2279
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.az = add i64 %.015.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.prol.loopexit100, label %.prol.preheader99, !llvm.loop !2272

.prol.loopexit100:                                ; preds = %.prol.preheader99, %.lr.ph.i.i.i.i.i.i
  %.in.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %.prol.preheader99 ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %.0.lcssa.i.i8.i, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %.prol.preheader99 ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %.prol.preheader99 ]
  %i.ba = icmp ult i64 %.0.lcssa.i.i8.i, 4
  br i1 %i.ba, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.new:                           ; preds = %.prol.loopexit100, %.lr.ph.i.i.i.i.i.i.new
  %.in.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.new ], [ %.in.i.i.i.i.unr, %.prol.loopexit100 ]
  %.015.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.unr, %.prol.loopexit100 ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.unr, %.prol.loopexit100 ] ; 6 uses
  %i.bb = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !188, !noalias !2278 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !41, !noalias !2279
  store <2 x i32> %i.bd, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !2279
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !188, !noalias !2278 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load <2 x i32>, ptr %i.bg, align 4, !tbaa !41, !noalias !2279
  store <2 x i32> %i.bh, ptr %i.be, align 4, !tbaa !41, !noalias !2279
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !188, !noalias !2278 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load <2 x i32>, ptr %i.bk, align 4, !tbaa !41, !noalias !2279
  store <2 x i32> %i.bl, ptr %i.bi, align 4, !tbaa !41, !noalias !2279
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 24
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !188, !noalias !2278 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !41, !noalias !2279
  store <2 x i32> %i.bp, ptr %i.bm, align 4, !tbaa !41, !noalias !2279
  %i.bq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 32
  %i.br = add i64 %.015.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.new, %.prol.loopexit100
  %i.bs = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, %.0.lcssa.i.i8.i
  store i64 %i.bs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !2279
  br label %bb.i

bb.f:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.thread.i
  br i1 %.not13.i.i.i.i.i.i, label %bb.i, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %2, align 8, !tbaa !197, !noalias !2278
  invoke void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SW_mSR_(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.at, i64 noundef %.0.lcssa.i.i8.i, ptr noundef nonnull align 8 dead_on_return %2)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !tbaa !128, !noalias !2278
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.noexc, %bb.f, %._crit_edge.i.i.i.i.i.i, %bb.e
  %i.bt = phi i64 [ %.03878, %bb.e ], [ %.03878, %._crit_edge.i.i.i.i.i.i ], [ %i.d, %bb.f ], [ %.pre.i.i.i, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !2278
  %i.bu = add i64 %i.bt, %.0.lcssa.i.i8.i
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !128, !noalias !2278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !102
  %i.bx = icmp eq i64 %i.bw, 8
  %i.by = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.bx)
          to label %.preheader62 unwind label %bb.l ; 0 uses

.preheader62:                                     ; preds = %bb.j
  %.not = icmp eq i64 %.03878, 0
  %.pre84 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  br i1 %.not, label %.preheader61, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.bz = add i64 %.pre84, 1
  br label %.lr.ph

.preheader61:                                     ; preds = %bb.m, %.preheader62
  %i.ca = phi i64 [ %.pre84, %.preheader62 ], [ %i.cw, %bb.m ]
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.cc = load i32, ptr %i.ao, align 8, !tbaa !79
  %i.cd = icmp eq i32 %i.cc, 100
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = select i1 %i.cd, i1 %i.cg, i1 false
  %i.ci = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.ch)
          to label %bb.o unwind label %bb.q       ; 0 uses

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %i.cl = phi i64 [ %i.cv, %bb.m ], [ %i.bz, %.lr.ph.preheader ]
  %.03472 = phi i64 [ %i.cx, %bb.m ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03472 ; 2 uses
  %i.cn = trunc nuw nsw i64 %.03472 to i32
  store i64 %i.cl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.co = load i32, ptr %i.cm, align 8, !tbaa !79
  %i.cp = icmp eq i32 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  %i.cu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_, i1 noundef zeroext %i.ct)
          to label %bb.m unwind label %bb.n       ; 0 uses
end_hunk_9
