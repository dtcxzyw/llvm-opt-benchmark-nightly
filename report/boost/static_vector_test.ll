Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 310
begin_hunk_0_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
  br i1 %i.i, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.ah

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
  %i.j = add nsw i64 %.020.i.i.i.prol, -1         ; 2 uses
  %i.k = load <2 x i32>, ptr %.0819.i.i.i.prol, align 4, !tbaa !41
  store <2 x i32> %i.k, ptr %.01618.i.i.i.prol, align 4, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.prol, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !360

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
  %i.aj = add nsw i64 %.020.i.i.i, -8             ; 2 uses
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
          to label %.noexc19 unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
          to label %.noexc21 unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit

_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit: ; preds = %.noexc21, %bb.g
  %i.bf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.i unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

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
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !361

.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backERKS2_.exit, %bb.h, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bo = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.am

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit: ; preds = %._crit_edge.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %i.bq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.j unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit
  %i.br = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !379 ; 3 uses
  %.idx = shl nsw i64 %i.br, 3
  %i.bs = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.g
  %i.bu = icmp eq i64 %i.br, %i.g
  %i.bv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.bu)
          to label %.noexc24 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.j
  %.not5.i = icmp eq i64 %i.br, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc24, %.noexc25
  %.sroa.0142.0 = phi ptr [ %i.cb, %.noexc25 ], [ %6, %.noexc24 ] ; 3 uses
  %.sroa.0147.0 = phi ptr [ %i.ca, %.noexc25 ], [ %2, %.noexc24 ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0142.0, %i.bt
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bw = load <2 x i32>, ptr %.sroa.0147.0, align 4
  %i.bx = load <2 x i32>, ptr %.sroa.0142.0, align 4
  %i.by = icmp eq <2 x i32> %i.bw, %i.bx          ; 2 uses
  %10 = extractelement <2 x i1> %i.by, i64 0
  %11 = extractelement <2 x i1> %i.by, i64 1
  %12 = select i1 %10, i1 %11, i1 false
  %i.bz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %12)
          to label %.noexc25 unwind label %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc25:                                         ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0147.0, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0142.0, i64 8
  %.not.i23 = icmp eq ptr %i.ca, %i.bs
  br i1 %.not.i23, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !9

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc25, %.lr.ph.i, %.noexc24
  %i.cc = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.cc
  store i64 %i.cd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.l unwind label %.loopexit.split-lp170.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !102 ; 15 uses
  %.not227 = icmp eq i64 %i.cg, 0
  br i1 %.not227, label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, label %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i

_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i: ; preds = %bb.l
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %min.iters.check = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i
  %n.vec = and i64 %i.cg, -4                      ; 3 uses
  %i.ch = and i64 %i.cg, 3
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %2, i64 %i.ci
  %i.ck = getelementptr i8, ptr %7, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 3 uses
  %i.cm = or disjoint i64 %i.cl, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.cl
  %next.gep245 = getelementptr i8, ptr %2, i64 %i.cm
  %next.gep246 = getelementptr i8, ptr %7, i64 %i.cl
  %next.gep247 = getelementptr i8, ptr %7, i64 %i.cm
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !41
  %wide.vec249 = load <4 x i32>, ptr %next.gep245, align 8, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep246, align 8, !tbaa !41
  store <4 x i32> %wide.vec249, ptr %next.gep247, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i, %middle.block
  %.020.i.i.i.i.i.ph = phi i64 [ %i.cg, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.ch, %middle.block ]
  %.0819.i.i.i.i.i.ph = phi ptr [ %2, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.cj, %middle.block ]
  %.01618.i.i.i.i.i.ph = phi ptr [ %7, %_ZN5boost9container18copy_n_source_destIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES6_mRS7_.exit.i.i.i.i ], [ %i.ck, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020.i.i.i.i.i = phi i64 [ %i.co, %scalar.ph ], [ %.020.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.0819.i.i.i.i.i = phi ptr [ %i.cq, %scalar.ph ], [ %.0819.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.cr, %scalar.ph ], [ %.01618.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = add i64 %.020.i.i.i.i.i, -1             ; 2 uses
  %i.cp = load <2 x i32>, ptr %.0819.i.i.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.cp, ptr %.01618.i.i.i.i.i, align 4, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %.not.i15.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i15.i.i.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i, label %scalar.ph, !llvm.loop !365

_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i: ; preds = %scalar.ph, %middle.block
  %i.cs = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i, %i.cg
  store i64 %i.cs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i

_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i: ; preds = %bb.l, %_ZN5boost9container26uninitialized_copy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.sink.split.i.i.i.i
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !128
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.m unwind label %.loopexit.split-lp170.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !380 ; 3 uses
  %.idx157 = shl nsw i64 %i.cu, 3
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %.idx157
  %i.cw = getelementptr inbounds [8 x i8], ptr %7, i64 %i.cg
  %i.cx = icmp eq i64 %i.cu, %i.cg
  %i.cy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.cx)
          to label %.noexc32 unwind label %.loopexit.split-lp170.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %bb.m
  %.not5.i26 = icmp eq i64 %i.cu, 0
  br i1 %.not5.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.0131.0 = phi ptr [ %i.de, %.noexc33 ], [ %7, %.noexc32 ] ; 3 uses
  %.sroa.0136.0 = phi ptr [ %i.dd, %.noexc33 ], [ %2, %.noexc32 ] ; 2 uses
  %.not4.i30 = icmp eq ptr %.sroa.0131.0, %i.cw
  br i1 %.not4.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i29
  %i.cz = load <2 x i32>, ptr %.sroa.0136.0, align 4
  %i.da = load <2 x i32>, ptr %.sroa.0131.0, align 4
  %i.db = icmp eq <2 x i32> %i.cz, %i.da          ; 2 uses
  %13 = extractelement <2 x i1> %i.db, i64 0
  %14 = extractelement <2 x i1> %i.db, i64 1
  %15 = select i1 %13, i1 %14, i1 false
  %i.dc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %15)
          to label %.noexc33 unwind label %.loopexit.split-lp170.loopexit ; 0 uses

.noexc33:                                         ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0136.0, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0131.0, i64 8
  %.not.i31 = icmp eq ptr %i.dd, %i.cv
  br i1 %.not.i31, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, label %.lr.ph.i29, !llvm.loop !9

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34: ; preds = %.noexc33, %.lr.ph.i29, %.noexc32
  %.not3.i.i35 = icmp eq i64 %i.cg, 0
  br i1 %.not3.i.i35, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38, label %.lr.ph.preheader.i.i36

.lr.ph.preheader.i.i36:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34
  %_ZZN14counting_value1cEvE2co.promoted.i.i37 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.df = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i37, %i.cg
  store i64 %i.df, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit34, %.lr.ph.preheader.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  invoke void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.ai

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !102 ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 5 uses
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !128
  %i.di = icmp ugt i64 %i.dg, 10
  br i1 %i.di, label %bb.r, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc48 unwind label %bb.aj

.noexc48:                                         ; preds = %bb.r
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39: ; preds = %bb.q
  %.not17.i.i.i40 = icmp eq i64 %i.dg, 0          ; 2 uses
  br i1 %.not17.i.i.i40, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i42 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %xtraiter288 = and i64 %i.dg, 7                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i41, %.prol.preheader
  %.020.i.i.i43.prol = phi i64 [ %i.dj, %.prol.preheader ], [ %i.dg, %.lr.ph.i.i.i41 ]
  %.0819.i.i.i44.prol = phi ptr [ %i.dl, %.prol.preheader ], [ %2, %.lr.ph.i.i.i41 ] ; 2 uses
  %.01618.i.i.i45.prol = phi ptr [ %i.dm, %.prol.preheader ], [ %8, %.lr.ph.i.i.i41 ] ; 2 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i41 ]
  %i.dj = add nsw i64 %.020.i.i.i43.prol, -1      ; 2 uses
  %i.dk = load <2 x i32>, ptr %.0819.i.i.i44.prol, align 4, !tbaa !41
  store <2 x i32> %i.dk, ptr %.01618.i.i.i45.prol, align 4, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44.prol, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45.prol, i64 8 ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !368

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i41
  %.020.i.i.i43.unr = phi i64 [ %i.dg, %.lr.ph.i.i.i41 ], [ %i.dj, %.prol.preheader ]
  %.0819.i.i.i44.unr = phi ptr [ %2, %.lr.ph.i.i.i41 ], [ %i.dl, %.prol.preheader ]
  %.01618.i.i.i45.unr = phi ptr [ %8, %.lr.ph.i.i.i41 ], [ %i.dm, %.prol.preheader ]
  %i.dn = icmp ult i64 %i.dg, 8
  br i1 %i.dn, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41.new

.lr.ph.i.i.i41.new:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.i41.new
  %.020.i.i.i43 = phi i64 [ %i.ej, %.lr.ph.i.i.i41.new ], [ %.020.i.i.i43.unr, %.prol.loopexit ]
  %.0819.i.i.i44 = phi ptr [ %i.el, %.lr.ph.i.i.i41.new ], [ %.0819.i.i.i44.unr, %.prol.loopexit ] ; 9 uses
  %.01618.i.i.i45 = phi ptr [ %i.em, %.lr.ph.i.i.i41.new ], [ %.01618.i.i.i45.unr, %.prol.loopexit ] ; 9 uses
  %i.do = load <2 x i32>, ptr %.0819.i.i.i44, align 4, !tbaa !41
  store <2 x i32> %i.do, ptr %.01618.i.i.i45, align 4, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 8
  %i.dr = load <2 x i32>, ptr %i.dp, align 4, !tbaa !41
  store <2 x i32> %i.dr, ptr %i.dq, align 4, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 16
  %i.du = load <2 x i32>, ptr %i.ds, align 4, !tbaa !41
  store <2 x i32> %i.du, ptr %i.dt, align 4, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 24
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !41
  store <2 x i32> %i.dx, ptr %i.dw, align 4, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 32
  %i.ea = load <2 x i32>, ptr %i.dy, align 4, !tbaa !41
  store <2 x i32> %i.ea, ptr %i.dz, align 4, !tbaa !41
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 40
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 40
  %i.ed = load <2 x i32>, ptr %i.eb, align 4, !tbaa !41
  store <2 x i32> %i.ed, ptr %i.ec, align 4, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 48
  %i.ef = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 48
  %i.eg = load <2 x i32>, ptr %i.ee, align 4, !tbaa !41
  store <2 x i32> %i.eg, ptr %i.ef, align 4, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 56
  %i.ej = add nsw i64 %.020.i.i.i43, -8           ; 2 uses
  %i.ek = load <2 x i32>, ptr %i.eh, align 4, !tbaa !41
  store <2 x i32> %i.ek, ptr %i.ei, align 4, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 64
  %i.em = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 64
  %.not.i.i.i46.7 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i46.7, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41.new, !llvm.loop !8

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41.new, %.prol.loopexit
  %i.en = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i42, %i.dg
  store i64 %i.en, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49: ; preds = %._crit_edge.i.i.i47, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %.idx160 = shl nuw nsw i64 %i.dg, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx160
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dg
  %i.eq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc56 unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc56:                                         ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  br i1 %.not17.i.i.i40, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.noexc56, %.noexc57
  %.sroa.0125.0 = phi ptr [ %i.ev, %.noexc57 ], [ %2, %.noexc56 ] ; 2 uses
  %.sroa.0120.0 = phi ptr [ %i.ew, %.noexc57 ], [ %8, %.noexc56 ] ; 3 uses
  %.not4.i54 = icmp eq ptr %.sroa.0120.0, %i.ep
  br i1 %.not4.i54, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i53
  %i.er = load <2 x i32>, ptr %.sroa.0125.0, align 4
  %i.es = load <2 x i32>, ptr %.sroa.0120.0, align 4
  %i.et = icmp eq <2 x i32> %i.er, %i.es          ; 2 uses
  %16 = extractelement <2 x i1> %i.et, i64 0
  %17 = extractelement <2 x i1> %i.et, i64 1
  %18 = select i1 %16, i1 %17, i1 false
  %i.eu = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %18)
          to label %.noexc57 unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc57:                                         ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0125.0, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0120.0, i64 8
  %.not.i55 = icmp eq ptr %i.ev, %i.eo
  br i1 %.not.i55, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53, !llvm.loop !9

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58: ; preds = %.noexc57, %.lr.ph.i53, %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.ex, align 8, !tbaa !135
  %i.ey = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc60 unwind label %bb.ak  ; 25 uses

.noexc60:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ey, ptr %9, align 8, !tbaa !134
  store i64 10, ptr %i.ez, align 8, !tbaa !75
  %_ZZN14counting_value1cEvE2co.promoted.i.i59 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fa = load <2 x i32>, ptr %0, align 4, !tbaa !41 ; 5 uses
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.fc = extractelement <2 x i32> %i.fa, i64 1   ; 8 uses
  %i.fd = extractelement <2 x i32> %i.fa, i64 0   ; 8 uses
  store <8 x i32> %i.fb, ptr %i.ey, align 4, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 36
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !80
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i32 %i.fd, ptr %i.fg, align 4, !tbaa !79
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  store i32 %i.fc, ptr %i.fh, align 4, !tbaa !80
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  store i32 %i.fd, ptr %i.fi, align 4, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 52
  store i32 %i.fc, ptr %i.fj, align 4, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store i32 %i.fd, ptr %i.fk, align 4, !tbaa !79
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 60
  store i32 %i.fc, ptr %i.fl, align 4, !tbaa !80
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  store i32 %i.fd, ptr %i.fm, align 4, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 68
  store i32 %i.fc, ptr %i.fn, align 4, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  store i32 %i.fd, ptr %i.fo, align 4, !tbaa !79
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 76
  store i32 %i.fc, ptr %i.fp, align 4, !tbaa !80
  %i.fq = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i59, 10 ; 3 uses
  store i64 %i.fq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fr = load i64, ptr %i.dh, align 8, !tbaa !102, !noalias !381 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.fr, 3
  %i.fs = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 8 uses
  %.not = icmp eq i64 %i.fr, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60, %.lr.ph.i.i
  %.sroa.04.021.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %8, %.noexc60 ] ; 3 uses
  %.sroa.3.020.i.i = phi i64 [ %i.fv, %.lr.ph.i.i ], [ 10, %.noexc60 ]
  store i32 %i.fd, ptr %.sroa.04.021.i.i, align 4, !tbaa !79
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 4
  store i32 %i.fc, ptr %i.ft, align 4, !tbaa !80
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 8 ; 3 uses
  %i.fv = add nsw i64 %.sroa.3.020.i.i, -1        ; 3 uses
  %i.fw = icmp ne i64 %i.fv, 0                    ; 2 uses
  %i.fx = icmp ne ptr %i.fu, %i.fs                ; 2 uses
  %or.cond.i.i = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !371

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  br i1 %i.fw, label %.critedge.i.i.thread, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3                 ; 2 uses
  br i1 %i.fx, label %.lr.ph.preheader.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.gc = sub i64 %i.fq, %i.gb
  store i64 %i.gc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.t
  %i.gd = sub i64 %i.fr, %i.gb
  br label %bb.v

.critedge.i.i.thread:                             ; preds = %.noexc60, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i153 = phi i64 [ %i.fv, %.critedge.i.i ], [ 10, %.noexc60 ] ; 8 uses
  %i.ge = sub i64 10, %i.fr
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i153, %i.ge
  br i1 %.not.i.i.i.i, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check256 = icmp ult i64 %.sroa.3.0.lcssa.i.i153, 4
  br i1 %min.iters.check256, label %.lr.ph.i.i.i.i.i.i.i.i.preheader275, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec258 = and i64 %.sroa.3.0.lcssa.i.i153, -4 ; 3 uses
  %i.gf = and i64 %.sroa.3.0.lcssa.i.i153, 3
  %i.gg = shl i64 %n.vec258, 3
  %i.gh = getelementptr i8, ptr %i.fs, i64 %i.gg
  %next.gep265 = getelementptr i8, ptr %i.fs, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep265) ]
  %interleaved.vec267 = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec267, ptr %i.fs, align 8, !tbaa !41, !noalias !382
  store <4 x i32> %interleaved.vec267, ptr %next.gep265, align 8, !tbaa !41, !noalias !382
  %i.gi = icmp eq i64 %n.vec258, 4
  br i1 %i.gi, label %middle.block270, label %vector.body261.1

vector.body261.1:                                 ; preds = %vector.ph257
  %next.gep263.1 = getelementptr i8, ptr %i.fs, i64 32 ; 2 uses
  %next.gep265.1 = getelementptr i8, ptr %i.fs, i64 48 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep263.1), "nonnull"(ptr %next.gep265.1) ]
  %interleaved.vec267.1 = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec267.1, ptr %next.gep263.1, align 8, !tbaa !41, !noalias !382
  store <4 x i32> %interleaved.vec267.1, ptr %next.gep265.1, align 8, !tbaa !41, !noalias !382
  br label %middle.block270

middle.block270:                                  ; preds = %vector.body261.1, %vector.ph257
  %cmp.n271 = icmp eq i64 %.sroa.3.0.lcssa.i.i153, %n.vec258
  br i1 %cmp.n271, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader275

.lr.ph.i.i.i.i.i.i.i.i.preheader275:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block270
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gf, %middle.block270 ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gh, %middle.block270 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader275, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader275 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader275 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %i.fd, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !79, !noalias !382
  %i.gj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.fc, ptr %i.gj, align 4, !tbaa !80, !noalias !382
  %i.gk = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 8
  %i.gl = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !376

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block270
  %i.gm = add i64 %.sroa.3.0.lcssa.i.i153, %i.fq
  store i64 %i.gm, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !382
  %i.gn = add i64 %.sroa.3.0.lcssa.i.i153, %i.fr
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %storemerge.i.i = phi i64 [ %i.gn, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.gd, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.dh, align 8, !tbaa !128
  %i.go = icmp eq i64 %storemerge.i.i, 10
  %i.gp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.go)
          to label %.lr.ph.i66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i66:                                       ; preds = %bb.v
  %.not4.i67 = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not4.i67, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i66
  %i.gq = load <2 x i32>, ptr %i.ey, align 4
  %i.gr = load <2 x i32>, ptr %8, align 8
  %i.gs = icmp eq <2 x i32> %i.gq, %i.gr          ; 2 uses
  %19 = extractelement <2 x i1> %i.gs, i64 0
  %20 = extractelement <2 x i1> %i.gs, i64 1
  %21 = select i1 %19, i1 %20, i1 false
  %i.gt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %21)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70:                                         ; preds = %bb.w
  %.not4.i67.1 = icmp eq i64 %storemerge.i.i, 1
  br i1 %.not4.i67.1, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc70
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.0114.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.gv = load <2 x i32>, ptr %.sroa.0114.0.ptr.1, align 4
  %i.gw = load <2 x i32>, ptr %i.gu, align 8
  %i.gx = icmp eq <2 x i32> %i.gv, %i.gw          ; 2 uses
  %22 = extractelement <2 x i1> %i.gx, i64 0
  %23 = extractelement <2 x i1> %i.gx, i64 1
  %24 = select i1 %22, i1 %23, i1 false
  %i.gy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %24)
          to label %.noexc70.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.1:                                       ; preds = %bb.x
  %.not4.i67.2 = icmp eq i64 %storemerge.i.i, 2
  br i1 %.not4.i67.2, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.noexc70.1
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0114.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.ha = load <2 x i32>, ptr %.sroa.0114.0.ptr.2, align 4
  %i.hb = load <2 x i32>, ptr %i.gz, align 8
  %i.hc = icmp eq <2 x i32> %i.ha, %i.hb          ; 2 uses
  %25 = extractelement <2 x i1> %i.hc, i64 0
  %26 = extractelement <2 x i1> %i.hc, i64 1
  %27 = select i1 %25, i1 %26, i1 false
  %i.hd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %27)
          to label %.noexc70.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.2:                                       ; preds = %bb.y
  %.not4.i67.3 = icmp eq i64 %storemerge.i.i, 3
  br i1 %.not4.i67.3, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc70.2
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.0114.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.hf = load <2 x i32>, ptr %.sroa.0114.0.ptr.3, align 4
  %i.hg = load <2 x i32>, ptr %i.he, align 8
  %i.hh = icmp eq <2 x i32> %i.hf, %i.hg          ; 2 uses
  %28 = extractelement <2 x i1> %i.hh, i64 0
  %29 = extractelement <2 x i1> %i.hh, i64 1
  %30 = select i1 %28, i1 %29, i1 false
  %i.hi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %30)
          to label %.noexc70.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.3:                                       ; preds = %bb.z
  %.not4.i67.4 = icmp eq i64 %storemerge.i.i, 4
  br i1 %.not4.i67.4, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc70.3
  %i.hj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.0114.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.hk = load <2 x i32>, ptr %.sroa.0114.0.ptr.4, align 4
  %i.hl = load <2 x i32>, ptr %i.hj, align 8
  %i.hm = icmp eq <2 x i32> %i.hk, %i.hl          ; 2 uses
  %31 = extractelement <2 x i1> %i.hm, i64 0
  %32 = extractelement <2 x i1> %i.hm, i64 1
  %33 = select i1 %31, i1 %32, i1 false
  %i.hn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %33)
          to label %.noexc70.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.4:                                       ; preds = %bb.aa
  %.not4.i67.5 = icmp eq i64 %storemerge.i.i, 5
  br i1 %.not4.i67.5, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc70.4
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.0114.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.hp = load <2 x i32>, ptr %.sroa.0114.0.ptr.5, align 4
  %i.hq = load <2 x i32>, ptr %i.ho, align 8
  %i.hr = icmp eq <2 x i32> %i.hp, %i.hq          ; 2 uses
  %34 = extractelement <2 x i1> %i.hr, i64 0
  %35 = extractelement <2 x i1> %i.hr, i64 1
  %36 = select i1 %34, i1 %35, i1 false
  %i.hs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %36)
          to label %.noexc70.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.5:                                       ; preds = %bb.ab
  %.not4.i67.6 = icmp eq i64 %storemerge.i.i, 6
  br i1 %.not4.i67.6, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc70.5
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0114.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.hu = load <2 x i32>, ptr %.sroa.0114.0.ptr.6, align 4
  %i.hv = load <2 x i32>, ptr %i.ht, align 8
  %i.hw = icmp eq <2 x i32> %i.hu, %i.hv          ; 2 uses
  %37 = extractelement <2 x i1> %i.hw, i64 0
  %38 = extractelement <2 x i1> %i.hw, i64 1
  %39 = select i1 %37, i1 %38, i1 false
  %i.hx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %39)
          to label %.noexc70.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.6:                                       ; preds = %bb.ac
  %.not4.i67.7 = icmp eq i64 %storemerge.i.i, 7
  br i1 %.not4.i67.7, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.noexc70.6
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.0114.0.ptr.7 = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.hz = load <2 x i32>, ptr %.sroa.0114.0.ptr.7, align 4
  %i.ia = load <2 x i32>, ptr %i.hy, align 8
  %i.ib = icmp eq <2 x i32> %i.hz, %i.ia          ; 2 uses
  %40 = extractelement <2 x i1> %i.ib, i64 0
  %41 = extractelement <2 x i1> %i.ib, i64 1
  %42 = select i1 %40, i1 %41, i1 false
  %i.ic = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %42)
          to label %.noexc70.7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.7:                                       ; preds = %bb.ad
  %.not4.i67.8 = icmp eq i64 %storemerge.i.i, 8
  br i1 %.not4.i67.8, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc70.7
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.sroa.0114.0.ptr.8 = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.ie = load <2 x i32>, ptr %.sroa.0114.0.ptr.8, align 4
  %i.if = load <2 x i32>, ptr %i.id, align 8
  %i.ig = icmp eq <2 x i32> %i.ie, %i.if          ; 2 uses
  %43 = extractelement <2 x i1> %i.ig, i64 0
  %44 = extractelement <2 x i1> %i.ig, i64 1
  %45 = select i1 %43, i1 %44, i1 false
  %i.ih = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %45)
          to label %.noexc70.8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.8:                                       ; preds = %bb.ae
  %.not4.i67.9 = icmp eq i64 %storemerge.i.i, 9
  br i1 %.not4.i67.9, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.noexc70.8
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 72
  %.sroa.0114.0.ptr.9 = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.ij = load <2 x i32>, ptr %.sroa.0114.0.ptr.9, align 4
  %i.ik = load <2 x i32>, ptr %i.ii, align 8
  %i.il = icmp eq <2 x i32> %i.ij, %i.ik          ; 2 uses
  %46 = extractelement <2 x i1> %i.il, i64 0
  %47 = extractelement <2 x i1> %i.il, i64 1
  %48 = select i1 %46, i1 %47, i1 false
  %i.im = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %48)
          to label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit: ; preds = %bb.af, %.noexc70.8, %.noexc70.7, %.noexc70.6, %.noexc70.5, %.noexc70.4, %.noexc70.3, %.noexc70.2, %.noexc70.1, %.noexc70, %.lr.ph.i66
  %_ZZN14counting_value1cEvE2co.promoted.i.i74 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.in = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i74, -10
  store i64 %i.in, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 80) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.io = load i64, ptr %i.dh, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i76 = icmp eq i64 %i.io, 0
  br i1 %.not3.i.i76, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79, label %.lr.ph.preheader.i.i77

.lr.ph.preheader.i.i77:                           ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i78 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ip = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i78, %i.io
  store i64 %i.ip, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, %.lr.ph.preheader.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.iq = load ptr, ptr %i.b, align 8, !tbaa !105, !noalias !383 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.iq, %i.b
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i80

.lr.ph.i.i.i80:                                   ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79, %.lr.ph.i.i.i80
  %.sroa.04.09.i.i.i = phi ptr [ %i.ir, %.lr.ph.i.i.i80 ], [ %i.iq, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79 ] ; 2 uses
  %i.ir = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.is = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.it = add i64 %i.is, -1
  store i64 %i.it, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i81 = icmp eq ptr %i.ir, %i.b
  br i1 %.not.i.i.i81, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i80, !llvm.loop !10

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i80, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.iu = load i64, ptr %i.e, align 8, !tbaa !132 ; 2 uses
  %.not3.i.i82 = icmp eq i64 %i.iu, 0
  br i1 %.not3.i.i82, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85, label %.lr.ph.preheader.i.i83

.lr.ph.preheader.i.i83:                           ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i84 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.iv = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i84, %i.iu
  store i64 %i.iv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85: ; preds = %.lr.ph.preheader.i.i83, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.iw = load i64, ptr %i.f, align 8, !tbaa !133 ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.iw, 0
  br i1 %.not.i.i86, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87, label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85
  %i.ix = load ptr, ptr %3, align 8, !tbaa !136
  %i.iy = shl i64 %i.iw, 3
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.iy) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i85, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.iz = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i88 = icmp eq i64 %i.iz, 0
  br i1 %.not3.i.i88, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91, label %.lr.ph.preheader.i.i89

.lr.ph.preheader.i.i89:                           ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87
  %_ZZN14counting_value1cEvE2co.promoted.i.i90 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ja = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i90, %i.iz
  store i64 %i.ja, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit91: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit87, %.lr.ph.preheader.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ah:                                            ; preds = %bb.c
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.j, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load i64, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i92 = icmp eq i64 %i.jc, 0
  br i1 %.not3.i.i92, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, label %.lr.ph.preheader.i.i93

.lr.ph.preheader.i.i93:                           ; preds = %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i94 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.jd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i94, %i.jc
  store i64 %i.jd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95: ; preds = %.lr.ph.preheader.i.i93, %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.jb, %bb.ah ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp175.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp283, %.lr.ph.preheader.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

.loopexit.split-lp170.loopexit:                   ; preds = %bb.n
  %lpad.loopexit191 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp170

.loopexit.split-lp170.loopexit.split-lp:          ; preds = %bb.m, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.je = phi i64 [ %i.cg, %bb.m ], [ %i.cg, %_ZN5boost9container6copy_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i.i ], [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ]
  %lpad.loopexit.split-lp192 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp170

.loopexit.split-lp170:                            ; preds = %.loopexit.split-lp170.loopexit.split-lp, %.loopexit.split-lp170.loopexit
  %i.jf = phi i64 [ %i.cg, %.loopexit.split-lp170.loopexit ], [ %i.je, %.loopexit.split-lp170.loopexit.split-lp ] ; 2 uses
  %lpad.phi193 = phi { ptr, i32 } [ %lpad.loopexit191, %.loopexit.split-lp170.loopexit ], [ %lpad.loopexit.split-lp192, %.loopexit.split-lp170.loopexit.split-lp ]
  %.not3.i.i96 = icmp eq i64 %i.jf, 0
  br i1 %.not3.i.i96, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, label %.lr.ph.preheader.i.i97

.lr.ph.preheader.i.i97:                           ; preds = %.loopexit.split-lp170
  %_ZZN14counting_value1cEvE2co.promoted.i.i98 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.jg = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i98, %i.jf
  store i64 %i.jg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99: ; preds = %.loopexit.split-lp170, %.lr.ph.preheader.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.am

bb.ai:                                            ; preds = %bb.p, %bb.o, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit38
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %bb.r
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.s, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp165

bb.ak:                                            ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.v, %bb.u
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ak
  %.pn13 = phi { ptr, i32 } [ %lpad.loopexit.split-lp274, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.jj, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit.split-lp165

.loopexit.split-lp165:                            ; preds = %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.al
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.al ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.jk = load i64, ptr %i.dh, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i100 = icmp eq i64 %i.jk, 0
  br i1 %.not3.i.i100, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, label %.lr.ph.preheader.i.i101

.lr.ph.preheader.i.i101:                          ; preds = %.loopexit.split-lp165
  %_ZZN14counting_value1cEvE2co.promoted.i.i102 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.jl = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i102, %i.jk
  store i64 %i.jl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103: ; preds = %.lr.ph.preheader.i.i101, %.loopexit.split-lp165, %bb.aj
  %.pn13.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.aj ], [ %.pn13.pn, %.loopexit.split-lp165 ], [ %.pn13.pn, %.lr.ph.preheader.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.am

bb.am:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103, %bb.ai, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95, %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn17 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn13.pn.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103 ], [ %i.jh, %bb.ai ], [ %lpad.phi193, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit99 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit95 ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i104 = icmp eq i64 %i.jm, 0
  br i1 %.not3.i.i104, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107, label %.lr.ph.preheader.i.i105

.lr.ph.preheader.i.i105:                          ; preds = %bb.am
  %_ZZN14counting_value1cEvE2co.promoted.i.i106 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.jn = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i106, %i.jm
  store i64 %i.jn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit107: ; preds = %bb.am, %.lr.ph.preheader.i.i105
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
end_hunk_0
begin_hunk_1_@_Z17test_iterators_ndI8value_ndLm10EEvv:bb.a
bb.aw:                                            ; preds = %.noexc22.8
  %i.gg = getelementptr inbounds i8, ptr %i.ef, i64 -36
  %i.gh = load i32, ptr %1, align 8, !tbaa !77
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !77
  %i.gj = icmp eq i32 %i.gh, %i.gi
  %i.gk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_, i1 noundef zeroext %i.gj)
          to label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit: ; preds = %bb.aw, %.noexc22.8, %.noexc22.7, %.noexc22.6, %.noexc22.5, %.noexc22.4, %.noexc22.3, %.noexc22.2, %.noexc22.1, %.noexc22, %.lr.ph.i18.preheader
  %i.gl = load ptr, ptr %2, align 8, !tbaa !126, !noalias !488 ; 4 uses
  %i.gm = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !488 ; 3 uses
  %.idx96 = shl nsw i64 %i.gm, 2
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 %.idx96 ; 3 uses
  %.not = icmp eq i64 %i.gm, 0
  br i1 %.not, label %.critedge.i, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit, %.lr.ph.i23
  %i.go = phi ptr [ %i.gp, %.lr.ph.i23 ], [ %i.gn, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit ]
  %.sroa.06.012.i.idx = phi i64 [ %.sroa.06.012.i.add, %.lr.ph.i23 ], [ 0, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit ] ; 2 uses
  %.sroa.06.012.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.012.i.idx
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !41
  store i32 %i.gq, ptr %.sroa.06.012.i.ptr, align 4, !tbaa !41
  %.sroa.06.012.i.add = add nuw nsw i64 %.sroa.06.012.i.idx, 4 ; 3 uses
  %i.gr = icmp ne ptr %i.gp, %i.gl
  %i.gs = icmp ne i64 %.sroa.06.012.i.add, 40
  %or.cond.i = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond.i, label %.lr.ph.i23, label %.critedge.i.loopexit, !llvm.loop !474

.critedge.i.loopexit:                             ; preds = %.lr.ph.i23
  %.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.012.i.add
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit
  %.sroa.06.0.lcssa.i = phi ptr [ %1, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit ], [ %.ptr, %.critedge.i.loopexit ]
  %.lcssa10.i = phi ptr [ %i.gn, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES8_EvT_S9_T0_SA_.exit ], [ %i.gp, %.critedge.i.loopexit ]
  %i.gt = icmp eq ptr %.lcssa10.i, %i.gl
  br i1 %i.gt, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %.critedge.i
  %i.gu = ptrtoint ptr %i.a to i64
  %i.gv = ptrtoint ptr %.sroa.06.0.lcssa.i to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = ashr exact i64 %i.gw, 2
  %i.gy = sub nsw i64 10, %i.gx                   ; 3 uses
  store i64 %i.gy, ptr %i.a, align 8, !tbaa !118
  %.idx98 = shl nsw i64 %i.gy, 2
  %i.gz = getelementptr inbounds i8, ptr %1, i64 %.idx98
  %i.ha = icmp eq i64 %i.gy, %i.gm
  %i.hb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_, i1 noundef zeroext %i.ha)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %bb.ay
  %.not5.i25 = icmp eq i64 %i.gw, 40
  br i1 %.not5.i25, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.062.0 = phi ptr [ %i.hh, %.noexc33 ], [ %1, %.noexc32 ] ; 2 uses
  %.sroa.057.0 = phi ptr [ %i.hc, %.noexc33 ], [ %i.gn, %.noexc32 ] ; 2 uses
  %.not4.i29 = icmp eq ptr %.sroa.057.0, %i.gl
  br i1 %.not4.i29, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i28
  %i.hc = getelementptr inbounds i8, ptr %.sroa.057.0, i64 -4 ; 2 uses
  %i.hd = load i32, ptr %.sroa.062.0, align 4, !tbaa !77
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !77
  %i.hf = icmp eq i32 %i.hd, %i.he
  %i.hg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_, i1 noundef zeroext %i.hf)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %bb.az
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.062.0, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %i.hh, %i.gz
  br i1 %.not.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %.lr.ph.i28, !llvm.loop !475

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit: ; preds = %.noexc33, %.lr.ph.i28, %.noexc32
  %i.hi = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !489 ; 3 uses
  %i.hj = load ptr, ptr %2, align 8, !tbaa !126, !noalias !490 ; 2 uses
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !124, !noalias !491 ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = icmp eq i64 %i.hi, %i.hk
  %i.hn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %i.hm)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc41:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit
  %.not5.i34 = icmp eq i64 %i.hi, 0
  br i1 %.not5.i34, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %.noexc41
  %.idx101 = shl nsw i64 %i.hi, 2
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %.idx101
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.preheader, %.noexc42
  %.sroa.051.0 = phi ptr [ %i.hp, %.noexc42 ], [ %i.ho, %.lr.ph.i37.preheader ]
  %.sroa.046.0 = phi ptr [ %i.hu, %.noexc42 ], [ %i.hj, %.lr.ph.i37.preheader ] ; 3 uses
  %.not4.i38 = icmp eq ptr %.sroa.046.0, %i.hl
  br i1 %.not4.i38, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i37
  %i.hp = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !77
  %i.hr = load i32, ptr %.sroa.046.0, align 4, !tbaa !77
  %i.hs = icmp eq i32 %i.hq, %i.hr
  %i.ht = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %i.hs)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc42:                                         ; preds = %bb.ba
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 4
  %.not.i39 = icmp eq ptr %i.hp, %1
  br i1 %.not.i39, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37, !llvm.loop !484

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit: ; preds = %.noexc42, %.lr.ph.i37, %.noexc41
  %i.hv = load i64, ptr %i.c, align 8, !tbaa !125 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit
  %i.hw = load ptr, ptr %2, align 8, !tbaa !127
  %i.hx = shl i64 %i.hv, 2
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hx) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit: ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP8value_ndLb0EEEEES7_EvT_S9_T0_SA_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ba, %bb.az, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, %bb.ay, %bb.ax, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEES5_EvT_S6_T0_S7_.exit, %_ZN5boost9container6vectorI8value_ndvvE9push_backEOS2_.exit.9
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am
  %.pn.pn = phi { ptr, i32 } [ %i.dy, %bb.am ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.hy = load i64, ptr %i.c, align 8, !tbaa !125 ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i43, label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit44, label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp
  %i.hz = load ptr, ptr %2, align 8, !tbaa !127
  %i.ia = shl i64 %i.hy, 2
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ia) #25
  br label %_ZN5boost9container6vectorI8value_ndvvED2Ev.exit44

_ZN5boost9container6vectorI8value_ndvvED2Ev.exit44: ; preds = %.loopexit.split-lp, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z17test_iterators_ndI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::container::vec_iterator.56", align 8 ; 3 uses
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 18 uses
  %2 = alloca %"class.boost::container::vector.108", align 8 ; 15 uses
  %3 = alloca %class.counting_value, align 4      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 10 uses
  store i64 0, ptr %i.a, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.d

bb.b:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit
  %i.e = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !534 ; 3 uses
  %.idx = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.g = load ptr, ptr %2, align 8, !tbaa !134, !noalias !535 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !536 ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = icmp eq i64 %i.e, %i.h
  %i.k = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.j)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.b
  %.not5.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc10
  %.sroa.087.0 = phi ptr [ %i.q, %.noexc10 ], [ %i.g, %.noexc ] ; 3 uses
  %.sroa.092.0 = phi ptr [ %i.p, %.noexc10 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.087.0, %i.i
  br i1 %.not4.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load <2 x i32>, ptr %.sroa.092.0, align 4
  %i.m = load <2 x i32>, ptr %.sroa.087.0, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %4 = extractelement <2 x i1> %i.n, i64 0
  %5 = extractelement <2 x i1> %i.n, i64 1
  %6 = select i1 %4, i1 %5, i1 false
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %6)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc10:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.092.0, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.087.0, i64 8
  %.not.i = icmp eq ptr %i.p, %i.f
  br i1 %.not.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, label %.lr.ph.i, !llvm.loop !9

bb.d:                                             ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit
  %i.r = phi i64 [ %.pre, %bb.a ], [ %i.aj, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit ] ; 3 uses
  %.07116 = phi i64 [ 0, %bb.a ], [ %i.ak, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit ] ; 2 uses
  %i.s = trunc nuw nsw i64 %.07116 to i32         ; 3 uses
  %i.t = add i64 %i.r, 1
  store i64 %i.t, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.u = load i64, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %.not.i11 = icmp eq i64 %i.u, 10
  br i1 %.not.i11, label %bb.e, label %bb.f, !prof !42

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u ; 2 uses
  store i32 %i.s, ptr %i.v, align 8, !tbaa !79
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !80
  %i.x = add i64 %i.r, 2
  %i.y = add nuw nsw i64 %i.u, 1
  store i64 %i.y, ptr %i.a, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i32 %i.s, ptr %3, align 4, !tbaa !79
  store i32 0, ptr %i.b, align 4, !tbaa !80
  store i64 %i.x, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.z = load i64, ptr %i.c, align 8, !tbaa !132  ; 4 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !133
  %.not.i13 = icmp eq i64 %i.z, %i.aa
  br i1 %.not.i13, label %bb.h, label %bb.g, !prof !42

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %2, align 8, !tbaa !134, !nonnull !112, !noundef !112
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  store i32 %i.s, ptr %i.ac, align 4, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !80
  %i.ae = add i64 %i.r, 3                         ; 2 uses
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.c, align 8, !tbaa !132
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %i.ag = load ptr, ptr %2, align 8, !tbaa !134
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.z
  invoke void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.ah, i64 noundef 1, ptr nonnull align 4 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %.pre126 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit

_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit: ; preds = %.noexc14, %bb.g
  %i.ai = phi i64 [ %.pre126, %.noexc14 ], [ %i.ae, %bb.g ]
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.aj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ak = add nuw nsw i64 %.07116, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !498

bb.i:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit.split-lp

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit: ; preds = %.noexc10, %.lr.ph.i, %.noexc
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !537 ; 3 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !134, !noalias !538 ; 2 uses
  %i.at = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !538 ; 2 uses
  %i.au = icmp eq i64 %i.ar, %i.at
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_, i1 noundef zeroext %i.au)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc21:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit
  %.not5.i15 = icmp eq i64 %i.ar, 0
  br i1 %.not5.i15, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit, label %.lr.ph.i18.preheader

.lr.ph.i18.preheader:                             ; preds = %.noexc21
  %.idx100 = shl nsw i64 %i.ar, 3
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %.idx100
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  br label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph.i18.preheader, %.noexc22
  %.sroa.076.0 = phi ptr [ %i.az, %.noexc22 ], [ %i.ax, %.lr.ph.i18.preheader ] ; 2 uses
  %.sroa.081.0 = phi ptr [ %i.ay, %.noexc22 ], [ %i.aw, %.lr.ph.i18.preheader ]
  %.not4.i19 = icmp eq ptr %.sroa.076.0, %i.as
  br i1 %.not4.i19, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i18
  %i.ay = getelementptr inbounds i8, ptr %.sroa.081.0, i64 -8 ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.076.0, i64 -8 ; 2 uses
  %i.ba = load <2 x i32>, ptr %i.ay, align 4
  %i.bb = load <2 x i32>, ptr %i.az, align 4
  %i.bc = icmp eq <2 x i32> %i.ba, %i.bb          ; 2 uses
  %7 = extractelement <2 x i1> %i.bc, i64 0
  %8 = extractelement <2 x i1> %i.bc, i64 1
  %9 = select i1 %7, i1 %8, i1 false
  %i.bd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_, i1 noundef zeroext %9)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc22:                                         ; preds = %bb.k
  %.not.i20 = icmp eq ptr %i.ay, %1
  br i1 %.not.i20, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit, label %.lr.ph.i18, !llvm.loop !507

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit: ; preds = %.noexc22, %.lr.ph.i18, %.noexc21
  %i.be = load ptr, ptr %2, align 8, !tbaa !134, !noalias !539 ; 5 uses
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !539 ; 3 uses
  %.idx101 = shl i64 %i.bf, 3                     ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %.idx101 ; 5 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !540
  %.fr = freeze i64 %i.bh                         ; 5 uses
  %.idx.i = shl i64 %.fr, 3                       ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 5 uses
  %i.bj = icmp ne i64 %i.bf, 0
  %i.bk = icmp ne i64 %.fr, 0
  %or.cond11.i = and i1 %i.bj, %i.bk
  br i1 %or.cond11.i, label %.lr.ph.i23.preheader, label %.critedge.i

.lr.ph.i23.preheader:                             ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit
  %i.bl = add i64 %.idx.i, -8
  %i.bm = lshr exact i64 %i.bl, 3
  %i.bn = add i64 %.idx101, -8
  %i.bo = lshr exact i64 %i.bn, 3
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bo) ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.iters.check, label %.lr.ph.i23.preheader156, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i23.preheader
  %n.vec = and i64 %i.bq, 4611686018427387902     ; 4 uses
  %i.br = mul i64 %n.vec, -8
  %i.bs = getelementptr i8, ptr %i.bg, i64 %i.br  ; 2 uses
  %i.bt = shl i64 %n.vec, 3
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = mul i64 %index, -8
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.bv
  %i.bw = shl i64 %index, 3
  %next.gep149 = getelementptr i8, ptr %1, i64 %i.bw
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %wide.vec = load <4 x i32>, ptr %i.bx, align 4, !tbaa !41
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %next.gep149, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.critedge.i, label %.lr.ph.i23.preheader156

.lr.ph.i23.preheader156:                          ; preds = %.lr.ph.i23.preheader, %middle.block
  %.ph = phi ptr [ %i.bg, %.lr.ph.i23.preheader ], [ %i.bs, %middle.block ]
  %.sroa.06.012.i.ph = phi ptr [ %1, %.lr.ph.i23.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader156, %.lr.ph.i23
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i23 ], [ %.ph, %.lr.ph.i23.preheader156 ]
  %.sroa.06.012.i = phi ptr [ %i.cc, %.lr.ph.i23 ], [ %.sroa.06.012.i.ph, %.lr.ph.i23.preheader156 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 4 uses
  %i.cb = load <2 x i32>, ptr %i.ca, align 4, !tbaa !41
  store <2 x i32> %i.cb, ptr %.sroa.06.012.i, align 4, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8 ; 3 uses
  %i.cd = icmp ne ptr %i.ca, %i.be
  %i.ce = icmp ne ptr %i.cc, %i.bi
  %or.cond.i = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond.i, label %.lr.ph.i23, label %.critedge.i, !llvm.loop !515

.critedge.i:                                      ; preds = %.lr.ph.i23, %middle.block, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit
  %.sroa.06.0.lcssa.i = phi ptr [ %1, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit ], [ %i.bu, %middle.block ], [ %i.cc, %.lr.ph.i23 ] ; 2 uses
  %.lcssa10.i = phi ptr [ %i.bg, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES8_EvT_S9_T0_SA_.exit ], [ %i.bs, %middle.block ], [ %i.ca, %.lr.ph.i23 ] ; 4 uses
  %i.cf = icmp eq ptr %.lcssa10.i, %i.be
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.i
  %i.cg = ptrtoint ptr %i.bi to i64
  %i.ch = ptrtoint ptr %.sroa.06.0.lcssa.i to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.bi, %.sroa.06.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ck = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, %i.cj
  store i64 %i.ck, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.l
  %i.cl = sub i64 %.fr, %i.cj
  br label %bb.o

bb.m:                                             ; preds = %.critedge.i
  %i.cm = ptrtoint ptr %.lcssa10.i to i64
  %i.cn = ptrtoint ptr %i.be to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 7 uses
  %i.cq = sub i64 10, %.fr
  %.not.i.i.i = icmp ugt i64 %i.cp, %i.cq
  br i1 %.not.i.i.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !541
  %xtraiter = and i64 %i.cp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader
  %i.cr = phi ptr [ %i.cs, %.prol.preheader ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.cv, %.prol.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.cu, %.prol.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ct = load <2 x i32>, ptr %i.cs, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.ct, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !541
  %i.cu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.cv = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !522

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.unr = phi ptr [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cs, %.prol.preheader ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cv, %.prol.preheader ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cu, %.prol.preheader ]
  %i.cw = icmp ult i64 %i.cp, 8
  br i1 %i.cw, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS_7movelib16reverse_iteratorINS0_12vec_iteratorIPS2_Lb0EEEEEEESC_NSA_ISB_Lb1EEET_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENS3_17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSG_5bool_ILb0EEESN_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.new
  %i.cx = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.unr, %.prol.loopexit ] ; 8 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 10 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.cz = load <2 x i32>, ptr %i.cy, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.cz, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !541
  %i.da = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -16
  %i.dc = load <2 x i32>, ptr %i.db, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.dc, ptr %i.da, align 4, !tbaa !41, !noalias !541
  %i.dd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.de = getelementptr inbounds i8, ptr %i.cx, i64 -24
  %i.df = load <2 x i32>, ptr %i.de, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.df, ptr %i.dd, align 4, !tbaa !41, !noalias !541
  %i.dg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.dh = getelementptr inbounds i8, ptr %i.cx, i64 -32
  %i.di = load <2 x i32>, ptr %i.dh, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.di, ptr %i.dg, align 4, !tbaa !41, !noalias !541
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.dk = getelementptr inbounds i8, ptr %i.cx, i64 -40
  %i.dl = load <2 x i32>, ptr %i.dk, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !41, !noalias !541
  %i.dm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.dn = getelementptr inbounds i8, ptr %i.cx, i64 -48
  %i.do = load <2 x i32>, ptr %i.dn, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.do, ptr %i.dm, align 4, !tbaa !41, !noalias !541
  %i.dp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.dq = getelementptr inbounds i8, ptr %i.cx, i64 -56
  %i.dr = load <2 x i32>, ptr %i.dq, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.dr, ptr %i.dp, align 4, !tbaa !41, !noalias !541
  %i.ds = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.dt = getelementptr inbounds i8, ptr %i.cx, i64 -64 ; 2 uses
  %i.du = load <2 x i32>, ptr %i.dt, align 4, !tbaa !41, !noalias !541
  store <2 x i32> %i.du, ptr %i.ds, align 4, !tbaa !41, !noalias !541
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.dw = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS_7movelib16reverse_iteratorINS0_12vec_iteratorIPS2_Lb0EEEEEEESC_NSA_ISB_Lb1EEET_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENS3_17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSG_5bool_ILb0EEESN_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !523

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.n
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS_7movelib16reverse_iteratorINS0_12vec_iteratorIPS2_Lb0EEEEEEESC_NSA_ISB_Lb1EEET_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENS3_17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSG_5bool_ILb0EEESN_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.dx = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.cp
  store i64 %i.dx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !541
  %i.dy = add i64 %i.cp, %.fr
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS_7movelib16reverse_iteratorINS0_12vec_iteratorIPS2_Lb0EEEEEEESC_NSA_ISB_Lb1EEET_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENS3_17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSG_5bool_ILb0EEESN_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.dy, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS_7movelib16reverse_iteratorINS0_12vec_iteratorIPS2_Lb0EEEEEEESC_NSA_ISB_Lb1EEET_SF_PNS_11move_detail13disable_if_orIvNSG_14is_convertibleISF_mEENS3_17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENSG_5bool_ILb0EEESN_E4typeE.exit.i ], [ %i.cl, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ] ; 4 uses
  store i64 %storemerge.i, ptr %i.a, align 8, !tbaa !128
  %.idx103 = shl nsw i64 %storemerge.i, 3
  %i.dz = getelementptr inbounds i8, ptr %1, i64 %.idx103
  %i.ea = icmp eq i64 %storemerge.i, %i.bf
  %i.eb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_, i1 noundef zeroext %i.ea)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc32:                                         ; preds = %bb.o
  %.not5.i25 = icmp eq i64 %storemerge.i, 0
  br i1 %.not5.i25, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.noexc32, %.noexc33
  %.sroa.067.0 = phi ptr [ %i.eh, %.noexc33 ], [ %1, %.noexc32 ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.ec, %.noexc33 ], [ %i.bg, %.noexc32 ] ; 2 uses
  %.not4.i29 = icmp eq ptr %.sroa.062.0, %i.be
  br i1 %.not4.i29, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i28
  %i.ec = getelementptr inbounds i8, ptr %.sroa.062.0, i64 -8 ; 2 uses
  %i.ed = load <2 x i32>, ptr %.sroa.067.0, align 4
  %i.ee = load <2 x i32>, ptr %i.ec, align 4
  %i.ef = icmp eq <2 x i32> %i.ed, %i.ee          ; 2 uses
  %10 = extractelement <2 x i1> %i.ef, i64 0
  %11 = extractelement <2 x i1> %i.ef, i64 1
  %12 = select i1 %10, i1 %11, i1 false
  %i.eg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_, i1 noundef zeroext %12)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.067.0, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %i.eh, %i.dz
  br i1 %.not.i30, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, label %.lr.ph.i28, !llvm.loop !524

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit: ; preds = %.noexc33, %.lr.ph.i28, %.noexc32
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !542 ; 3 uses
  %i.ej = load ptr, ptr %2, align 8, !tbaa !134, !noalias !543 ; 2 uses
  %i.ek = load i64, ptr %i.c, align 8, !tbaa !132, !noalias !544 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = icmp eq i64 %i.ei, %i.ek
  %i.en = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %i.em)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc41:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit
  %.not5.i34 = icmp eq i64 %i.ei, 0
  br i1 %.not5.i34, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %.noexc41
  %.idx106 = shl nsw i64 %i.ei, 3
  %i.eo = getelementptr inbounds i8, ptr %1, i64 %.idx106
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %.lr.ph.i37.preheader, %.noexc42
  %.sroa.056.0 = phi ptr [ %i.ep, %.noexc42 ], [ %i.eo, %.lr.ph.i37.preheader ]
  %.sroa.051.0 = phi ptr [ %i.eu, %.noexc42 ], [ %i.ej, %.lr.ph.i37.preheader ] ; 3 uses
  %.not4.i38 = icmp eq ptr %.sroa.051.0, %i.el
  br i1 %.not4.i38, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i37
  %i.ep = getelementptr inbounds i8, ptr %.sroa.056.0, i64 -8 ; 3 uses
  %i.eq = load <2 x i32>, ptr %i.ep, align 4
  %i.er = load <2 x i32>, ptr %.sroa.051.0, align 4
  %i.es = icmp eq <2 x i32> %i.eq, %i.er          ; 2 uses
  %13 = extractelement <2 x i1> %i.es, i64 0
  %14 = extractelement <2 x i1> %i.es, i64 1
  %15 = select i1 %13, i1 %14, i1 false
  %i.et = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_, i1 noundef zeroext %15)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc42:                                         ; preds = %bb.q
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 8
  %.not.i39 = icmp eq ptr %i.ep, %1
  br i1 %.not.i39, label %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit, label %.lr.ph.i37, !llvm.loop !533

_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit: ; preds = %.noexc42, %.lr.ph.i37, %.noexc41
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !132 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ew = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.ev
  store i64 %i.ew, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i, %_Z19test_compare_rangesIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIP14counting_valueLb0EEEEES7_EvT_S9_T0_SA_.exit
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !133 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ey = load ptr, ptr %2, align 8, !tbaa !136
  %i.ez = shl i64 %i.ex, 3
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.ez) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.fa = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i43 = icmp eq i64 %i.fa, 0
  br i1 %.not3.i.i43, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.preheader.i.i44

.lr.ph.preheader.i.i44:                           ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i45 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.fb = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i45, %i.fa
  store i64 %i.fb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, %.lr.ph.preheader.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.q, %bb.p, %bb.c, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS0_7movelib16reverse_iteratorIS5_EEEvT_S9_T0_SA_.exit, %bb.o, %bb.n, %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit, %bb.b
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.i, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.fc = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i46 = icmp eq i64 %i.fc, 0
  br i1 %.not3.i.i46, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit49, label %.lr.ph.preheader.i.i47

.lr.ph.preheader.i.i47:                           ; preds = %.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i48 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.fd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i48, %i.fc
  store i64 %i.fd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
  %i.d = load i64, ptr %i.a, align 8, !tbaa !141, !noalias !602 ; 3 uses
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.f = load ptr, ptr %2, align 8, !tbaa !147, !noalias !603 ; 2 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !145, !noalias !604 ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.g
  %i.j = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_, i1 noundef zeroext %i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

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
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc10:                                         ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.099.0, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 4
  %.not.i = icmp eq ptr %i.o, %i.e
  br i1 %.not.i, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIPNS1_4test24movable_and_copyable_intELb0EEES6_EvT_S7_T0_S8_.exit, label %.lr.ph.i, !llvm.loop !11

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
  %i.w = add nuw nsw i64 %i.t, 1
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
  %.pre136 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ag = add i32 %.pre136, -1
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE9push_backEOS3_.exit: ; preds = %.noexc14, %bb.g
  %i.ah = phi i32 [ %i.ag, %.noexc14 ], [ %i.ab, %bb.g ] ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ai = add nuw nsw i64 %.07123, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, 10
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !551

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
end_hunk_1
begin_hunk_2_@_Z14test_insert_ndI14counting_valueLm10EEvRKT_:bb.a
  store i32 0, ptr %i.du, align 4, !tbaa !80
  %i.dv = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dw = load ptr, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !106
  store ptr %i.c, ptr %i.ds, align 8, !tbaa !105
  store ptr %i.ds, ptr %i.d, align 8, !tbaa !106
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !105
  %i.dy = load i64, ptr %5, align 8, !tbaa !114
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %5, align 8, !tbaa !114
  store i64 %i.dv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %.lr.ph.i.i.i

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ep = add i64 %i.eo, -1
  store i64 %i.ep, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ap

bb.q:                                             ; preds = %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.4, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.3, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.2, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit.1, %_ZN5boost9container6vectorI14counting_valuevvE9push_backEOS2_.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.ap

.preheader169:                                    ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %.lr.ph.i.i.i99

.lr.ph.i.i.i:                                     ; preds = %.preheader175, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %.preheader175 ], [ %indvars.iv.next, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.065194 = phi i64 [ 0, %.preheader175 ], [ %i.hx, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 8 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fi = load <2 x i32>, ptr %2, align 8, !tbaa !41
  store <2 x i32> %i.fi, ptr %7, align 8, !tbaa !41
  %i.fj = load <2 x i32>, ptr %i.ef, align 8, !tbaa !41
  store <2 x i32> %i.fj, ptr %i.eg, align 8, !tbaa !41
  %i.fk = load <2 x i32>, ptr %i.eh, align 8, !tbaa !41
  store <2 x i32> %i.fk, ptr %i.ei, align 8, !tbaa !41
  %i.fl = load <2 x i32>, ptr %i.ej, align 8, !tbaa !41
  store <2 x i32> %i.fl, ptr %i.ek, align 8, !tbaa !41
  %i.fm = load <2 x i32>, ptr %i.el, align 8, !tbaa !41
  store <2 x i32> %i.fm, ptr %i.em, align 8, !tbaa !41
  %i.fn = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.fn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.idx166 = shl nuw nsw i64 %.065194, 3          ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 %.idx166 ; 2 uses
  %.not.i.i.i91 = icmp samesign eq i64 %.065194, 5
  br i1 %.not.i.i.i91, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.fp = load <2 x i32>, ptr %0, align 4, !tbaa !41, !noalias !754
  store <2 x i32> %i.fp, ptr %i.ec, align 8, !tbaa !41, !noalias !754
  %i.fq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !754
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !754
  store i64 6, ptr %i.ea, align 8, !tbaa !102, !noalias !754
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %gepdiff = sub nsw i64 40, %.idx166
  %i.fs = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.ft = load <2 x i32>, ptr %i.ed, align 8, !tbaa !41, !noalias !754
  store <2 x i32> %i.ft, ptr %i.ec, align 8, !tbaa !41, !noalias !754
  store i32 0, ptr %i.ed, align 8, !tbaa !79, !noalias !754
  store i32 0, ptr %i.ee, align 4, !tbaa !80, !noalias !754
  %i.fu = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !754
  %i.fv = add i64 %i.fu, 1
  store i64 %i.fv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !754
  store i64 6, ptr %i.ea, align 8, !tbaa !102, !noalias !754
  %i.fw = add nsw i64 %i.fs, -1                   ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.s
  %i.fx = add nsw i64 %i.fs, -2
  %xtraiter = and i64 %i.fw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.prol ], [ %i.ec, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.prol ], [ %i.fw, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.prol ], [ %i.ed, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.fy = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -8 ; 4 uses
  %i.ga = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4
  %i.gc = load <2 x i32>, ptr %i.fz, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.fz, align 4, !tbaa !79, !noalias !754
  store <2 x i32> %i.gc, ptr %i.ga, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gb, align 4, !tbaa !80, !noalias !754
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !741

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.preheader ], [ %i.ga, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.preheader ], [ %i.fz, %.lr.ph.i.i.i.i.prol ]
  %i.gd = icmp ult i64 %i.fx, 3
  br i1 %i.gd, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ge = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.gg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4
  %i.gh = load <2 x i32>, ptr %i.ge, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.ge, align 4, !tbaa !79, !noalias !754
  store <2 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gg, align 4, !tbaa !80, !noalias !754
  %i.gi = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12
  %i.gl = load <2 x i32>, ptr %i.gi, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gi, align 4, !tbaa !79, !noalias !754
  store <2 x i32> %i.gl, ptr %i.gj, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gk, align 4, !tbaa !80, !noalias !754
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -24 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -24
  %i.go = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -20
  %i.gp = load <2 x i32>, ptr %i.gm, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gm, align 4, !tbaa !79, !noalias !754
  store <2 x i32> %i.gp, ptr %i.gn, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.go, align 4, !tbaa !80, !noalias !754
  %i.gq = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -32 ; 3 uses
  %i.gs = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -32 ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -28
  %i.gu = load <2 x i32>, ptr %i.gr, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gr, align 4, !tbaa !79, !noalias !754
  store <2 x i32> %i.gu, ptr %i.gs, align 4, !tbaa !41, !noalias !754
  store i32 0, ptr %i.gt, align 4, !tbaa !80, !noalias !754
  %.not.i.i.i.i.3 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.s
  %i.gv = load <2 x i32>, ptr %0, align 4, !tbaa !41, !noalias !754
  store <2 x i32> %i.gv, ptr %i.fo, align 8, !tbaa !41, !noalias !754
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit: ; preds = %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.r
  %i.gw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 384, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.t unwind label %.loopexit176 ; 0 uses

bb.t:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %i.gx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.1, i32 noundef 385, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %.preheader174 unwind label %.loopexit176 ; 0 uses

.preheader174:                                    ; preds = %bb.t
  %.not = icmp eq i64 %.065194, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader174
  %.pre220 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.gy = add i64 %.pre220, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %.preheader174
  %i.gz = load <2 x i32>, ptr %i.fo, align 8
  %i.ha = load <2 x i32>, ptr %0, align 4
  %i.hb = icmp eq <2 x i32> %i.gz, %i.ha          ; 2 uses
  %9 = extractelement <2 x i1> %i.hb, i64 0
  %10 = extractelement <2 x i1> %i.hb, i64 1
  %11 = select i1 %9, i1 %10, i1 false
  %i.hc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %11)
          to label %.preheader173 unwind label %.loopexit176 ; 0 uses

.preheader173:                                    ; preds = %._crit_edge
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.065194
  %.not206 = icmp eq i64 %.065194, 5
  br i1 %.not206, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread, label %.lr.ph192

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit.thread: ; preds = %.preheader173
  %_ZZN14counting_value1cEvE2co.promoted.i.i245 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hd = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i245, -6
  store i64 %i.hd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.preheader169

.lr.ph192:                                        ; preds = %.preheader173
  %i.he = trunc nuw nsw i64 %.065194 to i32
  %.pre221 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hf = add i64 %.pre221, 1
  br label %bb.w

.loopexit176:                                     ; preds = %bb.t, %._crit_edge, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertENS0_12vec_iteratorIPS2_Lb1EEERKS2_.exit
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.preheader.i.i94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %i.hg = phi i64 [ %i.hq, %bb.u ], [ %i.gy, %.lr.ph.preheader ]
  %.064190 = phi i64 [ %i.hs, %bb.u ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.064190 ; 2 uses
  %i.hi = trunc nuw nsw i64 %.064190 to i32
  store i64 %i.hg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hj = load i32, ptr %i.hh, align 8, !tbaa !79
  %i.hk = icmp eq i32 %i.hj, %i.hi
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = select i1 %i.hk, i1 %i.hn, i1 false
  %i.hp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.ho)
          to label %bb.u unwind label %bb.v       ; 0 uses

bb.u:                                             ; preds = %.lr.ph
  %i.hq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.hr = add i64 %i.hq, -1
  store i64 %i.hr, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hs = add nuw nsw i64 %.064190, 1             ; 2 uses
  %exitcond209.not = icmp eq i64 %i.hs, %.065194
  br i1 %exitcond209.not, label %._crit_edge, label %.lr.ph, !llvm.loop !742

bb.v:                                             ; preds = %.lr.ph
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.hv = add i64 %i.hu, -1
  store i64 %i.hv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i94

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.x
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.hw = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, -6
  store i64 %i.hw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.hx = add nuw nsw i64 %.065194, 1             ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond211.not = icmp eq i64 %i.hx, 6
  br i1 %exitcond211.not, label %.preheader169, label %.lr.ph.i.i.i, !llvm.loop !743

bb.w:                                             ; preds = %.lr.ph192, %bb.x
  %i.hy = phi i64 [ %i.hf, %.lr.ph192 ], [ %i.ij, %bb.x ]
  %.063191 = phi i64 [ 0, %.lr.ph192 ], [ %i.il, %bb.x ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %.063191 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ia = trunc nuw nsw i64 %.063191 to i32
  %i.ib = add nuw nsw i32 %i.ia, %i.he
  store i64 %i.hy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !79
  %i.id = icmp eq i32 %i.ic, %i.ib
  %i.ie = getelementptr inbounds nuw i8, ptr %gep, i64 12
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = select i1 %i.id, i1 %i.ig, i1 false
  %i.ii = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, i32 noundef 390, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.ih)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ij = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.ik = add i64 %i.ij, -1
  store i64 %i.ik, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.il = add nuw nsw i64 %.063191, 1             ; 2 uses
  %exitcond210.not = icmp eq i64 %i.il, %umax
  br i1 %exitcond210.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %bb.w, !llvm.loop !744

bb.y:                                             ; preds = %bb.w
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.io = add i64 %i.in, -1
  store i64 %i.io, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.lr.ph.preheader.i.i94

.lr.ph.preheader.i.i94:                           ; preds = %bb.v, %bb.y, %.loopexit176
  %.pn76 = phi { ptr, i32 } [ %i.ht, %bb.v ], [ %i.im, %bb.y ], [ %lpad.loopexit178, %.loopexit176 ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i95 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ip = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i95, -6
  store i64 %i.ip, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ap

bb.z:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEES4_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.ak unwind label %bb.ao

.lr.ph.i.i.i99:                                   ; preds = %.preheader169, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114
  %indvars.iv214 = phi i64 [ 5, %.preheader169 ], [ %indvars.iv.next215, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114 ] ; 2 uses
  %.062205 = phi i64 [ 0, %.preheader169 ], [ %i.km, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114 ] ; 7 uses
  %umax216 = call i64 @llvm.umax.i64(i64 %indvars.iv214, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i64 5, ptr %i.et, align 8, !tbaa !128
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.iq = load <2 x i32>, ptr %2, align 8, !tbaa !41
  store <2 x i32> %i.iq, ptr %8, align 8, !tbaa !41
  %i.ir = load <2 x i32>, ptr %i.fa, align 8, !tbaa !41
  store <2 x i32> %i.ir, ptr %i.fb, align 8, !tbaa !41
  %i.is = load <2 x i32>, ptr %i.fc, align 8, !tbaa !41
  store <2 x i32> %i.is, ptr %i.fd, align 8, !tbaa !41
  %i.it = load <2 x i32>, ptr %i.fe, align 8, !tbaa !41
  store <2 x i32> %i.it, ptr %i.ff, align 8, !tbaa !41
  %i.iu = load <2 x i32>, ptr %i.fg, align 8, !tbaa !41
  store <2 x i32> %i.iu, ptr %i.fh, align 8, !tbaa !41
  %i.iv = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i100, 5
  store i64 %i.iv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.062205 ; 5 uses
  %i.ix = icmp samesign eq i64 %.062205, 5
  br i1 %i.ix, label %._crit_edge.i.i.i.i.i.i, label %bb.aa

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i99
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !755
  %.pre.i.i.i.i.i.i = load i32, ptr %0, align 4, !tbaa !79, !noalias !755 ; 3 uses
  %.pre19.i.i.i.i.i.i = load i32, ptr %i.eb, align 4, !tbaa !80, !noalias !755 ; 3 uses
  store i32 %.pre.i.i.i.i.i.i, ptr %i.eu, align 8, !tbaa !79, !noalias !755
  store i32 %.pre19.i.i.i.i.i.i, ptr %i.ev, align 4, !tbaa !80, !noalias !755
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ew, align 8, !tbaa !79, !noalias !755
  store i32 %.pre19.i.i.i.i.i.i, ptr %i.ex, align 4, !tbaa !80, !noalias !755
  store i32 %.pre.i.i.i.i.i.i, ptr %i.ey, align 8, !tbaa !79, !noalias !755
  store i32 %.pre19.i.i.i.i.i.i, ptr %i.ez, align 4, !tbaa !80, !noalias !755
  %i.iy = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, 3
  store i64 %i.iy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !755
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i.i.i99
  invoke void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull %i.iw, ptr noundef nonnull %i.eu, i64 noundef 3, ptr nonnull align 4 dereferenceable(8) %0)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc109:                                        ; preds = %bb.aa
  %.pre.i.i.i = load i64, ptr %i.et, align 8, !tbaa !128, !noalias !755
  %i.iz = add i64 %.pre.i.i.i, 3
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc109, %._crit_edge.i.i.i.i.i.i
  %i.ja = phi i64 [ %i.iz, %.noexc109 ], [ 8, %._crit_edge.i.i.i.i.i.i ]
  store i64 %i.ja, ptr %i.et, align 8, !tbaa !128, !noalias !755
  %i.jb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 400, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext true)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.jc = load i64, ptr %i.et, align 8, !tbaa !102
  %i.jd = icmp eq i64 %i.jc, 8
  %i.je = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 401, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.jd)
          to label %.preheader168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.preheader168:                                    ; preds = %bb.ac
  %.not207 = icmp eq i64 %.062205, 0
  br i1 %.not207, label %.preheader167, label %.lr.ph196.preheader

.lr.ph196.preheader:                              ; preds = %.preheader168
  %.pre222 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jf = add i64 %.pre222, 1
  br label %.lr.ph196

.preheader167:                                    ; preds = %bb.ad, %.preheader168
  %i.jg = load <2 x i32>, ptr %i.iw, align 8
  %i.jh = load <2 x i32>, ptr %0, align 4
  %i.ji = icmp eq <2 x i32> %i.jg, %i.jh          ; 2 uses
  %12 = extractelement <2 x i1> %i.ji, i64 0
  %13 = extractelement <2 x i1> %i.ji, i64 1
  %14 = select i1 %12, i1 %13, i1 false
  %i.jj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %14)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %bb.ad
  %i.jk = phi i64 [ %i.ju, %bb.ad ], [ %i.jf, %.lr.ph196.preheader ]
  %.061195 = phi i64 [ %i.jw, %bb.ad ], [ 0, %.lr.ph196.preheader ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.061195 ; 2 uses
  %i.jm = trunc nuw nsw i64 %.061195 to i32
  store i64 %i.jk, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jn = load i32, ptr %i.jl, align 8, !tbaa !79
  %i.jo = icmp eq i32 %i.jn, %i.jm
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = icmp eq i32 %i.jq, 0
  %i.js = select i1 %i.jo, i1 %i.jr, i1 false
  %i.jt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 403, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.js)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %.lr.ph196
  %i.ju = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.jv = add i64 %i.ju, -1
  store i64 %i.jv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jw = add nuw nsw i64 %.061195, 1             ; 2 uses
  %exitcond212.not = icmp eq i64 %i.jw, %.062205
  br i1 %exitcond212.not, label %.preheader167, label %.lr.ph196, !llvm.loop !749

bb.ae:                                            ; preds = %.lr.ph196
  %i.jx = landingpad { ptr, i32 }
          cleanup
  %i.jy = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.jz = add i64 %i.jy, -1
  store i64 %i.jz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.loopexit.split-lp

.lr.ph203:                                        ; preds = %.preheader
  %i.ka = trunc nuw nsw i64 %.062205 to i32
  %.pre223 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.kb = add i64 %.pre223, 1
  br label %bb.ah

bb.af:                                            ; preds = %.preheader167
  %gep198.1 = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.kc = load <2 x i32>, ptr %gep198.1, align 8
  %i.kd = load <2 x i32>, ptr %0, align 4
  %i.ke = icmp eq <2 x i32> %i.kc, %i.kd          ; 2 uses
  %15 = extractelement <2 x i1> %i.ke, i64 0
  %16 = extractelement <2 x i1> %i.ke, i64 1
  %17 = select i1 %15, i1 %16, i1 false
  %i.kf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %17)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %gep198.2 = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.kg = load <2 x i32>, ptr %gep198.2, align 8
  %i.kh = load <2 x i32>, ptr %0, align 4
  %i.ki = icmp eq <2 x i32> %i.kg, %i.kh          ; 2 uses
  %18 = extractelement <2 x i1> %i.ki, i64 0
  %19 = extractelement <2 x i1> %i.ki, i64 1
  %20 = select i1 %18, i1 %19, i1 false
  %i.kj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, i32 noundef 405, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %20)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.preheader:                                       ; preds = %bb.ag
  %.not208 = icmp eq i64 %.062205, 5
  br i1 %.not208, label %._crit_edge204, label %.lr.ph203

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ag, %bb.af, %.preheader167, %bb.ab, %bb.aa, %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge204:                                   ; preds = %bb.ai, %.preheader
  %i.kk = load i64, ptr %i.et, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i111 = icmp eq i64 %i.kk, 0
  br i1 %.not3.i.i111, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114, label %.lr.ph.preheader.i.i112

.lr.ph.preheader.i.i112:                          ; preds = %._crit_edge204
  %_ZZN14counting_value1cEvE2co.promoted.i.i113 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.kl = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i113, %i.kk
  store i64 %i.kl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit114: ; preds = %._crit_edge204, %.lr.ph.preheader.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.km = add nuw nsw i64 %.062205, 1             ; 2 uses
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, -1
  %exitcond218.not = icmp eq i64 %i.km, 6
  br i1 %exitcond218.not, label %bb.z, label %.lr.ph.i.i.i99, !llvm.loop !750

bb.ah:                                            ; preds = %.lr.ph203, %bb.ai
  %i.kn = phi i64 [ %i.kb, %.lr.ph203 ], [ %i.ky, %bb.ai ]
  %.0202 = phi i64 [ 0, %.lr.ph203 ], [ %i.la, %bb.ai ] ; 3 uses
  %gep201 = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.0202 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %gep201, i64 24
  %i.kp = trunc nuw nsw i64 %.0202 to i32
  %i.kq = add nuw nsw i32 %i.kp, %i.ka
  store i64 %i.kn, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.kr = load i32, ptr %i.ko, align 8, !tbaa !79
  %i.ks = icmp eq i32 %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %gep201, i64 28
  %i.ku = load i32, ptr %i.kt, align 4
  %i.kv = icmp eq i32 %i.ku, 0
  %i.kw = select i1 %i.ks, i1 %i.kv, i1 false
  %i.kx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 407, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_insert_ndI14counting_valueLm10EEvRKT_, i1 noundef zeroext %i.kw)
          to label %bb.ai unwind label %bb.aj     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ky = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.kz = add i64 %i.ky, -1
  store i64 %i.kz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.la = add nuw nsw i64 %.0202, 1               ; 2 uses
  %exitcond217.not = icmp eq i64 %i.la, %umax216
  br i1 %exitcond217.not, label %._crit_edge204, label %bb.ah, !llvm.loop !751

bb.aj:                                            ; preds = %bb.ah
  %i.lb = landingpad { ptr, i32 }
          cleanup
  %i.lc = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ld = add i64 %i.lc, -1
  store i64 %i.ld, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %bb.aj, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.jx, %bb.ae ], [ %i.lb, %bb.aj ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ]
  %i.le = load i64, ptr %i.et, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i115 = icmp eq i64 %i.le, 0
  br i1 %.not3.i.i115, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118, label %.lr.ph.preheader.i.i116

.lr.ph.preheader.i.i116:                          ; preds = %.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i117 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lf = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i117, %i.le
  store i64 %i.lf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118: ; preds = %.lr.ph.preheader.i.i116, %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ap

bb.ak:                                            ; preds = %bb.z
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_6vectorIS0_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  invoke void @_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.lg = load ptr, ptr %i.c, align 8, !tbaa !105, !noalias !756 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.lg, %i.c
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i119

.lr.ph.i.i.i119:                                  ; preds = %bb.am, %.lr.ph.i.i.i119
  %.sroa.04.09.i.i.i = phi ptr [ %i.lh, %.lr.ph.i.i.i119 ], [ %i.lg, %bb.am ] ; 2 uses
  %i.lh = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !105 ; 2 uses
  %i.li = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.lj = add i64 %i.li, -1
  store i64 %i.lj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #25
  %.not.i.i.i120 = icmp eq ptr %i.lh, %i.c
  br i1 %.not.i.i.i120, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i119, !llvm.loop !10

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i119, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.lk = load i64, ptr %i.f, align 8, !tbaa !132 ; 2 uses
  %.not3.i.i121 = icmp eq i64 %i.lk, 0
  br i1 %.not3.i.i121, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i122

.lr.ph.preheader.i.i122:                          ; preds = %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i123 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ll = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i123, %i.lk
  store i64 %i.ll, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i122, %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev.exit
  %i.lm = load i64, ptr %i.g, align 8, !tbaa !133 ; 2 uses
  %.not.i.i124 = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i124, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i
  %i.ln = load ptr, ptr %4, align 8, !tbaa !136
  %i.lo = shl i64 %i.lm, 3
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lo) #25
  br label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit

_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.lp = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i125 = icmp eq i64 %i.lp, 0
  br i1 %.not3.i.i125, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128, label %.lr.ph.preheader.i.i126

.lr.ph.preheader.i.i126:                          ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit
  %_ZZN14counting_value1cEvE2co.promoted.i.i127 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lq = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i127, %i.lp
  store i64 %i.lq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128: ; preds = %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, %.lr.ph.preheader.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.lr = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i129 = icmp eq i64 %i.lr, 0
  br i1 %.not3.i.i129, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132, label %.lr.ph.preheader.i.i130

.lr.ph.preheader.i.i130:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128
  %_ZZN14counting_value1cEvE2co.promoted.i.i131 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ls = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i131, %i.lr
  store i64 %i.ls, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit132: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit128, %.lr.ph.preheader.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.ao:                                            ; preds = %bb.al, %bb.ak, %bb.z
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %bb.p, %bb.q, %bb.ao, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118, %.lr.ph.preheader.i.i94
  %.pn79.pn = phi { ptr, i32 } [ %i.lt, %bb.ao ], [ %.pn76, %.lr.ph.preheader.i.i94 ], [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit118 ], [ %i.eq, %bb.q ], [ %i.en, %bb.p ]
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.lu = load i64, ptr %i.b, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i133 = icmp eq i64 %i.lu, 0
  br i1 %.not3.i.i133, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136, label %.lr.ph.preheader.i.i134

.lr.ph.preheader.i.i134:                          ; preds = %bb.ap
  %_ZZN14counting_value1cEvE2co.promoted.i.i135 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lv = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i135, %i.lu
  store i64 %i.lv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136: ; preds = %bb.ap, %.lr.ph.preheader.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.lw = load i64, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i137 = icmp eq i64 %i.lw, 0
  br i1 %.not3.i.i137, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit140, label %.lr.ph.preheader.i.i138

.lr.ph.preheader.i.i138:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit136
  %_ZZN14counting_value1cEvE2co.promoted.i.i139 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.lx = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i139, %i.lw
  store i64 %i.lx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
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
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.ao = add i64 %i.an, %i.u
  %i.ap = add i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.a                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check20 = icmp ult i64 %i.aq, 76
  br i1 %min.iters.check20, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i20.preheader.i.i
  %i.at = shl i64 %3, 2
  %i.au = add i64 %i.at, %.015.lcssa.i.i.i18
  %i.av = sub i64 %i.a, %i.au
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.i20.i.i.preheader, label %vector.ph21

vector.ph21:                                      ; preds = %vector.memcheck
  %n.vec22 = and i64 %i.as, 9223372036854775800   ; 3 uses
  %i.aw = shl i64 %n.vec22, 2                     ; 2 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.am, i64 %i.aw
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph21
  %index24 = phi i64 [ 0, %vector.ph21 ], [ %index.next29, %vector.body23 ] ; 2 uses
  %i.az = shl i64 %index24, 2                     ; 2 uses
  %next.gep25 = getelementptr i8, ptr %2, i64 %i.az ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.am, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load27 = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !41
  %wide.load28 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !41
  %i.bb = getelementptr i8, ptr %next.gep26, i64 16
  store <4 x i32> %wide.load27, ptr %next.gep26, align 4, !tbaa !41
  store <4 x i32> %wide.load28, ptr %i.bb, align 4, !tbaa !41
  %index.next29 = add nuw i64 %index24, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next29, %n.vec22
  br i1 %i.bc, label %middle.block30, label %vector.body23, !llvm.loop !1667

middle.block30:                                   ; preds = %vector.body23
  %cmp.n31 = icmp eq i64 %i.as, %n.vec22
  br i1 %cmp.n31, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i20.preheader.i.i, %middle.block30
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.ax, %middle.block30 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i20.preheader.i.i ], [ %i.ay, %middle.block30 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %.018.i21.i.i = phi ptr [ %i.be, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bf, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bd = load i32, ptr %.018.i21.i.i, align 4, !tbaa !41
  store i32 %i.bd, ptr %.01517.i22.i.i, align 4, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.be, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1668

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block30, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !125
  %i.bh = shl i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bh) #25
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !193
  br label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit

_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.g
  %i.bi = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %bb.g ]
  %i.bj = ptrtoint ptr %2 to i64
  %i.bk = ptrtoint ptr %i.t to i64
  %i.bl = sub i64 %i.bj, %i.bk
  store ptr %i.s, ptr %1, align 8, !tbaa !126
  %i.bm = add i64 %i.bi, %3
  store i64 %i.bm, ptr %i.e, align 8, !tbaa !193
  store i64 %i.p, ptr %i.b, align 8, !tbaa !75
  %i.bn = getelementptr inbounds i8, ptr %i.s, i64 %i.bl
  store ptr %i.bn, ptr %0, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1701 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1702
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %i.e = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.i, %.prol.preheader ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.f, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1702
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.i = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1679

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
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.l, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1702
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !41, !noalias !1702
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !41, !noalias !1702
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !41, !noalias !1702
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.x, ptr %i.w, align 4, !tbaa !41, !noalias !1702
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 40
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !41, !noalias !1702
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 48
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !41, !noalias !1702
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 56
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !41, !noalias !1702
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !1702
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 64
  %i.aj = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1703
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.ak = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.b
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1702
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i
  store i64 %i.b, ptr %i.c, align 8, !tbaa !128
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1704 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = icmp eq i64 %i.b, %i.an
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ap)
          to label %.noexc unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.052.0 = phi ptr [ %i.aw, %.noexc13 ], [ %0, %.noexc ] ; 3 uses
  %.sroa.057.0 = phi ptr [ %i.av, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.052.0, %i.ao
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ar = load <2 x i32>, ptr %.sroa.057.0, align 4
  %i.as = load <2 x i32>, ptr %.sroa.052.0, align 4
  %i.at = icmp eq <2 x i32> %i.ar, %i.as          ; 2 uses
  %3 = extractelement <2 x i1> %i.at, i64 0
  %4 = extractelement <2 x i1> %i.at, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  %i.au = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %5)
          to label %.noexc13 unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.057.0, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8
  %.not.i = icmp eq ptr %i.av, %i.am
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ax = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.b
  store i64 %i.ax, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !128
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1705 ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.ba, 10
  br i1 %.not.i.i.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1706
  %xtraiter94 = and i64 %i.ba, 7                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.prol.loopexit93, label %.prol.preheader92

.prol.preheader92:                                ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader92
  %i.bc = phi ptr [ %i.be, %.prol.preheader92 ], [ %0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bg, %.prol.preheader92 ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bf, %.prol.preheader92 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.prol.preheader92 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bd, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1706
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bg = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.prol.loopexit93, label %.prol.preheader92, !llvm.loop !1694

.prol.loopexit93:                                 ; preds = %.prol.preheader92, %.lr.ph.i.i.i.i.i.i.i
  %.unr97 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.be, %.prol.preheader92 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bg, %.prol.preheader92 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bf, %.prol.preheader92 ]
  %i.bh = icmp ult i64 %i.ba, 8
  br i1 %i.bh, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit93, %.lr.ph.i.i.i.i.i.i.i.new
  %i.bi = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.unr97, %.prol.loopexit93 ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit93 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit93 ] ; 9 uses
  %i.bj = load <2 x i32>, ptr %i.bi, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bj, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1706
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bm = load <2 x i32>, ptr %i.bk, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bm, ptr %i.bl, align 4, !tbaa !41, !noalias !1706
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bp, ptr %i.bo, align 4, !tbaa !41, !noalias !1706
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bs, ptr %i.br, align 4, !tbaa !41, !noalias !1706
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.bv = load <2 x i32>, ptr %i.bt, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !41, !noalias !1706
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.by = load <2 x i32>, ptr %i.bw, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.by, ptr %i.bx, align 4, !tbaa !41, !noalias !1706
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !41, !noalias !1706
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !tbaa !41, !noalias !1706
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !41, !noalias !1706
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.ch = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit93
  %i.ci = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.ba
  store i64 %i.ci, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1706
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !128
  %i.cj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.ck = load i64, ptr %i.ay, align 8, !tbaa !102, !noalias !1707 ; 3 uses
  %.idx66 = shl nsw i64 %i.ck, 3
  %i.cl = getelementptr inbounds i8, ptr %2, i64 %.idx66
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1708 ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cm
  %i.co = icmp eq i64 %i.ck, %i.cm
  %i.cp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.co)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.ck, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.044.0 = phi ptr [ %i.cu, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.cv, %.noexc24 ], [ %0, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.039.0, %i.cn
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.cq = load <2 x i32>, ptr %.sroa.044.0, align 4
  %i.cr = load <2 x i32>, ptr %.sroa.039.0, align 4
  %i.cs = icmp eq <2 x i32> %i.cq, %i.cr          ; 2 uses
  %6 = extractelement <2 x i1> %i.cs, i64 0
  %7 = extractelement <2 x i1> %i.cs, i64 1
  %8 = select i1 %6, i1 %7, i1 false
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %8)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  %.not.i21 = icmp eq ptr %i.cu, %i.cl
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !24

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  %i.cw = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i26 = icmp eq i64 %i.cw, 0
  br i1 %.not3.i.i26, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29, label %.lr.ph.preheader.i.i27

.lr.ph.preheader.i.i27:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25
  %_ZZN14counting_value1cEvE2co.promoted.i.i28 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cx = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i28, %i.cw
  store i64 %i.cx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, %.lr.ph.preheader.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  %.not3.i.i30 = icmp eq i64 %i.b, 0
  br i1 %.not3.i.i30, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33, label %.lr.ph.preheader.i.i31

.lr.ph.preheader.i.i31:                           ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i32 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cy = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i32, %i.b
  store i64 %i.cy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33: ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cz = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i34 = icmp eq i64 %i.cz, 0
  br i1 %.not3.i.i34, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, label %.lr.ph.preheader.i.i35

.lr.ph.preheader.i.i35:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i36 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.da = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i36, %i.cz
  store i64 %i.da, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37 ], [ %lpad.loopexit.split-lp90, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1749 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1750 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.c, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1751
  %xtraiter = and i64 %i.c, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %i.f = phi ptr [ %i.h, %.prol.preheader ], [ %i.a, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.j, %.prol.preheader ], [ %i.c, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.i, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.g, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1751
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.j = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1721

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
  %i.m = load <2 x i32>, ptr %i.l, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.m, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1751
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !41, !noalias !1751
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.s = load <2 x i32>, ptr %i.q, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.s, ptr %i.r, align 4, !tbaa !41, !noalias !1751
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.v = load <2 x i32>, ptr %i.t, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.v, ptr %i.u, align 4, !tbaa !41, !noalias !1751
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.y = load <2 x i32>, ptr %i.w, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.y, ptr %i.x, align 4, !tbaa !41, !noalias !1751
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 40
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.ab, ptr %i.aa, align 4, !tbaa !41, !noalias !1751
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 48
  %i.ae = load <2 x i32>, ptr %i.ac, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.ae, ptr %i.ad, align 4, !tbaa !41, !noalias !1751
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 56
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !tbaa !41, !noalias !1751
  store <2 x i32> %i.ah, ptr %i.ag, align 4, !tbaa !41, !noalias !1751
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 64
  %i.ak = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1752
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.al = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.c
  store i64 %i.al, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1751
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !128
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ao = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1753 ; 2 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1754 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = icmp eq i64 %i.c, %i.ap
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ar)
          to label %.noexc unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.c, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.052.0 = phi ptr [ %i.ay, %.noexc13 ], [ %i.ao, %.noexc ] ; 3 uses
  %.sroa.057.0 = phi ptr [ %i.ax, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.052.0, %i.aq
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = load <2 x i32>, ptr %.sroa.057.0, align 4
  %i.au = load <2 x i32>, ptr %.sroa.052.0, align 4
  %i.av = icmp eq <2 x i32> %i.at, %i.au          ; 2 uses
  %3 = extractelement <2 x i1> %i.av, i64 0
  %4 = extractelement <2 x i1> %i.av, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %5)
          to label %.noexc13 unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.057.0, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8
  %.not.i = icmp eq ptr %i.ax, %i.an
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !24

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.az = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.c
  store i64 %i.az, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  store i64 0, ptr %i.ba, align 8, !tbaa !128
  %i.bb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1755 ; 2 uses
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1756 ; 8 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %.not.i.i.i = icmp ugt i64 %i.bd, 10
  br i1 %.not.i.i.i, label %bb.g, label %.lr.ph.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1757
  %xtraiter94 = and i64 %i.bd, 7                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.prol.loopexit93, label %.prol.preheader92

.prol.preheader92:                                ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader92
  %i.bf = phi ptr [ %i.bh, %.prol.preheader92 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bj, %.prol.preheader92 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bi, %.prol.preheader92 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.prol.preheader92 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.bg, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1757
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bj = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.prol.loopexit93, label %.prol.preheader92, !llvm.loop !1740

.prol.loopexit93:                                 ; preds = %.prol.preheader92, %.lr.ph.i.i.i.i.i.i.i
  %.unr97 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bh, %.prol.preheader92 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bj, %.prol.preheader92 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bi, %.prol.preheader92 ]
  %i.bk = icmp ult i64 %i.bd, 8
  br i1 %i.bk, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit93, %.lr.ph.i.i.i.i.i.i.i.new
  %i.bl = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.unr97, %.prol.loopexit93 ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit93 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit93 ] ; 9 uses
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.bm, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1757
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.bp, ptr %i.bo, align 4, !tbaa !41, !noalias !1757
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.bs, ptr %i.br, align 4, !tbaa !41, !noalias !1757
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.bv = load <2 x i32>, ptr %i.bt, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.bv, ptr %i.bu, align 4, !tbaa !41, !noalias !1757
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.by = load <2 x i32>, ptr %i.bw, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.by, ptr %i.bx, align 4, !tbaa !41, !noalias !1757
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.cb = load <2 x i32>, ptr %i.bz, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.cb, ptr %i.ca, align 4, !tbaa !41, !noalias !1757
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.ce = load <2 x i32>, ptr %i.cc, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.ce, ptr %i.cd, align 4, !tbaa !41, !noalias !1757
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ch = load <2 x i32>, ptr %i.cf, align 4, !tbaa !41, !noalias !1757
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !41, !noalias !1757
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.ck = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit93
  %i.cl = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bd
  store i64 %i.cl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1757
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !128
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container6vectorIS0_vvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cn = load i64, ptr %i.ba, align 8, !tbaa !102, !noalias !1758 ; 3 uses
  %.idx66 = shl nsw i64 %i.cn, 3
  %i.co = getelementptr inbounds i8, ptr %2, i64 %.idx66
  %i.cp = load ptr, ptr %0, align 8, !tbaa !134, !noalias !1759 ; 2 uses
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !132, !noalias !1760 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = icmp eq i64 %i.cn, %i.cq
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.cs)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc23:                                         ; preds = %bb.h
  %.not5.i16 = icmp eq i64 %i.cn, 0
  br i1 %.not5.i16, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.noexc23, %.noexc24
  %.sroa.044.0 = phi ptr [ %i.cy, %.noexc24 ], [ %2, %.noexc23 ] ; 2 uses
  %.sroa.039.0 = phi ptr [ %i.cz, %.noexc24 ], [ %i.cp, %.noexc23 ] ; 3 uses
  %.not4.i20 = icmp eq ptr %.sroa.039.0, %i.cr
  br i1 %.not4.i20, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i19
  %i.cu = load <2 x i32>, ptr %.sroa.044.0, align 4
  %i.cv = load <2 x i32>, ptr %.sroa.039.0, align 4
  %i.cw = icmp eq <2 x i32> %i.cu, %i.cv          ; 2 uses
  %6 = extractelement <2 x i1> %i.cw, i64 0
  %7 = extractelement <2 x i1> %i.cw, i64 1
  %8 = select i1 %6, i1 %7, i1 false
  %i.cx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %8)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc24:                                         ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 8
  %.not.i21 = icmp eq ptr %i.cy, %i.co
  br i1 %.not.i21, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, label %.lr.ph.i19, !llvm.loop !24

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25: ; preds = %.noexc24, %.lr.ph.i19, %.noexc23
  %i.da = load i64, ptr %i.ba, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i26 = icmp eq i64 %i.da, 0
  br i1 %.not3.i.i26, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29, label %.lr.ph.preheader.i.i27

.lr.ph.preheader.i.i27:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25
  %_ZZN14counting_value1cEvE2co.promoted.i.i28 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.db = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i28, %i.da
  store i64 %i.db, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit29: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_.exit25, %.lr.ph.preheader.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  %.not3.i.i30 = icmp eq i64 %i.c, 0
  br i1 %.not3.i.i30, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33, label %.lr.ph.preheader.i.i31

.lr.ph.preheader.i.i31:                           ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i32 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dc = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i32, %i.c
  store i64 %i.dc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33: ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.h, %bb.g, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dd = load i64, ptr %i.ba, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i34 = icmp eq i64 %i.dd, 0
  br i1 %.not3.i.i34, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, label %.lr.ph.preheader.i.i35

.lr.ph.preheader.i.i35:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i36 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.de = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i36, %i.dd
  store i64 %i.de, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit37 ], [ %lpad.loopexit.split-lp90, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit33 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca ptr, align 8          ; 5 uses
  %.sroa.0.i.i.i.i.i.i = alloca ptr, align 8      ; 5 uses
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1802 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !128
  %i.d = icmp eq ptr %i.b, %i.a
  br i1 %i.d, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.i ], [ %i.b, %bb.a ]
  %.03.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.f = add nuw i64 %.03.i.i.i.i.i.i, 1          ; 7 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !105, !noalias !1803 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.not.i.i.i.i = icmp samesign ult i64 %.03.i.i.i.i.i.i, 10
  br i1 %.not.i.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %bb.b, !prof !185

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store ptr %i.b, ptr %.sroa.0.i.i.i.i.i.i, align 8, !tbaa !197, !noalias !1804
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1805
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %.sroa.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.prol.preheader ], [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.h = load ptr, ptr %.in.i.i.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1804 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !41, !noalias !1805
  store <2 x i32> %i.j, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1805
  %i.k = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.l = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1773

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
  %i.n = load ptr, ptr %.in.i.i.i.i.i.i.i, align 8, !tbaa !188, !noalias !1804 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !41, !noalias !1805
  store <2 x i32> %i.p, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1805
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !188, !noalias !1804 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load <2 x i32>, ptr %i.s, align 4, !tbaa !41, !noalias !1805
  store <2 x i32> %i.t, ptr %i.q, align 4, !tbaa !41, !noalias !1805
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !188, !noalias !1804 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !41, !noalias !1805
  store <2 x i32> %i.x, ptr %i.u, align 4, !tbaa !41, !noalias !1805
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !188, !noalias !1804 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load <2 x i32>, ptr %i.aa, align 4, !tbaa !41, !noalias !1805
  store <2 x i32> %i.ab, ptr %i.y, align 4, !tbaa !41, !noalias !1805
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.ad = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.ae = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.f
  store i64 %i.ae, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1805
  store i64 %i.f, ptr %i.c, align 8, !tbaa !128, !noalias !1804
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1804
  unreachable

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.af = phi i64 [ 0, %bb.a ], [ %i.f, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.ag = load i64, ptr %0, align 8, !tbaa !114
  %i.ah = icmp eq i64 %i.af, %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.ah)
          to label %bb.c unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit
  %.idx = shl nuw nsw i64 %i.af, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1806 ; 3 uses
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
          to label %.noexc unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %.not5.i = icmp eq i64 %i.af, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.058.0 = phi ptr [ %i.aw, %.noexc13 ], [ %i.ak, %.noexc ] ; 3 uses
  %.sroa.063.0 = phi ptr [ %i.av, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.058.0, %i.a
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.058.0, i64 16
  %i.ar = load <2 x i32>, ptr %.sroa.063.0, align 4
  %i.as = load <2 x i32>, ptr %i.aq, align 4
  %i.at = icmp eq <2 x i32> %i.ar, %i.as          ; 2 uses
  %3 = extractelement <2 x i1> %i.at, i64 0
  %4 = extractelement <2 x i1> %i.at, i64 1
  %5 = select i1 %3, i1 %4, i1 false
  %i.au = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %5)
          to label %.noexc13 unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc13:                                         ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.063.0, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %.sroa.058.0, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.av, %i.aj
  br i1 %.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !1780

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %.noexc13
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ax = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.af
  store i64 %i.ax, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.noexc, %.lr.ph.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !128
  %i.az = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext true)
          to label %.critedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge.i:                                      ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1807 ; 3 uses
  %.not97 = icmp eq ptr %i.ba, %i.a
  br i1 %.not97, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.critedge.i
  store i64 0, ptr %i.ay, align 8, !tbaa !128
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.ba, %.critedge.i ]
  %.03.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i ], [ 0, %.critedge.i ] ; 3 uses
  %i.bc = add nuw i64 %.03.i.i.i.i, 1             ; 7 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !105, !noalias !1808 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp samesign ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.not.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %bb.e, !prof !185

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  store ptr %i.ba, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !197, !noalias !1809
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1810
  %xtraiter116 = and i64 %i.bc, 3                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.prol.loopexit115, label %.prol.preheader114

.prol.preheader114:                               ; preds = %.lr.ph.i.i.i.i.i.i.i, %.prol.preheader114
  %.in.i.i.i.i.i.prol = phi ptr [ %i.be, %.prol.preheader114 ], [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.bi, %.prol.preheader114 ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bh, %.prol.preheader114 ], [ %2, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.prol.preheader114 ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1809 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load <2 x i32>, ptr %i.bf, align 4, !tbaa !41, !noalias !1810
  store <2 x i32> %i.bg, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1810
  %i.bh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bi = add nsw i64 %.015.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.prol.loopexit115, label %.prol.preheader114, !llvm.loop !1793

.prol.loopexit115:                                ; preds = %.prol.preheader114, %.lr.ph.i.i.i.i.i.i.i
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.be, %.prol.preheader114 ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bi, %.prol.preheader114 ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bh, %.prol.preheader114 ]
  %i.bj = icmp ult i64 %.03.i.i.i.i, 3
  br i1 %i.bj, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.new:                         ; preds = %.prol.loopexit115, %.lr.ph.i.i.i.i.i.i.i.new
  %.in.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.in.i.i.i.i.i.unr, %.prol.loopexit115 ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.unr, %.prol.loopexit115 ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.unr, %.prol.loopexit115 ] ; 5 uses
  %i.bk = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !188, !noalias !1809 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load <2 x i32>, ptr %i.bl, align 4, !tbaa !41, !noalias !1810
  store <2 x i32> %i.bm, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1810
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !188, !noalias !1809 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load <2 x i32>, ptr %i.bp, align 4, !tbaa !41, !noalias !1810
  store <2 x i32> %i.bq, ptr %i.bn, align 4, !tbaa !41, !noalias !1810
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !188, !noalias !1809 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load <2 x i32>, ptr %i.bt, align 4, !tbaa !41, !noalias !1810
  store <2 x i32> %i.bu, ptr %i.br, align 4, !tbaa !41, !noalias !1810
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !188, !noalias !1809 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load <2 x i32>, ptr %i.bx, align 4, !tbaa !41, !noalias !1810
  store <2 x i32> %i.by, ptr %i.bv, align 4, !tbaa !41, !noalias !1810
  %i.bz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.ca = add nsw i64 %.015.i.i.i.i.i.i.i, -4     ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit115
  %i.cb = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bc
  store i64 %i.cb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1810
  store i64 %i.bc, ptr %i.ay, align 8, !tbaa !128, !noalias !1809
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.e
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cc = phi i64 [ %i.bc, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  %i.cd = load i64, ptr %0, align 8, !tbaa !114
  %i.ce = icmp eq i64 %i.cc, %i.cd
  %i.cf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.ce)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit
  %i.cg = load i64, ptr %i.ay, align 8, !tbaa !102, !noalias !1811 ; 3 uses
  %.idx69 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %.idx69
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1812 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.ci, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.f, %.lr.ph.i.i.i17
  %i.cj = phi ptr [ %i.cl, %.lr.ph.i.i.i17 ], [ %i.ci, %bb.f ]
  %.03.i.i.i18 = phi i64 [ %i.ck, %.lr.ph.i.i.i17 ], [ 0, %bb.f ]
  %i.ck = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cl, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20: ; preds = %.lr.ph.i.i.i17, %bb.f
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %bb.f ], [ %i.ck, %.lr.ph.i.i.i17 ]
  %i.cm = icmp eq i64 %i.cg, %.0.lcssa.i.i.i21
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cm)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc29:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  %.not5.i22 = icmp eq i64 %i.cg, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.noexc29, %.noexc30
  %.sroa.050.0 = phi ptr [ %i.ct, %.noexc30 ], [ %2, %.noexc29 ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.cu, %.noexc30 ], [ %i.ci, %.noexc29 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.045.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i25
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.cp = load <2 x i32>, ptr %.sroa.050.0, align 4
  %i.cq = load <2 x i32>, ptr %i.co, align 4
  %i.cr = icmp eq <2 x i32> %i.cp, %i.cq          ; 2 uses
  %6 = extractelement <2 x i1> %i.cr, i64 0
  %7 = extractelement <2 x i1> %i.cr, i64 1
  %8 = select i1 %6, i1 %7, i1 false
  %i.cs = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %8)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc30:                                         ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %.sroa.045.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.ct, %i.ch
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25, !llvm.loop !1780

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %.noexc29
  %i.cv = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i32 = icmp eq i64 %i.cv, 0
  br i1 %.not3.i.i32, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35, label %.lr.ph.preheader.i.i33

.lr.ph.preheader.i.i33:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31
  %_ZZN14counting_value1cEvE2co.promoted.i.i34 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cw = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i34, %i.cv
  store i64 %i.cw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, %.lr.ph.preheader.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  %.not3.i.i36 = icmp eq i64 %i.af, 0
  br i1 %.not3.i.i36, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39, label %.lr.ph.preheader.i.i37

.lr.ph.preheader.i.i37:                           ; preds = %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i38 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cx = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i38, %i.af
  store i64 %i.cx, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39: ; preds = %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, %bb.e, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cy = load i64, ptr %i.ay, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i40 = icmp eq i64 %i.cy, 0
  br i1 %.not3.i.i40, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, label %.lr.ph.preheader.i.i41

.lr.ph.preheader.i.i41:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %_ZZN14counting_value1cEvE2co.promoted.i.i42 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.cz = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i42, %i.cy
  store i64 %i.cz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.lr.ph.preheader.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43 ], [ %lpad.loopexit.split-lp110, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39 ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1815 ; 2 uses
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
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !133  ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135  ; 2 uses
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
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 7 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !134    ; 10 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !132  ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  %.pre.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 3 uses
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.x = add i64 %i.a, -8
  %i.y = sub i64 %i.x, %i.u                       ; 2 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ae = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ae, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.t, i64 %i.ag ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.s, i64 %i.af
  %next.gep26 = getelementptr i8, ptr %i.s, i64 %i.ag
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.vec28 = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep25, align 4, !tbaa !41
end_hunk_3
