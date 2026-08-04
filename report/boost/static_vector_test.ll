begin_hunk_0_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %.not.i15.i.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i15.i.i.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i, label %.lr.ph.i14.i.i.i.i, !llvm.loop !276

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i: ; preds = %.lr.ph.i14.i.i.i.i, %middle.block
  %i.cv = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i, %i.cj
  store i64 %i.cv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i

_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i: ; preds = %bb.m, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !179
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp170 ; 0 uses

bb.n:                                             ; preds = %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !167, !noalias !277 ; 3 uses
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
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !274

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  %.not3.i.i35 = icmp eq i64 %i.cj, 0
  br i1 %.not3.i.i35, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34
  %_ZZN14counting_value1cEvE2co.promoted.i.i37 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dl = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i37, %i.cj
  store i64 %i.dl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
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
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !167 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 5 uses
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !179
  %i.do = icmp ugt i64 %i.dm, 10
  br i1 %i.do, label %bb.s, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc48 unwind label %bb.am

.noexc48:                                         ; preds = %bb.s
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39: ; preds = %bb.r
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i40 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %.not17.i.i.i41 = icmp eq i64 %i.dm, 0          ; 2 uses
  br i1 %.not17.i.i.i41, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49, label %.lr.ph.i.i.i42.preheader

.lr.ph.i.i.i42.preheader:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %xtraiter252 = and i64 %i.dm, 7                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol

.lr.ph.i.i.i42.prol:                              ; preds = %.lr.ph.i.i.i42.preheader, %.lr.ph.i.i.i42.prol
  %.020.i.i.i43.prol = phi i64 [ %i.dp, %.lr.ph.i.i.i42.prol ], [ %i.dm, %.lr.ph.i.i.i42.preheader ]
  %.0819.i.i.i44.prol = phi ptr [ %i.dr, %.lr.ph.i.i.i42.prol ], [ %2, %.lr.ph.i.i.i42.preheader ] ; 2 uses
  %.01618.i.i.i45.prol = phi ptr [ %i.ds, %.lr.ph.i.i.i42.prol ], [ %8, %.lr.ph.i.i.i42.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph.i.i.i42.prol ], [ 0, %.lr.ph.i.i.i42.preheader ]
  %i.dp = add i64 %.020.i.i.i43.prol, -1          ; 2 uses
  %i.dq = load <2 x i32>, ptr %.0819.i.i.i44.prol, align 4, !tbaa !18
  store <2 x i32> %i.dq, ptr %.01618.i.i.i45.prol, align 4, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44.prol, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45.prol, i64 8 ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph.i.i.i42.prol.loopexit, label %.lr.ph.i.i.i42.prol, !llvm.loop !280

.lr.ph.i.i.i42.prol.loopexit:                     ; preds = %.lr.ph.i.i.i42.prol, %.lr.ph.i.i.i42.preheader
  %.020.i.i.i43.unr = phi i64 [ %i.dm, %.lr.ph.i.i.i42.preheader ], [ %i.dp, %.lr.ph.i.i.i42.prol ]
  %.0819.i.i.i44.unr = phi ptr [ %2, %.lr.ph.i.i.i42.preheader ], [ %i.dr, %.lr.ph.i.i.i42.prol ]
  %.01618.i.i.i45.unr = phi ptr [ %8, %.lr.ph.i.i.i42.preheader ], [ %i.ds, %.lr.ph.i.i.i42.prol ]
  %i.dt = icmp ult i64 %i.dm, 8
  br i1 %i.dt, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %.lr.ph.i.i.i42.prol.loopexit, %.lr.ph.i.i.i42
  %.020.i.i.i43 = phi i64 [ %i.ep, %.lr.ph.i.i.i42 ], [ %.020.i.i.i43.unr, %.lr.ph.i.i.i42.prol.loopexit ]
  %.0819.i.i.i44 = phi ptr [ %i.er, %.lr.ph.i.i.i42 ], [ %.0819.i.i.i44.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %.01618.i.i.i45 = phi ptr [ %i.es, %.lr.ph.i.i.i42 ], [ %.01618.i.i.i45.unr, %.lr.ph.i.i.i42.prol.loopexit ] ; 9 uses
  %i.du = load <2 x i32>, ptr %.0819.i.i.i44, align 4, !tbaa !18
  store <2 x i32> %i.du, ptr %.01618.i.i.i45, align 4, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 8
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !18
  store <2 x i32> %i.dx, ptr %i.dw, align 4, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 16
  %i.ea = load <2 x i32>, ptr %i.dy, align 4, !tbaa !18
  store <2 x i32> %i.ea, ptr %i.dz, align 4, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 24
  %i.ed = load <2 x i32>, ptr %i.eb, align 4, !tbaa !18
  store <2 x i32> %i.ed, ptr %i.ec, align 4, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 32
  %i.eg = load <2 x i32>, ptr %i.ee, align 4, !tbaa !18
  store <2 x i32> %i.eg, ptr %i.ef, align 4, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 40
  %i.ej = load <2 x i32>, ptr %i.eh, align 4, !tbaa !18
  store <2 x i32> %i.ej, ptr %i.ei, align 4, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 48
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !18
  store <2 x i32> %i.em, ptr %i.el, align 4, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 56
  %i.ep = add i64 %.020.i.i.i43, -8               ; 2 uses
  %i.eq = load <2 x i32>, ptr %i.en, align 4, !tbaa !18
  store <2 x i32> %i.eq, ptr %i.eo, align 4, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 64
  %.not.i.i.i46.7 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i46.7, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i42, !llvm.loop !263

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i42, %.lr.ph.i.i.i42.prol.loopexit
  %i.et = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i40, %i.dm
  store i64 %i.et, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49: ; preds = %._crit_edge.i.i.i47, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %.idx160 = shl nuw nsw i64 %i.dm, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx160
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dm
  %i.ew = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc56 unwind label %.loopexit.split-lp165 ; 0 uses

.noexc56:                                         ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  br i1 %.not17.i.i.i41, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53

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
  br i1 %.not.i55, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53, !llvm.loop !274

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58: ; preds = %.noexc57, %.lr.ph.i53, %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.fg, align 8, !tbaa !281
  %i.fh = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc60 unwind label %bb.an  ; 18 uses

.noexc60:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.fh, ptr %9, align 8, !tbaa !269
  store i64 10, ptr %i.fi, align 8, !tbaa !69
  %_ZZN14counting_value1cEvE2co.promoted.i.i59 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.fj = load <2 x i32>, ptr %0, align 4, !tbaa !18 ; 5 uses
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.fl = extractelement <2 x i32> %i.fj, i64 1   ; 4 uses
  %i.fm = extractelement <2 x i32> %i.fj, i64 0   ; 4 uses
  store <8 x i32> %i.fk, ptr %i.fh, align 4, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store <8 x i32> %i.fk, ptr %i.fn, align 4, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  store i32 %i.fl, ptr %i.fp, align 4, !tbaa !74
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  store i32 %i.fm, ptr %i.fq, align 4, !tbaa !72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  store i32 %i.fl, ptr %i.fr, align 4, !tbaa !74
  %i.fs = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i59, 10 ; 3 uses
  store i64 %i.fs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ft = load i64, ptr %i.dn, align 8, !tbaa !167, !noalias !282 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.ft, 3
  %i.fu = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 9 uses
  %.not = icmp eq i64 %i.ft, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60, %.lr.ph.i.i
  %.sroa.3.021.i.i = phi i64 [ %i.fx, %.lr.ph.i.i ], [ 10, %.noexc60 ]
  %.sroa.04.020.i.i = phi ptr [ %i.fw, %.lr.ph.i.i ], [ %8, %.noexc60 ] ; 3 uses
  store i32 %i.fm, ptr %.sroa.04.020.i.i, align 4, !tbaa !72
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.04.020.i.i, i64 4
  store i32 %i.fl, ptr %i.fv, align 4, !tbaa !74
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.04.020.i.i, i64 8 ; 4 uses
  %i.fx = add nsw i64 %.sroa.3.021.i.i, -1        ; 4 uses
  %i.fy = icmp ne i64 %i.fx, 0
  %i.fz = icmp ne ptr %i.fw, %i.fu
  %or.cond.i.i = select i1 %i.fy, i1 %i.fz, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !285

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ga = icmp eq i64 %i.fx, 0
  br i1 %i.ga, label %bb.u, label %.critedge.i.i.thread

bb.u:                                             ; preds = %.critedge.i.i
  %i.gb = ptrtoint ptr %i.fu to i64
  %i.gc = ptrtoint ptr %i.fw to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3                 ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.u
  %i.gf = sub i64 %i.fs, %i.ge
  store i64 %i.gf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.u
  %i.gg = sub i64 %i.ft, %i.ge
  br label %bb.w

.critedge.i.i.thread:                             ; preds = %.noexc60, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i153 = phi i64 [ %i.fx, %.critedge.i.i ], [ 10, %.noexc60 ] ; 8 uses
  %i.gh = sub i64 10, %i.ft
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i153, %i.gh
  br i1 %.not.i.i.i.i, label %bb.v, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !24

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check230 = icmp ult i64 %.sroa.3.0.lcssa.i.i153, 4
  br i1 %min.iters.check230, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec233 = and i64 %.sroa.3.0.lcssa.i.i153, -4 ; 3 uses
  %i.gi = and i64 %.sroa.3.0.lcssa.i.i153, 3
  %i.gj = shl i64 %n.vec233, 3
  %i.gk = getelementptr i8, ptr %i.fu, i64 %i.gj
  %next.gep240 = getelementptr i8, ptr %i.fu, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep240) ]
  %interleaved.vec242 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec242, ptr %i.fu, align 8, !tbaa !18, !noalias !286
  store <4 x i32> %interleaved.vec242, ptr %next.gep240, align 8, !tbaa !18, !noalias !286
  %i.gl = icmp eq i64 %n.vec233, 4
  br i1 %i.gl, label %middle.block245, label %vector.body236.1

vector.body236.1:                                 ; preds = %vector.ph231
  %next.gep238.1 = getelementptr i8, ptr %i.fu, i64 32 ; 2 uses
  %next.gep240.1 = getelementptr i8, ptr %i.fu, i64 48 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep238.1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep240.1) ]
  %interleaved.vec242.1 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec242.1, ptr %next.gep238.1, align 8, !tbaa !18, !noalias !286
  store <4 x i32> %interleaved.vec242.1, ptr %next.gep240.1, align 8, !tbaa !18, !noalias !286
  br label %middle.block245

middle.block245:                                  ; preds = %vector.body236.1, %vector.ph231
  %cmp.n246 = icmp eq i64 %.sroa.3.0.lcssa.i.i153, %n.vec233
  br i1 %cmp.n246, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader249

.lr.ph.i.i.i.i.i.i.i.i.preheader249:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block245
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gi, %middle.block245 ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gk, %middle.block245 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader249, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader249 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %i.fm, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !72, !noalias !286
  %i.gm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.fl, ptr %i.gm, align 4, !tbaa !74, !noalias !286
  %i.gn = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 8
  %i.go = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !291

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block245
  %i.gp = add i64 %.sroa.3.0.lcssa.i.i153, %i.fs
  store i64 %i.gp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !286
  %i.gq = add i64 %.sroa.3.0.lcssa.i.i153, %i.ft
  br label %bb.w

bb.v:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %storemerge.i.i = phi i64 [ %i.gq, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.gg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.dn, align 8, !tbaa !179
  %i.gr = icmp eq i64 %storemerge.i.i, 10
  %i.gs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.gr)
          to label %.lr.ph.i66 unwind label %.loopexit.split-lp ; 0 uses

.lr.ph.i66:                                       ; preds = %bb.w
  %.not4.i67 = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not4.i67, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i66
  %i.gt = load <2 x i32>, ptr %i.fh, align 4
  %i.gu = load <2 x i32>, ptr %8, align 8
  %i.gv = icmp eq <2 x i32> %i.gt, %i.gu          ; 2 uses
  %i.gw = extractelement <2 x i1> %i.gv, i64 0
  %i.gx = extractelement <2 x i1> %i.gv, i64 1
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  %i.gz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.gy)
          to label %.noexc70 unwind label %.loopexit ; 0 uses

.noexc70:                                         ; preds = %bb.x
  %.not4.i67.1 = icmp eq i64 %storemerge.i.i, 1
  br i1 %.not4.i67.1, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.noexc70
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.0114.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.hb = load <2 x i32>, ptr %.sroa.0114.0.ptr.1, align 4
  %i.hc = load <2 x i32>, ptr %i.ha, align 8
  %i.hd = icmp eq <2 x i32> %i.hb, %i.hc          ; 2 uses
  %i.he = extractelement <2 x i1> %i.hd, i64 0
  %i.hf = extractelement <2 x i1> %i.hd, i64 1
  %i.hg = select i1 %i.he, i1 %i.hf, i1 false
  %i.hh = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.hg)
          to label %.noexc70.1 unwind label %.loopexit ; 0 uses

.noexc70.1:                                       ; preds = %bb.y
  %.not4.i67.2 = icmp eq i64 %storemerge.i.i, 2
  br i1 %.not4.i67.2, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc70.1
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0114.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.hj = load <2 x i32>, ptr %.sroa.0114.0.ptr.2, align 4
  %i.hk = load <2 x i32>, ptr %i.hi, align 8
  %i.hl = icmp eq <2 x i32> %i.hj, %i.hk          ; 2 uses
  %i.hm = extractelement <2 x i1> %i.hl, i64 0
  %i.hn = extractelement <2 x i1> %i.hl, i64 1
  %i.ho = select i1 %i.hm, i1 %i.hn, i1 false
  %i.hp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ho)
          to label %.noexc70.2 unwind label %.loopexit ; 0 uses

.noexc70.2:                                       ; preds = %bb.z
  %.not4.i67.3 = icmp eq i64 %storemerge.i.i, 3
  br i1 %.not4.i67.3, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc70.2
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.0114.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.hr = load <2 x i32>, ptr %.sroa.0114.0.ptr.3, align 4
  %i.hs = load <2 x i32>, ptr %i.hq, align 8
  %i.ht = icmp eq <2 x i32> %i.hr, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x i1> %i.ht, i64 0
  %i.hv = extractelement <2 x i1> %i.ht, i64 1
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  %i.hx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.hw)
          to label %.noexc70.3 unwind label %.loopexit ; 0 uses

.noexc70.3:                                       ; preds = %bb.aa
  %.not4.i67.4 = icmp eq i64 %storemerge.i.i, 4
  br i1 %.not4.i67.4, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc70.3
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.0114.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.hz = load <2 x i32>, ptr %.sroa.0114.0.ptr.4, align 4
  %i.ia = load <2 x i32>, ptr %i.hy, align 8
  %i.ib = icmp eq <2 x i32> %i.hz, %i.ia          ; 2 uses
  %i.ic = extractelement <2 x i1> %i.ib, i64 0
  %i.id = extractelement <2 x i1> %i.ib, i64 1
  %i.ie = select i1 %i.ic, i1 %i.id, i1 false
  %i.if = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ie)
end_hunk_0
begin_hunk_1_@_Z15test_emplace_2pI14counting_valueLm10EEvv:bb.a
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.x
  %i.ed = phi i64 [ %i.dw, %.lr.ph178.preheader ], [ %i.er, %bb.x ]
  %indvars.iv195 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next196, %bb.x ] ; 2 uses
  %i.ee = add nuw nsw i64 %indvars.iv195, %indvars.iv202 ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = add nuw nsw i64 %i.ee, 100
  store i64 %i.ed, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ei = load i32, ptr %i.eg, align 8, !tbaa !72
  %i.ej = zext i32 %i.ei to i64
  %i.ek = icmp eq i64 %i.ee, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  %i.em = load i32, ptr %i.el, align 4
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp eq i64 %i.eh, %i.en
  %i.ep = select i1 %i.ek, i1 %i.eo, i1 false
  %i.eq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.ep)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.lr.ph178
  %i.er = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.es = add i64 %i.er, -1                       ; 2 uses
  store i64 %i.es, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count200
  br i1 %exitcond201.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97, label %.lr.ph178, !llvm.loop !1276

bb.y:                                             ; preds = %.lr.ph178
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ev = add i64 %i.eu, -1
  store i64 %i.ev, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105: ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y
  %.pn60 = phi { ptr, i32 } [ %i.dt, %bb.u ], [ %i.et, %bb.y ], [ %i.ea, %bb.w ], [ %i.de, %bb.s ], [ %i.dd, %bb.r ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ew = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i100, -6
  store i64 %i.ew, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75: ; preds = %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.l, %bb.c, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105
  %.sink253 = phi i64 [ -5, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ -10, %bb.k ], [ -10, %bb.c ], [ -10, %bb.l ], [ -10, %bb.i ], [ -10, %bb.j ], [ -10, %bb.n ], [ -10, %bb.m ]
  %.pn67.pn = phi { ptr, i32 } [ %.pn60, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ %i.r, %bb.k ], [ %i.c, %bb.c ], [ %i.ab, %bb.l ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ %i.ar, %bb.n ], [ %i.ah, %bb.m ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ex = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre, %.sink253
  store i64 %i.ex, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  resume { ptr, i32 } %.pn67.pn

bb.z:                                             ; preds = %bb.j, %bb.i
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  tail call void @__clang_call_terminate(ptr %i.ez) #26
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
  %1 = alloca %"class.boost::container::static_vector.310", align 8 ; 25 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 16 ; 8 uses
  %3 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 5, ptr %i.b, align 8, !tbaa !179
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !18 ; 10 uses
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.e = extractelement <2 x i32> %i.c, i64 1
  %i.f = extractelement <2 x i32> %i.c, i64 0
  store <8 x i32> %i.d, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !72
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.e, ptr %i.h, align 4, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 5, ptr %i.j, align 8, !tbaa !179
  store <2 x i32> %i.c, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x i32> %i.c, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  store <2 x i32> %i.c, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  store <2 x i32> %i.c, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  store <2 x i32> %i.c, ptr %i.n, align 8, !tbaa !18
  store i64 2, ptr %i.a, align 8, !tbaa !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store i64 5, ptr %i.o, align 16, !tbaa !179
  %4 = shufflevector <2 x i32> %i.c, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %4, ptr %2, align 16, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x i32> %4, ptr %i.p, align 16, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x i32> %i.c, ptr %i.q, align 16, !tbaa !18
  %i.r = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 15
  store i64 %i.r, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(88) %2)
          to label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22 unwind label %bb.c

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.o, align 16, !tbaa !167 ; 2 uses
  %.not3.i.i50 = icmp eq i64 %i.s, 0
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8 ; 2 uses
  br i1 %.not3.i.i50, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53, label %.lr.ph.preheader.i.i51

.lr.ph.preheader.i.i51:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22
  %i.t = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre, %i.s ; 2 uses
  store i64 %i.t, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22, %.lr.ph.preheader.i.i51
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i54 = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.i54.pre, %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit22 ], [ %i.t, %.lr.ph.preheader.i.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.u = load i64, ptr %i.a, align 8, !tbaa !1300, !noalias !1304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store i64 5, ptr %i.v, align 8, !tbaa !179
  %i.w = load <2 x i32>, ptr %0, align 4, !tbaa !18 ; 3 uses
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  store <8 x i32> %i.x, ptr %3, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = extractelement <2 x i32> %i.w, i64 0
  store i32 %i.z, ptr %i.y, align 8, !tbaa !72
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ab = extractelement <2 x i32> %i.w, i64 1
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !74
  %i.ac = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i54, 5
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %.not.i.i61 = icmp eq i64 %i.u, 10
  br i1 %.not.i.i61, label %bb.a, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62, !prof !24

bb.a:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc63 unwind label %bb.d

.noexc63:                                         ; preds = %bb.a
  unreachable

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit53
  %i.ad = getelementptr inbounds [88 x i8], ptr %1, i64 %i.u
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS5_20insert_emplace_proxyIS7_JS4_EEEEEvPS4_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull %i.ad, i64 noundef 1, ptr nonnull align 8 dereferenceable(88) %3)
          to label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit unwind label %bb.d

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i66 = icmp eq i64 %i.ae, 0
  br i1 %.not3.i.i66, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69, label %.lr.ph.preheader.i.i67

.lr.ph.preheader.i.i67:                           ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i68 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.af = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i68, %i.ae
  store i64 %i.af, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69: ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS4_Lb1EEEOS4_.exit, %.lr.ph.preheader.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !1300 ; 6 uses
  %.not.i70 = icmp eq i64 %i.ag, 10
  br i1 %.not.i70, label %bb.b, label %.lr.ph.i.i.i.i.i.i, !prof !24

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69
  %i.ah = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i64 5, ptr %i.ai, align 8, !tbaa !179
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.aj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 5 ; 4 uses
  store i64 %i.aj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ak = add i64 %i.ag, 1                        ; 2 uses
  %.not3.i.i77 = icmp eq i64 %i.ak, 0
  br i1 %.not3.i.i77, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.al = and i64 %i.ag, 1
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load i64, ptr %i.am, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i.prol = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i.i.i.prol, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol, label %.lr.ph.preheader.i.i.i.i.i.i.prol

.lr.ph.preheader.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.prol
  %i.ao = sub i64 %i.aj, %i.an                    ; 2 uses
  store i64 %i.ao, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.prol, %.lr.ph.i.i.prol
  %i.ap = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i.i.prol ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.preheader ], [ %i.ag, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.aq, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %.unr = phi i64 [ %i.aj, %.lr.ph.i.i.preheader ], [ %i.ap, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.prol ]
  %i.ar = icmp eq i64 %i.ag, 0
  br i1 %i.ar, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit69
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc72 unwind label %bb.e

.noexc72:                                         ; preds = %bb.b
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1
  %.05.i.i = phi i64 [ %i.ax, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bc, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.as = phi i64 [ %i.bb, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1 ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 80
  %i.au = load i64, ptr %i.at, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not3.i.i.i.i.i.i, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i
  %i.av = sub i64 %i.as, %i.au                    ; 2 uses
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.lr.ph.i.i
  %i.aw = phi i64 [ %i.as, %.lr.ph.i.i ], [ %i.av, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ax = add i64 %.05.i.i, -2                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 168
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not3.i.i.i.i.i.i.1, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1, label %.lr.ph.preheader.i.i.i.i.i.i.1

.lr.ph.preheader.i.i.i.i.i.i.1:                   ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i
  %i.ba = sub i64 %i.aw, %i.az                    ; 2 uses
  store i64 %i.ba, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.1, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i
  %i.bb = phi i64 [ %i.aw, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i.1 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 176
  %.not.i.i80.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i80.1, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1307

_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i.1, %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load i64, ptr %i.o, align 16, !tbaa !167 ; 2 uses
  %.not3.i.i85 = icmp eq i64 %i.be, 0
  br i1 %.not3.i.i85, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88, label %.lr.ph.preheader.i.i86

.lr.ph.preheader.i.i86:                           ; preds = %bb.c
  %_ZZN14counting_value1cEvE2co.promoted.i.i87 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bf = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i87, %i.be
  store i64 %i.bf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88: ; preds = %.lr.ph.preheader.i.i86, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS5_20insert_emplace_proxyIS7_JS4_EEEEENS0_12vec_iteratorIPS4_Lb0EEERKSD_mT_.exit.i62, %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i89 = icmp eq i64 %i.bh, 0
  br i1 %.not3.i.i89, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %bb.d
  %_ZZN14counting_value1cEvE2co.promoted.i.i91 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bi = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i91, %i.bh
  store i64 %i.bi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92: ; preds = %.lr.ph.preheader.i.i90, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

bb.e:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92, %bb.e
  %.pn17 = phi { ptr, i32 } [ %i.bj, %bb.e ], [ %i.bg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit92 ], [ %i.bd, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit88 ]
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !1300 ; 5 uses
  %.not3.i.i97 = icmp eq i64 %i.bk, 0
  br i1 %.not3.i.i97, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i98

.lr.ph.preheader.i.i98:                           ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit96
  %_ZZN14counting_value1cEvE2co.promoted.i.i99 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8 ; 3 uses
  %xtraiter131 = and i64 %i.bk, 1
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i100.prol.loopexit, label %.lr.ph.i.i100.prol

.lr.ph.i.i100.prol:                               ; preds = %.lr.ph.preheader.i.i98
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i103.prol = icmp eq i64 %i.bn, 0
  br i1 %.not3.i.i.i.i.i.i103.prol, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol, label %.lr.ph.preheader.i.i.i.i.i.i104.prol

.lr.ph.preheader.i.i.i.i.i.i104.prol:             ; preds = %.lr.ph.i.i100.prol
  %i.bo = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i99, %i.bn ; 2 uses
  store i64 %i.bo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104.prol, %.lr.ph.i.i100.prol
  %i.bp = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i99, %.lr.ph.i.i100.prol ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i104.prol ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %.lr.ph.i.i100.prol.loopexit

.lr.ph.i.i100.prol.loopexit:                      ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol, %.lr.ph.preheader.i.i98
  %.05.i.i101.unr = phi i64 [ %i.bk, %.lr.ph.preheader.i.i98 ], [ %i.bl, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %storemerge4.i.i102.unr = phi ptr [ %1, %.lr.ph.preheader.i.i98 ], [ %i.bq, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %.unr133 = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i99, %.lr.ph.preheader.i.i98 ], [ %i.bp, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.prol ]
  %i.br = icmp eq i64 %i.bk, 1
  br i1 %i.br, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.prol.loopexit, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1
  %.05.i.i101 = phi i64 [ %i.bx, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %.05.i.i101.unr, %.lr.ph.i.i100.prol.loopexit ]
  %storemerge4.i.i102 = phi ptr [ %i.cc, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %storemerge4.i.i102.unr, %.lr.ph.i.i100.prol.loopexit ] ; 3 uses
  %i.bs = phi i64 [ %i.cb, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1 ], [ %.unr133, %.lr.ph.i.i100.prol.loopexit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 80
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i103 = icmp eq i64 %i.bu, 0
  br i1 %.not3.i.i.i.i.i.i103, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105, label %.lr.ph.preheader.i.i.i.i.i.i104

.lr.ph.preheader.i.i.i.i.i.i104:                  ; preds = %.lr.ph.i.i100
  %i.bv = sub i64 %i.bs, %i.bu                    ; 2 uses
  store i64 %i.bv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104, %.lr.ph.i.i100
  %i.bw = phi i64 [ %i.bs, %.lr.ph.i.i100 ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i.i104 ] ; 2 uses
  %i.bx = add i64 %.05.i.i101, -2                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 168
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !167 ; 2 uses
  %.not3.i.i.i.i.i.i103.1 = icmp eq i64 %i.bz, 0
  br i1 %.not3.i.i.i.i.i.i103.1, label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1, label %.lr.ph.preheader.i.i.i.i.i.i104.1

.lr.ph.preheader.i.i.i.i.i.i104.1:                ; preds = %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105
  %i.ca = sub i64 %i.bw, %i.bz                    ; 2 uses
  store i64 %i.ca, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1

_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105.1: ; preds = %.lr.ph.preheader.i.i.i.i.i.i104.1, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105
  %i.cb = phi i64 [ %i.bw, %_ZN5boost9container16allocator_traitsINS0_3dtl24static_storage_allocatorINS0_13static_vectorI14counting_valueLm10EvEELm10ELm0ELb1EEEE7destroyIS6_EEvRS7_PT_.exit.i.i105 ], [ %i.ca, %.lr.ph.preheader.i.i.i.i.i.i104.1 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i102, i64 176
  %.not.i.i106.1 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i106.1, label %_ZN5boost9container6vectorINS0_13static_vectorI14counting_valueLm10EvEENS0_3dtl24static_storage_allocatorIS4_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.i.i100, !llvm.loop !1307

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
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 15 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !78
  %i.c = add i32 %.pre.i.i, 1
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.d = load i32, ptr %0, align 4, !tbaa !78
  %i.e = add i32 %.pre.i.i, 2
  store i32 %i.e, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.f = load i32, ptr %0, align 4, !tbaa !78
  %i.g = add i32 %.pre.i.i, 3
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !78
  %i.i = add i32 %.pre.i.i, 4
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.j = load i32, ptr %0, align 4, !tbaa !78
  %i.k = add i32 %.pre.i.i, 5
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 5, ptr %i.l, align 8, !tbaa !297
  store i32 %i.b, ptr %1, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.d, ptr %i.m, align 4, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.f, ptr %i.n, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.h, ptr %i.o, align 4, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.j, ptr %i.p, align 8, !tbaa !78
  %i.q = load i32, ptr %0, align 4, !tbaa !78
  %i.r = add i32 %.pre.i.i, 6
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.s = load i32, ptr %0, align 4, !tbaa !78
  %i.t = add i32 %.pre.i.i, 7
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.u = load i32, ptr %0, align 4, !tbaa !78
  %i.v = add i32 %.pre.i.i, 8
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.w = load i32, ptr %0, align 4, !tbaa !78
  %i.x = add i32 %.pre.i.i, 9
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.y = load i32, ptr %0, align 4, !tbaa !78
  %i.z = add i32 %.pre.i.i, 10
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 5, ptr %i.ab, align 8, !tbaa !297
  store i32 %i.q, ptr %i.aa, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.s, ptr %i.ac, align 4, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.w, ptr %i.ae, align 4, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.y, ptr %i.af, align 8, !tbaa !78
  store i64 2, ptr %i.a, align 8, !tbaa !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  store i64 5, ptr %i.ag, align 8, !tbaa !297
  %i.ah = load i32, ptr %0, align 4, !tbaa !78
  store i32 %i.ah, ptr %2, align 8, !tbaa !78
  %i.ai = add i32 %.pre.i.i, 11
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %0, align 4, !tbaa !78
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !78
  %i.al = add i32 %.pre.i.i, 12
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i32, ptr %0, align 4, !tbaa !78
  store i32 %i.an, ptr %i.am, align 8, !tbaa !78
  %i.ao = add i32 %.pre.i.i, 13
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aq = load i32, ptr %0, align 4, !tbaa !78
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !78
  %i.ar = add i32 %.pre.i.i, 14
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %0, align 4, !tbaa !78
  store i32 %i.at, ptr %i.as, align 8, !tbaa !78
  %i.au = add i32 %.pre.i.i, 15
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  invoke void @_ZN5boost9container6vectorINS0_13static_vectorINS0_4test24movable_and_copyable_intELm10EvEENS0_3dtl24static_storage_allocatorIS5_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS6_20insert_emplace_proxyIS8_JS5_EEEEEvPS5_mT_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull %1, i64 noundef 1, ptr nonnull align 8 dereferenceable(48) %2)
end_hunk_1
