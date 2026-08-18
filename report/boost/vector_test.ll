inline.NumInlined: 28809
inline.NumDeleted: 5417
loop-unroll.NumCompletelyUnrolled: 348
loop-unroll.NumRuntimeUnrolled: 1702
loop-unroll.NumUnrolled: 2060
begin_hunk_0_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit115
  %i.dw = load ptr, ptr %0, align 8, !tbaa !453, !noalias !1157 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.ds, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i118
  %.not2324.i119 = icmp eq i64 %i.ds, 0
  br i1 %.not2324.i119, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit77, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.am, %bb.an
  %.sroa.019.026.i121 = phi ptr [ %i.eb, %bb.an ], [ %i.dw, %bb.am ] ; 2 uses
  %.sroa.015.025.i122 = phi ptr [ %i.ec, %bb.an ], [ %i.dq, %bb.am ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.019.026.i121, align 4, !tbaa !37
  %i.dz = load i32, ptr %.sroa.015.025.i122, align 4, !tbaa !37
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.an, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit

bb.an:                                            ; preds = %.lr.ph.i120
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i121, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i122, i64 4
  %.not23.i123 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not23.i123, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit77, label %.lr.ph.i120, !llvm.loop !463

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit77: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5boost9container6vectorIiSaIiEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEES9_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i64 noundef 1000)
          to label %bb.ao unwind label %.thread

bb.ao:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !730 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !456 ; 3 uses
  %i.eh = udiv i64 %i.ee, 10                      ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not.i.i.i140.not = icmp ult i64 %i.ee, 10
  br i1 %.not.i.i.i140.not, label %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147, label %bb.ap, !prof !236

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5boost9container6vectorIiSaIiEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEES9_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, i64 noundef %i.eh)
          to label %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge unwind label %bb.au

._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge: ; preds = %bb.ap
  %.pre187.pre = load ptr, ptr %7, align 8, !tbaa !56
  %.pre188.pre = load i64, ptr %i.ed, align 8, !tbaa !58
  %.pre189.pre = load i64, ptr %i.ei, align 8, !tbaa !58
  %.pre190.pre = load i64, ptr %i.ef, align 8, !tbaa !58
  %.pre192.pre = load i64, ptr %i.ej, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147

_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147: ; preds = %bb.ao, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge
  %.pre192 = phi i64 [ %.pre192.pre, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge ], [ 0, %bb.ao ] ; 6 uses
  %.pre190 = phi i64 [ %.pre190.pre, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge ], [ %i.eg, %bb.ao ] ; 6 uses
  %.pre189 = phi i64 [ %.pre189.pre, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge ], [ 0, %bb.ao ] ; 2 uses
  %.pre188 = phi i64 [ %.pre188.pre, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge ], [ %i.ee, %bb.ao ] ; 2 uses
  %.pre187 = phi ptr [ %.pre187.pre, %._ZN5boost9container6vectorIiSaIiEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS2_EEEENS0_12vec_iteratorIPiLb0EEERKS9_mT_.exit.i.i145_crit_edge ], [ null, %bb.ao ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ek = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  store ptr %.pre187, ptr %6, align 8, !tbaa !56
  store ptr %i.ek, ptr %7, align 8, !tbaa !56
  store i64 %.pre189, ptr %i.ed, align 8, !tbaa !58
  store i64 %.pre188, ptr %i.ei, align 8, !tbaa !58
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %.pre192, ptr %i.ef, align 8, !tbaa !58
  store i64 %.pre190, ptr %i.el, align 8, !tbaa !58
  %.not = icmp uge i64 %.pre190, %i.eg
  %i.em = icmp eq i64 %.pre188, %i.ee
  %or.cond163 = select i1 %.not, i1 %i.em, i1 false
  br i1 %or.cond163, label %bb.aq, label %thread-pre-split

.thread:                                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit77
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152

bb.aq:                                            ; preds = %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147
  %i.eo = udiv i64 %i.eg, 10
  %.not52 = icmp uge i64 %.pre192, %i.eo
  %i.ep = icmp eq i64 %.pre189, %i.eh
  %or.cond164 = select i1 %.not52, i1 %i.ep, i1 false
  br i1 %or.cond164, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ek, ptr %6, align 8, !tbaa !56
  store ptr %.pre187, ptr %7, align 8, !tbaa !56
  store i64 %i.ee, ptr %i.ed, align 8, !tbaa !58
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !58
  store i64 %.pre190, ptr %i.ef, align 8, !tbaa !58
  store i64 %.pre192, ptr %i.el, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.aq, %bb.ar, %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147
  %i.eq = phi i64 [ %.pre192, %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147 ], [ %.pre190, %bb.ar ], [ %.pre192, %bb.aq ]
  %i.er = phi ptr [ %i.ek, %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147 ], [ %.pre187, %bb.ar ], [ %i.ek, %bb.aq ]
  %i.es = phi i64 [ %.pre190, %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147 ], [ %.pre192, %bb.ar ], [ %.pre190, %bb.aq ] ; 2 uses
  %i.et = phi i1 [ false, %_ZN5boost9container6vectorIiSaIiEvE6resizeEm.exit147 ], [ true, %bb.ar ], [ false, %bb.aq ]
  %.not.i.i148 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i148, label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %thread-pre-split
  %i.eu = shl i64 %i.es, 2
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #27
  %.pre193 = load i64, ptr %i.ef, align 8, !tbaa !456
  br label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit

_ZN5boost9container6vectorIiSaIiEvED2Ev.exit:     ; preds = %thread-pre-split, %bb.as
  %i.ev = phi i64 [ %i.eq, %thread-pre-split ], [ %.pre193, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i149 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i149, label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit150, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit
  %i.ew = load ptr, ptr %6, align 8, !tbaa !56
  %i.ex = shl i64 %i.ev, 2
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ex) #27
  br label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit150

_ZN5boost9container6vectorIiSaIiEvED2Ev.exit150:  ; preds = %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit

bb.au:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre186 = load i64, ptr %i.ej, align 8, !tbaa !456 ; 2 uses
  %.not.i.i151 = icmp eq i64 %.pre186, 0
  br i1 %.not.i.i151, label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %7, align 8, !tbaa !56
  %i.fa = shl i64 %.pre186, 2
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fa) #27
  br label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152

_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152:  ; preds = %.thread, %bb.au, %bb.av
  %.pn271 = phi { ptr, i32 } [ %i.en, %.thread ], [ %i.ey, %bb.au ], [ %i.ey, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !456 ; 2 uses
  %.not.i.i153 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i153, label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit154, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152
  %i.fd = load ptr, ptr %6, align 8, !tbaa !56
  %i.fe = shl i64 %i.fc, 2
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fe) #27
  br label %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit154

_ZN5boost9container6vectorIiSaIiEvED2Ev.exit154:  ; preds = %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit152, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn271

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiSaIiEvEESt6vectorIiS4_EEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i73, %.lr.ph.i101, %.lr.ph.i120, %_ZNSt6vectorIiSaIiEE6resizeEm.exit115, %_ZNSt6vectorIiSaIiEE6resizeEm.exit96, %_ZNSt6vectorIiSaIiEE7reserveEm.exit68, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit150
  %.2 = phi i1 [ false, %.lr.ph.i120 ], [ %i.et, %_ZN5boost9container6vectorIiSaIiEvED2Ev.exit150 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i101 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit115 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit96 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit68 ], [ false, %.lr.ph.i73 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiSaIiEviEENS0_6vectorIT_T0_T1_E9size_typeERS7_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !730  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !453, !noalias !1160 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !1163
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !1163
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %bb.b, !llvm.loop !1168

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !1169 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !37, !noalias !1169
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !37, !noalias !1169
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1170

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !1169 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !37, !noalias !1169
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !37, !noalias !1169
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !1169 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !37, !noalias !1169
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !37, !noalias !1169
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !1169 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !37, !noalias !1169
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !1169
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !1169 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !37, !noalias !1169
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !1169
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1171

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !455, !noalias !1172
  br label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit

_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiSaIiEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERS9_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !730  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !453, !noalias !1175 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !1178
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !1178
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %bb.b, !llvm.loop !1183

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !1184
  %i.p = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !1184 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !37, !noalias !1184
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1185

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !1184
  %i.x = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !1184 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !37, !noalias !1184
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !1184
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !1184 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !37, !noalias !1184
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !1184
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !1184 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !1184
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !1184
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !1184 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !1184
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1186

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !455, !noalias !1187
  br label %_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit

_ZN5boost9container6vectorIiSaIiEvE5eraseENS0_12vec_iteratorIPiLb1EEES6_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorIiSaIiEvEEEEvRSt5dequeIiS4_ERT_RKS7_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.84", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !730
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !453, !noalias !1190
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !37
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1193

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorIiSaIiEvEEEEvRSt5dequeIiS4_ERT_RKS7_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !1194 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !1194
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !1194 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !1197
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiS4_vEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56, !noalias !1202 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ks = load ptr, ptr %7, align 8, !tbaa !1694  ; 3 uses
  store ptr %i.ks, ptr %6, align 8, !tbaa !1694
  store ptr %i.kr, ptr %7, align 8, !tbaa !1694
  store i64 %i.kq, ptr %i.iu, align 8, !tbaa !58
  store i64 %.pr, ptr %i.ix, align 8, !tbaa !58
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ku = load i64, ptr %i.iv, align 8, !tbaa !58 ; 4 uses
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !58 ; 4 uses
  store i64 %i.kv, ptr %i.iv, align 8, !tbaa !58
  store i64 %i.ku, ptr %i.kt, align 8, !tbaa !58
  %.not = icmp uge i64 %i.ku, %.pre254
  %i.kw = icmp eq i64 %.pr, %.pre253
  %or.cond214.not219.not222.not226.not230 = select i1 %.not, i1 %i.kw, i1 false
  %i.kx = udiv i64 %.pre254, 10
  %.not52 = icmp uge i64 %i.kv, %i.kx
  %or.cond215.not220.not224.not228 = select i1 %or.cond214.not219.not222.not226.not230, i1 %.not52, i1 false
  %i.ky = icmp eq i64 %i.kq, %i.iw
  %or.cond216.not.not = select i1 %or.cond215.not220.not224.not228, i1 %i.ky, i1 false ; 2 uses
  br i1 %or.cond216.not.not, label %bb.aq, label %thread-pre-split

bb.ao:                                            ; preds = %.loopexit350
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196
  store ptr %i.kr, ptr %6, align 8, !tbaa !1694
  store ptr %i.ks, ptr %7, align 8, !tbaa !1694
  store i64 %.pre253, ptr %i.iu, align 8, !tbaa !58
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !58
  store i64 %i.ku, ptr %i.iv, align 8, !tbaa !58
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196, %bb.aq
  %i.lb = phi i64 [ %.pre253, %bb.aq ], [ %i.kq, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196 ]
  %i.lc = phi i64 [ %i.kv, %bb.aq ], [ %i.ku, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196 ]
  %i.ld = phi ptr [ %i.ks, %bb.aq ], [ %i.kr, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196 ] ; 3 uses
  %i.le = phi i64 [ %i.iw, %bb.aq ], [ %.pr, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit196 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.le, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.le, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.lf, %.lr.ph.i.i.prol ], [ %i.le, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.li, %.lr.ph.i.i.prol ], [ %i.ld, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.lf = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499
  %i.lg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.lh = add i32 %i.lg, -1
  store i32 %i.lh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.li = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1923

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.le, %.lr.ph.i.i.preheader ], [ %i.lf, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.ld, %.lr.ph.i.i.preheader ], [ %i.li, %.lr.ph.i.i.prol ]
  %i.lj = icmp ult i64 %i.le, 4
  br i1 %i.lj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.lr, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.lt, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499
  %i.lk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.ll = add i32 %i.lk, -1
  store i32 %i.ll, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.lm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.lm, align 4, !tbaa !499
  %i.ln = add i32 %i.lk, -2
  store i32 %i.ln, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.lo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.lo, align 4, !tbaa !499
  %i.lp = add i32 %i.lk, -3
  store i32 %i.lp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.lr = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.lq, align 4, !tbaa !499
  %i.ls = add i32 %i.lk, -4
  store i32 %i.ls, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.lt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i197.3 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i197.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !511

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre259 = load i64, ptr %i.kt, align 8, !tbaa !498
  br label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, %thread-pre-split
  %i.lu = phi i64 [ %.pre259, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit ], [ %i.lc, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.lu, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.lv = shl i64 %i.lu, 2
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lv) #27
  %.pre260 = load i64, ptr %i.iu, align 8, !tbaa !508
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.ar
  %i.lw = phi i64 [ %i.lb, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ %.pre260, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.lx = load ptr, ptr %6, align 8, !tbaa !494   ; 3 uses
  %.not3.i.i198 = icmp eq i64 %i.lw, 0
  br i1 %.not3.i.i198, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit
  %xtraiter387 = and i64 %i.lw, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol

.lr.ph.i.i199.prol:                               ; preds = %.lr.ph.i.i199.preheader, %.lr.ph.i.i199.prol
  %.05.i.i200.prol = phi i64 [ %i.ly, %.lr.ph.i.i199.prol ], [ %i.lw, %.lr.ph.i.i199.preheader ]
  %storemerge4.i.i201.prol = phi ptr [ %i.mb, %.lr.ph.i.i199.prol ], [ %i.lx, %.lr.ph.i.i199.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i199.prol ], [ 0, %.lr.ph.i.i199.preheader ]
  %i.ly = add i64 %.05.i.i200.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i201.prol, align 4, !tbaa !499
  %i.lz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.ma = add i32 %i.lz, -1
  store i32 %i.ma, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol, !llvm.loop !1924

.lr.ph.i.i199.prol.loopexit:                      ; preds = %.lr.ph.i.i199.prol, %.lr.ph.i.i199.preheader
  %.05.i.i200.unr = phi i64 [ %i.lw, %.lr.ph.i.i199.preheader ], [ %i.ly, %.lr.ph.i.i199.prol ]
  %storemerge4.i.i201.unr = phi ptr [ %i.lx, %.lr.ph.i.i199.preheader ], [ %i.mb, %.lr.ph.i.i199.prol ]
  %i.mc = icmp ult i64 %i.lw, 4
  br i1 %i.mc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199
  %.05.i.i200 = phi i64 [ %i.mk, %.lr.ph.i.i199 ], [ %.05.i.i200.unr, %.lr.ph.i.i199.prol.loopexit ]
  %storemerge4.i.i201 = phi ptr [ %i.mm, %.lr.ph.i.i199 ], [ %storemerge4.i.i201.unr, %.lr.ph.i.i199.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i201, align 4, !tbaa !499
  %i.md = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.me = add i32 %i.md, -1
  store i32 %i.me, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 4
  store i32 -2147483648, ptr %i.mf, align 4, !tbaa !499
  %i.mg = add i32 %i.md, -2
  store i32 %i.mg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 8
  store i32 -2147483648, ptr %i.mh, align 4, !tbaa !499
  %i.mi = add i32 %i.md, -3
  store i32 %i.mi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 12
  %i.mk = add i64 %.05.i.i200, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.mj, align 4, !tbaa !499
  %i.ml = add i32 %i.md, -4
  store i32 %i.ml, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 16
  %.not.i.i202.3 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i202.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199, !llvm.loop !511

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203: ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit
  %i.mn = load i64, ptr %i.iv, align 8, !tbaa !498 ; 2 uses
  %.not.i1.i204 = icmp eq i64 %i.mn, 0
  br i1 %.not.i1.i204, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit205, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203
  %i.mo = shl i64 %i.mn, 2
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mo) #27
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit205

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit205: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.la, %bb.ap ], [ %i.kz, %bb.ao ]
  call void @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i84, %.lr.ph.i118, %.lr.ph.i145, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit205
  %.2 = phi i1 [ false, %.lr.ph.i145 ], [ %or.cond216.not.not, %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvED2Ev.exit205 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79 ], [ false, %.lr.ph.i84 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test11movable_intESaIS3_EviEENS0_6vectorIT_T0_T1_E9size_typeERS9_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !508  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !494, !noalias !1925 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !1928
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !1928
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !1933

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !1934
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !1934 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !1934
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !1934
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !1934
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !1934 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !1934
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !1934
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !1934
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !1934 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !1934
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !1934
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1935

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !1936
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !1939

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !1936
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !1936
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !1936
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !1936
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1936
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !511

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !497, !noalias !1936
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test11movable_intESaIS3_EvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSB_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !508  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !494, !noalias !1940 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !1943
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !1943
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !1948

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !1949
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !1949 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !1949
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !1949
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !1949
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !1949 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !1949
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !1949
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !1949
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !1949 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !1949
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !1949
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !1950

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !1951
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !1954

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !1951
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !1951
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !1951
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !1951
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !1951
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !511

_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !497, !noalias !1951
  br label %_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test11movable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nISaINS0_4test11movable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.113", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.113", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !508
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !494, !noalias !1955
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !499
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1958

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intESaIS7_EvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !1959 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !1959
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !1959 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ks = load ptr, ptr %7, align 8, !tbaa !2163  ; 3 uses
  store ptr %i.ks, ptr %6, align 8, !tbaa !2163
  store ptr %i.kr, ptr %7, align 8, !tbaa !2163
  store i64 %i.kq, ptr %i.iu, align 8, !tbaa !58
  store i64 %.pr, ptr %i.ix, align 8, !tbaa !58
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ku = load i64, ptr %i.iv, align 8, !tbaa !58 ; 4 uses
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !58 ; 4 uses
  store i64 %i.kv, ptr %i.iv, align 8, !tbaa !58
  store i64 %i.ku, ptr %i.kt, align 8, !tbaa !58
  %.not = icmp uge i64 %i.ku, %.pre254
  %i.kw = icmp eq i64 %.pr, %.pre253
  %or.cond214.not219.not222.not226.not230 = select i1 %.not, i1 %i.kw, i1 false
  %i.kx = udiv i64 %.pre254, 10
  %.not52 = icmp uge i64 %i.kv, %i.kx
  %or.cond215.not220.not224.not228 = select i1 %or.cond214.not219.not222.not226.not230, i1 %.not52, i1 false
  %i.ky = icmp eq i64 %i.kq, %i.iw
  %or.cond216.not.not = select i1 %or.cond215.not220.not224.not228, i1 %i.ky, i1 false ; 2 uses
  br i1 %or.cond216.not.not, label %bb.aq, label %thread-pre-split

bb.ao:                                            ; preds = %.loopexit350
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196
  store ptr %i.kr, ptr %6, align 8, !tbaa !2163
  store ptr %i.ks, ptr %7, align 8, !tbaa !2163
  store i64 %.pre253, ptr %i.iu, align 8, !tbaa !58
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !58
  store i64 %i.ku, ptr %i.iv, align 8, !tbaa !58
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196, %bb.aq
  %i.lb = phi i64 [ %.pre253, %bb.aq ], [ %i.kq, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196 ]
  %i.lc = phi i64 [ %i.kv, %bb.aq ], [ %i.ku, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196 ]
  %i.ld = phi ptr [ %i.ks, %bb.aq ], [ %i.kr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196 ] ; 3 uses
  %i.le = phi i64 [ %i.iw, %bb.aq ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit196 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.le, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.le, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.lf, %.lr.ph.i.i.prol ], [ %i.le, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.li, %.lr.ph.i.i.prol ], [ %i.ld, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.lf = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547
  %i.lg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.lh = add i32 %i.lg, -1
  store i32 %i.lh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.li = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2506

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.le, %.lr.ph.i.i.preheader ], [ %i.lf, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.ld, %.lr.ph.i.i.preheader ], [ %i.li, %.lr.ph.i.i.prol ]
  %i.lj = icmp ult i64 %i.le, 4
  br i1 %i.lj, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.lr, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.lt, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547
  %i.lk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.ll = add i32 %i.lk, -1
  store i32 %i.ll, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.lm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.lm, align 4, !tbaa !547
  %i.ln = add i32 %i.lk, -2
  store i32 %i.ln, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.lo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.lo, align 4, !tbaa !547
  %i.lp = add i32 %i.lk, -3
  store i32 %i.lp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.lr = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.lq, align 4, !tbaa !547
  %i.ls = add i32 %i.lk, -4
  store i32 %i.ls, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.lt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i197.3 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i197.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !559

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre259 = load i64, ptr %i.kt, align 8, !tbaa !546
  br label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, %thread-pre-split
  %i.lu = phi i64 [ %.pre259, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit ], [ %i.lc, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.lu, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.lv = shl i64 %i.lu, 2
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lv) #27
  %.pre260 = load i64, ptr %i.iu, align 8, !tbaa !556
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.ar
  %i.lw = phi i64 [ %i.lb, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ %.pre260, %bb.ar ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.lx = load ptr, ptr %6, align 8, !tbaa !542   ; 3 uses
  %.not3.i.i198 = icmp eq i64 %i.lw, 0
  br i1 %.not3.i.i198, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit
  %xtraiter387 = and i64 %i.lw, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol

.lr.ph.i.i199.prol:                               ; preds = %.lr.ph.i.i199.preheader, %.lr.ph.i.i199.prol
  %.05.i.i200.prol = phi i64 [ %i.ly, %.lr.ph.i.i199.prol ], [ %i.lw, %.lr.ph.i.i199.preheader ]
  %storemerge4.i.i201.prol = phi ptr [ %i.mb, %.lr.ph.i.i199.prol ], [ %i.lx, %.lr.ph.i.i199.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i199.prol ], [ 0, %.lr.ph.i.i199.preheader ]
  %i.ly = add i64 %.05.i.i200.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i201.prol, align 4, !tbaa !547
  %i.lz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.ma = add i32 %i.lz, -1
  store i32 %i.ma, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol, !llvm.loop !2507

.lr.ph.i.i199.prol.loopexit:                      ; preds = %.lr.ph.i.i199.prol, %.lr.ph.i.i199.preheader
  %.05.i.i200.unr = phi i64 [ %i.lw, %.lr.ph.i.i199.preheader ], [ %i.ly, %.lr.ph.i.i199.prol ]
  %storemerge4.i.i201.unr = phi ptr [ %i.lx, %.lr.ph.i.i199.preheader ], [ %i.mb, %.lr.ph.i.i199.prol ]
  %i.mc = icmp ult i64 %i.lw, 4
  br i1 %i.mc, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199
  %.05.i.i200 = phi i64 [ %i.mk, %.lr.ph.i.i199 ], [ %.05.i.i200.unr, %.lr.ph.i.i199.prol.loopexit ]
  %storemerge4.i.i201 = phi ptr [ %i.mm, %.lr.ph.i.i199 ], [ %storemerge4.i.i201.unr, %.lr.ph.i.i199.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i201, align 4, !tbaa !547
  %i.md = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.me = add i32 %i.md, -1
  store i32 %i.me, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 4
  store i32 -2147483648, ptr %i.mf, align 4, !tbaa !547
  %i.mg = add i32 %i.md, -2
  store i32 %i.mg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 8
  store i32 -2147483648, ptr %i.mh, align 4, !tbaa !547
  %i.mi = add i32 %i.md, -3
  store i32 %i.mi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 12
  %i.mk = add i64 %.05.i.i200, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.mj, align 4, !tbaa !547
  %i.ml = add i32 %i.md, -4
  store i32 %i.ml, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 16
  %.not.i.i202.3 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i202.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, label %.lr.ph.i.i199, !llvm.loop !559

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203: ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit
  %i.mn = load i64, ptr %i.iv, align 8, !tbaa !546 ; 2 uses
  %.not.i1.i204 = icmp eq i64 %i.mn, 0
  br i1 %.not.i1.i204, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit205, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203
  %i.mo = shl i64 %i.mn, 2
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mo) #27
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit205

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit205: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i203, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.la, %bb.ap ], [ %i.kz, %bb.ao ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i84, %.lr.ph.i118, %.lr.ph.i145, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit205
  %.2 = phi i1 [ false, %.lr.ph.i145 ], [ %or.cond216.not.not, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvED2Ev.exit205 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79 ], [ false, %.lr.ph.i84 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24movable_and_copyable_intESaIS3_EviEENS0_6vectorIT_T0_T1_E9size_typeERS9_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !556  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !542, !noalias !2508 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !2511
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !2511
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !2516

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !2517
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !2517 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !2517
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !2517
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !2517
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !2517 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !2517
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !2517
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !2517
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !2517 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !2517
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !2517
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2518

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !2519
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !2522

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !2519
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !2519
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !2519
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !2519
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2519
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !559

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !545, !noalias !2519
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24movable_and_copyable_intESaIS3_EvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSB_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !556  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !542, !noalias !2523 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !2526
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !2526
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !2531

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !2532
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !2532 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !2532
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !2532
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !2532
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !2532 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !2532
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !2532
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !2532
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !2532 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !2532
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !2532
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !2533

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !2534
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !2537

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !2534
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !2534
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !2534
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !2534
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !2534
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !559

_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !545, !noalias !2534
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.139", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.139", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !556
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !542, !noalias !2538
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !547
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2541

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !2542 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !2542
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !2542 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit164
  store ptr %i.jo, ptr %7, align 8, !tbaa !295
  store ptr %i.jp, ptr %8, align 8, !tbaa !295
  store i64 %i.ig, ptr %i.if, align 8, !tbaa !58
  store i64 %i.il, ptr %i.im, align 8, !tbaa !58
  store i64 %i.js, ptr %i.ih, align 8, !tbaa !58
  store i64 %i.jt, ptr %i.jr, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit164, %bb.ak
  %i.jz = phi i64 [ %i.jt, %bb.ak ], [ %i.js, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit164 ]
  %i.ka = phi ptr [ %i.jp, %bb.ak ], [ %i.jo, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit164 ] ; 3 uses
  %i.kb = phi i64 [ %i.il, %bb.ak ], [ %i.jq, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit164 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.kb, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter361 = and i64 %i.kb, 3                 ; 2 uses
  %lcmp.mod362.not = icmp eq i64 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.kc, %.lr.ph.i.i.prol ], [ %i.kb, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.kf, %.lr.ph.i.i.prol ], [ %i.ka, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter363 = phi i64 [ %prol.iter363.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.kc = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284
  %i.kd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.ke = add i32 %i.kd, -1
  store i32 %i.ke, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter363.next = add i64 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i64 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3237

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.kb, %.lr.ph.i.i.preheader ], [ %i.kc, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.ka, %.lr.ph.i.i.preheader ], [ %i.kf, %.lr.ph.i.i.prol ]
  %i.kg = icmp ult i64 %i.kb, 4
  br i1 %i.kg, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ko, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.kq, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284
  %i.kh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.ki = add i32 %i.kh, -1
  store i32 %i.ki, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.kj, align 4, !tbaa !284
  %i.kk = add i32 %i.kh, -2
  store i32 %i.kk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.kl, align 4, !tbaa !284
  %i.km = add i32 %i.kh, -3
  store i32 %i.km, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ko = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.kn, align 4, !tbaa !284
  %i.kp = add i32 %i.kh, -4
  store i32 %i.kp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i165.3 = icmp eq i64 %i.ko, 0
  br i1 %.not.i.i165.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !604

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre223 = load i64, ptr %i.jr, align 8, !tbaa !593
  br label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit, %thread-pre-split
  %i.kr = phi i64 [ %.pre223, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i.loopexit ], [ %i.jz, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.kr, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ks = shl i64 %i.kr, 2
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ks) #27
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.kt = load ptr, ptr %7, align 8, !tbaa !590   ; 3 uses
  %i.ku = load i64, ptr %i.if, align 8, !tbaa !601 ; 5 uses
  %.not3.i.i166 = icmp eq i64 %i.ku, 0
  br i1 %.not3.i.i166, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171, label %.lr.ph.i.i167.preheader

.lr.ph.i.i167.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit
  %xtraiter364 = and i64 %i.ku, 3                 ; 2 uses
  %lcmp.mod365.not = icmp eq i64 %xtraiter364, 0
  br i1 %lcmp.mod365.not, label %.lr.ph.i.i167.prol.loopexit, label %.lr.ph.i.i167.prol

.lr.ph.i.i167.prol:                               ; preds = %.lr.ph.i.i167.preheader, %.lr.ph.i.i167.prol
  %.05.i.i168.prol = phi i64 [ %i.kv, %.lr.ph.i.i167.prol ], [ %i.ku, %.lr.ph.i.i167.preheader ]
  %storemerge4.i.i169.prol = phi ptr [ %i.ky, %.lr.ph.i.i167.prol ], [ %i.kt, %.lr.ph.i.i167.preheader ] ; 2 uses
  %prol.iter366 = phi i64 [ %prol.iter366.next, %.lr.ph.i.i167.prol ], [ 0, %.lr.ph.i.i167.preheader ]
  %i.kv = add i64 %.05.i.i168.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i169.prol, align 4, !tbaa !284
  %i.kw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kx = add i32 %i.kw, -1
  store i32 %i.kx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.ky = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169.prol, i64 4 ; 2 uses
  %prol.iter366.next = add i64 %prol.iter366, 1   ; 2 uses
  %prol.iter366.cmp.not = icmp eq i64 %prol.iter366.next, %xtraiter364
  br i1 %prol.iter366.cmp.not, label %.lr.ph.i.i167.prol.loopexit, label %.lr.ph.i.i167.prol, !llvm.loop !3238

.lr.ph.i.i167.prol.loopexit:                      ; preds = %.lr.ph.i.i167.prol, %.lr.ph.i.i167.preheader
  %.05.i.i168.unr = phi i64 [ %i.ku, %.lr.ph.i.i167.preheader ], [ %i.kv, %.lr.ph.i.i167.prol ]
  %storemerge4.i.i169.unr = phi ptr [ %i.kt, %.lr.ph.i.i167.preheader ], [ %i.ky, %.lr.ph.i.i167.prol ]
  %i.kz = icmp ult i64 %i.ku, 4
  br i1 %i.kz, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.lr.ph.i.i167.prol.loopexit, %.lr.ph.i.i167
  %.05.i.i168 = phi i64 [ %i.lh, %.lr.ph.i.i167 ], [ %.05.i.i168.unr, %.lr.ph.i.i167.prol.loopexit ]
  %storemerge4.i.i169 = phi ptr [ %i.lj, %.lr.ph.i.i167 ], [ %storemerge4.i.i169.unr, %.lr.ph.i.i167.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i169, align 4, !tbaa !284
  %i.la = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.lb = add i32 %i.la, -1
  store i32 %i.lb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.lc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 4
  store i32 -2147483648, ptr %i.lc, align 4, !tbaa !284
  %i.ld = add i32 %i.la, -2
  store i32 %i.ld, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.le = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 8
  store i32 -2147483648, ptr %i.le, align 4, !tbaa !284
  %i.lf = add i32 %i.la, -3
  store i32 %i.lf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.lg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 12
  %i.lh = add i64 %.05.i.i168, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.lg, align 4, !tbaa !284
  %i.li = add i32 %i.la, -4
  store i32 %i.li, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.lj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 16
  %.not.i.i170.3 = icmp eq i64 %i.lh, 0
  br i1 %.not.i.i170.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171, label %.lr.ph.i.i167, !llvm.loop !604

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171: ; preds = %.lr.ph.i.i167.prol.loopexit, %.lr.ph.i.i167, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit
  %i.lk = load i64, ptr %i.ih, align 8, !tbaa !593 ; 2 uses
  %.not.i1.i172 = icmp eq i64 %i.lk, 0
  br i1 %.not.i1.i172, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit173, label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171
  %i.ll = shl i64 %i.lk, 2
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.ll) #27
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit173

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit173: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i171, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.jy, %bb.aj ], [ %i.jx, %bb.ai ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i86, %.lr.ph.i118, %.lr.ph.i137, %_ZNSt6vectorIiSaIiEE6resizeEm.exit132, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit81, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit173
  %.2 = phi i1 [ false, %.lr.ph.i137 ], [ %or.cond185.not.not, %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvED2Ev.exit173 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit132 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit81 ], [ false, %.lr.ph.i86 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test12copyable_intESaIS3_EviEENS0_6vectorIT_T0_T1_E9size_typeERS9_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !601  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !590, !noalias !3239 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !3242
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !3242
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !3247

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !3248
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !3248 ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !3248
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3249

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !3248
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !3248 ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !3248
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !3248
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !3248 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !3248
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !3248
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !3248 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !3248
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !3248
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !3248 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !3248
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !3250

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !3251
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3254

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !3251
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !3251
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !3251
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !3251
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3251
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !604

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !592, !noalias !3251
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test12copyable_intESaIS3_EvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSB_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !601  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !590, !noalias !3255 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !3258
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !3258
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %bb.b, !llvm.loop !3263

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !3264
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !3264 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !3264
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !3265

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !3264
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !3264 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !3264
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !3264
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !3264 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !3264
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !3264
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !3264 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !3264
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !3264
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !3264 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !3264
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !3266

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !3267
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3270

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !3267
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !3267
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !3267
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !3267
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !3267
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !604

_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !592, !noalias !3267
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nISaINS0_4test12copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_12copyable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.167", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.167", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !601
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !590, !noalias !3271
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !284
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24overaligned_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ii = sub i64 %.pre251, %i.hu
  %i.ij = icmp ugt i64 %i.ii, -4
  br i1 %i.ij, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, label %.lr.ph.i.i.i.i.i.i.i176

.lr.ph.i.i.i.i.i.i.i176:                          ; preds = %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i176
  %.016.i.i.i.i.i.i.i177 = phi i64 [ %i.is, %.lr.ph.i.i.i.i.i.i.i176 ], [ %.016.i.i.i.i.i.i.i177.unr, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i178 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i.i176 ], [ %.01315.i.i.i.i.i.i.i178.unr, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i178) ]
  %i.ik = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113
  store i32 0, ptr %.01315.i.i.i.i.i.i.i178, align 64, !tbaa !35, !noalias !4113
  %i.im = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 64
  %i.in = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113 ; 3 uses
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113
  store i32 0, ptr %i.im, align 64, !tbaa !35, !noalias !4113
  %i.ip = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 128
  %i.iq = add i32 %i.in, 2
  store i32 %i.iq, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113
  store i32 0, ptr %i.ip, align 64, !tbaa !35, !noalias !4113
  %i.ir = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 192
  %i.is = add i64 %.016.i.i.i.i.i.i.i177, -4      ; 2 uses
  %i.it = add i32 %i.in, 3
  store i32 %i.it, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4113
  store i32 0, ptr %i.ir, align 64, !tbaa !35, !noalias !4113
  %i.iu = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 256
  %.not.i.i.i.i.i.i.i179.3 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i.i.i179.3, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, label %.lr.ph.i.i.i.i.i.i.i176, !llvm.loop !3738

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180: ; preds = %.lr.ph.i.i.i.i.i.i.i176, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit
  %.pre.i.i181 = load i64, ptr %i.hv, align 8, !tbaa !686, !noalias !4113
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, %bb.ao
  %i.iv = phi i64 [ %.pre.i.i181, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180 ], [ %.pre251, %bb.ao ]
  %i.iw = add i64 %i.iv, %i.ia
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183

bb.ap:                                            ; preds = %bb.an
  invoke void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.207") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.hz, i64 noundef %i.ia)
          to label %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183_crit_edge unwind label %bb.ar

._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183_crit_edge: ; preds = %bb.ap
  %.pre253.pre = load i64, ptr %i.hv, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183: ; preds = %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183_crit_edge, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182
  %.pre253 = phi i64 [ %.pre253.pre, %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183_crit_edge ], [ %i.iw, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre252 = load i64, ptr %i.hs, align 8, !tbaa !58
  %.pre254 = load i64, ptr %i.ht, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183, %.lr.ph.preheader.i.i.i.i184
  %i.ix = phi i64 [ %.pre254, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183 ], [ %.pre249, %.lr.ph.preheader.i.i.i.i184 ] ; 4 uses
  %i.iy = phi i64 [ %.pre253, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183 ], [ %i.hu, %.lr.ph.preheader.i.i.i.i184 ] ; 3 uses
  %.pr = phi i64 [ %.pre252, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_.exit.i.i183 ], [ %.pre248, %.lr.ph.preheader.i.i.i.i184 ] ; 3 uses
  %i.iz = load ptr, ptr %6, align 8, !tbaa !700   ; 3 uses
  %i.ja = load ptr, ptr %7, align 8, !tbaa !700   ; 3 uses
  store ptr %i.ja, ptr %6, align 8, !tbaa !700
  store ptr %i.iz, ptr %7, align 8, !tbaa !700
  store i64 %i.iy, ptr %i.hs, align 8, !tbaa !58
  store i64 %.pr, ptr %i.hv, align 8, !tbaa !58
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !58 ; 4 uses
  store i64 %i.jc, ptr %i.ht, align 8, !tbaa !58
  store i64 %i.ix, ptr %i.jb, align 8, !tbaa !58
  %.not = icmp uge i64 %i.ix, %.pre249
  %i.jd = icmp eq i64 %.pr, %.pre248
  %or.cond206.not211.not214.not218.not222 = select i1 %.not, i1 %i.jd, i1 false
  %i.je = udiv i64 %.pre249, 10
  %.not52 = icmp uge i64 %i.jc, %i.je
  %or.cond207.not212.not216.not220 = select i1 %or.cond206.not211.not214.not218.not222, i1 %.not52, i1 false
  %i.jf = icmp eq i64 %i.iy, %i.hu
  %or.cond208.not.not = select i1 %or.cond207.not212.not216.not220, i1 %i.jf, i1 false ; 2 uses
  br i1 %or.cond208.not.not, label %bb.as, label %thread-pre-split

bb.aq:                                            ; preds = %.loopexit327
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.as:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189
  store ptr %i.iz, ptr %6, align 8, !tbaa !700
  store ptr %i.ja, ptr %7, align 8, !tbaa !700
  store i64 %.pre248, ptr %i.hs, align 8, !tbaa !58
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !58
  store i64 %i.ix, ptr %i.ht, align 8, !tbaa !58
  store i64 %i.jc, ptr %i.jb, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189, %bb.as
  %i.ji = phi i64 [ %.pre248, %bb.as ], [ %i.iy, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189 ]
  %i.jj = phi ptr [ %i.ja, %bb.as ], [ %i.iz, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189 ]
  %i.jk = phi i64 [ %i.jc, %bb.as ], [ %i.ix, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189 ] ; 2 uses
  %i.jl = phi i64 [ %i.hu, %bb.as ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6resizeEm.exit189 ] ; 2 uses
  %.not3.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %thread-pre-split
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i190 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i190, %i.jm
  store i32 %i.jn, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %thread-pre-split
  %.not.i.i191 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i191, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.jo = shl i64 %i.jk, 6
  call void @_ZdlPvmSt11align_val_t(ptr noundef %i.jj, i64 noundef %i.jo, i64 noundef 64) #27
  %.pre255 = load i64, ptr %i.hs, align 8, !tbaa !698
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.at
  %i.jp = phi i64 [ %i.ji, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ], [ %.pre255, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not3.i.i192 = icmp eq i64 %i.jp, 0
  br i1 %.not3.i.i192, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i195, label %.lr.ph.preheader.i.i193

.lr.ph.preheader.i.i193:                          ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i194 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i194, %i.jq
  store i32 %i.jr, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i195

_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i195: ; preds = %.lr.ph.preheader.i.i193, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit
  %i.js = load i64, ptr %i.ht, align 8, !tbaa !687 ; 2 uses
  %.not.i.i196 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i196, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit197, label %bb.au

bb.au:                                            ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i195
  %i.jt = load ptr, ptr %6, align 8, !tbaa !700
  %i.ju = shl i64 %i.js, 6
  call void @_ZdlPvmSt11align_val_t(ptr noundef %i.jt, i64 noundef %i.ju, i64 noundef 64) #27
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit197

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit197: ; preds = %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i195, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.av:                                            ; preds = %bb.ar, %bb.aq
  %.pn = phi { ptr, i32 } [ %i.jh, %bb.ar ], [ %i.jg, %bb.aq ]
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i82, %.lr.ph.i111, %.lr.ph.i138, %_ZNSt6vectorIiSaIiEE6resizeEm.exit133, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106, %_ZNSt6vectorIiSaIiEE7reserveEm.exit77, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit197
  %.2 = phi i1 [ false, %.lr.ph.i138 ], [ %or.cond208.not.not, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvED2Ev.exit197 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i111 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit133 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit77 ], [ false, %.lr.ph.i82 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24overaligned_copyable_intESaIS3_EviEENS0_6vectorIT_T0_T1_E9size_typeERS9_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !698  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !683, !noalias !4117 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !4120
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !4120
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %bb.b, !llvm.loop !4125

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !4126
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !4126 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !4126
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4127

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !4126
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !4126 ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !4126
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !4126
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !4126 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !4126
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !4126
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !4126 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !4126
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !4126
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !4126 ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.aj
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !4126
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4128

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !683, !noalias !4129
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !698, !noalias !4129
  br label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %bb.c, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, %bb.a, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.b, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.c, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !4132
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4132
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !686, !noalias !4132
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24overaligned_copyable_intESaIS3_EvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSB_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !698  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !683, !noalias !4135 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !4138
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !4138
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %bb.b, !llvm.loop !4143

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !4144
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !4144 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !4144
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !4145

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !4144
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !4144 ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !4144
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !4144
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !4144 ; 2 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !4144
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !4144
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !4144 ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !4144
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !4144
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !4144 ; 2 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !4144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4146

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !683, !noalias !4147
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !698, !noalias !4147
  br label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %bb.c, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, %bb.a, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.b, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.c, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !4150
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !4150
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !686, !noalias !4150
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nISaINS0_4test24overaligned_copyable_intEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.212", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.212", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.207", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !698
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !683, !noalias !4153
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 64, !tbaa !35
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 64
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !4156

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intESaIS4_EvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !4157 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !4157
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !4157 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intESaIS7_EvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !4160
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.df = ashr exact i64 %i.de, 2
  %.not.i107 = icmp eq i64 %i.dc, %i.df
  br i1 %.not.i107, label %bb.ae, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit106
  %i.dg = load ptr, ptr %0, align 8, !tbaa !4331, !noalias !4992 ; 2 uses
  %.idx.i109 = shl nsw i64 %i.dc, 2
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i109
  %.not2324.i110 = icmp eq i64 %i.dc, 0
  br i1 %.not2324.i110, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit70, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ae, %bb.af
  %.sroa.019.026.i112 = phi ptr [ %i.dl, %bb.af ], [ %i.dg, %bb.ae ] ; 2 uses
  %.sroa.015.025.i113 = phi ptr [ %i.dm, %bb.af ], [ %i.da, %bb.ae ] ; 2 uses
  %i.di = load i32, ptr %.sroa.019.026.i112, align 4, !tbaa !37
  %i.dj = load i32, ptr %.sroa.015.025.i113, align 4, !tbaa !37
  %i.dk = icmp eq i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.af, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.af:                                            ; preds = %.lr.ph.i111
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i112, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i113, i64 4
  %.not23.i114 = icmp eq ptr %i.dl, %i.dh
  br i1 %.not23.i114, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit70, label %.lr.ph.i111, !llvm.loop !4343

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit70: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i64 noundef 1000)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !4341 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !4334 ; 3 uses
  %i.dr = udiv i64 %i.do, 10                      ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.not.i.i.i131.not = icmp ult i64 %i.do, 10
  br i1 %.not.i.i.i131.not, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138, label %bb.ah, !prof !236

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, i64 noundef %i.dr)
          to label %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge unwind label %bb.aj

._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge: ; preds = %bb.ah
  %.pre171.pre = load ptr, ptr %7, align 8, !tbaa !56
  %.pre172.pre = load i64, ptr %i.dn, align 8, !tbaa !58
  %.pre173.pre = load i64, ptr %i.ds, align 8, !tbaa !58
  %.pre174.pre = load i64, ptr %i.dp, align 8, !tbaa !58
  %.pre175.pre = load i64, ptr %i.dt, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138: ; preds = %bb.ag, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge
  %.pre175 = phi i64 [ %.pre175.pre, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge ], [ 0, %bb.ag ] ; 6 uses
  %.pre174 = phi i64 [ %.pre174.pre, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge ], [ %i.dq, %bb.ag ] ; 6 uses
  %.pre173 = phi i64 [ %.pre173.pre, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge ], [ 0, %bb.ag ] ; 2 uses
  %.pre172 = phi i64 [ %.pre172.pre, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge ], [ %i.do, %bb.ag ] ; 2 uses
  %.pre171 = phi ptr [ %.pre171.pre, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i136_crit_edge ], [ null, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.du = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  store ptr %.pre171, ptr %6, align 8, !tbaa !56
  store ptr %i.du, ptr %7, align 8, !tbaa !56
  store i64 %.pre173, ptr %i.dn, align 8, !tbaa !58
  store i64 %.pre172, ptr %i.ds, align 8, !tbaa !58
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %.pre175, ptr %i.dp, align 8, !tbaa !58
  store i64 %.pre174, ptr %i.dv, align 8, !tbaa !58
  %.not = icmp uge i64 %.pre174, %i.dq
  %i.dw = icmp eq i64 %.pre172, %i.do
  %or.cond150 = select i1 %.not, i1 %i.dw, i1 false
  br i1 %or.cond150, label %bb.ak, label %thread-pre-split

bb.ai:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit70
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aj:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ak:                                            ; preds = %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138
  %i.dz = udiv i64 %i.dq, 10
  %.not52 = icmp uge i64 %.pre175, %i.dz
  %i.ea = icmp eq i64 %.pre173, %i.dr
  %or.cond151 = select i1 %.not52, i1 %i.ea, i1 false
  br i1 %or.cond151, label %bb.al, label %thread-pre-split

bb.al:                                            ; preds = %bb.ak
  store ptr %i.du, ptr %6, align 8, !tbaa !56
  store ptr %.pre171, ptr %7, align 8, !tbaa !56
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !58
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !58
  store i64 %.pre174, ptr %i.dp, align 8, !tbaa !58
  store i64 %.pre175, ptr %i.dv, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ak, %bb.al, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138
  %i.eb = phi i64 [ %.pre175, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138 ], [ %.pre174, %bb.al ], [ %.pre175, %bb.ak ]
  %i.ec = phi ptr [ %i.du, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138 ], [ %.pre171, %bb.al ], [ %i.du, %bb.ak ]
  %i.ed = phi i64 [ %.pre174, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138 ], [ %.pre175, %bb.al ], [ %.pre174, %bb.ak ]
  %i.ee = phi i1 [ false, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE6resizeEm.exit138 ], [ true, %bb.al ], [ false, %bb.ak ]
  %.not.i.i139 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i139, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %thread-pre-split
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.ec)
          to label %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit_crit_edge unwind label %bb.an

._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit_crit_edge: ; preds = %bb.am
  %.pre176 = load i64, ptr %i.dp, align 8, !tbaa !4334
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #29
  unreachable

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit: ; preds = %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit_crit_edge, %thread-pre-split
  %i.eh = phi i64 [ %.pre176, %._ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit_crit_edge ], [ %i.eb, %thread-pre-split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i140 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i140, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit141, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit
  %i.ei = load ptr, ptr %6, align 8, !tbaa !56
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.ei)
          to label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit141 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #29
  unreachable

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit141: ; preds = %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aq:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %i.dx, %bb.ai ]
  call void @_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i66, %.lr.ph.i92, %.lr.ph.i111, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106, %_ZNSt6vectorIiSaIiEE6resizeEm.exit87, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit141
  %.2 = phi i1 [ false, %.lr.ph.i111 ], [ %i.ee, %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvED2Ev.exit141 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i92 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit87 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61 ], [ false, %.lr.ph.i66 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiNS0_9allocatorIiLj2ELj0EEEviEENS0_6vectorIT_T0_T1_E9size_typeERS8_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4341 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4331, !noalias !4995 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !4998
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !4998
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %bb.b, !llvm.loop !1168

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !5003 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !37, !noalias !5003
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !37, !noalias !5003
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !5004

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !5003 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !37, !noalias !5003
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !37, !noalias !5003
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !5003 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !37, !noalias !5003
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !37, !noalias !5003
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !5003 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !37, !noalias !5003
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !5003
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !5003 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !37, !noalias !5003
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !5003
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1171

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !4333, !noalias !5005
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiNS0_9allocatorIiLj2ELj0EEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSA_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4341 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4331, !noalias !5008 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !5011
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !5011
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %bb.b, !llvm.loop !1183

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !5016
  %i.p = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !5016 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !37, !noalias !5016
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !5017

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !5016
  %i.x = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !5016 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !37, !noalias !5016
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !5016
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !5016 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !37, !noalias !5016
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !5016
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !5016 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !5016
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !5016
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !5016 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !5016
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1186

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !4333, !noalias !5018
  br label %_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit

_ZN5boost9container6vectorIiNS0_9allocatorIiLj2ELj0EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.238", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !4341
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !4331, !noalias !5021
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !37
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !5024

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !5025 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !5025
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !5025 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !5028
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_9allocatorIiLj2ELj0EEEvEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56, !noalias !5033 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %or.cond191.not196.not200.not204 = select i1 %or.cond190.not195.not198.not202.not206, i1 %.not52, i1 false
  %i.hy = icmp eq i64 %i.hq, %i.fw
  %or.cond192.not.not = select i1 %or.cond191.not196.not200.not204, i1 %i.hy, i1 false ; 2 uses
  br i1 %or.cond192.not.not, label %bb.ak, label %thread-pre-split

bb.ai:                                            ; preds = %.loopexit305
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172
  store ptr %i.hr, ptr %6, align 8, !tbaa !1694
  store ptr %i.hs, ptr %7, align 8, !tbaa !1694
  store i64 %.pre225, ptr %i.fu, align 8, !tbaa !58
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !58
  store i64 %i.hu, ptr %i.fv, align 8, !tbaa !58
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172, %bb.ak
  %i.ib = phi i64 [ %.pre225, %bb.ak ], [ %i.hq, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ]
  %i.ic = phi i64 [ %i.hv, %bb.ak ], [ %i.hu, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ]
  %i.id = phi ptr [ %i.hs, %bb.ak ], [ %i.hr, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ] ; 3 uses
  %i.ie = phi i64 [ %i.fw, %bb.ak ], [ %.pr, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter330 = and i64 %i.ie, 3                 ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.if, %.lr.ph.i.i.prol ], [ %i.ie, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ii, %.lr.ph.i.i.prol ], [ %i.id, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter332 = phi i64 [ %prol.iter332.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.if = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499
  %i.ig = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.ih = add i32 %i.ig, -1
  store i32 %i.ih, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.ii = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5516

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.ie, %.lr.ph.i.i.preheader ], [ %i.if, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.id, %.lr.ph.i.i.preheader ], [ %i.ii, %.lr.ph.i.i.prol ]
  %i.ij = icmp ult i64 %i.ie, 4
  br i1 %i.ij, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ir, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.it, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499
  %i.ik = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.il = add i32 %i.ik, -1
  store i32 %i.il, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.im, align 4, !tbaa !499
  %i.in = add i32 %i.ik, -2
  store i32 %i.in, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.io, align 4, !tbaa !499
  %i.ip = add i32 %i.ik, -3
  store i32 %i.ip, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ir = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.iq, align 4, !tbaa !499
  %i.is = add i32 %i.ik, -4
  store i32 %i.is, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i173.3 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !4385

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre231 = load i64, ptr %i.ht, align 8, !tbaa !4374
  br label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.iu = phi i64 [ %.pre231, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.ic, %thread-pre-split ]
  %.not.i1.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.id)
          to label %._ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge unwind label %bb.am

._ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge: ; preds = %bb.al
  %.pre232 = load i64, ptr %i.fu, align 8, !tbaa !4381
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #29
  unreachable

_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %._ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ix = phi i64 [ %.pre232, %._ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge ], [ %i.ib, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.iy = load ptr, ptr %6, align 8, !tbaa !4371  ; 3 uses
  %.not3.i.i174 = icmp eq i64 %i.ix, 0
  br i1 %.not3.i.i174, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %xtraiter333 = and i64 %i.ix, 3                 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %.lr.ph.i.i175.prol.loopexit, label %.lr.ph.i.i175.prol

.lr.ph.i.i175.prol:                               ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175.prol
  %.05.i.i176.prol = phi i64 [ %i.iz, %.lr.ph.i.i175.prol ], [ %i.ix, %.lr.ph.i.i175.preheader ]
  %storemerge4.i.i177.prol = phi ptr [ %i.jc, %.lr.ph.i.i175.prol ], [ %i.iy, %.lr.ph.i.i175.preheader ] ; 2 uses
  %prol.iter335 = phi i64 [ %prol.iter335.next, %.lr.ph.i.i175.prol ], [ 0, %.lr.ph.i.i175.preheader ]
  %i.iz = add i64 %.05.i.i176.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i177.prol, align 4, !tbaa !499
  %i.ja = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.jb = add i32 %i.ja, -1
  store i32 %i.jb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.jc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177.prol, i64 4 ; 2 uses
  %prol.iter335.next = add i64 %prol.iter335, 1   ; 2 uses
  %prol.iter335.cmp.not = icmp eq i64 %prol.iter335.next, %xtraiter333
  br i1 %prol.iter335.cmp.not, label %.lr.ph.i.i175.prol.loopexit, label %.lr.ph.i.i175.prol, !llvm.loop !5517

.lr.ph.i.i175.prol.loopexit:                      ; preds = %.lr.ph.i.i175.prol, %.lr.ph.i.i175.preheader
  %.05.i.i176.unr = phi i64 [ %i.ix, %.lr.ph.i.i175.preheader ], [ %i.iz, %.lr.ph.i.i175.prol ]
  %storemerge4.i.i177.unr = phi ptr [ %i.iy, %.lr.ph.i.i175.preheader ], [ %i.jc, %.lr.ph.i.i175.prol ]
  %i.jd = icmp ult i64 %i.ix, 4
  br i1 %i.jd, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.prol.loopexit, %.lr.ph.i.i175
  %.05.i.i176 = phi i64 [ %i.jl, %.lr.ph.i.i175 ], [ %.05.i.i176.unr, %.lr.ph.i.i175.prol.loopexit ]
  %storemerge4.i.i177 = phi ptr [ %i.jn, %.lr.ph.i.i175 ], [ %storemerge4.i.i177.unr, %.lr.ph.i.i175.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i177, align 4, !tbaa !499
  %i.je = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 4
  store i32 -2147483648, ptr %i.jg, align 4, !tbaa !499
  %i.jh = add i32 %i.je, -2
  store i32 %i.jh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 8
  store i32 -2147483648, ptr %i.ji, align 4, !tbaa !499
  %i.jj = add i32 %i.je, -3
  store i32 %i.jj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 12
  %i.jl = add i64 %.05.i.i176, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.jk, align 4, !tbaa !499
  %i.jm = add i32 %i.je, -4
  store i32 %i.jm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 16
  %.not.i.i178.3 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i178.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175, !llvm.loop !4385

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179: ; preds = %.lr.ph.i.i175.prol.loopexit, %.lr.ph.i.i175, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %i.jo = load i64, ptr %i.fv, align 8, !tbaa !4374
  %.not.i1.i180 = icmp eq i64 %i.jo, 0
  br i1 %.not.i1.i180, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.iy)
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #29
  unreachable

_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.aj ], [ %i.hz, %bb.ai ]
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i66, %.lr.ph.i94, %.lr.ph.i121, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181
  %.2 = phi i1 [ false, %.lr.ph.i121 ], [ %or.cond192.not.not, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i94 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61 ], [ false, %.lr.ph.i66 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4381 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4371, !noalias !5518 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !5521
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !5521
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !1933

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !5526
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !5526 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !5526
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !5526
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !5526
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !5526 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !5526
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !5526
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !5526
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !5526 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !5526
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !5526
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1935

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !5527
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !5530

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !5527
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !5527
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !5527
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !5527
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5527
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4385

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !4373, !noalias !5527
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4381 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4371, !noalias !5531 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !5534
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !5534
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !1948

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !5539
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !5539 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !5539
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !5539
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !5539
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !5539 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !5539
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !5539
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !5539
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !5539 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !5539
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !5539
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !1950

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !5540
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !5543

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !5540
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !5540
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !5540
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !5540
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !5540
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4385

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !4373, !noalias !5540
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.262", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.262", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !4381
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !4371, !noalias !5544
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !499
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !5547

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !5548 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !5548
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !5548 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_6
begin_hunk_7_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %or.cond191.not196.not200.not204 = select i1 %or.cond190.not195.not198.not202.not206, i1 %.not52, i1 false
  %i.hy = icmp eq i64 %i.hq, %i.fw
  %or.cond192.not.not = select i1 %or.cond191.not196.not200.not204, i1 %i.hy, i1 false ; 2 uses
  br i1 %or.cond192.not.not, label %bb.ak, label %thread-pre-split

bb.ai:                                            ; preds = %.loopexit305
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172
  store ptr %i.hr, ptr %6, align 8, !tbaa !2163
  store ptr %i.hs, ptr %7, align 8, !tbaa !2163
  store i64 %.pre225, ptr %i.fu, align 8, !tbaa !58
  store i64 %i.fw, ptr %i.fx, align 8, !tbaa !58
  store i64 %i.hu, ptr %i.fv, align 8, !tbaa !58
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172, %bb.ak
  %i.ib = phi i64 [ %.pre225, %bb.ak ], [ %i.hq, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ]
  %i.ic = phi i64 [ %i.hv, %bb.ak ], [ %i.hu, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ]
  %i.id = phi ptr [ %i.hs, %bb.ak ], [ %i.hr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ] ; 3 uses
  %i.ie = phi i64 [ %i.fw, %bb.ak ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit172 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.ie, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter330 = and i64 %i.ie, 3                 ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.if, %.lr.ph.i.i.prol ], [ %i.ie, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ii, %.lr.ph.i.i.prol ], [ %i.id, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter332 = phi i64 [ %prol.iter332.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.if = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.ih = add i32 %i.ig, -1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.ii = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !6617

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.ie, %.lr.ph.i.i.preheader ], [ %i.if, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.id, %.lr.ph.i.i.preheader ], [ %i.ii, %.lr.ph.i.i.prol ]
  %i.ij = icmp ult i64 %i.ie, 4
  br i1 %i.ij, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ir, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.it, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547
  %i.ik = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.il = add i32 %i.ik, -1
  store i32 %i.il, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.im, align 4, !tbaa !547
  %i.in = add i32 %i.ik, -2
  store i32 %i.in, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.io, align 4, !tbaa !547
  %i.ip = add i32 %i.ik, -3
  store i32 %i.ip, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ir = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.iq, align 4, !tbaa !547
  %i.is = add i32 %i.ik, -4
  store i32 %i.is, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.it = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i173.3 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i173.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !4432

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre231 = load i64, ptr %i.ht, align 8, !tbaa !4421
  br label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.iu = phi i64 [ %.pre231, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.ic, %thread-pre-split ]
  %.not.i1.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.id)
          to label %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge unwind label %bb.am

._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge: ; preds = %bb.al
  %.pre232 = load i64, ptr %i.fu, align 8, !tbaa !4428
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #29
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ix = phi i64 [ %.pre232, %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge ], [ %i.ib, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.iy = load ptr, ptr %6, align 8, !tbaa !4418  ; 3 uses
  %.not3.i.i174 = icmp eq i64 %i.ix, 0
  br i1 %.not3.i.i174, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %xtraiter333 = and i64 %i.ix, 3                 ; 2 uses
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod334.not, label %.lr.ph.i.i175.prol.loopexit, label %.lr.ph.i.i175.prol

.lr.ph.i.i175.prol:                               ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175.prol
  %.05.i.i176.prol = phi i64 [ %i.iz, %.lr.ph.i.i175.prol ], [ %i.ix, %.lr.ph.i.i175.preheader ]
  %storemerge4.i.i177.prol = phi ptr [ %i.jc, %.lr.ph.i.i175.prol ], [ %i.iy, %.lr.ph.i.i175.preheader ] ; 2 uses
  %prol.iter335 = phi i64 [ %prol.iter335.next, %.lr.ph.i.i175.prol ], [ 0, %.lr.ph.i.i175.preheader ]
  %i.iz = add i64 %.05.i.i176.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i177.prol, align 4, !tbaa !547
  %i.ja = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.jb = add i32 %i.ja, -1
  store i32 %i.jb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.jc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177.prol, i64 4 ; 2 uses
  %prol.iter335.next = add i64 %prol.iter335, 1   ; 2 uses
  %prol.iter335.cmp.not = icmp eq i64 %prol.iter335.next, %xtraiter333
  br i1 %prol.iter335.cmp.not, label %.lr.ph.i.i175.prol.loopexit, label %.lr.ph.i.i175.prol, !llvm.loop !6618

.lr.ph.i.i175.prol.loopexit:                      ; preds = %.lr.ph.i.i175.prol, %.lr.ph.i.i175.preheader
  %.05.i.i176.unr = phi i64 [ %i.ix, %.lr.ph.i.i175.preheader ], [ %i.iz, %.lr.ph.i.i175.prol ]
  %storemerge4.i.i177.unr = phi ptr [ %i.iy, %.lr.ph.i.i175.preheader ], [ %i.jc, %.lr.ph.i.i175.prol ]
  %i.jd = icmp ult i64 %i.ix, 4
  br i1 %i.jd, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.prol.loopexit, %.lr.ph.i.i175
  %.05.i.i176 = phi i64 [ %i.jl, %.lr.ph.i.i175 ], [ %.05.i.i176.unr, %.lr.ph.i.i175.prol.loopexit ]
  %storemerge4.i.i177 = phi ptr [ %i.jn, %.lr.ph.i.i175 ], [ %storemerge4.i.i177.unr, %.lr.ph.i.i175.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i177, align 4, !tbaa !547
  %i.je = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.jg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 4
  store i32 -2147483648, ptr %i.jg, align 4, !tbaa !547
  %i.jh = add i32 %i.je, -2
  store i32 %i.jh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 8
  store i32 -2147483648, ptr %i.ji, align 4, !tbaa !547
  %i.jj = add i32 %i.je, -3
  store i32 %i.jj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.jk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 12
  %i.jl = add i64 %.05.i.i176, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.jk, align 4, !tbaa !547
  %i.jm = add i32 %i.je, -4
  store i32 %i.jm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i177, i64 16
  %.not.i.i178.3 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i178.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, label %.lr.ph.i.i175, !llvm.loop !4432

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179: ; preds = %.lr.ph.i.i175.prol.loopexit, %.lr.ph.i.i175, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %i.jo = load i64, ptr %i.fv, align 8, !tbaa !4421
  %.not.i1.i180 = icmp eq i64 %i.jo, 0
  br i1 %.not.i1.i180, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.iy)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #29
  unreachable

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i179, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.aj ], [ %i.hz, %bb.ai ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i66, %.lr.ph.i94, %.lr.ph.i121, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181
  %.2 = phi i1 [ false, %.lr.ph.i121 ], [ %or.cond192.not.not, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit181 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i94 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit116 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61 ], [ false, %.lr.ph.i66 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4428 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4418, !noalias !6619 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !6622
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !6622
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !2516

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !6627
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !6627 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !6627
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !6627
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !6627
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !6627 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !6627
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !6627
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !6627
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !6627 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !6627
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !6627
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2518

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !6628
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !6631

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !6628
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !6628
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !6628
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !6628
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6628
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4432

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !4420, !noalias !6628
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4428 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4418, !noalias !6632 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !6635
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !6635
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !2531

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !6640
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !6640 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !6640
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !6640
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !6640
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !6640 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !6640
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !6640
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !6640
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !6640 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !6640
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !6640
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !2533

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !6641
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !6644

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !6641
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !6641
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !6641
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !6641
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !6641
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4432

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !4420, !noalias !6641
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.282", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.282", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !4428
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !4418, !noalias !6645
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !547
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !6648

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !6649 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !6649
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !6649 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_7
begin_hunk_8_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.go = phi ptr [ %i.gd, %bb.ae ], [ %i.gc, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit140 ] ; 3 uses
  %i.gp = phi i64 [ %i.ez, %bb.ae ], [ %i.ge, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit140 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter262 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.gq, %.lr.ph.i.i.prol ], [ %i.gp, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.gt, %.lr.ph.i.i.prol ], [ %i.go, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter264 = phi i64 [ %prol.iter264.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.gq = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284
  %i.gr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.gt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter264.next = add i64 %prol.iter264, 1   ; 2 uses
  %prol.iter264.cmp.not = icmp eq i64 %prol.iter264.next, %xtraiter262
  br i1 %prol.iter264.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !8020

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.gp, %.lr.ph.i.i.preheader ], [ %i.gq, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.go, %.lr.ph.i.i.preheader ], [ %i.gt, %.lr.ph.i.i.prol ]
  %i.gu = icmp ult i64 %i.gp, 4
  br i1 %i.gu, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.hc, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.he, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284
  %i.gv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.gw = add i32 %i.gv, -1
  store i32 %i.gw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.gx, align 4, !tbaa !284
  %i.gy = add i32 %i.gv, -2
  store i32 %i.gy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.gz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.gz, align 4, !tbaa !284
  %i.ha = add i32 %i.gv, -3
  store i32 %i.ha, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.hc = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.hb, align 4, !tbaa !284
  %i.hd = add i32 %i.gv, -4
  store i32 %i.hd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i141.3 = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i141.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !4479

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre195 = load i64, ptr %i.gf, align 8, !tbaa !4468
  br label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.hf = phi i64 [ %.pre195, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.gn, %thread-pre-split ]
  %.not.i1.i = icmp eq i64 %i.hf, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.go)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #29
  unreachable

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.hi = load ptr, ptr %7, align 8, !tbaa !4465  ; 3 uses
  %i.hj = load i64, ptr %i.et, align 8, !tbaa !4475 ; 5 uses
  %.not3.i.i142 = icmp eq i64 %i.hj, 0
  br i1 %.not3.i.i142, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147, label %.lr.ph.i.i143.preheader

.lr.ph.i.i143.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %xtraiter265 = and i64 %i.hj, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph.i.i143.prol.loopexit, label %.lr.ph.i.i143.prol

.lr.ph.i.i143.prol:                               ; preds = %.lr.ph.i.i143.preheader, %.lr.ph.i.i143.prol
  %.05.i.i144.prol = phi i64 [ %i.hk, %.lr.ph.i.i143.prol ], [ %i.hj, %.lr.ph.i.i143.preheader ]
  %storemerge4.i.i145.prol = phi ptr [ %i.hn, %.lr.ph.i.i143.prol ], [ %i.hi, %.lr.ph.i.i143.preheader ] ; 2 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %.lr.ph.i.i143.prol ], [ 0, %.lr.ph.i.i143.preheader ]
  %i.hk = add i64 %.05.i.i144.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i145.prol, align 4, !tbaa !284
  %i.hl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hm = add i32 %i.hl, -1
  store i32 %i.hm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i145.prol, i64 4 ; 2 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %.lr.ph.i.i143.prol.loopexit, label %.lr.ph.i.i143.prol, !llvm.loop !8021

.lr.ph.i.i143.prol.loopexit:                      ; preds = %.lr.ph.i.i143.prol, %.lr.ph.i.i143.preheader
  %.05.i.i144.unr = phi i64 [ %i.hj, %.lr.ph.i.i143.preheader ], [ %i.hk, %.lr.ph.i.i143.prol ]
  %storemerge4.i.i145.unr = phi ptr [ %i.hi, %.lr.ph.i.i143.preheader ], [ %i.hn, %.lr.ph.i.i143.prol ]
  %i.ho = icmp ult i64 %i.hj, 4
  br i1 %i.ho, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147, label %.lr.ph.i.i143

.lr.ph.i.i143:                                    ; preds = %.lr.ph.i.i143.prol.loopexit, %.lr.ph.i.i143
  %.05.i.i144 = phi i64 [ %i.hw, %.lr.ph.i.i143 ], [ %.05.i.i144.unr, %.lr.ph.i.i143.prol.loopexit ]
  %storemerge4.i.i145 = phi ptr [ %i.hy, %.lr.ph.i.i143 ], [ %storemerge4.i.i145.unr, %.lr.ph.i.i143.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i145, align 4, !tbaa !284
  %i.hp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.hq = add i32 %i.hp, -1
  store i32 %i.hq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i145, i64 4
  store i32 -2147483648, ptr %i.hr, align 4, !tbaa !284
  %i.hs = add i32 %i.hp, -2
  store i32 %i.hs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.ht = getelementptr inbounds nuw i8, ptr %storemerge4.i.i145, i64 8
  store i32 -2147483648, ptr %i.ht, align 4, !tbaa !284
  %i.hu = add i32 %i.hp, -3
  store i32 %i.hu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i145, i64 12
  %i.hw = add i64 %.05.i.i144, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.hv, align 4, !tbaa !284
  %i.hx = add i32 %i.hp, -4
  store i32 %i.hx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.hy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i145, i64 16
  %.not.i.i146.3 = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i146.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147, label %.lr.ph.i.i143, !llvm.loop !4479

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147: ; preds = %.lr.ph.i.i143.prol.loopexit, %.lr.ph.i.i143, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %i.hz = load i64, ptr %i.ev, align 8, !tbaa !4468
  %.not.i1.i148 = icmp eq i64 %i.hz, 0
  br i1 %.not.i1.i148, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit149, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.hi)
          to label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit149 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #29
  unreachable

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit149: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i147, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aj:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.ad ], [ %i.gl, %bb.ac ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i66, %.lr.ph.i94, %.lr.ph.i113, %_ZNSt6vectorIiSaIiEE6resizeEm.exit108, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit149
  %.2 = phi i1 [ false, %.lr.ph.i113 ], [ %or.cond161.not.not, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit149 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i94 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit108 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit89 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61 ], [ false, %.lr.ph.i66 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4475 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4465, !noalias !8022 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !8025
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !8025
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !3247

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !8030
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !8030 ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !8030
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8031

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !8030
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !8030 ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !8030
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !8030
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !8030 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !8030
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !8030
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !8030 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !8030
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !8030
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !8030 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !8030
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !3250

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !8032
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !8035

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !8032
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !8032
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !8032
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !8032
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8032
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4479

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !4467, !noalias !8032
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4475 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4465, !noalias !8036 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !8039
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !8039
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !3263

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !8044
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !8044 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !8044
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8045

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !8044
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !8044 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !8044
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !8044
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !8044 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !8044
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !8044
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !8044 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !8044
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !8044
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !8044 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !8044
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !3266

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !8046
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !8049

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !8046
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !8046
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !8046
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !8046
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !8046
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !4479

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !4467, !noalias !8046
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.306", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.306", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !4475
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !4465, !noalias !8050
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !284
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
end_hunk_8
begin_hunk_9_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  store i32 %i.ft, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !8957
  store i32 0, ptr %i.fr, align 64, !tbaa !35, !noalias !8957
  %i.fu = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i159, i64 128
  %i.fv = add i32 %i.fs, 2
  store i32 %i.fv, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !8957
  store i32 0, ptr %i.fu, align 64, !tbaa !35, !noalias !8957
  %i.fw = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i159, i64 192
  %i.fx = add i64 %.016.i.i.i.i.i.i.i158, -4      ; 2 uses
  %i.fy = add i32 %i.fs, 3
  store i32 %i.fy, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !8957
  store i32 0, ptr %i.fw, align 64, !tbaa !35, !noalias !8957
  %i.fz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i159, i64 256
  %.not.i.i.i.i.i.i.i160.3 = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i.i160.3, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i161, label %.lr.ph.i.i.i.i.i.i.i157, !llvm.loop !4563

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i161: ; preds = %.lr.ph.i.i.i.i.i.i.i157, %.lr.ph.i.i.i.i.i.i.i157.prol.loopexit
  %.pre.i.i162 = load i64, ptr %i.fa, align 8, !tbaa !4561, !noalias !8957
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i163

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i163: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i161, %bb.ag
  %i.ga = phi i64 [ %.pre.i.i162, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i161 ], [ %.pre224, %bb.ag ]
  %i.gb = add i64 %i.ga, %i.ff
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.207") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.fe, i64 noundef %i.ff)
          to label %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164_crit_edge unwind label %bb.aj

._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164_crit_edge: ; preds = %bb.ah
  %.pre226.pre = load i64, ptr %i.fa, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164: ; preds = %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164_crit_edge, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i163
  %.pre226 = phi i64 [ %.pre226.pre, %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164_crit_edge ], [ %i.gb, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre225 = load i64, ptr %i.ex, align 8, !tbaa !58
  %.pre227 = load i64, ptr %i.ey, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164, %.lr.ph.preheader.i.i.i.i165
  %i.gc = phi i64 [ %.pre227, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164 ], [ %.pre222, %.lr.ph.preheader.i.i.i.i165 ] ; 4 uses
  %i.gd = phi i64 [ %.pre226, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164 ], [ %i.ez, %.lr.ph.preheader.i.i.i.i165 ] ; 3 uses
  %.pr = phi i64 [ %.pre225, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i164 ], [ %.pre221, %.lr.ph.preheader.i.i.i.i165 ] ; 3 uses
  %i.ge = load ptr, ptr %6, align 8, !tbaa !700   ; 3 uses
  %i.gf = load ptr, ptr %7, align 8, !tbaa !700   ; 3 uses
  store ptr %i.gf, ptr %6, align 8, !tbaa !700
  store ptr %i.ge, ptr %7, align 8, !tbaa !700
  store i64 %i.gd, ptr %i.ex, align 8, !tbaa !58
  store i64 %.pr, ptr %i.fa, align 8, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !58 ; 4 uses
  store i64 %i.gh, ptr %i.ey, align 8, !tbaa !58
  store i64 %i.gc, ptr %i.gg, align 8, !tbaa !58
  %.not = icmp uge i64 %i.gc, %.pre222
  %i.gi = icmp eq i64 %.pr, %.pre221
  %or.cond186.not191.not194.not198.not202 = select i1 %.not, i1 %i.gi, i1 false
  %i.gj = udiv i64 %.pre222, 10
  %.not52 = icmp uge i64 %i.gh, %i.gj
  %or.cond187.not192.not196.not200 = select i1 %or.cond186.not191.not194.not198.not202, i1 %.not52, i1 false
  %i.gk = icmp eq i64 %i.gd, %i.ez
  %or.cond188.not.not = select i1 %or.cond187.not192.not196.not200, i1 %i.gk, i1 false ; 2 uses
  br i1 %or.cond188.not.not, label %bb.ak, label %thread-pre-split

bb.ai:                                            ; preds = %.loopexit285
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170
  store ptr %i.ge, ptr %6, align 8, !tbaa !700
  store ptr %i.gf, ptr %7, align 8, !tbaa !700
  store i64 %.pre221, ptr %i.ex, align 8, !tbaa !58
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !58
  store i64 %i.gc, ptr %i.ey, align 8, !tbaa !58
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170, %bb.ak
  %i.gn = phi i64 [ %.pre221, %bb.ak ], [ %i.gd, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170 ]
  %i.go = phi ptr [ %i.gf, %bb.ak ], [ %i.ge, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170 ]
  %i.gp = phi i64 [ %i.gh, %bb.ak ], [ %i.gc, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170 ]
  %i.gq = phi i64 [ %i.ez, %bb.ak ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit170 ] ; 2 uses
  %.not3.i.i = icmp eq i64 %i.gq, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %thread-pre-split
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.gr
  store i32 %i.gs, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %thread-pre-split
  %.not.i.i171 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i171, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.go)
          to label %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge unwind label %bb.am

._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge: ; preds = %bb.al
  %.pre228 = load i64, ptr %i.ex, align 8, !tbaa !4570
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #29
  unreachable

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit: ; preds = %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.gv = phi i64 [ %.pre228, %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit_crit_edge ], [ %i.gn, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not3.i.i172 = icmp eq i64 %i.gv, 0
  br i1 %.not3.i.i172, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i175, label %.lr.ph.preheader.i.i173

.lr.ph.preheader.i.i173:                          ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i174 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i174, %i.gw
  store i32 %i.gx, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i175

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i175: ; preds = %.lr.ph.preheader.i.i173, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit
  %i.gy = load i64, ptr %i.ey, align 8, !tbaa !4562
  %.not.i.i176 = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i176, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit177, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i175
  %i.gz = load ptr, ptr %6, align 8, !tbaa !700
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.gz)
          to label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit177 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #29
  unreachable

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit177: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i175, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.aj ], [ %i.gl, %bb.ai ]
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i66, %.lr.ph.i92, %.lr.ph.i119, %_ZNSt6vectorIiSaIiEE6resizeEm.exit114, %_ZNSt6vectorIiSaIiEE6resizeEm.exit87, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit177
  %.2 = phi i1 [ false, %.lr.ph.i119 ], [ %or.cond188.not.not, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev.exit177 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i92 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit114 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit87 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit61 ], [ false, %.lr.ph.i66 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4570 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4559, !noalias !8961 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !8964
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !8964
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %bb.b, !llvm.loop !4125

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !8969
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !8969 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !8969
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8970

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !8969
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !8969 ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !8969
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !8969
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !8969 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !8969
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !8969
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !8969 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !8969
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !8969
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !8969 ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.aj
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !8969
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4128

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !4559, !noalias !8971
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !4570, !noalias !8971
  br label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %bb.c, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, %bb.a, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.b, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.c, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !8974
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !8974
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !4561, !noalias !8974
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4570 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !4559, !noalias !8977 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !8980
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !8980
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %bb.b, !llvm.loop !4143

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !8985
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !8985 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !8985
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !8986

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !8985
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !8985 ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !8985
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !8985
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !8985 ; 2 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !8985
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !8985
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !8985 ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !8985
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !8985
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !8985 ; 2 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !8985
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4146

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !4559, !noalias !8987
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !4570, !noalias !8987
  br label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %bb.c, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, %bb.a, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.b, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.c, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !8990
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !8990
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !4561, !noalias !8990
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24overaligned_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.338", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.338", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.207", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !4570
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !4559, !noalias !8993
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 64, !tbaa !35
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 64
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !8996

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !8997 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !8997
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !8997 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_9allocatorIS7_Lj2ELj0EEEvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !9000
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
end_hunk_9
begin_hunk_10_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit115
  %i.dy = load ptr, ptr %0, align 8, !tbaa !41, !noalias !9942 ; 2 uses
  %.idx.i118 = shl nsw i64 %i.du, 2
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %.idx.i118
  %.not2324.i119 = icmp eq i64 %i.du, 0
  br i1 %.not2324.i119, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit77, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.ai, %bb.aj
  %.sroa.019.026.i121 = phi ptr [ %i.ed, %bb.aj ], [ %i.dy, %bb.ai ] ; 2 uses
  %.sroa.015.025.i122 = phi ptr [ %i.ee, %bb.aj ], [ %i.ds, %bb.ai ] ; 2 uses
  %i.ea = load i32, ptr %.sroa.019.026.i121, align 4, !tbaa !37
  %i.eb = load i32, ptr %.sroa.015.025.i122, align 4, !tbaa !37
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aj:                                            ; preds = %.lr.ph.i120
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i121, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i122, i64 4
  %.not23.i123 = icmp eq ptr %i.ed, %i.dz
  br i1 %.not23.i123, label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit77, label %.lr.ph.i120, !llvm.loop !9288

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit77: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i64 noundef 1000)
          to label %bb.ak unwind label %.thread

bb.ak:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !77 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !57 ; 3 uses
  %i.ej = udiv i64 %i.eg, 10                      ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.not.i.i.i140.not = icmp ult i64 %i.eg, 10
  br i1 %.not.i.i.i140.not, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147, label %bb.al, !prof !236

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef null, i64 noundef %i.ej)
          to label %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge unwind label %bb.aq

._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge: ; preds = %bb.al
  %.pre187.pre = load ptr, ptr %7, align 8, !tbaa !56
  %.pre188.pre = load i64, ptr %i.ef, align 8, !tbaa !58
  %.pre189.pre = load i64, ptr %i.ek, align 8, !tbaa !58
  %.pre190.pre = load i64, ptr %i.eh, align 8, !tbaa !58
  %.pre192.pre = load i64, ptr %i.el, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147: ; preds = %bb.ak, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge
  %.pre192 = phi i64 [ %.pre192.pre, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge ], [ 0, %bb.ak ] ; 6 uses
  %.pre190 = phi i64 [ %.pre190.pre, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge ], [ %i.ei, %bb.ak ] ; 6 uses
  %.pre189 = phi i64 [ %.pre189.pre, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge ], [ 0, %bb.ak ] ; 2 uses
  %.pre188 = phi i64 [ %.pre188.pre, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge ], [ %i.eg, %bb.ak ] ; 2 uses
  %.pre187 = phi ptr [ %.pre187.pre, %._ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS3_EEEENS0_12vec_iteratorIPiLb0EEERKSA_mT_.exit.i.i145_crit_edge ], [ null, %bb.ak ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.em = load ptr, ptr %6, align 8, !tbaa !56    ; 4 uses
  store ptr %.pre187, ptr %6, align 8, !tbaa !56
  store ptr %i.em, ptr %7, align 8, !tbaa !56
  store i64 %.pre189, ptr %i.ef, align 8, !tbaa !58
  store i64 %.pre188, ptr %i.ek, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %.pre192, ptr %i.eh, align 8, !tbaa !58
  store i64 %.pre190, ptr %i.en, align 8, !tbaa !58
  %.not = icmp uge i64 %.pre190, %i.ei
  %i.eo = icmp eq i64 %.pre188, %i.eg
  %or.cond163 = select i1 %.not, i1 %i.eo, i1 false
  br i1 %or.cond163, label %bb.am, label %thread-pre-split

.thread:                                          ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit77
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152

bb.am:                                            ; preds = %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147
  %i.eq = udiv i64 %i.ei, 10
  %.not52 = icmp uge i64 %.pre192, %i.eq
  %i.er = icmp eq i64 %.pre189, %i.ej
  %or.cond164 = select i1 %.not52, i1 %i.er, i1 false
  br i1 %or.cond164, label %bb.an, label %thread-pre-split

bb.an:                                            ; preds = %bb.am
  store ptr %i.em, ptr %6, align 8, !tbaa !56
  store ptr %.pre187, ptr %7, align 8, !tbaa !56
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !58
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !58
  store i64 %.pre190, ptr %i.eh, align 8, !tbaa !58
  store i64 %.pre192, ptr %i.en, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.am, %bb.an, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147
  %i.es = phi i64 [ %.pre192, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147 ], [ %.pre190, %bb.an ], [ %.pre192, %bb.am ]
  %i.et = phi ptr [ %i.em, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147 ], [ %.pre187, %bb.an ], [ %i.em, %bb.am ]
  %i.eu = phi i64 [ %.pre190, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147 ], [ %.pre192, %bb.an ], [ %.pre190, %bb.am ] ; 2 uses
  %i.ev = phi i1 [ false, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE6resizeEm.exit147 ], [ true, %bb.an ], [ false, %bb.am ]
  %.not.i.i148 = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i148, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split
  %i.ew = shl i64 %i.eu, 2
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #26
  %.pre193 = load i64, ptr %i.eh, align 8, !tbaa !57
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit: ; preds = %thread-pre-split, %bb.ao
  %i.ex = phi i64 [ %i.es, %thread-pre-split ], [ %.pre193, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not.i.i149 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i149, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit150, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit
  %i.ey = load ptr, ptr %6, align 8, !tbaa !56
  %i.ez = shl i64 %i.ex, 2
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.ez) #26
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit150

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit150: ; preds = %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aq:                                            ; preds = %bb.al
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre186 = load i64, ptr %i.el, align 8, !tbaa !57 ; 2 uses
  %.not.i.i151 = icmp eq i64 %.pre186, 0
  br i1 %.not.i.i151, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = load ptr, ptr %7, align 8, !tbaa !56
  %i.fc = shl i64 %.pre186, 2
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fc) #26
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152: ; preds = %.thread, %bb.aq, %bb.ar
  %.pn268 = phi { ptr, i32 } [ %i.ep, %.thread ], [ %i.fa, %bb.aq ], [ %i.fa, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !57 ; 2 uses
  %.not.i.i153 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i153, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit154, label %bb.as

bb.as:                                            ; preds = %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152
  %i.ff = load ptr, ptr %6, align 8, !tbaa !56
  %i.fg = shl i64 %i.fe, 2
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fg) #26
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit154

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit154: ; preds = %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit152, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn268

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorIiNS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i73, %.lr.ph.i101, %.lr.ph.i120, %_ZNSt6vectorIiSaIiEE6resizeEm.exit115, %_ZNSt6vectorIiSaIiEE6resizeEm.exit96, %_ZNSt6vectorIiSaIiEE7reserveEm.exit68, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit150
  %.2 = phi i1 [ false, %.lr.ph.i120 ], [ %i.ev, %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvED2Ev.exit150 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i101 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit115 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit96 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit68 ], [ false, %.lr.ph.i73 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseIiNS0_13new_allocatorIiEEviEENS0_6vectorIT_T0_T1_E9size_typeERS8_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41, !noalias !9945 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !9948
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !9948
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %bb.b, !llvm.loop !1168

_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !9953 ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !37, !noalias !9953
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.o, ptr %i.m, align 4, !tbaa !37, !noalias !9953
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !9954

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !9953 ; 2 uses
  %i.x = load i32, ptr %1, align 4, !tbaa !37, !noalias !9953
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.w, ptr %i.u, align 4, !tbaa !37, !noalias !9953
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !9953 ; 2 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !37, !noalias !9953
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !37, !noalias !9953
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !9953 ; 2 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !37, !noalias !9953
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ag, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !9953
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !9953 ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !37, !noalias !9953
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.al, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !9953
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1171

_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !96, !noalias !9955
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPiLb0EEEiEET_S5_S5_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifIiNS0_13new_allocatorIiEEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSA_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41, !noalias !9958 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !9961
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37, !noalias !9961
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %bb.b, !llvm.loop !1183

_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !9966
  %i.p = load i32, ptr %i.n, align 4, !tbaa !37, !noalias !9966 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !37, !noalias !9966
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !9967

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr34 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr34, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !9966
  %i.x = load i32, ptr %i.v, align 4, !tbaa !37, !noalias !9966 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !37, !noalias !9966
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !9966
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !37, !noalias !9966 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !37, !noalias !9966
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !9966
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !37, !noalias !9966 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !37, !noalias !9966
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !9966
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !37, !noalias !9966 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !37, !noalias !9966
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1186

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit
  %i.ar = ptrtoint ptr %i.d to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !96, !noalias !9968
  br label %_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit

_ZN5boost9container6vectorIiNS0_13new_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEES7_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.aw = phi i64 [ %i.av, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPiLb0EEENS0_14equal_to_valueIiEEEET_S7_S7_T0_.exit ], [ %i.b, %bb.c ]
  %i.ax = sub i64 %i.b, %i.aw
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorIiNS0_13new_allocatorIiEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.358", align 16 ; 6 uses
  %5 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !41, !noalias !9971
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !37
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !9974

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorIiNS0_13new_allocatorIiEEvEEEEvRSt5dequeIiSaIiEERT_RKS9_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !9975 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !9975
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !9975 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !9978
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorIiNS0_13new_allocatorIiEEvEEEEbRKT_RKT0_.exit
  %i.bd = ashr i64 %i.ay, 7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi i64 [ %i.bc, %bb.g ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56, !noalias !9983 ; 2 uses
  %i.bh = shl nsw i64 %i.be, 7
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
end_hunk_10
begin_hunk_11_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.lq = load ptr, ptr %7, align 8, !tbaa !1694  ; 3 uses
  store ptr %i.lq, ptr %6, align 8, !tbaa !1694
  store ptr %i.lp, ptr %7, align 8, !tbaa !1694
  store i64 %i.lo, ptr %i.js, align 8, !tbaa !58
  store i64 %.pr, ptr %i.jv, align 8, !tbaa !58
  %i.lr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ls = load i64, ptr %i.jt, align 8, !tbaa !58 ; 4 uses
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !58 ; 4 uses
  store i64 %i.lt, ptr %i.jt, align 8, !tbaa !58
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !58
  %.not = icmp uge i64 %i.ls, %.pre254
  %i.lu = icmp eq i64 %.pr, %.pre253
  %or.cond214.not219.not222.not226.not230 = select i1 %.not, i1 %i.lu, i1 false
  %i.lv = udiv i64 %.pre254, 10
  %.not52 = icmp uge i64 %i.lt, %i.lv
  %or.cond215.not220.not224.not228 = select i1 %or.cond214.not219.not222.not226.not230, i1 %.not52, i1 false
  %i.lw = icmp eq i64 %i.lo, %i.ju
  %or.cond216.not.not = select i1 %or.cond215.not220.not224.not228, i1 %i.lw, i1 false ; 2 uses
  br i1 %or.cond216.not.not, label %bb.am, label %thread-pre-split

bb.ak:                                            ; preds = %.loopexit347
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196
  store ptr %i.lp, ptr %6, align 8, !tbaa !1694
  store ptr %i.lq, ptr %7, align 8, !tbaa !1694
  store i64 %.pre253, ptr %i.js, align 8, !tbaa !58
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !58
  store i64 %i.ls, ptr %i.jt, align 8, !tbaa !58
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196, %bb.am
  %i.lz = phi i64 [ %.pre253, %bb.am ], [ %i.lo, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ]
  %i.ma = phi i64 [ %i.lt, %bb.am ], [ %i.ls, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ]
  %i.mb = phi ptr [ %i.lq, %bb.am ], [ %i.lp, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ] ; 3 uses
  %i.mc = phi i64 [ %i.ju, %bb.am ], [ %.pr, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.md, %.lr.ph.i.i.prol ], [ %i.mc, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.mg, %.lr.ph.i.i.prol ], [ %i.mb, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.md = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499
  %i.me = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mf = add i32 %i.me, -1
  store i32 %i.mf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10370

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.mc, %.lr.ph.i.i.preheader ], [ %i.md, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.mb, %.lr.ph.i.i.preheader ], [ %i.mg, %.lr.ph.i.i.prol ]
  %i.mh = icmp ult i64 %i.mc, 4
  br i1 %i.mh, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.mp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.mr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499
  %i.mi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.mj = add i32 %i.mi, -1
  store i32 %i.mj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.mk, align 4, !tbaa !499
  %i.ml = add i32 %i.mi, -2
  store i32 %i.ml, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.mm, align 4, !tbaa !499
  %i.mn = add i32 %i.mi, -3
  store i32 %i.mn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.mp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.mo, align 4, !tbaa !499
  %i.mq = add i32 %i.mi, -4
  store i32 %i.mq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i197.3 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i197.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !9330

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre259 = load i64, ptr %i.lr, align 8, !tbaa !9319
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.ms = phi i64 [ %.pre259, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.ma, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ms, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.mt = shl i64 %i.ms, 2
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mt) #26
  %.pre260 = load i64, ptr %i.js, align 8, !tbaa !9326
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.an
  %i.mu = phi i64 [ %i.lz, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ %.pre260, %bb.an ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.mv = load ptr, ptr %6, align 8, !tbaa !9316  ; 3 uses
  %.not3.i.i198 = icmp eq i64 %i.mu, 0
  br i1 %.not3.i.i198, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %xtraiter387 = and i64 %i.mu, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol

.lr.ph.i.i199.prol:                               ; preds = %.lr.ph.i.i199.preheader, %.lr.ph.i.i199.prol
  %.05.i.i200.prol = phi i64 [ %i.mw, %.lr.ph.i.i199.prol ], [ %i.mu, %.lr.ph.i.i199.preheader ]
  %storemerge4.i.i201.prol = phi ptr [ %i.mz, %.lr.ph.i.i199.prol ], [ %i.mv, %.lr.ph.i.i199.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i199.prol ], [ 0, %.lr.ph.i.i199.preheader ]
  %i.mw = add i64 %.05.i.i200.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i201.prol, align 4, !tbaa !499
  %i.mx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.my = add i32 %i.mx, -1
  store i32 %i.my, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.mz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol, !llvm.loop !10371

.lr.ph.i.i199.prol.loopexit:                      ; preds = %.lr.ph.i.i199.prol, %.lr.ph.i.i199.preheader
  %.05.i.i200.unr = phi i64 [ %i.mu, %.lr.ph.i.i199.preheader ], [ %i.mw, %.lr.ph.i.i199.prol ]
  %storemerge4.i.i201.unr = phi ptr [ %i.mv, %.lr.ph.i.i199.preheader ], [ %i.mz, %.lr.ph.i.i199.prol ]
  %i.na = icmp ult i64 %i.mu, 4
  br i1 %i.na, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199
  %.05.i.i200 = phi i64 [ %i.ni, %.lr.ph.i.i199 ], [ %.05.i.i200.unr, %.lr.ph.i.i199.prol.loopexit ]
  %storemerge4.i.i201 = phi ptr [ %i.nk, %.lr.ph.i.i199 ], [ %storemerge4.i.i201.unr, %.lr.ph.i.i199.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i201, align 4, !tbaa !499
  %i.nb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.nc = add i32 %i.nb, -1
  store i32 %i.nc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.nd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 4
  store i32 -2147483648, ptr %i.nd, align 4, !tbaa !499
  %i.ne = add i32 %i.nb, -2
  store i32 %i.ne, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 8
  store i32 -2147483648, ptr %i.nf, align 4, !tbaa !499
  %i.ng = add i32 %i.nb, -3
  store i32 %i.ng, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.nh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 12
  %i.ni = add i64 %.05.i.i200, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.nh, align 4, !tbaa !499
  %i.nj = add i32 %i.nb, -4
  store i32 %i.nj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 16
  %.not.i.i202.3 = icmp eq i64 %i.ni, 0
  br i1 %.not.i.i202.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199, !llvm.loop !9330

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203: ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %i.nl = load i64, ptr %i.jt, align 8, !tbaa !9319 ; 2 uses
  %.not.i1.i204 = icmp eq i64 %i.nl, 0
  br i1 %.not.i1.i204, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203
  %i.nm = shl i64 %i.nl, 2
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.nm) #26
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.ly, %bb.al ], [ %i.lx, %bb.ak ]
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i84, %.lr.ph.i118, %.lr.ph.i145, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205
  %.2 = phi i1 [ false, %.lr.ph.i145 ], [ %or.cond216.not.not, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79 ], [ false, %.lr.ph.i84 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test11movable_intENS0_13new_allocatorIS3_EEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9326 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9316, !noalias !10372 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !10375
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !10375
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !1933

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !10380
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !10380 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !10380
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !10380
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !10380
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !10380 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !10380
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !10380
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !10380
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !10380 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !10380
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !10380
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !1935

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !10381
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !10384

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !10381
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !10381
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !10381
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !10381
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10381
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9330

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !9318, !noalias !10381
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test11movable_intENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9326 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9316, !noalias !10385 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !10388
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !499, !noalias !10388
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !1948

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !10393
  %i.o = load i32, ptr %i.j, align 4, !tbaa !499, !noalias !10393 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !499, !noalias !10393
  store i32 0, ptr %i.j, align 4, !tbaa !499, !noalias !10393
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !10393
  %i.w = load i32, ptr %i.u, align 4, !tbaa !499, !noalias !10393 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !499, !noalias !10393
  store i32 0, ptr %i.u, align 4, !tbaa !499, !noalias !10393
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !10393
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !499, !noalias !10393 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !499, !noalias !10393
  store i32 0, ptr %i.z, align 4, !tbaa !499, !noalias !10393
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !1950

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !499, !noalias !10394
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !10397

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !499, !noalias !10394
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !499, !noalias !10394
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !499, !noalias !10394
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !499, !noalias !10394
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !37, !noalias !10394
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9330

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !9318, !noalias !10394
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test11movable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.374", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.374", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.108", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9326
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9316, !noalias !10398
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !499
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !10401

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_11movable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_11movable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !10402 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !10402
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !10402 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_11
begin_hunk_12_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.lq = load ptr, ptr %7, align 8, !tbaa !2163  ; 3 uses
  store ptr %i.lq, ptr %6, align 8, !tbaa !2163
  store ptr %i.lp, ptr %7, align 8, !tbaa !2163
  store i64 %i.lo, ptr %i.js, align 8, !tbaa !58
  store i64 %.pr, ptr %i.jv, align 8, !tbaa !58
  %i.lr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ls = load i64, ptr %i.jt, align 8, !tbaa !58 ; 4 uses
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !58 ; 4 uses
  store i64 %i.lt, ptr %i.jt, align 8, !tbaa !58
  store i64 %i.ls, ptr %i.lr, align 8, !tbaa !58
  %.not = icmp uge i64 %i.ls, %.pre254
  %i.lu = icmp eq i64 %.pr, %.pre253
  %or.cond214.not219.not222.not226.not230 = select i1 %.not, i1 %i.lu, i1 false
  %i.lv = udiv i64 %.pre254, 10
  %.not52 = icmp uge i64 %i.lt, %i.lv
  %or.cond215.not220.not224.not228 = select i1 %or.cond214.not219.not222.not226.not230, i1 %.not52, i1 false
  %i.lw = icmp eq i64 %i.lo, %i.ju
  %or.cond216.not.not = select i1 %or.cond215.not220.not224.not228, i1 %i.lw, i1 false ; 2 uses
  br i1 %or.cond216.not.not, label %bb.am, label %thread-pre-split

bb.ak:                                            ; preds = %.loopexit347
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.am:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196
  store ptr %i.lp, ptr %6, align 8, !tbaa !2163
  store ptr %i.lq, ptr %7, align 8, !tbaa !2163
  store i64 %.pre253, ptr %i.js, align 8, !tbaa !58
  store i64 %i.ju, ptr %i.jv, align 8, !tbaa !58
  store i64 %i.ls, ptr %i.jt, align 8, !tbaa !58
  store i64 %i.lt, ptr %i.lr, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196, %bb.am
  %i.lz = phi i64 [ %.pre253, %bb.am ], [ %i.lo, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ]
  %i.ma = phi i64 [ %i.lt, %bb.am ], [ %i.ls, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ]
  %i.mb = phi ptr [ %i.lq, %bb.am ], [ %i.lp, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ] ; 3 uses
  %i.mc = phi i64 [ %i.ju, %bb.am ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit196 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.mc, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter384 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod385.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod385.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.md, %.lr.ph.i.i.prol ], [ %i.mc, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.mg, %.lr.ph.i.i.prol ], [ %i.mb, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter386 = phi i64 [ %prol.iter386.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.md = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547
  %i.me = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mf = add i32 %i.me, -1
  store i32 %i.mf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter386.next = add i64 %prol.iter386, 1   ; 2 uses
  %prol.iter386.cmp.not = icmp eq i64 %prol.iter386.next, %xtraiter384
  br i1 %prol.iter386.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10942

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.mc, %.lr.ph.i.i.preheader ], [ %i.md, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.mb, %.lr.ph.i.i.preheader ], [ %i.mg, %.lr.ph.i.i.prol ]
  %i.mh = icmp ult i64 %i.mc, 4
  br i1 %i.mh, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.mp, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.mr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547
  %i.mi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.mj = add i32 %i.mi, -1
  store i32 %i.mj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.mk, align 4, !tbaa !547
  %i.ml = add i32 %i.mi, -2
  store i32 %i.ml, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.mm, align 4, !tbaa !547
  %i.mn = add i32 %i.mi, -3
  store i32 %i.mn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.mp = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.mo, align 4, !tbaa !547
  %i.mq = add i32 %i.mi, -4
  store i32 %i.mq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i197.3 = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i197.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !9379

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre259 = load i64, ptr %i.lr, align 8, !tbaa !9368
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.ms = phi i64 [ %.pre259, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.ma, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ms, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.mt = shl i64 %i.ms, 2
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mt) #26
  %.pre260 = load i64, ptr %i.js, align 8, !tbaa !9375
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.an
  %i.mu = phi i64 [ %i.lz, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ %.pre260, %bb.an ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.mv = load ptr, ptr %6, align 8, !tbaa !9365  ; 3 uses
  %.not3.i.i198 = icmp eq i64 %i.mu, 0
  br i1 %.not3.i.i198, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %xtraiter387 = and i64 %i.mu, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol

.lr.ph.i.i199.prol:                               ; preds = %.lr.ph.i.i199.preheader, %.lr.ph.i.i199.prol
  %.05.i.i200.prol = phi i64 [ %i.mw, %.lr.ph.i.i199.prol ], [ %i.mu, %.lr.ph.i.i199.preheader ]
  %storemerge4.i.i201.prol = phi ptr [ %i.mz, %.lr.ph.i.i199.prol ], [ %i.mv, %.lr.ph.i.i199.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph.i.i199.prol ], [ 0, %.lr.ph.i.i199.preheader ]
  %i.mw = add i64 %.05.i.i200.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i201.prol, align 4, !tbaa !547
  %i.mx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.my = add i32 %i.mx, -1
  store i32 %i.my, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.mz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201.prol, i64 4 ; 2 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol, !llvm.loop !10943

.lr.ph.i.i199.prol.loopexit:                      ; preds = %.lr.ph.i.i199.prol, %.lr.ph.i.i199.preheader
  %.05.i.i200.unr = phi i64 [ %i.mu, %.lr.ph.i.i199.preheader ], [ %i.mw, %.lr.ph.i.i199.prol ]
  %storemerge4.i.i201.unr = phi ptr [ %i.mv, %.lr.ph.i.i199.preheader ], [ %i.mz, %.lr.ph.i.i199.prol ]
  %i.na = icmp ult i64 %i.mu, 4
  br i1 %i.na, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199
  %.05.i.i200 = phi i64 [ %i.ni, %.lr.ph.i.i199 ], [ %.05.i.i200.unr, %.lr.ph.i.i199.prol.loopexit ]
  %storemerge4.i.i201 = phi ptr [ %i.nk, %.lr.ph.i.i199 ], [ %storemerge4.i.i201.unr, %.lr.ph.i.i199.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i201, align 4, !tbaa !547
  %i.nb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.nc = add i32 %i.nb, -1
  store i32 %i.nc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.nd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 4
  store i32 -2147483648, ptr %i.nd, align 4, !tbaa !547
  %i.ne = add i32 %i.nb, -2
  store i32 %i.ne, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 8
  store i32 -2147483648, ptr %i.nf, align 4, !tbaa !547
  %i.ng = add i32 %i.nb, -3
  store i32 %i.ng, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.nh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 12
  %i.ni = add i64 %.05.i.i200, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.nh, align 4, !tbaa !547
  %i.nj = add i32 %i.nb, -4
  store i32 %i.nj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i201, i64 16
  %.not.i.i202.3 = icmp eq i64 %i.ni, 0
  br i1 %.not.i.i202.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, label %.lr.ph.i.i199, !llvm.loop !9379

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203: ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %i.nl = load i64, ptr %i.jt, align 8, !tbaa !9368 ; 2 uses
  %.not.i1.i204 = icmp eq i64 %i.nl, 0
  br i1 %.not.i1.i204, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205, label %bb.ao

bb.ao:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203
  %i.nm = shl i64 %i.nl, 2
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.nm) #26
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i203, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.al, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.ly, %bb.al ], [ %i.lx, %bb.ak ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i84, %.lr.ph.i118, %.lr.ph.i145, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205
  %.2 = phi i1 [ false, %.lr.ph.i145 ], [ %or.cond216.not.not, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit205 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit140 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit79 ], [ false, %.lr.ph.i84 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9375 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9365, !noalias !10944 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !10947
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !10947
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !2516

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !10952
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !10952 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !10952
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !10952
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !10952
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !10952 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !10952
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !10952
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !10952
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !10952 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %i.aa
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !10952
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !10952
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !2518

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !10953
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !10956

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !10953
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !10953
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !10953
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !10953
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10953
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9379

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !9367, !noalias !10953
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9375 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9365, !noalias !10957 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !10960
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 10 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !547, !noalias !10960
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !2531

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 4 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.l = sub i64 %.idx, %2
  %i.m = and i64 %i.l, 4
  %lcmp.mod.not.not = icmp eq i64 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !10965
  %i.o = load i32, ptr %i.j, align 4, !tbaa !547, !noalias !10965 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %.lr.ph.i.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.o, ptr %i.f, align 4, !tbaa !547, !noalias !10965
  store i32 0, ptr %i.j, align 4, !tbaa !547, !noalias !10965
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.q, %bb.d ], [ %i.f, %.lr.ph.i.prol ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.s = icmp eq i64 %i.k, %2
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.g
  %i.t = phi ptr [ %.pre12.i.1, %bb.g ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.u = phi ptr [ %i.ae, %bb.g ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !37, !noalias !10965
  %i.w = load i32, ptr %i.u, align 4, !tbaa !547, !noalias !10965 ; 2 uses
  %i.x = icmp eq i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.t, align 4, !tbaa !547, !noalias !10965
  store i32 0, ptr %i.u, align 4, !tbaa !547, !noalias !10965
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.e, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.y, %bb.e ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aa = load i32, ptr %1, align 4, !tbaa !37, !noalias !10965
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !547, !noalias !10965 ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ab, ptr %.pre12.i, align 4, !tbaa !547, !noalias !10965
  store i32 0, ptr %i.z, align 4, !tbaa !547, !noalias !10965
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ad, %bb.f ], [ %.pre12.i, %.lr.ph.i.1 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.ae, %i.d
  br i1 %.not10.i.1, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !2533

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.g, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.af = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.1, %bb.g ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.af, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !547, !noalias !10966
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.an = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !10969

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.aj, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ak, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.af, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.an, %.lr.ph.i8.i.prol ]
  %i.ao = icmp ult i64 %i.aj, 4
  br i1 %i.ao, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.aw, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ay, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !547, !noalias !10966
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966 ; 4 uses
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !547, !noalias !10966
  %i.as = add i32 %i.ap, -2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !547, !noalias !10966
  %i.au = add i32 %i.ap, -3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aw = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !547, !noalias !10966
  %i.ax = add i32 %i.ap, -4
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !37, !noalias !10966
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9379

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.az = sub i64 %i.b, %i.aj                     ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !9367, !noalias !10966
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.ba = phi i64 [ %i.az, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bb = sub i64 %i.b, %i.ba
  ret i64 %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.393", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.393", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.134", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9375
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9365, !noalias !10970
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !547
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 4
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !10973

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24movable_and_copyable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !10974 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !10974
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !10974 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h
end_hunk_12
begin_hunk_13_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a

bb.ag:                                            ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit164
  store ptr %i.jm, ptr %7, align 8, !tbaa !295
  store ptr %i.jn, ptr %8, align 8, !tbaa !295
  store i64 %i.ie, ptr %i.id, align 8, !tbaa !58
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !58
  store i64 %i.jq, ptr %i.if, align 8, !tbaa !58
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit164, %bb.ag
  %i.jx = phi i64 [ %i.jr, %bb.ag ], [ %i.jq, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit164 ]
  %i.jy = phi ptr [ %i.jn, %bb.ag ], [ %i.jm, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit164 ] ; 3 uses
  %i.jz = phi i64 [ %i.ij, %bb.ag ], [ %i.jo, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit164 ] ; 5 uses
  %.not3.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter357 = and i64 %i.jz, 3                 ; 2 uses
  %lcmp.mod358.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod358.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.ka, %.lr.ph.i.i.prol ], [ %i.jz, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.kd, %.lr.ph.i.i.prol ], [ %i.jy, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter359 = phi i64 [ %prol.iter359.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ka = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284
  %i.kb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kc = add i32 %i.kb, -1
  store i32 %i.kc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter359.next = add i64 %prol.iter359, 1   ; 2 uses
  %prol.iter359.cmp.not = icmp eq i64 %prol.iter359.next, %xtraiter357
  br i1 %prol.iter359.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11668

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.jz, %.lr.ph.i.i.preheader ], [ %i.ka, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.jy, %.lr.ph.i.i.preheader ], [ %i.kd, %.lr.ph.i.i.prol ]
  %i.ke = icmp ult i64 %i.jz, 4
  br i1 %i.ke, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.km, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ko, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284
  %i.kf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.kg = add i32 %i.kf, -1
  store i32 %i.kg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.kh, align 4, !tbaa !284
  %i.ki = add i32 %i.kf, -2
  store i32 %i.ki, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.kj, align 4, !tbaa !284
  %i.kk = add i32 %i.kf, -3
  store i32 %i.kk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.km = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.kl, align 4, !tbaa !284
  %i.kn = add i32 %i.kf, -4
  store i32 %i.kn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.ko = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i165.3 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i165.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !9428

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre223 = load i64, ptr %i.jp, align 8, !tbaa !9417
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %thread-pre-split
  %i.kp = phi i64 [ %.pre223, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit ], [ %i.jx, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.kp, 0
  br i1 %.not.i1.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.kq = shl i64 %i.kp, 2
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kq) #26
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.kr = load ptr, ptr %7, align 8, !tbaa !9414  ; 3 uses
  %i.ks = load i64, ptr %i.id, align 8, !tbaa !9424 ; 5 uses
  %.not3.i.i166 = icmp eq i64 %i.ks, 0
  br i1 %.not3.i.i166, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171, label %.lr.ph.i.i167.preheader

.lr.ph.i.i167.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %xtraiter360 = and i64 %i.ks, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.lr.ph.i.i167.prol.loopexit, label %.lr.ph.i.i167.prol

.lr.ph.i.i167.prol:                               ; preds = %.lr.ph.i.i167.preheader, %.lr.ph.i.i167.prol
  %.05.i.i168.prol = phi i64 [ %i.kt, %.lr.ph.i.i167.prol ], [ %i.ks, %.lr.ph.i.i167.preheader ]
  %storemerge4.i.i169.prol = phi ptr [ %i.kw, %.lr.ph.i.i167.prol ], [ %i.kr, %.lr.ph.i.i167.preheader ] ; 2 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.lr.ph.i.i167.prol ], [ 0, %.lr.ph.i.i167.preheader ]
  %i.kt = add i64 %.05.i.i168.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i169.prol, align 4, !tbaa !284
  %i.ku = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kv = add i32 %i.ku, -1
  store i32 %i.kv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.kw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169.prol, i64 4 ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.lr.ph.i.i167.prol.loopexit, label %.lr.ph.i.i167.prol, !llvm.loop !11669

.lr.ph.i.i167.prol.loopexit:                      ; preds = %.lr.ph.i.i167.prol, %.lr.ph.i.i167.preheader
  %.05.i.i168.unr = phi i64 [ %i.ks, %.lr.ph.i.i167.preheader ], [ %i.kt, %.lr.ph.i.i167.prol ]
  %storemerge4.i.i169.unr = phi ptr [ %i.kr, %.lr.ph.i.i167.preheader ], [ %i.kw, %.lr.ph.i.i167.prol ]
  %i.kx = icmp ult i64 %i.ks, 4
  br i1 %i.kx, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171, label %.lr.ph.i.i167

.lr.ph.i.i167:                                    ; preds = %.lr.ph.i.i167.prol.loopexit, %.lr.ph.i.i167
  %.05.i.i168 = phi i64 [ %i.lf, %.lr.ph.i.i167 ], [ %.05.i.i168.unr, %.lr.ph.i.i167.prol.loopexit ]
  %storemerge4.i.i169 = phi ptr [ %i.lh, %.lr.ph.i.i167 ], [ %storemerge4.i.i169.unr, %.lr.ph.i.i167.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i169, align 4, !tbaa !284
  %i.ky = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37 ; 4 uses
  %i.kz = add i32 %i.ky, -1
  store i32 %i.kz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.la = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 4
  store i32 -2147483648, ptr %i.la, align 4, !tbaa !284
  %i.lb = add i32 %i.ky, -2
  store i32 %i.lb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.lc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 8
  store i32 -2147483648, ptr %i.lc, align 4, !tbaa !284
  %i.ld = add i32 %i.ky, -3
  store i32 %i.ld, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.le = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 12
  %i.lf = add i64 %.05.i.i168, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.le, align 4, !tbaa !284
  %i.lg = add i32 %i.ky, -4
  store i32 %i.lg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37
  %i.lh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i169, i64 16
  %.not.i.i170.3 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i170.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171, label %.lr.ph.i.i167, !llvm.loop !9428

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171: ; preds = %.lr.ph.i.i167.prol.loopexit, %.lr.ph.i.i167, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %i.li = load i64, ptr %i.if, align 8, !tbaa !9417 ; 2 uses
  %.not.i1.i172 = icmp eq i64 %i.li, 0
  br i1 %.not.i1.i172, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit173, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171
  %i.lj = shl i64 %i.li, 2
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.lj) #26
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit173

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit173: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i171, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.jw, %bb.af ], [ %i.jv, %bb.ae ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i86, %.lr.ph.i118, %.lr.ph.i137, %_ZNSt6vectorIiSaIiEE6resizeEm.exit132, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113, %_ZNSt6vectorIiSaIiEE7reserveEm.exit81, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit173
  %.2 = phi i1 [ false, %.lr.ph.i137 ], [ %or.cond185.not.not, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit173 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i118 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit132 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit113 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit81 ], [ false, %.lr.ph.i86 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test12copyable_intENS0_13new_allocatorIS3_EEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9424 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9414, !noalias !11670 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !11673
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !11673
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !3247

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !11678
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !11678 ; 2 uses
  %i.q = icmp eq i32 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !11678
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !11679

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !11678
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !11678 ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.w
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !11678
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !11678
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !11678 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !11678
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !11678
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !11678 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !11678
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !11678
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !11678 ; 2 uses
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !11678
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i, !llvm.loop !3250

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !11680
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !11683

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !11680
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !11680
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !11680
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !11680
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11680
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9428

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !9416, !noalias !11680
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9424 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9414, !noalias !11684 ; 2 uses
  %.idx = shl i64 %i.b, 2                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !11687
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !284, !noalias !11687
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %bb.b, !llvm.loop !3263

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -8
  %2 = shl i64 %indvar, 2
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 2
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %i.m = phi ptr [ %.pre12.i.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = phi ptr [ %i.s, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.o = load i32, ptr %1, align 4, !tbaa !37, !noalias !11692
  %i.p = load i32, ptr %i.n, align 4, !tbaa !284, !noalias !11692 ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.p, ptr %i.m, align 4, !tbaa !284, !noalias !11692
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.pre12.i.prol = phi ptr [ %i.r, %bb.d ], [ %i.m, %.lr.ph.i.prol ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !11693

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.pre12.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.pre12.i.prol, %bb.e ]
  %.unr35 = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.s, %bb.e ]
  %i.t = icmp ult i64 %3, 12
  br i1 %i.t, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %i.u = phi ptr [ %.pre12.i.3, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.v = phi ptr [ %i.ap, %bb.j ], [ %.unr35, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.w = load i32, ptr %1, align 4, !tbaa !37, !noalias !11692
  %i.x = load i32, ptr %i.v, align 4, !tbaa !284, !noalias !11692 ; 2 uses
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !284, !noalias !11692
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.pre12.i = phi ptr [ %i.z, %bb.f ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %1, align 4, !tbaa !37, !noalias !11692
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !284, !noalias !11692 ; 2 uses
  %i.ad = icmp eq i32 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre12.i, i64 4
  store i32 %i.ac, ptr %.pre12.i, align 4, !tbaa !284, !noalias !11692
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.pre12.i.1 = phi ptr [ %i.ae, %bb.g ], [ %.pre12.i, %.lr.ph.i.1 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load i32, ptr %1, align 4, !tbaa !37, !noalias !11692
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !284, !noalias !11692 ; 2 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre12.i.1, i64 4
  store i32 %i.ah, ptr %.pre12.i.1, align 4, !tbaa !284, !noalias !11692
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.pre12.i.2 = phi ptr [ %i.aj, %bb.h ], [ %.pre12.i.1, %.lr.ph.i.2 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.al = load i32, ptr %1, align 4, !tbaa !37, !noalias !11692
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !284, !noalias !11692 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre12.i.2, i64 4
  store i32 %i.am, ptr %.pre12.i.2, align 4, !tbaa !284, !noalias !11692
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.pre12.i.3 = phi ptr [ %i.ao, %bb.i ], [ %.pre12.i.2, %.lr.ph.i.3 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.ap, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i, !llvm.loop !3266

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.aq = phi ptr [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %.pre12.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.pre12.i.3, %bb.j ] ; 4 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

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
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !284, !noalias !11694
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter38.next = add i64 %prol.iter38, 1     ; 2 uses
  %prol.iter38.cmp.not = icmp eq i64 %prol.iter38.next, %xtraiter36
  br i1 %prol.iter38.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !11697

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.au, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.aq, %_ZN5boost9container4moveIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.ay, %.lr.ph.i8.i.prol ]
  %i.az = icmp ult i64 %i.au, 4
  br i1 %i.az, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.bh, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bj, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !284, !noalias !11694
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694 ; 4 uses
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !284, !noalias !11694
  %i.bd = add i32 %i.ba, -2
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.be = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !284, !noalias !11694
  %i.bf = add i32 %i.ba, -3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.bh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !284, !noalias !11694
  %i.bi = add i32 %i.ba, -4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !37, !noalias !11694
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !9428

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bk = sub i64 %i.b, %i.au                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !9416, !noalias !11694
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.bl = phi i64 [ %i.bk, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ 0, %bb.a ], [ %i.b, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test12copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.b, %bb.c ]
  %i.bm = sub i64 %i.b, %i.bl
  ret i64 %i.bm
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.416", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.416", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.37", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9424
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9414, !noalias !11698
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 4, !tbaa !284
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_12copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
end_hunk_13
begin_hunk_14_@_ZN5boost9container4test20vector_capacity_testINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.im = sub i64 %.pre251, %i.hy
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, label %.lr.ph.i.i.i.i.i.i.i176

.lr.ph.i.i.i.i.i.i.i176:                          ; preds = %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i176
  %.016.i.i.i.i.i.i.i177 = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i.i.i176 ], [ %.016.i.i.i.i.i.i.i177.unr, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i178 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i.i.i.i176 ], [ %.01315.i.i.i.i.i.i.i178.unr, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i178) ]
  %i.io = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531
  store i32 0, ptr %.01315.i.i.i.i.i.i.i178, align 64, !tbaa !35, !noalias !12531
  %i.iq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 64
  %i.ir = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531 ; 3 uses
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531
  store i32 0, ptr %i.iq, align 64, !tbaa !35, !noalias !12531
  %i.it = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 128
  %i.iu = add i32 %i.ir, 2
  store i32 %i.iu, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531
  store i32 0, ptr %i.it, align 64, !tbaa !35, !noalias !12531
  %i.iv = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 192
  %i.iw = add i64 %.016.i.i.i.i.i.i.i177, -4      ; 2 uses
  %i.ix = add i32 %i.ir, 3
  store i32 %i.ix, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12531
  store i32 0, ptr %i.iv, align 64, !tbaa !35, !noalias !12531
  %i.iy = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i178, i64 256
  %.not.i.i.i.i.i.i.i179.3 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i.i.i.i.i.i179.3, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, label %.lr.ph.i.i.i.i.i.i.i176, !llvm.loop !12165

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180: ; preds = %.lr.ph.i.i.i.i.i.i.i176, %.lr.ph.i.i.i.i.i.i.i176.prol.loopexit
  %.pre.i.i181 = load i64, ptr %i.hz, align 8, !tbaa !9512, !noalias !12531
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180, %bb.ak
  %i.iz = phi i64 [ %.pre.i.i181, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.loopexit.i.i180 ], [ %.pre251, %bb.ak ]
  %i.ja = add i64 %i.iz, %i.ie
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183

bb.al:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.207") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.id, i64 noundef %i.ie)
          to label %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183_crit_edge unwind label %bb.an

._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183_crit_edge: ; preds = %bb.al
  %.pre253.pre = load i64, ptr %i.hz, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183: ; preds = %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183_crit_edge, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182
  %.pre253 = phi i64 [ %.pre253.pre, %._ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183_crit_edge ], [ %i.ja, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pre252 = load i64, ptr %i.hw, align 8, !tbaa !58
  %.pre254 = load i64, ptr %i.hx, align 8, !tbaa !58
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189: ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183, %.lr.ph.preheader.i.i.i.i184
  %i.jb = phi i64 [ %.pre254, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183 ], [ %.pre249, %.lr.ph.preheader.i.i.i.i184 ] ; 4 uses
  %i.jc = phi i64 [ %.pre253, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183 ], [ %i.hy, %.lr.ph.preheader.i.i.i.i184 ] ; 3 uses
  %.pr = phi i64 [ %.pre252, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_.exit.i.i183 ], [ %.pre248, %.lr.ph.preheader.i.i.i.i184 ] ; 3 uses
  %i.jd = load ptr, ptr %6, align 8, !tbaa !700   ; 3 uses
  %i.je = load ptr, ptr %7, align 8, !tbaa !700   ; 3 uses
  store ptr %i.je, ptr %6, align 8, !tbaa !700
  store ptr %i.jd, ptr %7, align 8, !tbaa !700
  store i64 %i.jc, ptr %i.hw, align 8, !tbaa !58
  store i64 %.pr, ptr %i.hz, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !58 ; 4 uses
  store i64 %i.jg, ptr %i.hx, align 8, !tbaa !58
  store i64 %i.jb, ptr %i.jf, align 8, !tbaa !58
  %.not = icmp uge i64 %i.jb, %.pre249
  %i.jh = icmp eq i64 %.pr, %.pre248
  %or.cond206.not211.not214.not218.not222 = select i1 %.not, i1 %i.jh, i1 false
  %i.ji = udiv i64 %.pre249, 10
  %.not52 = icmp uge i64 %i.jg, %i.ji
  %or.cond207.not212.not216.not220 = select i1 %or.cond206.not211.not214.not218.not222, i1 %.not52, i1 false
  %i.jj = icmp eq i64 %i.jc, %i.hy
  %or.cond208.not.not = select i1 %or.cond207.not212.not216.not220, i1 %i.jj, i1 false ; 2 uses
  br i1 %or.cond208.not.not, label %bb.ao, label %thread-pre-split

bb.am:                                            ; preds = %.loopexit324
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.an:                                            ; preds = %bb.al
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ao:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189
  store ptr %i.jd, ptr %6, align 8, !tbaa !700
  store ptr %i.je, ptr %7, align 8, !tbaa !700
  store i64 %.pre248, ptr %i.hw, align 8, !tbaa !58
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !58
  store i64 %i.jb, ptr %i.hx, align 8, !tbaa !58
  store i64 %i.jg, ptr %i.jf, align 8, !tbaa !58
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189, %bb.ao
  %i.jm = phi i64 [ %.pre248, %bb.ao ], [ %i.jc, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189 ]
  %i.jn = phi ptr [ %i.je, %bb.ao ], [ %i.jd, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189 ]
  %i.jo = phi i64 [ %i.jg, %bb.ao ], [ %i.jb, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189 ] ; 2 uses
  %i.jp = phi i64 [ %i.hy, %bb.ao ], [ %.pr, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6resizeEm.exit189 ] ; 2 uses
  %.not3.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %thread-pre-split
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i190 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i190, %i.jq
  store i32 %i.jr, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %thread-pre-split
  %.not.i.i191 = icmp eq i64 %i.jo, 0
  br i1 %.not.i.i191, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.js = shl i64 %i.jo, 6
  call void @_ZdlPvmSt11align_val_t(ptr noundef %i.jn, i64 noundef %i.js, i64 noundef 64) #26
  %.pre255 = load i64, ptr %i.hw, align 8, !tbaa !9520
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %bb.ap
  %i.jt = phi i64 [ %i.jm, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ], [ %.pre255, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.not3.i.i192 = icmp eq i64 %i.jt, 0
  br i1 %.not3.i.i192, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i195, label %.lr.ph.preheader.i.i193

.lr.ph.preheader.i.i193:                          ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i194 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i194, %i.ju
  store i32 %i.jv, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i195

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i195: ; preds = %.lr.ph.preheader.i.i193, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit
  %i.jw = load i64, ptr %i.hx, align 8, !tbaa !9513 ; 2 uses
  %.not.i.i196 = icmp eq i64 %i.jw, 0
  br i1 %.not.i.i196, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit197, label %bb.aq

bb.aq:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i195
  %i.jx = load ptr, ptr %6, align 8, !tbaa !700
  %i.jy = shl i64 %i.jw, 6
  call void @_ZdlPvmSt11align_val_t(ptr noundef %i.jx, i64 noundef %i.jy, i64 noundef 64) #26
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit197

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit197: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i195, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ar:                                            ; preds = %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.jl, %bb.an ], [ %i.jk, %bb.am ]
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn

_ZN5boost9container4test20CheckEqualContainersINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %.lr.ph.i82, %.lr.ph.i111, %.lr.ph.i138, %_ZNSt6vectorIiSaIiEE6resizeEm.exit133, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106, %_ZNSt6vectorIiSaIiEE7reserveEm.exit77, %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit197
  %.2 = phi i1 [ false, %.lr.ph.i138 ], [ %or.cond208.not.not, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvED2Ev.exit197 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ false, %.lr.ph.i111 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit133 ], [ false, %_ZNSt6vectorIiSaIiEE6resizeEm.exit106 ], [ false, %_ZNSt6vectorIiSaIiEE7reserveEm.exit77 ], [ false, %.lr.ph.i82 ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container5eraseINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEviEENS0_6vectorIT_T0_T1_E9size_typeERSA_RKT2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9520 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9510, !noalias !12535 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !12538
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !12538
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %bb.b, !llvm.loop !4125

_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !12543
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !12543 ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !12543
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12544

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !12543
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !12543 ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !12543
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !12543
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !12543 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, %i.z
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !12543
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !12543
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !12543 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !12543
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !12543
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !12543 ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.aj
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !12543
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4128

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !9510, !noalias !12545
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !9520, !noalias !12545
  br label %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit

_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit: ; preds = %bb.c, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit, %bb.a, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.b, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.c, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.loopexit ], [ %i.f, %_ZN5boost9container4findINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !12548
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12548
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !9512, !noalias !12548
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container6removeINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEEiEET_S7_S7_RKT0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost9container8erase_ifINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvNS0_14equal_to_valueIiEEEENS0_6vectorIT_T0_T1_E9size_typeERSC_T2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9520 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !9510, !noalias !12551 ; 5 uses
  %.idx = shl i64 %i.b, 6                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 6 uses
  %.not1.i.i = icmp eq i64 %i.b, 0
  br i1 %.not1.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !37, !noalias !12554
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvar = phi i64 [ %indvar.next, %bb.c ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.f = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.i ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 64, !tbaa !35, !noalias !12554
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %bb.b, !llvm.loop !4143

_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i: ; preds = %bb.b
  %.not.i = icmp eq ptr %i.f, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 3 uses
  %.not1011.i = icmp eq ptr %i.j, %i.d
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1011.i
  br i1 %or.cond.i, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.k = add i64 %.idx, -128
  %2 = shl i64 %indvar, 6
  %3 = sub i64 %i.k, %2                           ; 2 uses
  %4 = lshr exact i64 %3, 6
  %i.l = add nuw nsw i64 %4, 1
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %bb.e
  %.sroa.015.0.prol = phi ptr [ %.sroa.015.1.prol, %bb.e ], [ %i.f, %.lr.ph.i.preheader ] ; 3 uses
  %i.m = phi ptr [ %i.r, %bb.e ], [ %i.j, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.e ], [ 0, %.lr.ph.i.preheader ]
  %i.n = load i32, ptr %1, align 4, !tbaa !37, !noalias !12559
  %i.o = load i32, ptr %i.m, align 64, !tbaa !35, !noalias !12559 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.prol
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.0.prol, i64 64
  store i32 %i.o, ptr %.sroa.015.0.prol, align 64, !tbaa !35, !noalias !12559
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.prol
  %.sroa.015.1.prol = phi ptr [ %.sroa.015.0.prol, %.lr.ph.i.prol ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !12560

.lr.ph.i.prol.loopexit:                           ; preds = %bb.e, %.lr.ph.i.preheader
  %.sroa.015.1.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.sroa.015.0.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %.sroa.015.1.prol, %bb.e ]
  %.unr = phi ptr [ %i.j, %.lr.ph.i.preheader ], [ %i.r, %bb.e ]
  %i.s = icmp ult i64 %3, 192
  br i1 %i.s, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.015.0 = phi ptr [ %.sroa.015.1.3, %bb.j ], [ %.sroa.015.0.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.t = phi ptr [ %i.an, %bb.j ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.u = load i32, ptr %1, align 4, !tbaa !37, !noalias !12559
  %i.v = load i32, ptr %i.t, align 64, !tbaa !35, !noalias !12559 ; 2 uses
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64
  store i32 %i.v, ptr %.sroa.015.0, align 64, !tbaa !35, !noalias !12559
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.f, %.lr.ph.i
  %.sroa.015.1 = phi ptr [ %.sroa.015.0, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.z = load i32, ptr %1, align 4, !tbaa !37, !noalias !12559
  %i.aa = load i32, ptr %i.y, align 64, !tbaa !35, !noalias !12559 ; 2 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.1, i64 64
  store i32 %i.aa, ptr %.sroa.015.1, align 64, !tbaa !35, !noalias !12559
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.g, %.lr.ph.i.1
  %.sroa.015.1.1 = phi ptr [ %.sroa.015.1, %.lr.ph.i.1 ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ae = load i32, ptr %1, align 4, !tbaa !37, !noalias !12559
  %i.af = load i32, ptr %i.ad, align 64, !tbaa !35, !noalias !12559 ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.i.3, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.1.1, i64 64
  store i32 %i.af, ptr %.sroa.015.1.1, align 64, !tbaa !35, !noalias !12559
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.h, %.lr.ph.i.2
  %.sroa.015.1.2 = phi ptr [ %.sroa.015.1.1, %.lr.ph.i.2 ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = load i32, ptr %1, align 4, !tbaa !37, !noalias !12559
  %i.ak = load i32, ptr %i.ai, align 64, !tbaa !35, !noalias !12559 ; 2 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.3
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.015.1.2, i64 64
  store i32 %i.ak, ptr %.sroa.015.1.2, align 64, !tbaa !35, !noalias !12559
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.3
  %.sroa.015.1.3 = phi ptr [ %.sroa.015.1.2, %.lr.ph.i.3 ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 256 ; 2 uses
  %.not10.i.3 = icmp eq ptr %i.an, %i.d
  br i1 %.not10.i.3, label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !4146

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit: ; preds = %bb.j, %.lr.ph.i.prol.loopexit
  %.sroa.015.1.lcssa = phi ptr [ %.sroa.015.1.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.015.1.3, %bb.j ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !9510, !noalias !12561
  %.pre27 = load i64, ptr %i.a, align 8, !tbaa !9520, !noalias !12561
  br label %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit

_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit: ; preds = %bb.c, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit, %bb.a, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i
  %i.ao = phi i64 [ %.pre27, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.b, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ 0, %bb.a ], [ %i.b, %bb.c ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.c, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.c, %bb.a ], [ %i.c, %bb.c ]
  %i.aq = phi ptr [ %.sroa.015.1.lcssa, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.loopexit ], [ %i.f, %_ZN5boost9container7find_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.ar = getelementptr inbounds [64 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i7 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i7, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !noalias !12564
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !37, !noalias !12564
  %i.ay = sub i64 %i.ao, %i.av                    ; 2 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !9512, !noalias !12564
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i
  %i.az = phi i64 [ %i.ao, %_ZN5boost9container9remove_ifINS0_12vec_iteratorIPNS0_4test24overaligned_copyable_intELb0EEENS0_14equal_to_valueIiEEEET_S9_S9_T0_.exit ], [ %i.ay, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i ]
  %i.ba = sub i64 %i.b, %i.az
  ret i64 %i.ba
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.447", align 8 ; 7 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.447", align 8 ; 7 uses
  %6 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %8 = alloca %"struct.std::_Deque_iterator.82", align 16 ; 5 uses
  %9 = alloca %"class.boost::container::vec_iterator.207", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !884  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !884  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !885  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !885  ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !9520
  %.not.i = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i, label %bb.b, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  %.not3233.i = icmp eq ptr %i.x, %i.n
  br i1 %.not3233.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.af = load ptr, ptr %1, align 8, !tbaa !9510, !noalias !12567
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.16.037.i = phi ptr [ %.sroa.16.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.12.036.i = phi ptr [ %.sroa.12.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.w, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.025.035.i = phi ptr [ %.sroa.025.1.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.019.034.i = phi ptr [ %i.ao, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.af, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.025.035.i, align 4, !tbaa !37
  %i.ah = load i32, ptr %.sroa.019.034.i, align 64, !tbaa !35
  %i.ai = icmp eq i32 %i.ag, %i.ah                ; 3 uses
  br i1 %i.ai, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.025.035.i, i64 4 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.sroa.12.036.i
  br i1 %i.ak, label %bb.d, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.16.037.i, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !56 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i:      ; preds = %bb.d, %bb.c
  %.sroa.025.1.i = phi ptr [ %i.am, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.an, %bb.d ], [ %.sroa.12.036.i, %bb.c ]
  %.sroa.16.1.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.16.037.i, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.019.034.i, i64 64
  %.not32.i = icmp eq ptr %.sroa.025.1.i, %i.n
  br i1 %.not32.i, label %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit, label %.lr.ph.i, !llvm.loop !12570

_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit: ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i, %bb.a, %bb.b
  %.2.i = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.ai, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ]
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 26, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test17test_insert_rangeINS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS4_EEvEEEEvRSt5dequeIiSaIiEERT_RKSA_m, i1 noundef zeroext %.2.i) ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !885, !noalias !12571 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !886, !noalias !12571
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !884, !noalias !12571 ; 3 uses
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, %3                   ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersISt5dequeIiSaIiEENS0_6vectorINS1_24overaligned_copyable_intENS0_13new_allocatorIS7_EEvEEEEbRKT_RKT0_.exit
  %i.ba = icmp samesign ult i64 %i.ay, 128
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %3
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !12574
  br label %_ZStplRKSt15_Deque_iteratorIiRiPiEl.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = lshr i64 %i.ay, 7
end_hunk_14
