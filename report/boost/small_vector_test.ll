inline.NumInlined: 11237
inline.NumDeleted: 2907
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 369
loop-unroll.NumUnrolled: 535
begin_hunk_0_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.pre199 ; 2 uses
  %i.es = sub nuw nsw i64 %i.eo, %.pre199         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !14, !noalias !1051
  %i.ev = sub i64 %i.eu, %.pre199
  %.not.i.i.i143 = icmp ugt i64 %i.es, %i.ev
  br i1 %.not.i.i.i143, label %bb.ao, label %bb.an, !prof !22

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i.i144 = icmp eq i64 %i.eo, %.pre199
  br i1 %.not.i.i.i.i.i.i.i144, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145, !prof !22

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145: ; preds = %bb.an
  %i.ew = shl nuw nsw i64 %i.es, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.er, i8 0, i64 %i.ew, i1 false), !noalias !1051
  %.pre.i.i.i.i146 = load i64, ptr %i.em, align 8, !tbaa !64, !noalias !1051
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145, %bb.an
  %i.ex = phi i64 [ %.pre199, %bb.an ], [ %.pre.i.i.i.i146, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145 ]
  %i.ey = add i64 %i.ex, %i.es
  store i64 %i.ey, ptr %i.em, align 8, !tbaa !64, !noalias !1051
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.er, i64 noundef %i.es)
          to label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148 unwind label %bb.aq

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148: ; preds = %bb.ao, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148, %bb.al
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0)
          to label %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !14 ; 3 uses
  %.not = icmp uge i64 %i.fa, %.pre198
  %i.fb = load i64, ptr %i.em, align 8
  %i.fc = icmp eq i64 %i.fb, %.pre197
  %or.cond170 = select i1 %.not, i1 %i.fc, i1 false
  br i1 %or.cond170, label %bb.ar, label %thread-pre-split

bb.ap:                                            ; preds = %.loopexit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aq:                                            ; preds = %bb.as, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150, %bb.ao
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ar:                                            ; preds = %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit
  %i.ff = load i64, ptr %i.en, align 8, !tbaa !14
  %i.fg = udiv i64 %.pre198, 10                   ; 2 uses
  %.not51 = icmp uge i64 %i.ff, %i.fg
  %i.fh = load i64, ptr %i.ek, align 8
  %i.fi = icmp eq i64 %i.fh, %i.eo
  %or.cond172 = select i1 %.not51, i1 %i.fi, i1 false
  br i1 %or.cond172, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0)
          to label %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153 unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153: ; preds = %bb.as
  %i.fj = load i64, ptr %i.en, align 8, !tbaa !14
  %.not53 = icmp ult i64 %i.fj, %.pre198
  %i.fk = load i64, ptr %i.ek, align 8
  %i.fl = icmp ne i64 %i.fk, %.pre197
  %or.cond174.not281 = select i1 %.not53, i1 true, i1 %i.fl
  %.pr.pre = load i64, ptr %i.ez, align 8, !tbaa !14 ; 3 uses
  %.not54 = icmp ult i64 %.pr.pre, %i.fg
  %or.cond = select i1 %or.cond174.not281, i1 true, i1 %.not54
  br i1 %or.cond, label %thread-pre-split, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153
  %i.fm = load i64, ptr %i.em, align 8, !tbaa !16
  %i.fn = icmp eq i64 %i.fm, %i.eo
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.at, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153, %bb.ar, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit
  %i.fo = phi i64 [ %i.fa, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit ], [ %.pr.pre, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153 ], [ %i.fa, %bb.ar ], [ %.pr.pre, %bb.at ] ; 2 uses
  %.1 = phi i1 [ false, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit ], [ false, %_ZN5boost9container12small_vectorIiLm0EvvE4swapERS2_.exit153 ], [ false, %bb.ar ], [ %i.fn, %bb.at ]
  %.not.i.i154 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i154, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %thread-pre-split
  %i.fp = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.fq = icmp eq ptr %i.el, %i.fp
  br i1 %i.fq, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = shl i64 %i.fo, 2
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %thread-pre-split, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fs = load i64, ptr %i.en, align 8, !tbaa !14 ; 2 uses
  %.not.i.i155 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i155, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.ft = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.fu = icmp eq ptr %i.ej, %i.ft
  br i1 %i.fu, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fv = shl i64 %i.fs, 2
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fv) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ay:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.fe, %bb.aq ], [ %i.fd, %bb.ap ]
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !14 ; 2 uses
  %.not.i.i157 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i157, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.fz = icmp eq ptr %i.el, %i.fy
  br i1 %i.fz, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ga = shl i64 %i.fx, 2
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.ga) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158: ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.gb = load i64, ptr %i.en, align 8, !tbaa !14 ; 2 uses
  %.not.i.i159 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i159, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158
  %i.gc = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.gd = icmp eq ptr %i.ej, %i.gc
  br i1 %i.gd, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = shl i64 %i.gb, 2
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.ge) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i76, %.lr.ph.i104, %.lr.ph.i123, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156
  %.2 = phi i1 [ false, %.lr.ph.i123 ], [ %.1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i104 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71 ], [ false, %.lr.ph.i76 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiLm0EvviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERS6_RKT3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !1054 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !1057
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !1057
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1062

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !1063 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !15, !noalias !1063
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !15, !noalias !1063
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1064

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !1063 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !15, !noalias !1063
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !15, !noalias !1063
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !1063 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !15, !noalias !1063
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !15, !noalias !1063
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !1063 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !15, !noalias !1063
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !1063
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !1063 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !15, !noalias !1063
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !1063
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1065

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !1066
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiLm0EvvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERS8_T3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !1069 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !1072
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !1072
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1077

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !15, !noalias !1078
  %i.p = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !1078 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !15, !noalias !1078
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1079

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !15, !noalias !1078
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !1078 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !15, !noalias !1078
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !15, !noalias !1078
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !1078 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !15, !noalias !1078
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !15, !noalias !1078
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !1078 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !1078
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !15, !noalias !1078
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !1078 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !1078
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1080

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !1081
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm0EvvEEEEvRSt5dequeIiSaIiEERT_RKS7_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.40", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.21", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9, !noalias !1084
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !15
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1087

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm0EvvEEEEvRSt5dequeIiSaIiEERT_RKS7_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !776, !noalias !1088 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !777, !noalias !1088
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !775, !noalias !1088 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !63, !noalias !1091
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm0EvvEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !1096 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dz, %.pre-phi223
  %i.eb = ashr exact i64 %i.ea, 2
  %.not.i119 = icmp eq i64 %i.dy, %i.eb
  br i1 %.not.i119, label %bb.ai, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit118
  %i.ec = load ptr, ptr %0, align 8, !tbaa !9, !noalias !1818 ; 2 uses
  %.idx.i121 = shl nsw i64 %i.dy, 2
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %.idx.i121
  %.not2324.i122 = icmp eq i64 %i.dy, 0
  br i1 %.not2324.i122, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150, label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %bb.ai, %bb.aj
  %.sroa.019.026.i124 = phi ptr [ %i.eh, %bb.aj ], [ %i.ec, %bb.ai ] ; 2 uses
  %.sroa.015.025.i125 = phi ptr [ %i.ei, %bb.aj ], [ %i.dw, %bb.ai ] ; 2 uses
  %i.ee = load i32, ptr %.sroa.019.026.i124, align 4, !tbaa !15
  %i.ef = load i32, ptr %.sroa.015.025.i125, align 4, !tbaa !15
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aj:                                            ; preds = %.lr.ph.i123
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i124, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i125, i64 4
  %.not23.i126 = icmp eq ptr %i.eh, %i.ed
  br i1 %.not23.i126, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150, label %.lr.ph.i123, !llvm.loop !411

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.ej, ptr %4, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store i64 2000, ptr %i.el, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.em, ptr %5, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 2000, ptr %i.eo, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4000) %i.ej, i8 0, i64 4000, i1 false), !noalias !1821
  store i64 1000, ptr %i.ek, align 8, !tbaa !64, !noalias !1824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.em, i8 0, i64 400, i1 false), !noalias !1827
  store i64 100, ptr %i.en, align 8, !tbaa !64, !noalias !1827
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(8024) %4, ptr noundef nonnull align 8 dereferenceable(8024) %5, i64 noundef 2000)
          to label %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !14 ; 3 uses
  %.not = icmp ugt i64 %i.ep, 1999
  %i.eq = load i64, ptr %i.en, align 8
  %i.er = icmp eq i64 %i.eq, 1000
  %or.cond170 = select i1 %.not, i1 %i.er, i1 false
  br i1 %or.cond170, label %bb.ak, label %thread-pre-split

bb.ak:                                            ; preds = %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit
  %i.es = load i64, ptr %i.el, align 8, !tbaa !14
  %.not51 = icmp ugt i64 %i.es, 199
  %i.et = load i64, ptr %i.ek, align 8
  %i.eu = icmp eq i64 %i.et, 100
  %or.cond172 = select i1 %.not51, i1 %i.eu, i1 false
  br i1 %or.cond172, label %bb.al, label %thread-pre-split.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(8024) %4, ptr noundef nonnull align 8 dereferenceable(8024) %5, i64 noundef 2000)
          to label %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit153 unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit153: ; preds = %bb.al
  %i.ev = load i64, ptr %i.el, align 8, !tbaa !14
  %.not53 = icmp ult i64 %i.ev, 2000
  %i.ew = load i64, ptr %i.ek, align 8
  %i.ex = icmp ne i64 %i.ew, 1000
  %or.cond174.not273 = select i1 %.not53, i1 true, i1 %i.ex
  %.pr.pre = load i64, ptr %i.eo, align 8, !tbaa !14 ; 3 uses
  %.not54 = icmp ult i64 %.pr.pre, 200
  %or.cond = select i1 %or.cond174.not273, i1 true, i1 %.not54
  br i1 %or.cond, label %thread-pre-split, label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit153
  %i.ey = load i64, ptr %i.en, align 8, !tbaa !16
  %i.ez = icmp eq i64 %i.ey, 100
  br label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit153, %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit
  %i.fa = phi i64 [ %i.ep, %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit ], [ %.pr.pre, %_ZN5boost9container12small_vectorIiLm2000EvvE4swapERS2_.exit153 ] ; 2 uses
  %.not.i.i154 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i154, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.am, %bb.ak, %thread-pre-split
  %.1267 = phi i1 [ false, %thread-pre-split ], [ %i.ez, %bb.am ], [ false, %bb.ak ] ; 2 uses
  %i.fb = phi i64 [ %i.fa, %thread-pre-split ], [ %.pr.pre, %bb.am ], [ %i.ep, %bb.ak ]
  %i.fc = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.fd = icmp eq ptr %i.em, %i.fc
  br i1 %i.fd, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %thread-pre-split.thread
  %i.fe = shl i64 %i.fb, 2
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fe) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %thread-pre-split, %thread-pre-split.thread, %bb.an
  %.1268 = phi i1 [ false, %thread-pre-split ], [ %.1267, %thread-pre-split.thread ], [ %.1267, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ff = load i64, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %.not.i.i155 = icmp eq i64 %i.ff, 0
  br i1 %.not.i.i155, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.fg = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.fh = icmp eq ptr %i.ej, %i.fg
  br i1 %i.fh, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = shl i64 %i.ff, 2
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fi) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aq:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150, %bb.al
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load i64, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %.not.i.i157 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i157, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.fm = icmp eq ptr %i.em, %i.fl
  br i1 %i.fm, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = shl i64 %i.fk, 2
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fn) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158: ; preds = %bb.aq, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fo = load i64, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %.not.i.i159 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i159, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158
  %i.fp = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.fq = icmp eq ptr %i.ej, %i.fp
  br i1 %i.fq, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fr = shl i64 %i.fo, 2
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fr) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.fj

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i76, %.lr.ph.i104, %.lr.ph.i123, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156
  %.2 = phi i1 [ false, %.lr.ph.i123 ], [ %.1268, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i104 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71 ], [ false, %.lr.ph.i76 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiLm2000EvviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERS6_RKT3_(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !1830 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !1833
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !1833
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1062

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !1838 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !15, !noalias !1838
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !15, !noalias !1838
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1839

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !1838 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !15, !noalias !1838
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !15, !noalias !1838
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !1838 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !15, !noalias !1838
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !15, !noalias !1838
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !1838 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !15, !noalias !1838
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !1838
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !1838 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !15, !noalias !1838
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !1838
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1065

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !1840
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiLm2000EvvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERS8_T3_(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !1843 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !1846
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !1846
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1077

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !15, !noalias !1851
  %i.p = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !1851 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !15, !noalias !1851
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1852

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !15, !noalias !1851
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !1851 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !15, !noalias !1851
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !15, !noalias !1851
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !1851 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !15, !noalias !1851
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !15, !noalias !1851
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !1851 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !1851
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !15, !noalias !1851
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !1851 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !1851
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1080

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !1853
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm2000EvvEEEEvRSt5dequeIiSaIiEERT_RKS7_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.40", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.21", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9, !noalias !1856
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !15
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1859

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm2000EvvEEEEvRSt5dequeIiSaIiEERT_RKS7_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !776, !noalias !1860 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !777, !noalias !1860
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !775, !noalias !1860 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !63, !noalias !1863
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm2000EvvEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !1868 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

bb.am:                                            ; preds = %bb.ak
  %i.eu = load ptr, ptr %7, align 8, !tbaa !9
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.es ; 2 uses
  %i.ew = sub nuw nsw i64 %i.er, %i.es            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ex = load i64, ptr %i.eo, align 8, !tbaa !14, !noalias !2444
  %i.ey = sub i64 %i.ex, %i.es
  %.not.i.i.i143 = icmp ugt i64 %i.ew, %i.ey
  br i1 %.not.i.i.i143, label %bb.ao, label %bb.an, !prof !22

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i.i.i144 = icmp eq i64 %i.er, %i.es
  br i1 %.not.i.i.i.i.i.i.i144, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145, !prof !22

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145: ; preds = %bb.an
  %i.ez = shl nuw nsw i64 %i.ew, 2
  call void @llvm.memset.p0.i64(ptr align 1 %i.ev, i8 0, i64 %i.ez, i1 false), !noalias !2444
  %.pre.i.i.i.i146 = load i64, ptr %i.en, align 8, !tbaa !64, !noalias !2444
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145, %bb.an
  %i.fa = phi i64 [ %i.er, %bb.an ], [ %.pre.i.i.i.i146, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPiEEvRS6_T_m.exit.sink.split.i.i.i.i.i145 ]
  %i.fb = add i64 %i.fa, %i.ew
  store i64 %i.fb, ptr %i.en, align 8, !tbaa !64, !noalias !2444
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148

bb.ao:                                            ; preds = %bb.am
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.ev, i64 noundef %i.ew)
          to label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148 unwind label %bb.aq

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148: ; preds = %bb.ao, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEERKSC_mT_.exit.i.i148, %bb.al
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIiNS3_IiEEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150
  %i.fc = load i64, ptr %i.eo, align 8, !tbaa !14 ; 3 uses
  %.not = icmp uge i64 %i.fc, %i.eq
  %i.fd = load i64, ptr %i.en, align 8
  %i.fe = icmp eq i64 %i.fd, %i.ep
  %or.cond170 = select i1 %.not, i1 %i.fe, i1 false
  br i1 %or.cond170, label %bb.ar, label %thread-pre-split

bb.ap:                                            ; preds = %.loopexit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aq:                                            ; preds = %bb.as, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6resizeEm.exit150, %bb.ao
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ar:                                            ; preds = %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit
  %i.fh = load i64, ptr %i.el, align 8, !tbaa !14
  %i.fi = udiv i64 %i.eq, 10                      ; 2 uses
  %.not51 = icmp uge i64 %i.fh, %i.fi
  %i.fj = load i64, ptr %i.ek, align 8
  %i.fk = icmp eq i64 %i.fj, %i.er
  %or.cond172 = select i1 %.not51, i1 %i.fk, i1 false
  br i1 %or.cond172, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIiNS3_IiEEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153 unwind label %bb.aq

_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153: ; preds = %bb.as
  %i.fl = load i64, ptr %i.el, align 8, !tbaa !14
  %.not53 = icmp ult i64 %i.fl, %i.eq
  %i.fm = load i64, ptr %i.ek, align 8
  %i.fn = icmp ne i64 %i.fm, %i.ep
  %or.cond174.not278 = select i1 %.not53, i1 true, i1 %i.fn
  %.pr.pre = load i64, ptr %i.eo, align 8, !tbaa !14 ; 3 uses
  %.not54 = icmp ult i64 %.pr.pre, %i.fi
  %or.cond = select i1 %or.cond174.not278, i1 true, i1 %.not54
  br i1 %or.cond, label %thread-pre-split, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153
  %i.fo = load i64, ptr %i.en, align 8, !tbaa !16
  %i.fp = icmp eq i64 %i.fo, %i.er
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.at, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153, %bb.ar, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit
  %i.fq = phi i64 [ %i.fc, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit ], [ %.pr.pre, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153 ], [ %i.fc, %bb.ar ], [ %.pr.pre, %bb.at ] ; 2 uses
  %.1 = phi i1 [ false, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit ], [ false, %_ZN5boost9container12small_vectorIiLm10ENS0_13new_allocatorIiEEvE4swapERS4_.exit153 ], [ false, %bb.ar ], [ %i.fp, %bb.at ]
  %.not.i.i154 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i154, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %thread-pre-split
  %i.fr = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.fs = icmp eq ptr %i.em, %i.fr
  br i1 %i.fs, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ft = shl i64 %i.fq, 2
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.ft) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %thread-pre-split, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fu = load i64, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %.not.i.i155 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i155, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.fv = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.fw = icmp eq ptr %i.ej, %i.fv
  br i1 %i.fw, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fx = shl i64 %i.fu, 2
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fx) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit, %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ay:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.aq ], [ %i.ff, %bb.ap ]
  %i.fy = load i64, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %.not.i.i157 = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i157, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fz = load ptr, ptr %7, align 8, !tbaa !63    ; 2 uses
  %i.ga = icmp eq ptr %i.em, %i.fz
  br i1 %i.ga, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gb = shl i64 %i.fy, 2
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gb) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158: ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.gc = load i64, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %.not.i.i159 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i159, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158
  %i.gd = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.ge = icmp eq ptr %i.ej, %i.gd
  br i1 %i.ge, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gf = shl i64 %i.gc, 2
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gf) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit160: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit158, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i76, %.lr.ph.i104, %.lr.ph.i123, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156
  %.2 = phi i1 [ false, %.lr.ph.i123 ], [ %.1, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvED2Ev.exit156 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i104 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit99 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit71 ], [ false, %.lr.ph.i76 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiLm10ENS0_13new_allocatorIiEEviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERS8_RKT3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !2447 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !2450
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !2450
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1062

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !2455 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !15, !noalias !2455
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !15, !noalias !2455
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2456

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !2455 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !15, !noalias !2455
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !15, !noalias !2455
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !2455 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !15, !noalias !2455
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !15, !noalias !2455
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !2455 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !15, !noalias !2455
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !2455
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !2455 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !15, !noalias !2455
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !2455
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1065

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !2457
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiLm10ENS0_13new_allocatorIiEEvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSA_T3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9, !noalias !2460 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !2463
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15, !noalias !2463
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %bb.b, !llvm.loop !1077

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !15, !noalias !2468
  %i.p = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !2468 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !15, !noalias !2468
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2469

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !15, !noalias !2468
  %i.x = load i32, ptr %i.v, align 4, !tbaa !15, !noalias !2468 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !15, !noalias !2468
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !15, !noalias !2468
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !15, !noalias !2468 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !15, !noalias !2468
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !15, !noalias !2468
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !15, !noalias !2468 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !15, !noalias !2468
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !15, !noalias !2468
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !15, !noalias !2468 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !15, !noalias !2468
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1080

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !64, !noalias !2470
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPiLb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.40", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.21", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9, !noalias !2473
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !15
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2476

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !776, !noalias !2477 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !777, !noalias !2477
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !775, !noalias !2477 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !63, !noalias !2480
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63, !noalias !2485 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.aq, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199, %bb.am
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mb = load i64, ptr %i.jy, align 8, !tbaa !1971
  %i.mc = udiv i64 %i.kd, 10                      ; 2 uses
  %.not51 = icmp uge i64 %i.mb, %i.mc
  %i.md = load i64, ptr %i.jx, align 8
  %i.me = icmp eq i64 %i.md, %i.ke
  %or.cond222 = select i1 %.not51, i1 %i.me, i1 false
  br i1 %or.cond222, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202: ; preds = %bb.aq
  %i.mf = load i64, ptr %i.jy, align 8, !tbaa !1971
  %.not53 = icmp uge i64 %i.mf, %i.kd
  %i.mg = load i64, ptr %i.jx, align 8
  %i.mh = icmp eq i64 %i.mg, %i.kc
  %or.cond224.not228.not350 = select i1 %.not53, i1 %i.mh, i1 false
  %i.mi = load i64, ptr %i.kb, align 8            ; 2 uses
  %.not54 = icmp uge i64 %i.mi, %i.mc
  %or.cond225.not = select i1 %or.cond224.not228.not350, i1 %.not54, i1 false
  %.pr.pre252 = load i64, ptr %i.ka, align 8, !tbaa !1982 ; 2 uses
  %i.mj = icmp eq i64 %.pr.pre252, %i.ke
  %spec.select = select i1 %or.cond225.not, i1 %i.mj, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202, %bb.ap, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mk = phi i64 [ %i.mi, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.lx, %bb.ap ], [ %i.lx, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.ml = phi i64 [ %.pr.pre252, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.kc, %bb.ap ], [ %.pr.pre, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ] ; 5 uses
  %.1 = phi i1 [ %spec.select, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ false, %bb.ap ], [ false, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.mm = load ptr, ptr %7, align 8, !tbaa !1972  ; 4 uses
  %.not3.i.i = icmp eq i64 %i.ml, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.ml, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.mn, %.lr.ph.i.i.prol ], [ %i.ml, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.mq, %.lr.ph.i.i.prol ], [ %i.mm, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.mn = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !1973
  %i.mo = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.mp = add i32 %i.mo, -1
  store i32 %i.mp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2864

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.ml, %.lr.ph.i.i.preheader ], [ %i.mn, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.mm, %.lr.ph.i.i.preheader ], [ %i.mq, %.lr.ph.i.i.prol ]
  %i.mr = icmp ult i64 %i.ml, 4
  br i1 %i.mr, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.mz, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !1973
  %i.ms = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.mt = add i32 %i.ms, -1
  store i32 %i.mt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.mu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.mu, align 4, !tbaa !1973
  %i.mv = add i32 %i.ms, -2
  store i32 %i.mv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.mw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.mw, align 4, !tbaa !1973
  %i.mx = add i32 %i.ms, -3
  store i32 %i.mx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.my = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.mz = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.my, align 4, !tbaa !1973
  %i.na = add i32 %i.ms, -4
  store i32 %i.na, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i203.3 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i203.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !1985

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre254 = load i64, ptr %i.kb, align 8, !tbaa !1971
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, %thread-pre-split
  %i.nc = phi i64 [ %.pre254, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit ], [ %i.mk, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.nc, 0
  %i.nd = icmp eq ptr %i.jz, %i.mm
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.nd
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ne = shl i64 %i.nc, 2
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.ne) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.nf = load ptr, ptr %6, align 8, !tbaa !1972  ; 4 uses
  %i.ng = load i64, ptr %i.jx, align 8, !tbaa !1982 ; 5 uses
  %.not3.i.i204 = icmp eq i64 %i.ng, 0
  br i1 %.not3.i.i204, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205.preheader

.lr.ph.i.i205.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %xtraiter387 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol

.lr.ph.i.i205.prol:                               ; preds = %.lr.ph.i.i205.preheader, %.lr.ph.i.i205.prol
  %.05.i.i206.prol = phi i64 [ %i.nh, %.lr.ph.i.i205.prol ], [ %i.ng, %.lr.ph.i.i205.preheader ]
  %storemerge4.i.i207.prol = phi ptr [ %i.nk, %.lr.ph.i.i205.prol ], [ %i.nf, %.lr.ph.i.i205.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i205.prol ], [ 0, %.lr.ph.i.i205.preheader ]
  %i.nh = add i64 %.05.i.i206.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i207.prol, align 4, !tbaa !1973
  %i.ni = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.nj = add i32 %i.ni, -1
  store i32 %i.nj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol, !llvm.loop !2865

.lr.ph.i.i205.prol.loopexit:                      ; preds = %.lr.ph.i.i205.prol, %.lr.ph.i.i205.preheader
  %.05.i.i206.unr = phi i64 [ %i.ng, %.lr.ph.i.i205.preheader ], [ %i.nh, %.lr.ph.i.i205.prol ]
  %storemerge4.i.i207.unr = phi ptr [ %i.nf, %.lr.ph.i.i205.preheader ], [ %i.nk, %.lr.ph.i.i205.prol ]
  %i.nl = icmp ult i64 %i.ng, 4
  br i1 %i.nl, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205
  %.05.i.i206 = phi i64 [ %i.nt, %.lr.ph.i.i205 ], [ %.05.i.i206.unr, %.lr.ph.i.i205.prol.loopexit ]
  %storemerge4.i.i207 = phi ptr [ %i.nv, %.lr.ph.i.i205 ], [ %storemerge4.i.i207.unr, %.lr.ph.i.i205.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i207, align 4, !tbaa !1973
  %i.nm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.nn = add i32 %i.nm, -1
  store i32 %i.nn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 4
  store i32 -2147483648, ptr %i.no, align 4, !tbaa !1973
  %i.np = add i32 %i.nm, -2
  store i32 %i.np, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.nq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 8
  store i32 -2147483648, ptr %i.nq, align 4, !tbaa !1973
  %i.nr = add i32 %i.nm, -3
  store i32 %i.nr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.ns = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 12
  %i.nt = add i64 %.05.i.i206, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.ns, align 4, !tbaa !1973
  %i.nu = add i32 %i.nm, -4
  store i32 %i.nu, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 16
  %.not.i.i208.3 = icmp eq i64 %i.nt, 0
  br i1 %.not.i.i208.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205, !llvm.loop !1985

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209: ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.nw = load i64, ptr %i.jy, align 8, !tbaa !1971 ; 2 uses
  %.not.i1.i210 = icmp eq i64 %i.nw, 0
  %i.nx = icmp eq ptr %i.jw, %i.nf
  %or.cond.i211 = select i1 %.not.i1.i210, i1 true, i1 %i.nx
  br i1 %or.cond.i211, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209
  %i.ny = shl i64 %i.nw, 2
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ny) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.at:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ma, %bb.ao ], [ %i.lz, %bb.an ]
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i87, %.lr.ph.i121, %.lr.ph.i148, %_ZNSt6vectorIiSaIiEE6resizeEm.exit143, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116, %_ZNSt6vectorIiSaIiEE7reserveEm.exit82, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212
  %.2 = phi i1 [ false, %.lr.ph.i148 ], [ %.1, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i121 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit143 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit82 ], [ false, %.lr.ph.i87 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSA_RKT3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1982 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1972, !noalias !2866 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !2869
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1973, !noalias !2869
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !2874

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %i.l = sub i64 %2, %3
  %i.m = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !15, !noalias !2875
  %i.o = load i32, ptr %i.j, align 4, !tbaa !1973, !noalias !2875 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !1973, !noalias !2875
  store i32 0, ptr %i.j, align 4, !tbaa !1973, !noalias !2875
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.s = icmp eq i64 %2, %4
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !15, !noalias !2875
  %i.w = load i32, ptr %i.u, align 4, !tbaa !1973, !noalias !2875 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !1973, !noalias !2875
  store i32 0, ptr %i.u, align 4, !tbaa !1973, !noalias !2875
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !15, !noalias !2875
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !1973, !noalias !2875 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !1973, !noalias !2875
  store i32 0, ptr %i.z, align 4, !tbaa !1973, !noalias !2875
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2876

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i8.i.prol ], [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.an, %.lr.ph.i8.i.prol ], [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.ak = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !1973, !noalias !2877
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !2880

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !1973, !noalias !2877
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !1973, !noalias !2877
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !1973, !noalias !2877
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !1973, !noalias !2877
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2877
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !1985

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !1968, !noalias !2877
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSC_T3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1982 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1972, !noalias !2881 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !2884
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1973, !noalias !2884
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !2889

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %i.l = sub i64 %2, %3
  %i.m = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !15, !noalias !2890
  %i.o = load i32, ptr %i.j, align 4, !tbaa !1973, !noalias !2890 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !1973, !noalias !2890
  store i32 0, ptr %i.j, align 4, !tbaa !1973, !noalias !2890
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.s = icmp eq i64 %2, %4
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !15, !noalias !2890
  %i.w = load i32, ptr %i.u, align 4, !tbaa !1973, !noalias !2890 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !1973, !noalias !2890
  store i32 0, ptr %i.u, align 4, !tbaa !1973, !noalias !2890
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !15, !noalias !2890
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !1973, !noalias !2890 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !1973, !noalias !2890
  store i32 0, ptr %i.z, align 4, !tbaa !1973, !noalias !2890
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !2891

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i8.i.prol ], [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.an, %.lr.ph.i8.i.prol ], [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.ak = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !1973, !noalias !2892
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !2895

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !1973, !noalias !2892
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !1973, !noalias !2892
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !1973, !noalias !2892
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !1973, !noalias !2892
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !15, !noalias !2892
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !1985

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !1968, !noalias !2892
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.80", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.80", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1982
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !1972, !noalias !2896
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !1973
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2899

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !776, !noalias !2900 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !777, !noalias !2900
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !775, !noalias !2900 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.aq, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199, %bb.am
  %i.ma = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mb = load i64, ptr %i.jy, align 8, !tbaa !2019
  %i.mc = udiv i64 %i.kd, 10                      ; 2 uses
  %.not51 = icmp uge i64 %i.mb, %i.mc
  %i.md = load i64, ptr %i.jx, align 8
  %i.me = icmp eq i64 %i.md, %i.ke
  %or.cond222 = select i1 %.not51, i1 %i.me, i1 false
  br i1 %or.cond222, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202: ; preds = %bb.aq
  %i.mf = load i64, ptr %i.jy, align 8, !tbaa !2019
  %.not53 = icmp uge i64 %i.mf, %i.kd
  %i.mg = load i64, ptr %i.jx, align 8
  %i.mh = icmp eq i64 %i.mg, %i.kc
  %or.cond224.not228.not350 = select i1 %.not53, i1 %i.mh, i1 false
  %i.mi = load i64, ptr %i.kb, align 8            ; 2 uses
  %.not54 = icmp uge i64 %i.mi, %i.mc
  %or.cond225.not = select i1 %or.cond224.not228.not350, i1 %.not54, i1 false
  %.pr.pre252 = load i64, ptr %i.ka, align 8, !tbaa !2030 ; 2 uses
  %i.mj = icmp eq i64 %.pr.pre252, %i.ke
  %spec.select = select i1 %or.cond225.not, i1 %i.mj, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202, %bb.ap, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mk = phi i64 [ %i.mi, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.lx, %bb.ap ], [ %i.lx, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.ml = phi i64 [ %.pr.pre252, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.kc, %bb.ap ], [ %.pr.pre, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ] ; 5 uses
  %.1 = phi i1 [ %spec.select, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ false, %bb.ap ], [ false, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.mm = load ptr, ptr %7, align 8, !tbaa !2020  ; 4 uses
  %.not3.i.i = icmp eq i64 %i.ml, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.ml, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.mn, %.lr.ph.i.i.prol ], [ %i.ml, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.mq, %.lr.ph.i.i.prol ], [ %i.mm, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.mn = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2021
  %i.mo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.mp = add i32 %i.mo, -1
  store i32 %i.mp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.mq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3475

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.ml, %.lr.ph.i.i.preheader ], [ %i.mn, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.mm, %.lr.ph.i.i.preheader ], [ %i.mq, %.lr.ph.i.i.prol ]
  %i.mr = icmp ult i64 %i.ml, 4
  br i1 %i.mr, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.mz, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.nb, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2021
  %i.ms = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.mt = add i32 %i.ms, -1
  store i32 %i.mt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.mu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.mu, align 4, !tbaa !2021
  %i.mv = add i32 %i.ms, -2
  store i32 %i.mv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.mw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.mw, align 4, !tbaa !2021
  %i.mx = add i32 %i.ms, -3
  store i32 %i.mx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.my = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.mz = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.my, align 4, !tbaa !2021
  %i.na = add i32 %i.ms, -4
  store i32 %i.na, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i203.3 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i203.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2033

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre254 = load i64, ptr %i.kb, align 8, !tbaa !2019
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, %thread-pre-split
  %i.nc = phi i64 [ %.pre254, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit ], [ %i.mk, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.nc, 0
  %i.nd = icmp eq ptr %i.jz, %i.mm
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.nd
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ne = shl i64 %i.nc, 2
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.ne) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.nf = load ptr, ptr %6, align 8, !tbaa !2020  ; 4 uses
  %i.ng = load i64, ptr %i.jx, align 8, !tbaa !2030 ; 5 uses
  %.not3.i.i204 = icmp eq i64 %i.ng, 0
  br i1 %.not3.i.i204, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205.preheader

.lr.ph.i.i205.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %xtraiter387 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol

.lr.ph.i.i205.prol:                               ; preds = %.lr.ph.i.i205.preheader, %.lr.ph.i.i205.prol
  %.05.i.i206.prol = phi i64 [ %i.nh, %.lr.ph.i.i205.prol ], [ %i.ng, %.lr.ph.i.i205.preheader ]
  %storemerge4.i.i207.prol = phi ptr [ %i.nk, %.lr.ph.i.i205.prol ], [ %i.nf, %.lr.ph.i.i205.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i205.prol ], [ 0, %.lr.ph.i.i205.preheader ]
  %i.nh = add i64 %.05.i.i206.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i207.prol, align 4, !tbaa !2021
  %i.ni = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.nj = add i32 %i.ni, -1
  store i32 %i.nj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol, !llvm.loop !3476

.lr.ph.i.i205.prol.loopexit:                      ; preds = %.lr.ph.i.i205.prol, %.lr.ph.i.i205.preheader
  %.05.i.i206.unr = phi i64 [ %i.ng, %.lr.ph.i.i205.preheader ], [ %i.nh, %.lr.ph.i.i205.prol ]
  %storemerge4.i.i207.unr = phi ptr [ %i.nf, %.lr.ph.i.i205.preheader ], [ %i.nk, %.lr.ph.i.i205.prol ]
  %i.nl = icmp ult i64 %i.ng, 4
  br i1 %i.nl, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205
  %.05.i.i206 = phi i64 [ %i.nt, %.lr.ph.i.i205 ], [ %.05.i.i206.unr, %.lr.ph.i.i205.prol.loopexit ]
  %storemerge4.i.i207 = phi ptr [ %i.nv, %.lr.ph.i.i205 ], [ %storemerge4.i.i207.unr, %.lr.ph.i.i205.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i207, align 4, !tbaa !2021
  %i.nm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.nn = add i32 %i.nm, -1
  store i32 %i.nn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 4
  store i32 -2147483648, ptr %i.no, align 4, !tbaa !2021
  %i.np = add i32 %i.nm, -2
  store i32 %i.np, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.nq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 8
  store i32 -2147483648, ptr %i.nq, align 4, !tbaa !2021
  %i.nr = add i32 %i.nm, -3
  store i32 %i.nr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.ns = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 12
  %i.nt = add i64 %.05.i.i206, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.ns, align 4, !tbaa !2021
  %i.nu = add i32 %i.nm, -4
  store i32 %i.nu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15
  %i.nv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 16
  %.not.i.i208.3 = icmp eq i64 %i.nt, 0
  br i1 %.not.i.i208.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205, !llvm.loop !2033

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209: ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.nw = load i64, ptr %i.jy, align 8, !tbaa !2019 ; 2 uses
  %.not.i1.i210 = icmp eq i64 %i.nw, 0
  %i.nx = icmp eq ptr %i.jw, %i.nf
  %or.cond.i211 = select i1 %.not.i1.i210, i1 true, i1 %i.nx
  br i1 %or.cond.i211, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209
  %i.ny = shl i64 %i.nw, 2
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ny) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.at:                                            ; preds = %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ma, %bb.ao ], [ %i.lz, %bb.an ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i87, %.lr.ph.i121, %.lr.ph.i148, %_ZNSt6vectorIiSaIiEE6resizeEm.exit143, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116, %_ZNSt6vectorIiSaIiEE7reserveEm.exit82, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212
  %.2 = phi i1 [ false, %.lr.ph.i148 ], [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit212 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i121 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit143 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit82 ], [ false, %.lr.ph.i87 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSA_RKT3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2030 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2020, !noalias !3477 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !3480
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2021, !noalias !3480
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !3485

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %i.l = sub i64 %2, %3
  %i.m = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !15, !noalias !3486
  %i.o = load i32, ptr %i.j, align 4, !tbaa !2021, !noalias !3486 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !2021, !noalias !3486
  store i32 0, ptr %i.j, align 4, !tbaa !2021, !noalias !3486
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.s = icmp eq i64 %2, %4
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !15, !noalias !3486
  %i.w = load i32, ptr %i.u, align 4, !tbaa !2021, !noalias !3486 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !2021, !noalias !3486
  store i32 0, ptr %i.u, align 4, !tbaa !2021, !noalias !3486
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !15, !noalias !3486
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !2021, !noalias !3486 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !2021, !noalias !3486
  store i32 0, ptr %i.z, align 4, !tbaa !2021, !noalias !3486
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !3487

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i8.i.prol ], [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.an, %.lr.ph.i8.i.prol ], [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.ak = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2021, !noalias !3488
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3491

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2021, !noalias !3488
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !2021, !noalias !3488
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !2021, !noalias !3488
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !2021, !noalias !3488
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3488
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !2033

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !2016, !noalias !3488
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSC_T3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2030 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2020, !noalias !3492 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !3495
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2021, !noalias !3495
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !3500

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %i.l = sub i64 %2, %3
  %i.m = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !15, !noalias !3501
  %i.o = load i32, ptr %i.j, align 4, !tbaa !2021, !noalias !3501 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !2021, !noalias !3501
  store i32 0, ptr %i.j, align 4, !tbaa !2021, !noalias !3501
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %4 = sub i64 0, %3
  %i.s = icmp eq i64 %2, %4
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !15, !noalias !3501
  %i.w = load i32, ptr %i.u, align 4, !tbaa !2021, !noalias !3501 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !2021, !noalias !3501
  store i32 0, ptr %i.u, align 4, !tbaa !2021, !noalias !3501
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !15, !noalias !3501
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !2021, !noalias !3501 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !2021, !noalias !3501
  store i32 0, ptr %i.z, align 4, !tbaa !2021, !noalias !3501
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !3502

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.ag = ptrtoint ptr %i.d to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.aj, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i8.i.prol ], [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.an, %.lr.ph.i8.i.prol ], [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.ak = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2021, !noalias !3503
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3506

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2021, !noalias !3503
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !2021, !noalias !3503
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !2021, !noalias !3503
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !2021, !noalias !3503
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !15, !noalias !3503
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !2033

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !2016, !noalias !3503
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.108", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.108", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2030
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !2020, !noalias !3507
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !2021
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !3510

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !776, !noalias !3511 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !777, !noalias !3511
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !775, !noalias !3511 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %.pr.pre221 = load i64, ptr %i.il, align 8, !tbaa !2078 ; 2 uses
  %i.ke = icmp eq i64 %.pr.pre221, %i.ir
  %spec.select = select i1 %or.cond194.not, i1 %i.ke, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit170, %bb.aj, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.kf = phi i64 [ %i.kd, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit170 ], [ %i.js, %bb.aj ], [ %i.js, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.kg = phi i64 [ %.pr.pre221, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit170 ], [ %i.in, %bb.aj ], [ %.pr.pre, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ] ; 5 uses
  %.1 = phi i1 [ %spec.select, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit170 ], [ false, %bb.aj ], [ false, %_ZN5boost9container12small_vectorINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.kh = load ptr, ptr %8, align 8, !tbaa !2068  ; 4 uses
  %.not3.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter365 = and i64 %i.kg, 3                 ; 2 uses
  %lcmp.mod366.not = icmp eq i64 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.ki, %.lr.ph.i.i.prol ], [ %i.kg, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.kl, %.lr.ph.i.i.prol ], [ %i.kh, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter367 = phi i64 [ %prol.iter367.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ki = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2069
  %i.kj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kk = add i32 %i.kj, -1
  store i32 %i.kk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter367.next = add i64 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i64 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4248

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.kg, %.lr.ph.i.i.preheader ], [ %i.ki, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.kh, %.lr.ph.i.i.preheader ], [ %i.kl, %.lr.ph.i.i.prol ]
  %i.km = icmp ult i64 %i.kg, 4
  br i1 %i.km, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ku, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.kw, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2069
  %i.kn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.ko = add i32 %i.kn, -1
  store i32 %i.ko, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.kp, align 4, !tbaa !2069
  %i.kq = add i32 %i.kn, -2
  store i32 %i.kq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.kr, align 4, !tbaa !2069
  %i.ks = add i32 %i.kn, -3
  store i32 %i.ks, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ku = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.kt, align 4, !tbaa !2069
  %i.kv = add i32 %i.kn, -4
  store i32 %i.kv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.kw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i171.3 = icmp eq i64 %i.ku, 0
  br i1 %.not.i.i171.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !2081

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre223 = load i64, ptr %i.im, align 8, !tbaa !2067
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, %thread-pre-split
  %i.kx = phi i64 [ %.pre223, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit ], [ %i.kf, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.kx, 0
  %i.ky = icmp eq ptr %i.ik, %i.kh
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.ky
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.kz = shl i64 %i.kx, 2
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kz) #22
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.la = load ptr, ptr %7, align 8, !tbaa !2068  ; 4 uses
  %i.lb = load i64, ptr %i.ii, align 8, !tbaa !2078 ; 5 uses
  %.not3.i.i172 = icmp eq i64 %i.lb, 0
  br i1 %.not3.i.i172, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177, label %.lr.ph.i.i173.preheader

.lr.ph.i.i173.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %xtraiter368 = and i64 %i.lb, 3                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph.i.i173.prol.loopexit, label %.lr.ph.i.i173.prol

.lr.ph.i.i173.prol:                               ; preds = %.lr.ph.i.i173.preheader, %.lr.ph.i.i173.prol
  %.05.i.i174.prol = phi i64 [ %i.lc, %.lr.ph.i.i173.prol ], [ %i.lb, %.lr.ph.i.i173.preheader ]
  %storemerge4.i.i175.prol = phi ptr [ %i.lf, %.lr.ph.i.i173.prol ], [ %i.la, %.lr.ph.i.i173.preheader ] ; 2 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.lr.ph.i.i173.prol ], [ 0, %.lr.ph.i.i173.preheader ]
  %i.lc = add i64 %.05.i.i174.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i175.prol, align 4, !tbaa !2069
  %i.ld = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.le = add i32 %i.ld, -1
  store i32 %i.le, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i175.prol, i64 4 ; 2 uses
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph.i.i173.prol.loopexit, label %.lr.ph.i.i173.prol, !llvm.loop !4249

.lr.ph.i.i173.prol.loopexit:                      ; preds = %.lr.ph.i.i173.prol, %.lr.ph.i.i173.preheader
  %.05.i.i174.unr = phi i64 [ %i.lb, %.lr.ph.i.i173.preheader ], [ %i.lc, %.lr.ph.i.i173.prol ]
  %storemerge4.i.i175.unr = phi ptr [ %i.la, %.lr.ph.i.i173.preheader ], [ %i.lf, %.lr.ph.i.i173.prol ]
  %i.lg = icmp ult i64 %i.lb, 4
  br i1 %i.lg, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177, label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.prol.loopexit, %.lr.ph.i.i173
  %.05.i.i174 = phi i64 [ %i.lo, %.lr.ph.i.i173 ], [ %.05.i.i174.unr, %.lr.ph.i.i173.prol.loopexit ]
  %storemerge4.i.i175 = phi ptr [ %i.lq, %.lr.ph.i.i173 ], [ %storemerge4.i.i175.unr, %.lr.ph.i.i173.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i175, align 4, !tbaa !2069
  %i.lh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15 ; 4 uses
  %i.li = add i32 %i.lh, -1
  store i32 %i.li, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i175, i64 4
  store i32 -2147483648, ptr %i.lj, align 4, !tbaa !2069
  %i.lk = add i32 %i.lh, -2
  store i32 %i.lk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.ll = getelementptr inbounds nuw i8, ptr %storemerge4.i.i175, i64 8
  store i32 -2147483648, ptr %i.ll, align 4, !tbaa !2069
  %i.lm = add i32 %i.lh, -3
  store i32 %i.lm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %storemerge4.i.i175, i64 12
  %i.lo = add i64 %.05.i.i174, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.ln, align 4, !tbaa !2069
  %i.lp = add i32 %i.lh, -4
  store i32 %i.lp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15
  %i.lq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i175, i64 16
  %.not.i.i176.3 = icmp eq i64 %i.lo, 0
  br i1 %.not.i.i176.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177, label %.lr.ph.i.i173, !llvm.loop !2081

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177: ; preds = %.lr.ph.i.i173.prol.loopexit, %.lr.ph.i.i173, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.lr = load i64, ptr %i.ij, align 8, !tbaa !2067 ; 2 uses
  %.not.i1.i178 = icmp eq i64 %i.lr, 0
  %i.ls = icmp eq ptr %i.ih, %i.la
  %or.cond.i179 = select i1 %.not.i1.i178, i1 true, i1 %i.ls
  br i1 %or.cond.i179, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit180, label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177
  %i.lt = shl i64 %i.lr, 2
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.lt) #22
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit180

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit180: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i177, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.an:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.jv, %bb.ai ], [ %i.ju, %bb.ah ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i89, %.lr.ph.i121, %.lr.ph.i140, %_ZNSt6vectorIiSaIiEE6resizeEm.exit135, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit180
  %.2 = phi i1 [ false, %.lr.ph.i140 ], [ %.1, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit180 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i121 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit135 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit84 ], [ false, %.lr.ph.i89 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEviEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSA_RKT3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2078 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2068, !noalias !4250 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !4253
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2069, !noalias !4253
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !4258

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !15, !noalias !4259
  %i.p = load i32, ptr %i.n, align 4, !tbaa !2069, !noalias !4259 ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !2069, !noalias !4259
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4260

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !15, !noalias !4259
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2069, !noalias !4259 ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !2069, !noalias !4259
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !15, !noalias !4259
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !2069, !noalias !4259 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !2069, !noalias !4259
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !15, !noalias !4259
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !2069, !noalias !4259 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !2069, !noalias !4259
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !15, !noalias !4259
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !2069, !noalias !4259 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !2069, !noalias !4259
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !4261

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.au, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.av, %.lr.ph.i8.i.prol ], [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i8.i.prol ], [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.av = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2069, !noalias !4262
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !4265

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2069, !noalias !4262
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !2069, !noalias !4262
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !2069, !noalias !4262
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !2069, !noalias !4262
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4262
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !2081

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !2064, !noalias !4262
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test12copyable_intELm10ENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_12small_vectorIT_XT0_ET1_T2_E9size_typeERSC_T3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2078 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2068, !noalias !4266 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !15, !noalias !4269
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !2069, !noalias !4269
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %bb.b, !llvm.loop !4274

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = lshr exact i64 %i.k, 2                     ; 2 uses
  %3 = add nuw nsw i64 %2, 1
  %4 = mul i64 %indvar, 4611686018427387903       ; 2 uses
  %5 = add i64 %4, %3
  %i.l = add i64 %2, %4
  %xtraiter = and i64 %5, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !15, !noalias !4275
  %i.p = load i32, ptr %i.n, align 4, !tbaa !2069, !noalias !4275 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !2069, !noalias !4275
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4276

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !15, !noalias !4275
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2069, !noalias !4275 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !2069, !noalias !4275
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !15, !noalias !4275
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !2069, !noalias !4275 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !2069, !noalias !4275
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !15, !noalias !4275
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !2069, !noalias !4275 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !2069, !noalias !4275
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !15, !noalias !4275
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !2069, !noalias !4275 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !2069, !noalias !4275
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !4277

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 5 uses
  %xtraiter36 = and i64 %i.au, 3                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.av, %.lr.ph.i8.i.prol ], [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i8.i.prol ], [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter38 = phi i64 [ %prol.iter38.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.av = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !2069, !noalias !4278
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !4281

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !2069, !noalias !4278
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !2069, !noalias !4278
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !2069, !noalias !4278
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !2069, !noalias !4278
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !15, !noalias !4278
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !2081

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !2064, !noalias !4278
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.145", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.145", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.39", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !775  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !776  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !777
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !776  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !2078
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !2068, !noalias !4282
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !15
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !2069
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
end_hunk_5
