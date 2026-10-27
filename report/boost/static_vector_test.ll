Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 104
loop-unroll.NumUnrolled: 316
begin_hunk_0_@_Z23test_copy_and_assign_ndI14counting_valueLm10EEvRKT_:bb.a
  %i.dp = add nsw i64 %.020.i.i.i43.prol, -1      ; 2 uses
  %i.dq = load <2 x i32>, ptr %.0819.i.i.i44.prol, align 4, !tbaa !42
  store <2 x i32> %i.dq, ptr %.01618.i.i.i45.prol, align 4, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44.prol, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45.prol, i64 8 ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !369

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
  %i.du = load <2 x i32>, ptr %.0819.i.i.i44, align 4, !tbaa !42
  store <2 x i32> %i.du, ptr %.01618.i.i.i45, align 4, !tbaa !42
  %i.dv = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 8
  %i.dx = load <2 x i32>, ptr %i.dv, align 4, !tbaa !42
  store <2 x i32> %i.dx, ptr %i.dw, align 4, !tbaa !42
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 16
  %i.ea = load <2 x i32>, ptr %i.dy, align 4, !tbaa !42
  store <2 x i32> %i.ea, ptr %i.dz, align 4, !tbaa !42
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 24
  %i.ed = load <2 x i32>, ptr %i.eb, align 4, !tbaa !42
  store <2 x i32> %i.ed, ptr %i.ec, align 4, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 32
  %i.eg = load <2 x i32>, ptr %i.ee, align 4, !tbaa !42
  store <2 x i32> %i.eg, ptr %i.ef, align 4, !tbaa !42
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 40
  %i.ej = load <2 x i32>, ptr %i.eh, align 4, !tbaa !42
  store <2 x i32> %i.ej, ptr %i.ei, align 4, !tbaa !42
  %i.ek = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 48
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !42
  store <2 x i32> %i.em, ptr %i.el, align 4, !tbaa !42
  %i.en = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 56
  %i.ep = add nsw i64 %.020.i.i.i43, -8           ; 2 uses
  %i.eq = load <2 x i32>, ptr %i.en, align 4, !tbaa !42
  store <2 x i32> %i.eq, ptr %i.eo, align 4, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %.0819.i.i.i44, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %.01618.i.i.i45, i64 64
  %.not.i.i.i46.7 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i46.7, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41.new, !llvm.loop !8

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41.new, %.prol.loopexit
  %i.et = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i42, %i.dm
  store i64 %i.et, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49: ; preds = %._crit_edge.i.i.i47, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i39
  %.idx160 = shl nuw nsw i64 %i.dm, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 %.idx160
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.dm
  %i.ew = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext true)
          to label %.noexc56 unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc56:                                         ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit49
  br i1 %.not17.i.i.i40, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.noexc56, %.noexc57
  %.sroa.0125.0 = phi ptr [ %i.fe, %.noexc57 ], [ %2, %.noexc56 ] ; 2 uses
  %.sroa.0120.0 = phi ptr [ %i.ff, %.noexc57 ], [ %8, %.noexc56 ] ; 3 uses
  %.not4.i54 = icmp eq ptr %.sroa.0120.0, %i.ev
  br i1 %.not4.i54, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i53
  %i.ex = load <2 x i32>, ptr %.sroa.0125.0, align 4
  %i.ey = load <2 x i32>, ptr %.sroa.0120.0, align 4
  %i.ez = icmp eq <2 x i32> %i.ex, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x i1> %i.ez, i64 0
  %i.fb = extractelement <2 x i1> %i.ez, i64 1
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.fc)
          to label %.noexc57 unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc57:                                         ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0125.0, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0120.0, i64 8
  %.not.i55 = icmp eq ptr %i.fe, %i.eu
  br i1 %.not.i55, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58, label %.lr.ph.i53, !llvm.loop !9

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58: ; preds = %.noexc57, %.lr.ph.i53, %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.fg, align 8, !tbaa !136
  %i.fh = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #27
          to label %.noexc60 unwind label %bb.ak  ; 25 uses

.noexc60:                                         ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_.exit58
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.fh, ptr %9, align 8, !tbaa !135
  store i64 10, ptr %i.fi, align 8, !tbaa !76
  %_ZZN14counting_value1cEvE2co.promoted.i.i59 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.fj = load <2 x i32>, ptr %0, align 4, !tbaa !42 ; 5 uses
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.fl = extractelement <2 x i32> %i.fj, i64 1   ; 8 uses
  %i.fm = extractelement <2 x i32> %i.fj, i64 0   ; 8 uses
  store <8 x i32> %i.fk, ptr %i.fh, align 4, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !80
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 36
  store i32 %i.fl, ptr %i.fo, align 4, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fh, i64 44
  store i32 %i.fl, ptr %i.fq, align 4, !tbaa !81
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store i32 %i.fm, ptr %i.fr, align 4, !tbaa !80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  store i32 %i.fl, ptr %i.fs, align 4, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  store i32 %i.fm, ptr %i.ft, align 4, !tbaa !80
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 60
  store i32 %i.fl, ptr %i.fu, align 4, !tbaa !81
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  store i32 %i.fm, ptr %i.fv, align 4, !tbaa !80
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 68
  store i32 %i.fl, ptr %i.fw, align 4, !tbaa !81
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  store i32 %i.fm, ptr %i.fx, align 4, !tbaa !80
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 76
  store i32 %i.fl, ptr %i.fy, align 4, !tbaa !81
  %i.fz = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i59, 10 ; 3 uses
  store i64 %i.fz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ga = load i64, ptr %i.dn, align 8, !tbaa !103, !noalias !382 ; 5 uses
  %.idx.i.i = shl nsw i64 %i.ga, 3
  %i.gb = getelementptr inbounds i8, ptr %8, i64 %.idx.i.i ; 8 uses
  %.not = icmp eq i64 %i.ga, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc60, %.lr.ph.i.i
  %.sroa.04.021.i.i = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %8, %.noexc60 ] ; 3 uses
  %.sroa.3.020.i.i = phi i64 [ %i.ge, %.lr.ph.i.i ], [ 10, %.noexc60 ]
  store i32 %i.fm, ptr %.sroa.04.021.i.i, align 4, !tbaa !80
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 4
  store i32 %i.fl, ptr %i.gc, align 4, !tbaa !81
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.021.i.i, i64 8 ; 3 uses
  %i.ge = add nsw i64 %.sroa.3.020.i.i, -1        ; 3 uses
  %i.gf = icmp ne i64 %i.ge, 0                    ; 2 uses
  %i.gg = icmp ne ptr %i.gd, %i.gb                ; 2 uses
  %or.cond.i.i = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !372

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  br i1 %i.gf, label %.critedge.i.i.thread, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.gh = ptrtoint ptr %i.gb to i64
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  br i1 %i.gg, label %.lr.ph.preheader.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.t
  %i.gl = sub i64 %i.fz, %i.gk
  store i64 %i.gl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.t
  %i.gm = sub i64 %i.ga, %i.gk
  br label %bb.v

.critedge.i.i.thread:                             ; preds = %.noexc60, %.critedge.i.i
  %.sroa.3.0.lcssa.i.i153 = phi i64 [ %i.ge, %.critedge.i.i ], [ 10, %.noexc60 ] ; 8 uses
  %i.gn = sub i64 10, %i.ga
  %.not.i.i.i.i = icmp ugt i64 %.sroa.3.0.lcssa.i.i153, %i.gn
  br i1 %.not.i.i.i.i, label %bb.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !43

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %min.iters.check256 = icmp ult i64 %.sroa.3.0.lcssa.i.i153, 4
  br i1 %min.iters.check256, label %.lr.ph.i.i.i.i.i.i.i.i.preheader275, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec258 = and i64 %.sroa.3.0.lcssa.i.i153, -4 ; 3 uses
  %i.go = and i64 %.sroa.3.0.lcssa.i.i153, 3
  %i.gp = shl i64 %n.vec258, 3
  %i.gq = getelementptr i8, ptr %i.gb, i64 %i.gp
  %next.gep265 = getelementptr i8, ptr %i.gb, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep265) ]
  %interleaved.vec267 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec267, ptr %i.gb, align 8, !tbaa !42, !noalias !383
  store <4 x i32> %interleaved.vec267, ptr %next.gep265, align 8, !tbaa !42, !noalias !383
  %i.gr = icmp eq i64 %n.vec258, 4
  br i1 %i.gr, label %middle.block270, label %vector.body261.1

vector.body261.1:                                 ; preds = %vector.ph257
  %next.gep263.1 = getelementptr i8, ptr %i.gb, i64 32 ; 2 uses
  %next.gep265.1 = getelementptr i8, ptr %i.gb, i64 48 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep263.1), "nonnull"(ptr %next.gep265.1) ]
  %interleaved.vec267.1 = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  store <4 x i32> %interleaved.vec267.1, ptr %next.gep263.1, align 8, !tbaa !42, !noalias !383
  store <4 x i32> %interleaved.vec267.1, ptr %next.gep265.1, align 8, !tbaa !42, !noalias !383
  br label %middle.block270

middle.block270:                                  ; preds = %vector.body261.1, %vector.ph257
  %cmp.n271 = icmp eq i64 %.sroa.3.0.lcssa.i.i153, %n.vec258
  br i1 %cmp.n271, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader275

.lr.ph.i.i.i.i.i.i.i.i.preheader275:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block270
  %.022.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.3.0.lcssa.i.i153, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.go, %middle.block270 ]
  %.01821.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gq, %middle.block270 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader275, %.lr.ph.i.i.i.i.i.i.i.i
  %.022.i.i.i.i.i.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.022.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader275 ]
  %.01821.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01821.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader275 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.i.i.i.i.i) ]
  store i32 %i.fm, ptr %.01821.i.i.i.i.i.i.i.i, align 4, !tbaa !80, !noalias !383
  %i.gs = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 4
  store i32 %i.fl, ptr %i.gs, align 4, !tbaa !81, !noalias !383
  %i.gt = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.i.i.i.i.i, i64 8
  %i.gu = add i64 %.022.i.i.i.i.i.i.i.i, -1       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !377

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block270
  %i.gv = add i64 %.sroa.3.0.lcssa.i.i153, %i.fz
  store i64 %i.gv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !383
  %i.gw = add i64 %.sroa.3.0.lcssa.i.i153, %i.ga
  br label %bb.v

bb.u:                                             ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc62:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %storemerge.i.i = phi i64 [ %i.gw, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.gm, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ] ; 12 uses
  store i64 %storemerge.i.i, ptr %i.dn, align 8, !tbaa !129
  %i.gx = icmp eq i64 %storemerge.i.i, 10
  %i.gy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.gx)
          to label %.lr.ph.i66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph.i66:                                       ; preds = %bb.v
  %.not4.i67 = icmp eq i64 %storemerge.i.i, 0
  br i1 %.not4.i67, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i66
  %i.gz = load <2 x i32>, ptr %i.fh, align 4
  %i.ha = load <2 x i32>, ptr %8, align 8
  %i.hb = icmp eq <2 x i32> %i.gz, %i.ha          ; 2 uses
  %i.hc = extractelement <2 x i1> %i.hb, i64 0
  %i.hd = extractelement <2 x i1> %i.hb, i64 1
  %i.he = select i1 %i.hc, i1 %i.hd, i1 false
  %i.hf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.he)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70:                                         ; preds = %bb.w
  %.not4.i67.1 = icmp eq i64 %storemerge.i.i, 1
  br i1 %.not4.i67.1, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.noexc70
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.0114.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.hh = load <2 x i32>, ptr %.sroa.0114.0.ptr.1, align 4
  %i.hi = load <2 x i32>, ptr %i.hg, align 8
  %i.hj = icmp eq <2 x i32> %i.hh, %i.hi          ; 2 uses
  %i.hk = extractelement <2 x i1> %i.hj, i64 0
  %i.hl = extractelement <2 x i1> %i.hj, i64 1
  %i.hm = select i1 %i.hk, i1 %i.hl, i1 false
  %i.hn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.hm)
          to label %.noexc70.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.1:                                       ; preds = %bb.x
  %.not4.i67.2 = icmp eq i64 %storemerge.i.i, 2
  br i1 %.not4.i67.2, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.noexc70.1
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0114.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.hp = load <2 x i32>, ptr %.sroa.0114.0.ptr.2, align 4
  %i.hq = load <2 x i32>, ptr %i.ho, align 8
  %i.hr = icmp eq <2 x i32> %i.hp, %i.hq          ; 2 uses
  %i.hs = extractelement <2 x i1> %i.hr, i64 0
  %i.ht = extractelement <2 x i1> %i.hr, i64 1
  %i.hu = select i1 %i.hs, i1 %i.ht, i1 false
  %i.hv = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.hu)
          to label %.noexc70.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.2:                                       ; preds = %bb.y
  %.not4.i67.3 = icmp eq i64 %storemerge.i.i, 3
  br i1 %.not4.i67.3, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.noexc70.2
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.0114.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.hx = load <2 x i32>, ptr %.sroa.0114.0.ptr.3, align 4
  %i.hy = load <2 x i32>, ptr %i.hw, align 8
  %i.hz = icmp eq <2 x i32> %i.hx, %i.hy          ; 2 uses
  %i.ia = extractelement <2 x i1> %i.hz, i64 0
  %i.ib = extractelement <2 x i1> %i.hz, i64 1
  %i.ic = select i1 %i.ia, i1 %i.ib, i1 false
  %i.id = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ic)
          to label %.noexc70.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.3:                                       ; preds = %bb.z
  %.not4.i67.4 = icmp eq i64 %storemerge.i.i, 4
  br i1 %.not4.i67.4, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %.noexc70.3
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.0114.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.if = load <2 x i32>, ptr %.sroa.0114.0.ptr.4, align 4
  %i.ig = load <2 x i32>, ptr %i.ie, align 8
  %i.ih = icmp eq <2 x i32> %i.if, %i.ig          ; 2 uses
  %i.ii = extractelement <2 x i1> %i.ih, i64 0
  %i.ij = extractelement <2 x i1> %i.ih, i64 1
  %i.ik = select i1 %i.ii, i1 %i.ij, i1 false
  %i.il = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ik)
          to label %.noexc70.4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.4:                                       ; preds = %bb.aa
  %.not4.i67.5 = icmp eq i64 %storemerge.i.i, 5
  br i1 %.not4.i67.5, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc70.4
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.0114.0.ptr.5 = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.in = load <2 x i32>, ptr %.sroa.0114.0.ptr.5, align 4
  %i.io = load <2 x i32>, ptr %i.im, align 8
  %i.ip = icmp eq <2 x i32> %i.in, %i.io          ; 2 uses
  %i.iq = extractelement <2 x i1> %i.ip, i64 0
  %i.ir = extractelement <2 x i1> %i.ip, i64 1
  %i.is = select i1 %i.iq, i1 %i.ir, i1 false
  %i.it = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.is)
          to label %.noexc70.5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.5:                                       ; preds = %bb.ab
  %.not4.i67.6 = icmp eq i64 %storemerge.i.i, 6
  br i1 %.not4.i67.6, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc70.5
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.sroa.0114.0.ptr.6 = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.iv = load <2 x i32>, ptr %.sroa.0114.0.ptr.6, align 4
  %i.iw = load <2 x i32>, ptr %i.iu, align 8
  %i.ix = icmp eq <2 x i32> %i.iv, %i.iw          ; 2 uses
  %i.iy = extractelement <2 x i1> %i.ix, i64 0
  %i.iz = extractelement <2 x i1> %i.ix, i64 1
  %i.ja = select i1 %i.iy, i1 %i.iz, i1 false
  %i.jb = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ja)
          to label %.noexc70.6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.6:                                       ; preds = %bb.ac
  %.not4.i67.7 = icmp eq i64 %storemerge.i.i, 7
  br i1 %.not4.i67.7, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.noexc70.6
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.0114.0.ptr.7 = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.jd = load <2 x i32>, ptr %.sroa.0114.0.ptr.7, align 4
  %i.je = load <2 x i32>, ptr %i.jc, align 8
  %i.jf = icmp eq <2 x i32> %i.jd, %i.je          ; 2 uses
  %i.jg = extractelement <2 x i1> %i.jf, i64 0
  %i.jh = extractelement <2 x i1> %i.jf, i64 1
  %i.ji = select i1 %i.jg, i1 %i.jh, i1 false
  %i.jj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.ji)
          to label %.noexc70.7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.7:                                       ; preds = %bb.ad
  %.not4.i67.8 = icmp eq i64 %storemerge.i.i, 8
  br i1 %.not4.i67.8, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc70.7
  %i.jk = getelementptr inbounds nuw i8, ptr %8, i64 64
  %.sroa.0114.0.ptr.8 = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.jl = load <2 x i32>, ptr %.sroa.0114.0.ptr.8, align 4
  %i.jm = load <2 x i32>, ptr %i.jk, align 8
  %i.jn = icmp eq <2 x i32> %i.jl, %i.jm          ; 2 uses
  %i.jo = extractelement <2 x i1> %i.jn, i64 0
  %i.jp = extractelement <2 x i1> %i.jn, i64 1
  %i.jq = select i1 %i.jo, i1 %i.jp, i1 false
  %i.jr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEES5_EvT_S6_T0_S7_, i1 noundef zeroext %i.jq)
          to label %.noexc70.8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc70.8:                                       ; preds = %bb.ae
  %.not4.i67.9 = icmp eq i64 %storemerge.i.i, 9
  br i1 %.not4.i67.9, label %_ZN5boost9container6vectorI14counting_valuevvED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.noexc70.8
  %i.js = getelementptr inbounds nuw i8, ptr %8, i64 72
  %.sroa.0114.0.ptr.9 = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.jt = load <2 x i32>, ptr %.sroa.0114.0.ptr.9, align 4
  %i.ju = load <2 x i32>, ptr %i.js, align 8
  %i.jv = icmp eq <2 x i32> %i.jt, %i.ju          ; 2 uses
  %i.jw = extractelement <2 x i1> %i.jv, i64 0
  %i.jx = extractelement <2 x i1> %i.jv, i64 1
end_hunk_0
begin_hunk_1_@_Z18test_capacity_0_ndI14counting_valueEvv:bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.t = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.u = add i64 %i.t, -1
  store i64 %i.u, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %.1 = extractvalue { ptr, i32 } %i.s, 1
  %.132 = extractvalue { ptr, i32 } %i.s, 0
  %i.v = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25 ; 9 uses
  %i.w = icmp eq i32 %.1, %i.v
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.132) #25 ; 0 uses
  br i1 %i.w, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.y = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke234 unwind label %bb.r ; 0 uses

.invoke234:                                       ; preds = %bb.p, %bb.l
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.ck

bb.m:                                             ; preds = %.invoke234
  %i.z = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.aa, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !978 ; 3 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.n, label %bb.o, !prof !43

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc89 unwind label %bb.s

.noexc89:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ab ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.ad, align 4, !tbaa !81
  %i.ae = add nuw nsw i64 %i.ab, 1
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !978
  store i64 %i.aa, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.w unwind label %bb.t

bb.p:                                             ; preds = %bb.k
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke234 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.r:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.s:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ai = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn56 = phi { ptr, i32 } [ %i.ak, %bb.t ], [ %i.ah, %bb.s ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn56, 1
  %.334 = extractvalue { ptr, i32 } %.pn56, 0
  %i.al = icmp eq i32 %.3, %i.v
  %i.am = tail call ptr @__cxa_begin_catch(ptr %.334) #25 ; 0 uses
  br i1 %i.al, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.an = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke233 unwind label %bb.ab ; 0 uses

.invoke233:                                       ; preds = %bb.z, %bb.v
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.ck

bb.w:                                             ; preds = %.invoke233, %bb.o
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !978, !noalias !979 ; 3 uses
  %i.ap = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.aq = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %.not.i.i90 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i90, label %bb.x, label %bb.y, !prof !43

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.ac

.noexc92:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ar = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ao ; 2 uses
  store i32 0, ptr %i.ar, align 8, !tbaa !80, !noalias !980
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.as, align 4, !tbaa !81, !noalias !980
  %i.at = add i64 %i.ao, 1
  store i64 %i.at, ptr %i.d, align 8, !tbaa !978, !noalias !980
  store i64 %i.aq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.ag unwind label %bb.ad

bb.z:                                             ; preds = %bb.u
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 427, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke233 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ab:                                            ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ac:                                            ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ax = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn60 = phi { ptr, i32 } [ %i.az, %bb.ad ], [ %i.aw, %bb.ac ] ; 2 uses
  %.5 = extractvalue { ptr, i32 } %.pn60, 1
  %.536 = extractvalue { ptr, i32 } %.pn60, 0
  %i.ba = icmp eq i32 %.5, %i.v
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %.536) #25 ; 0 uses
  br i1 %i.ba, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.bc = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke232 unwind label %bb.am ; 0 uses

.invoke232:                                       ; preds = %bb.ak, %bb.af
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ck

bb.ag:                                            ; preds = %.invoke232, %bb.y
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !978, !noalias !981 ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bd ; 4 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !982 ; 9 uses
  %i.bg = sub i64 0, %i.bd
  %.not.i.i93 = icmp ugt i64 %i.bf, %i.bg
  br i1 %.not.i.i93, label %bb.ai, label %bb.ah, !prof !43

bb.ah:                                            ; preds = %bb.ag
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.aj, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !983
  %min.iters.check = icmp ult i64 %i.bf, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec = and i64 %i.bf, -4                      ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  %i.bj = and i64 %i.bf, 3
  %i.bk = getelementptr i8, ptr %i.be, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 3 uses
  %i.bm = or disjoint i64 %i.bl, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bl
  %next.gep238 = getelementptr i8, ptr %0, i64 %i.bm
  %next.gep239 = getelementptr i8, ptr %i.be, i64 %i.bl ; 2 uses
  %next.gep241 = getelementptr i8, ptr %i.be, i64 %i.bm ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep239), "nonnull"(ptr %next.gep241) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !42, !noalias !983
  %wide.vec244 = load <4 x i32>, ptr %next.gep238, align 8, !tbaa !42, !noalias !983
  store <4 x i32> %wide.vec, ptr %next.gep239, align 8, !tbaa !42, !noalias !983
  store <4 x i32> %wide.vec244, ptr %next.gep241, align 8, !tbaa !42, !noalias !983
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !943

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.ph313 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %middle.block ]
  %.015.i.i.i.i.i.i.ph = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bo = phi ptr [ %i.bq, %scalar.ph ], [ %.ph313, %scalar.ph.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.bs, %scalar.ph ], [ %.015.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.br, %scalar.ph ], [ %.01214.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.bp = load <2 x i32>, ptr %i.bo, align 4, !tbaa !42, !noalias !983
  store <2 x i32> %i.bp, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !983
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.bs = add i64 %.015.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !944

._crit_edge.i.i.i.i.i.i:                          ; preds = %scalar.ph, %middle.block
  %i.bt = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i, %i.bf
  store i64 %i.bt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !983
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc96 unwind label %bb.an

.noexc96:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ah
  %i.bu = add i64 %i.bf, %i.bd
  store i64 %i.bu, ptr %i.d, align 8, !tbaa !976, !noalias !984
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.ap unwind label %bb.an

bb.ak:                                            ; preds = %bb.ae
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke232 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.am:                                            ; preds = %bb.af
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.an:                                            ; preds = %bb.ai, %bb.aj
  %i.bx = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.7 = extractvalue { ptr, i32 } %i.bx, 1
  %.738 = extractvalue { ptr, i32 } %i.bx, 0
  %i.by = icmp eq i32 %.7, %i.v
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %.738) #25 ; 0 uses
  br i1 %i.by, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ca = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke231 unwind label %bb.aw ; 0 uses

.invoke231:                                       ; preds = %bb.au, %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.ck

bb.ap:                                            ; preds = %.invoke231, %bb.aj
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !985 ; 2 uses
  %.idx = shl i64 %i.cb, 3                        ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !978, !noalias !986
  %.fr = freeze i64 %i.cd                         ; 5 uses
  %.idx.i = shl i64 %.fr, 3                       ; 4 uses
  %i.ce = getelementptr i8, ptr %1, i64 %.idx.i   ; 9 uses
  %i.cf = icmp ne i64 %i.cb, 0
  %i.cg = icmp ne i64 %.fr, 0
  %or.cond11.i = and i1 %i.cf, %i.cg
  br i1 %or.cond11.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ap
  %i.ch = add i64 %.idx.i, -8
  %i.ci = lshr exact i64 %i.ch, 3
  %i.cj = add i64 %.idx, -8
  %i.ck = lshr exact i64 %i.cj, 3
  %i.cl = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.ck) ; 2 uses
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check251 = icmp samesign ult i64 %i.cl, 3
  br i1 %min.iters.check251, label %.lr.ph.i.preheader310, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph.i.preheader
  %n.vec253 = and i64 %i.cm, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec253, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = getelementptr i8, ptr %1, i64 %i.cn     ; 2 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next268, %vector.body254 ] ; 2 uses
  %i.cq = shl i64 %index255, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep256 = getelementptr i8, ptr %0, i64 %i.cq
  %next.gep257 = getelementptr i8, ptr %0, i64 %i.cr
  %next.gep258 = getelementptr i8, ptr %1, i64 %i.cq
  %next.gep259 = getelementptr i8, ptr %1, i64 %i.cr
  %wide.vec260 = load <4 x i32>, ptr %next.gep256, align 8, !tbaa !42
  %wide.vec263 = load <4 x i32>, ptr %next.gep257, align 8, !tbaa !42
  store <4 x i32> %wide.vec260, ptr %next.gep258, align 8, !tbaa !42
  store <4 x i32> %wide.vec263, ptr %next.gep259, align 8, !tbaa !42
  %index.next268 = add nuw i64 %index255, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next268, %n.vec253
  br i1 %i.cs, label %middle.block269, label %vector.body254, !llvm.loop !949

middle.block269:                                  ; preds = %vector.body254
  %cmp.n270 = icmp eq i64 %i.cm, %n.vec253
  br i1 %cmp.n270, label %.critedge.i, label %.lr.ph.i.preheader310

.lr.ph.i.preheader310:                            ; preds = %.lr.ph.i.preheader, %middle.block269
  %.ph311 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.co, %middle.block269 ]
  %.sroa.06.012.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.cp, %middle.block269 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader310, %.lr.ph.i
  %i.ct = phi ptr [ %i.cw, %.lr.ph.i ], [ %.ph311, %.lr.ph.i.preheader310 ] ; 2 uses
  %.sroa.06.012.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %.sroa.06.012.i.ph, %.lr.ph.i.preheader310 ] ; 2 uses
  %i.cu = load <2 x i32>, ptr %i.ct, align 4, !tbaa !42
  store <2 x i32> %i.cu, ptr %.sroa.06.012.i, align 4, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cx = icmp ne ptr %i.cw, %i.cc
  %i.cy = icmp ne ptr %i.cv, %i.ce
  %or.cond.i = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !950

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block269, %bb.ap
  %.sroa.06.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %i.cp, %middle.block269 ], [ %i.cv, %.lr.ph.i ] ; 2 uses
  %.lcssa10.i = phi ptr [ %0, %bb.ap ], [ %i.co, %middle.block269 ], [ %i.cw, %.lr.ph.i ] ; 10 uses
  %i.cz = icmp eq ptr %.lcssa10.i, %i.cc
  br i1 %i.cz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.da = ptrtoint ptr %i.ce to i64
  %i.db = ptrtoint ptr %.sroa.06.0.lcssa.i to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3                 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.ce, %.sroa.06.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aq
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i98 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.de = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i98, %i.dd
  store i64 %i.de, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.aq
  %i.df = sub i64 %.fr, %i.dd
  br label %bb.at

bb.ar:                                            ; preds = %.critedge.i
  %i.dg = ptrtoint ptr %i.cc to i64
  %i.dh = ptrtoint ptr %.lcssa10.i to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %i.dj = ashr exact i64 %i.di, 3                 ; 9 uses
  %i.dk = sub i64 0, %.fr
  %.not.i.i.i97 = icmp ugt i64 %i.dj, %i.dk
  br i1 %.not.i.i.i97, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i, !prof !43

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !987
  %min.iters.check282 = icmp ult i64 %i.dj, 20
  br i1 %min.iters.check282, label %scalar.ph281.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dl = add i64 %.idx.i, %i.di                  ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = getelementptr i8, ptr %.lcssa10.i, i64 %i.di
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = getelementptr i8, ptr %1, i64 %.idx.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %i.ds = getelementptr i8, ptr %1, i64 %i.dl
  %i.dt = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.ce, %i.dp
  %bound1 = icmp ult ptr %.lcssa10.i, %i.dn
  %found.conflict = and i1 %bound0, %bound1
  %bound0283 = icmp ult ptr %i.dr, %i.cc
  %bound1284 = icmp ult ptr %i.dt, %i.ds
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx = or i1 %found.conflict, %found.conflict285
  br i1 %conflict.rdx, label %scalar.ph281.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %vector.memcheck
  %n.vec287 = and i64 %i.dj, -4                   ; 3 uses
  %i.du = shl nsw i64 %n.vec287, 3                ; 2 uses
  %i.dv = getelementptr i8, ptr %.lcssa10.i, i64 %i.du
  %i.dw = and i64 %i.dj, 3
  %i.dx = getelementptr i8, ptr %i.ce, i64 %i.du
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph286
  %index289 = phi i64 [ 0, %vector.ph286 ], [ %index.next304, %vector.body288 ] ; 2 uses
  %i.dy = shl i64 %index289, 3                    ; 3 uses
  %i.dz = or disjoint i64 %i.dy, 16               ; 2 uses
  %next.gep290 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dy
  %next.gep291 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dz
  %next.gep292 = getelementptr i8, ptr %i.ce, i64 %i.dy ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.ce, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep292), "nonnull"(ptr %next.gep294) ]
  %wide.vec296 = load <4 x i32>, ptr %next.gep290, align 4, !tbaa !42, !noalias !987
  %wide.vec299 = load <4 x i32>, ptr %next.gep291, align 4, !tbaa !42, !noalias !987
  store <4 x i32> %wide.vec296, ptr %next.gep292, align 8, !tbaa !42, !noalias !987
  store <4 x i32> %wide.vec299, ptr %next.gep294, align 8, !tbaa !42, !noalias !987
  %index.next304 = add nuw i64 %index289, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next304, %n.vec287
  br i1 %i.ea, label %middle.block305, label %vector.body288, !llvm.loop !957

middle.block305:                                  ; preds = %vector.body288
  %cmp.n306 = icmp eq i64 %i.dj, %n.vec287
  br i1 %cmp.n306, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281.preheader

scalar.ph281.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block305
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dv, %middle.block305 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dw, %middle.block305 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dx, %middle.block305 ] ; 2 uses
  %i.eb = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol

scalar.ph281.prol:                                ; preds = %scalar.ph281.preheader, %scalar.ph281.prol
  %i.ec = phi ptr [ %i.ee, %scalar.ph281.prol ], [ %.ph, %scalar.ph281.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.eg, %scalar.ph281.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.ef, %scalar.ph281.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph281.prol ], [ 0, %scalar.ph281.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ed = load <2 x i32>, ptr %i.ec, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.ed, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !42, !noalias !987
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eg = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph281.prol.loopexit, label %scalar.ph281.prol, !llvm.loop !958

scalar.ph281.prol.loopexit:                       ; preds = %scalar.ph281.prol, %scalar.ph281.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph281.preheader ], [ %i.ee, %scalar.ph281.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %i.eg, %scalar.ph281.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph281.preheader ], [ %i.ef, %scalar.ph281.prol ]
  %i.eh = icmp ult i64 %i.eb, 7
  br i1 %i.eh, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281

scalar.ph281:                                     ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281
  %i.ei = phi ptr [ %i.ff, %scalar.ph281 ], [ %.unr, %scalar.ph281.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fh, %scalar.ph281 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fg, %scalar.ph281 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph281.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.ej = load <2 x i32>, ptr %i.ei, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.ej, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !987
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.em = load <2 x i32>, ptr %i.ek, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.em, ptr %i.el, align 4, !tbaa !42, !noalias !987
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.ep = load <2 x i32>, ptr %i.en, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.ep, ptr %i.eo, align 4, !tbaa !42, !noalias !987
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.es = load <2 x i32>, ptr %i.eq, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.es, ptr %i.er, align 4, !tbaa !42, !noalias !987
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.ev = load <2 x i32>, ptr %i.et, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.ev, ptr %i.eu, align 4, !tbaa !42, !noalias !987
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ey = load <2 x i32>, ptr %i.ew, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.ey, ptr %i.ex, align 4, !tbaa !42, !noalias !987
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fb = load <2 x i32>, ptr %i.ez, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.fb, ptr %i.fa, align 4, !tbaa !42, !noalias !987
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.fe = load <2 x i32>, ptr %i.fc, align 4, !tbaa !42, !noalias !987
  store <2 x i32> %i.fe, ptr %i.fd, align 4, !tbaa !42, !noalias !987
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fh = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph281, !llvm.loop !959

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc99 unwind label %bb.ax

.noexc99:                                         ; preds = %bb.as
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph281.prol.loopexit, %scalar.ph281, %middle.block305
  %i.fi = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dj
  store i64 %i.fi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !987
  %i.fj = add i64 %i.dj, %.fr
  br label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fj, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.df, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !tbaa !976
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 430, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_capacity_0_ndI14counting_valueEvv)
          to label %.invoke231 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.aw:                                            ; preds = %bb.ao
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cl unwind label %bb.cm

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.fm = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  %i.fo = extractvalue { ptr, i32 } %i.fm, 1
  %i.fp = icmp eq i32 %i.fo, %i.v
  %i.fq = call ptr @__cxa_begin_catch(ptr %i.fn) #25 ; 0 uses
  br i1 %i.fp, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fr = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke230 unwind label %bb.bf ; 0 uses

.invoke230:                                       ; preds = %bb.bd, %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.ck

bb.az:                                            ; preds = %.invoke230, %bb.at
  %i.fs = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ft = add i64 %i.fs, 1                        ; 4 uses
  store i64 %i.ft, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.fu = load i64, ptr %i.d, align 8, !tbaa !978, !noalias !988 ; 5 uses
  %.idx.i.i = shl i64 %i.fu, 3                    ; 4 uses
  %i.fv = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.fu, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.fw = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.fx = lshr exact i64 %i.fw, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.fx, i64 4) ; 2 uses
  %i.fy = shl nuw nsw i64 %umin, 3
  %i.fz = add nuw nsw i64 %i.fy, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.fz, i1 false), !tbaa !42
  %i.ga = sub nuw nsw i64 4, %umin
  %i.gb = icmp ugt i64 %i.fw, 24
  br i1 %i.gb, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.fz
  %i.gc = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.fz
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ba
  %i.gd = sub i64 %i.ft, %i.gc                    ; 2 uses
  store i64 %i.gd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.ba
  %i.ge = phi i64 [ %i.gd, %.lr.ph.preheader.i.i.i.i ], [ %i.ft, %bb.ba ]
  %i.gf = sub i64 %i.fu, %i.gc
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.ga, %.lr.ph.i.i.preheader ], [ 5, %bb.az ] ; 4 uses
  %i.gg = sub i64 0, %i.fu
  %.not.i.i.i.i100 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.gg
  br i1 %.not.i.i.i.i100, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !43

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.gh = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 0, i64 %i.gh, i1 false), !tbaa !42, !noalias !989
  %i.gi = add i64 %.sroa.3.0.lcssa.i.i194, %i.ft  ; 2 uses
  store i64 %i.gi, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !989
  %i.gj = add i64 %.sroa.3.0.lcssa.i.i194, %i.fu
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm0ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc102 unwind label %bb.bg

.noexc102:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gk = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ge, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gf, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm0ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !976
  %i.gl = add i64 %i.gk, -1
end_hunk_1
begin_hunk_2_@_Z18test_exceptions_ndI14counting_valueLm10EEvv:bb.a
  %i.w = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn51 = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.t, %bb.j ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn51, 1
  %.230 = extractvalue { ptr, i32 } %.pn51, 0
  %i.x = icmp eq i32 %.2, %i.h
  %i.y = tail call ptr @__cxa_begin_catch(ptr %.230) #25 ; 0 uses
  br i1 %i.x, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.z = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke222 unwind label %bb.s ; 0 uses

.invoke222:                                       ; preds = %bb.q, %bb.m
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.ce

bb.n:                                             ; preds = %.invoke222, %bb.f
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !1241, !noalias !1242 ; 3 uses
  %i.ab = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %.not.i.i = icmp eq i64 %i.aa, 5
  br i1 %.not.i.i, label %bb.o, label %bb.p, !prof !43

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc92 unwind label %bb.t

.noexc92:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aa ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !80, !noalias !1243
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ae, align 4, !tbaa !81, !noalias !1243
  %i.af = add i64 %i.aa, 1
  store i64 %i.af, ptr %i.c, align 8, !tbaa !1241, !noalias !1243
  store i64 %i.ac, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.x unwind label %bb.u

bb.q:                                             ; preds = %bb.l
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke222 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.s:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.t:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.aj = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn55 = phi { ptr, i32 } [ %i.al, %bb.u ], [ %i.ai, %bb.t ] ; 2 uses
  %.4 = extractvalue { ptr, i32 } %.pn55, 1
  %.432 = extractvalue { ptr, i32 } %.pn55, 0
  %i.am = icmp eq i32 %.4, %i.h
  %i.an = tail call ptr @__cxa_begin_catch(ptr %.432) #25 ; 0 uses
  br i1 %i.am, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ao = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke221 unwind label %bb.ab ; 0 uses

.invoke221:                                       ; preds = %bb.z, %bb.w
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.ce

bb.x:                                             ; preds = %.invoke221, %bb.p
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !1241, !noalias !1244 ; 3 uses
  %i.aq = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.ar = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ar, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %.not.i.i93 = icmp eq i64 %i.ap, 5
  br i1 %.not.i.i93, label %bb.y, label %.preheader, !prof !43

.preheader:                                       ; preds = %bb.x
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !80, !noalias !1245
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !81, !noalias !1245
  %i.au = add i64 %i.ap, 1
  store i64 %i.au, ptr %i.c, align 8, !tbaa !1239, !noalias !1245
  store i64 %i.ar, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.ag unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc96 unwind label %bb.ac

.noexc96:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.v
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke221 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.ab:                                            ; preds = %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.ac:                                            ; preds = %bb.y
  %i.ax = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  %i.ay = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %bb.ae

bb.ad:                                            ; preds = %.preheader
  %i.ba = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn59 = phi { ptr, i32 } [ %i.ba, %bb.ad ], [ %i.ax, %bb.ac ] ; 2 uses
  %.6 = extractvalue { ptr, i32 } %.pn59, 1
  %.634 = extractvalue { ptr, i32 } %.pn59, 0
  %i.bb = icmp eq i32 %.6, %i.h
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %.634) #25 ; 0 uses
  br i1 %i.bb, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.bd = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke220 unwind label %bb.am ; 0 uses

.invoke220:                                       ; preds = %bb.ak, %bb.af
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ce

bb.ag:                                            ; preds = %.invoke220, %.preheader
  %i.be = load i64, ptr %i.c, align 8, !tbaa !1241, !noalias !1246 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be ; 4 uses
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !1247 ; 9 uses
  %i.bh = sub i64 5, %i.be
  %.not.i.i97 = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not.i.i97, label %bb.ai, label %bb.ah, !prof !43

bb.ah:                                            ; preds = %bb.ag
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not13.i.i.i.i.i.i, label %bb.aj, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1248
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 %i.bi
  %i.bk = and i64 %i.bg, 3
  %i.bl = getelementptr i8, ptr %i.bf, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bm
  %next.gep226 = getelementptr i8, ptr %0, i64 %i.bn
  %next.gep227 = getelementptr i8, ptr %i.bf, i64 %i.bm ; 2 uses
  %next.gep229 = getelementptr i8, ptr %i.bf, i64 %i.bn ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep227), "nonnull"(ptr %next.gep229) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 8, !tbaa !42, !noalias !1248
  %wide.vec232 = load <4 x i32>, ptr %next.gep226, align 8, !tbaa !42, !noalias !1248
  store <4 x i32> %wide.vec, ptr %next.gep227, align 8, !tbaa !42, !noalias !1248
  store <4 x i32> %wide.vec232, ptr %next.gep229, align 8, !tbaa !42, !noalias !1248
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i102, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.ph301 = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i ], [ %i.bj, %middle.block ]
  %.015.i.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %i.bk, %middle.block ]
  %.01214.i.i.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bp = phi ptr [ %i.br, %scalar.ph ], [ %.ph301, %scalar.ph.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.bt, %scalar.ph ], [ %.015.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.bs, %scalar.ph ], [ %.01214.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.bq = load <2 x i32>, ptr %i.bp, align 4, !tbaa !42, !noalias !1248
  store <2 x i32> %i.bq, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !1248
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.bt = add i64 %.015.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i101 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i101, label %._crit_edge.i.i.i.i.i.i102, label %scalar.ph, !llvm.loop !1207

._crit_edge.i.i.i.i.i.i102:                       ; preds = %scalar.ph, %middle.block
  %i.bu = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i100, %i.bg
  store i64 %i.bu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1248
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc104 unwind label %bb.an

.noexc104:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i.i102, %bb.ah
  %i.bv = add i64 %i.bg, %i.be
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !1239, !noalias !1249
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.ap unwind label %bb.an

bb.ak:                                            ; preds = %bb.ae
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 447, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke220 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.am:                                            ; preds = %bb.af
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.an:                                            ; preds = %bb.ai, %bb.aj
  %i.by = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.8 = extractvalue { ptr, i32 } %i.by, 1
  %.836 = extractvalue { ptr, i32 } %i.by, 0
  %i.bz = icmp eq i32 %.8, %i.h
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %.836) #25 ; 0 uses
  br i1 %i.bz, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.cb = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke219 unwind label %bb.aw ; 0 uses

.invoke219:                                       ; preds = %bb.au, %bb.ao
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.ce

bb.ap:                                            ; preds = %.invoke219, %bb.aj
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !103, !noalias !1250 ; 2 uses
  %.idx = shl i64 %i.cc, 3                        ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !1241, !noalias !1251
  %.fr = freeze i64 %i.ce                         ; 5 uses
  %.idx.i = shl i64 %.fr, 3                       ; 4 uses
  %i.cf = getelementptr i8, ptr %1, i64 %.idx.i   ; 9 uses
  %i.cg = icmp ne i64 %i.cc, 0
  %i.ch = icmp ne i64 %.fr, 0
  %or.cond11.i = and i1 %i.cg, %i.ch
  br i1 %or.cond11.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.ap
  %i.ci = add i64 %.idx.i, -8
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add i64 %.idx, -8
  %i.cl = lshr exact i64 %i.ck, 3
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cl) ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check239 = icmp samesign ult i64 %i.cm, 3
  br i1 %min.iters.check239, label %.lr.ph.i.preheader298, label %vector.ph240

vector.ph240:                                     ; preds = %.lr.ph.i.preheader
  %n.vec241 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec241, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.co     ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 %i.co     ; 2 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next256, %vector.body242 ] ; 2 uses
  %i.cr = shl i64 %index243, 3                    ; 3 uses
  %i.cs = or disjoint i64 %i.cr, 16               ; 2 uses
  %next.gep244 = getelementptr i8, ptr %0, i64 %i.cr
  %next.gep245 = getelementptr i8, ptr %0, i64 %i.cs
  %next.gep246 = getelementptr i8, ptr %1, i64 %i.cr
  %next.gep247 = getelementptr i8, ptr %1, i64 %i.cs
  %wide.vec248 = load <4 x i32>, ptr %next.gep244, align 8, !tbaa !42
  %wide.vec251 = load <4 x i32>, ptr %next.gep245, align 8, !tbaa !42
  store <4 x i32> %wide.vec248, ptr %next.gep246, align 8, !tbaa !42
  store <4 x i32> %wide.vec251, ptr %next.gep247, align 8, !tbaa !42
  %index.next256 = add nuw i64 %index243, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next256, %n.vec241
  br i1 %i.ct, label %middle.block257, label %vector.body242, !llvm.loop !1212

middle.block257:                                  ; preds = %vector.body242
  %cmp.n258 = icmp eq i64 %i.cn, %n.vec241
  br i1 %cmp.n258, label %.critedge.i, label %.lr.ph.i.preheader298

.lr.ph.i.preheader298:                            ; preds = %.lr.ph.i.preheader, %middle.block257
  %.ph299 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.cp, %middle.block257 ]
  %.sroa.06.012.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.cq, %middle.block257 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader298, %.lr.ph.i
  %i.cu = phi ptr [ %i.cx, %.lr.ph.i ], [ %.ph299, %.lr.ph.i.preheader298 ] ; 2 uses
  %.sroa.06.012.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %.sroa.06.012.i.ph, %.lr.ph.i.preheader298 ] ; 2 uses
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !tbaa !42
  store <2 x i32> %i.cv, ptr %.sroa.06.012.i, align 4, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 3 uses
  %i.cy = icmp ne ptr %i.cx, %i.cd
  %i.cz = icmp ne ptr %i.cw, %i.cf
  %or.cond.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1213

.critedge.i:                                      ; preds = %.lr.ph.i, %middle.block257, %bb.ap
  %.sroa.06.0.lcssa.i = phi ptr [ %1, %bb.ap ], [ %i.cq, %middle.block257 ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %.lcssa10.i = phi ptr [ %0, %bb.ap ], [ %i.cp, %middle.block257 ], [ %i.cx, %.lr.ph.i ] ; 10 uses
  %i.da = icmp eq ptr %.lcssa10.i, %i.cd
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.critedge.i
  %i.db = ptrtoint ptr %i.cf to i64
  %i.dc = ptrtoint ptr %.sroa.06.0.lcssa.i to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3                 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.cf, %.sroa.06.0.lcssa.i
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aq
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i106 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.df = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i106, %i.de
  store i64 %i.df, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.aq
  %i.dg = sub i64 %.fr, %i.de
  br label %bb.at

bb.ar:                                            ; preds = %.critedge.i
  %i.dh = ptrtoint ptr %i.cd to i64
  %i.di = ptrtoint ptr %.lcssa10.i to i64
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = ashr exact i64 %i.dj, 3                 ; 9 uses
  %i.dl = sub i64 5, %.fr
  %.not.i.i.i105 = icmp ugt i64 %i.dk, %i.dl
  br i1 %.not.i.i.i105, label %bb.as, label %.lr.ph.i.i.i.i.i.i.i, !prof !43

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ar
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1252
  %min.iters.check270 = icmp ult i64 %i.dk, 20
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dm = add i64 %.idx.i, %i.dj                  ; 2 uses
  %i.dn = getelementptr i8, ptr %1, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  %i.dp = getelementptr i8, ptr %.lcssa10.i, i64 %i.dj
  %i.dq = getelementptr i8, ptr %i.dp, i64 -4
  %i.dr = getelementptr i8, ptr %1, i64 %.idx.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = getelementptr i8, ptr %1, i64 %i.dm
  %i.du = getelementptr i8, ptr %.lcssa10.i, i64 4
  %bound0 = icmp ult ptr %i.cf, %i.dq
  %bound1 = icmp ult ptr %.lcssa10.i, %i.do
  %found.conflict = and i1 %bound0, %bound1
  %bound0271 = icmp ult ptr %i.ds, %i.cd
  %bound1272 = icmp ult ptr %i.du, %i.dt
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx = or i1 %found.conflict, %found.conflict273
  br i1 %conflict.rdx, label %scalar.ph269.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %vector.memcheck
  %n.vec275 = and i64 %i.dk, -4                   ; 3 uses
  %i.dv = shl nsw i64 %n.vec275, 3                ; 2 uses
  %i.dw = getelementptr i8, ptr %.lcssa10.i, i64 %i.dv
  %i.dx = and i64 %i.dk, 3
  %i.dy = getelementptr i8, ptr %i.cf, i64 %i.dv
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next292, %vector.body276 ] ; 2 uses
  %i.dz = shl i64 %index277, 3                    ; 3 uses
  %i.ea = or disjoint i64 %i.dz, 16               ; 2 uses
  %next.gep278 = getelementptr i8, ptr %.lcssa10.i, i64 %i.dz
  %next.gep279 = getelementptr i8, ptr %.lcssa10.i, i64 %i.ea
  %next.gep280 = getelementptr i8, ptr %i.cf, i64 %i.dz ; 2 uses
  %next.gep282 = getelementptr i8, ptr %i.cf, i64 %i.ea ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep280), "nonnull"(ptr %next.gep282) ]
  %wide.vec284 = load <4 x i32>, ptr %next.gep278, align 4, !tbaa !42, !noalias !1252
  %wide.vec287 = load <4 x i32>, ptr %next.gep279, align 4, !tbaa !42, !noalias !1252
  store <4 x i32> %wide.vec284, ptr %next.gep280, align 8, !tbaa !42, !noalias !1252
  store <4 x i32> %wide.vec287, ptr %next.gep282, align 8, !tbaa !42, !noalias !1252
  %index.next292 = add nuw i64 %index277, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next292, %n.vec275
  br i1 %i.eb, label %middle.block293, label %vector.body276, !llvm.loop !1220

middle.block293:                                  ; preds = %vector.body276
  %cmp.n294 = icmp eq i64 %i.dk, %n.vec275
  br i1 %cmp.n294, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i, %middle.block293
  %.ph = phi ptr [ %.lcssa10.i, %vector.memcheck ], [ %.lcssa10.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dw, %middle.block293 ] ; 2 uses
  %.015.i.i.i.i.i.i.i.ph = phi i64 [ %i.dk, %vector.memcheck ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dx, %middle.block293 ] ; 4 uses
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dy, %middle.block293 ] ; 2 uses
  %i.ec = add nsw i64 %.015.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.015.i.i.i.i.i.i.i.ph, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader, %scalar.ph269.prol
  %i.ed = phi ptr [ %i.ef, %scalar.ph269.prol ], [ %.ph, %scalar.ph269.preheader ] ; 2 uses
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.eh, %scalar.ph269.prol ], [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.eg, %scalar.ph269.prol ], [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph269.prol ], [ 0, %scalar.ph269.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ee = load <2 x i32>, ptr %i.ed, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.ee, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !42, !noalias !1252
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.eh = add i64 %.015.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol, !llvm.loop !1221

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph269.preheader ], [ %i.ef, %scalar.ph269.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ], [ %i.eh, %scalar.ph269.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.i.i.i.ph, %scalar.ph269.preheader ], [ %i.eg, %scalar.ph269.prol ]
  %i.ei = icmp ult i64 %i.ec, 7
  br i1 %i.ei, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %i.ej = phi ptr [ %i.fg, %scalar.ph269 ], [ %.unr, %scalar.ph269.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.fi, %scalar.ph269 ], [ %.015.i.i.i.i.i.i.i.unr, %scalar.ph269.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.fh, %scalar.ph269 ], [ %.01214.i.i.i.i.i.i.i.unr, %scalar.ph269.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i) ]
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.ek, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !42, !noalias !1252
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.en = load <2 x i32>, ptr %i.el, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.en, ptr %i.em, align 4, !tbaa !42, !noalias !1252
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.eq = load <2 x i32>, ptr %i.eo, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.eq, ptr %i.ep, align 4, !tbaa !42, !noalias !1252
  %i.er = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 24
  %i.et = load <2 x i32>, ptr %i.er, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.et, ptr %i.es, align 4, !tbaa !42, !noalias !1252
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 32
  %i.ew = load <2 x i32>, ptr %i.eu, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.ew, ptr %i.ev, align 4, !tbaa !42, !noalias !1252
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 40
  %i.ez = load <2 x i32>, ptr %i.ex, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.ez, ptr %i.ey, align 4, !tbaa !42, !noalias !1252
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.fb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 48
  %i.fc = load <2 x i32>, ptr %i.fa, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.fc, ptr %i.fb, align 4, !tbaa !42, !noalias !1252
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 56
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !tbaa !42, !noalias !1252
  store <2 x i32> %i.ff, ptr %i.fe, align 4, !tbaa !42, !noalias !1252
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 64
  %i.fi = add i64 %.015.i.i.i.i.i.i.i, -8         ; 2 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, label %scalar.ph269, !llvm.loop !1222

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc107 unwind label %bb.ax

.noexc107:                                        ; preds = %bb.as
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i: ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block293
  %i.fj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.dk
  store i64 %i.fj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1252
  %i.fk = add i64 %i.dk, %.fr
  br label %bb.at

bb.at:                                            ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %storemerge.i = phi i64 [ %i.fk, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i ], [ %i.dg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  store i64 %storemerge.i, ptr %i.c, align 8, !tbaa !1239
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 449, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %bb.az unwind label %bb.ax

bb.au:                                            ; preds = %bb.an
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_exceptions_ndI14counting_valueLm10EEvv)
          to label %.invoke219 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.aw:                                            ; preds = %bb.ao
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

bb.ax:                                            ; preds = %bb.as, %bb.at
  %i.fn = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  %i.fp = extractvalue { ptr, i32 } %i.fn, 1
  %i.fq = icmp eq i32 %i.fp, %i.h
  %i.fr = call ptr @__cxa_begin_catch(ptr %i.fo) #25 ; 0 uses
  br i1 %i.fq, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.fs = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %.invoke218 unwind label %bb.bf ; 0 uses

.invoke218:                                       ; preds = %bb.bd, %bb.ay
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.ce

bb.az:                                            ; preds = %.invoke218, %bb.at
  %i.ft = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.fu = add i64 %i.ft, 1                        ; 4 uses
  store i64 %i.fu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.fv = load i64, ptr %i.c, align 8, !tbaa !1241, !noalias !1253 ; 5 uses
  %.idx.i.i = shl i64 %i.fv, 3                    ; 4 uses
  %i.fw = getelementptr i8, ptr %1, i64 %.idx.i.i
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %.critedge.i.i.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.az
  %i.fx = add i64 %.idx.i.i, -8                   ; 2 uses
  %i.fy = lshr exact i64 %i.fx, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.fy, i64 9) ; 2 uses
  %i.fz = shl nuw nsw i64 %umin, 3
  %i.ga = add nuw nsw i64 %i.fz, 8                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 0, i64 %i.ga, i1 false), !tbaa !42
  %i.gb = sub nuw nsw i64 9, %umin
  %i.gc = icmp ugt i64 %i.fx, 64
  br i1 %i.gc, label %bb.ba, label %.critedge.i.i.thread

bb.ba:                                            ; preds = %.lr.ph.i.i.preheader
  %gepdiff = sub i64 %.idx.i.i, %i.ga
  %i.gd = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %.idx.i.i, %i.ga
  br i1 %.not3.i.i.i.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ba
  %i.ge = sub i64 %i.fu, %i.gd                    ; 2 uses
  store i64 %i.ge, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.ba
  %i.gf = phi i64 [ %i.ge, %.lr.ph.preheader.i.i.i.i ], [ %i.fu, %bb.ba ]
  %i.gg = sub i64 %i.fv, %i.gd
  br label %bb.bc

.critedge.i.i.thread:                             ; preds = %bb.az, %.lr.ph.i.i.preheader
  %.sroa.3.0.lcssa.i.i194 = phi i64 [ %i.gb, %.lr.ph.i.i.preheader ], [ 10, %bb.az ] ; 4 uses
  %i.gh = sub i64 5, %i.fv
  %.not.i.i.i.i108 = icmp ugt i64 %.sroa.3.0.lcssa.i.i194, %i.gh
  br i1 %.not.i.i.i.i108, label %bb.bb, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, !prof !43

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.critedge.i.i.thread
  %i.gi = shl nuw nsw i64 %.sroa.3.0.lcssa.i.i194, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %i.gi, i1 false), !tbaa !42, !noalias !1254
  %i.gj = add i64 %.sroa.3.0.lcssa.i.i194, %i.fu  ; 2 uses
  store i64 %i.gj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1254
  %i.gk = add i64 %.sroa.3.0.lcssa.i.i194, %i.fv
  br label %bb.bc

bb.bb:                                            ; preds = %.critedge.i.i.thread
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm5ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc110 unwind label %bb.bg

.noexc110:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i
  %i.gl = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gf, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  %storemerge.i.i = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gg, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm5ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i.i ]
  store i64 %storemerge.i.i, ptr %i.c, align 8, !tbaa !1239
  %i.gm = add i64 %i.gl, -1
end_hunk_2
begin_hunk_3_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_:bb.a
  %.not8.i = icmp eq ptr %1, %i.f
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, %.lr.ph.i40
  %.010.i = phi ptr [ %i.t, %.lr.ph.i40 ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ]
  %.079.i = phi ptr [ %i.s, %.lr.ph.i40 ], [ %i.f, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.079.i, i64 -8 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.010.i, i64 -8 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079.i, i64 -4
  %i.v = load <2 x i32>, ptr %i.s, align 4, !tbaa !42
  store <2 x i32> %i.v, ptr %i.t, align 4, !tbaa !42
  store i32 0, ptr %i.s, align 4, !tbaa !80
  store i32 0, ptr %i.u, align 4, !tbaa !81
  %.not.i41 = icmp eq ptr %1, %i.s
  br i1 %.not.i41, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i40, !llvm.loop !28

_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit: ; preds = %.lr.ph.i40, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit
  %i.w = load ptr, ptr %4, align 8, !tbaa !137    ; 9 uses
  br i1 %.not17.i, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  %min.iters.check107 = icmp ult i64 %3, 16
  br i1 %min.iters.check107, label %.lr.ph.i.i.preheader277, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.x = shl i64 %3, 3                            ; 3 uses
  %i.y = add i64 %i.x, -4                         ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.y
  %i.ab = getelementptr i8, ptr %1, i64 4
  %i.ac = getelementptr i8, ptr %1, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.w, i64 4
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.x
  %bound0 = icmp ult ptr %1, %i.aa
  %bound1 = icmp ult ptr %i.w, %i.z
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %i.ab, %i.ae
  %bound1109 = icmp ult ptr %i.ad, %i.ac
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader277, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck
  %n.vec112 = and i64 %3, -4                      ; 3 uses
  %i.af = shl i64 %n.vec112, 3                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %1, i64 %i.af
  %i.ai = and i64 %3, 3
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next127, %vector.body113 ] ; 2 uses
  %i.aj = shl i64 %index114, 3                    ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.w, i64 %i.aj
  %next.gep116 = getelementptr i8, ptr %i.w, i64 %i.ak
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.aj
  %next.gep118 = getelementptr i8, ptr %1, i64 %i.ak
  %wide.vec119 = load <4 x i32>, ptr %next.gep115, align 4, !tbaa !42, !noalias !1838
  %wide.vec122 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !42, !noalias !1838
  store <4 x i32> %wide.vec119, ptr %next.gep117, align 4, !tbaa !42, !noalias !1838
  store <4 x i32> %wide.vec122, ptr %next.gep118, align 4, !tbaa !42, !noalias !1838
  %index.next127 = add nuw i64 %index114, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next127, %n.vec112
  br i1 %i.al, label %middle.block128, label %vector.body113, !llvm.loop !1823

middle.block128:                                  ; preds = %vector.body113
  %cmp.n129 = icmp eq i64 %3, %n.vec112
  br i1 %cmp.n129, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i.preheader277

.lr.ph.i.i.preheader277:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block128
  %.ph278 = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.ag, %middle.block128 ] ; 2 uses
  %.06.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.preheader ], [ %i.ah, %middle.block128 ] ; 2 uses
  %.035.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block128 ] ; 4 uses
  %i.am = add i64 %.035.i.i.ph, -1
  %xtraiter = and i64 %.035.i.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader277, %.lr.ph.i.i.prol
  %i.an = phi ptr [ %i.aq, %.lr.ph.i.i.prol ], [ %.ph278, %.lr.ph.i.i.preheader277 ] ; 2 uses
  %.06.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.prol ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader277 ] ; 2 uses
  %.035.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.prol ], [ %.035.i.i.ph, %.lr.ph.i.i.preheader277 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader277 ]
  %i.ao = add i64 %.035.i.i.prol, -1              ; 2 uses
  %i.ap = load <2 x i32>, ptr %i.an, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.ap, ptr %.06.i.i.prol, align 4, !tbaa !42, !noalias !1838
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1824

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader277
  %.unr = phi ptr [ %.ph278, %.lr.ph.i.i.preheader277 ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.06.i.i.unr = phi ptr [ %.06.i.i.ph, %.lr.ph.i.i.preheader277 ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.035.i.i.unr = phi i64 [ %.035.i.i.ph, %.lr.ph.i.i.preheader277 ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 7
  br i1 %i.as, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.at = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %.035.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.au, ptr %.06.i.i, align 4, !tbaa !42, !noalias !1838
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ax = load <2 x i32>, ptr %i.av, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.ax, ptr %i.aw, align 4, !tbaa !42, !noalias !1838
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.ba = load <2 x i32>, ptr %i.ay, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.ba, ptr %i.az, align 4, !tbaa !42, !noalias !1838
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.bd, ptr %i.bc, align 4, !tbaa !42, !noalias !1838
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.bg, ptr %i.bf, align 4, !tbaa !42, !noalias !1838
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.bj = load <2 x i32>, ptr %i.bh, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.bj, ptr %i.bi, align 4, !tbaa !42, !noalias !1838
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.bm = load <2 x i32>, ptr %i.bk, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.bm, ptr %i.bl, align 4, !tbaa !42, !noalias !1838
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  %i.bp = add i64 %.035.i.i, -8                   ; 2 uses
  %i.bq = load <2 x i32>, ptr %i.bn, align 4, !tbaa !42, !noalias !1838
  store <2 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !42, !noalias !1838
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  %.not.i.i.7 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.7, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1825

bb.c:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread, label %.lr.ph.i50

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread: ; preds = %bb.c
  %i.bt = load ptr, ptr %4, align 8, !tbaa !137
  br label %.loopexit

.lr.ph.i50:                                       ; preds = %bb.c
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %3  ; 6 uses
  %_ZZN14counting_value1cEvE2co.promoted.i51 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76 ; 3 uses
  %i.bv = add i64 %i.a, -8
  %i.bw = sub i64 %i.bv, %i.b                     ; 3 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check147 = icmp ult i64 %i.bw, 184
  br i1 %min.iters.check147, label %scalar.ph146.preheader, label %vector.memcheck148

vector.memcheck148:                               ; preds = %.lr.ph.i50
  %i.bz = shl i64 %3, 3                           ; 2 uses
  %i.ca = and i64 %i.bw, -8                       ; 3 uses
  %i.cb = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = getelementptr i8, ptr %1, i64 %i.ca
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = getelementptr i8, ptr %1, i64 %i.bz
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = getelementptr i8, ptr %1, i64 %i.cb
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = getelementptr i8, ptr %1, i64 4
  %i.cl = getelementptr i8, ptr %1, i64 %i.ca
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %bound0149 = icmp ult ptr %i.bu, %i.cf
  %bound1150 = icmp ult ptr %1, %i.cd
  %found.conflict151 = and i1 %bound0149, %bound1150
  %bound0152 = icmp ult ptr %i.ch, %i.cm
  %bound1153 = icmp ult ptr %i.ck, %i.cj
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %found.conflict151, %found.conflict154
  br i1 %conflict.rdx155, label %scalar.ph146.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck148
  %n.vec157 = and i64 %i.by, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec157, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %1, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.bu, i64 %i.cn
  %i.cq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %_ZZN14counting_value1cEvE2co.promoted.i51, i64 0
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next175, %vector.body158 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.cq, %vector.ph156 ], [ %i.ct, %vector.body158 ]
  %vec.phi160 = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.cu, %vector.body158 ]
  %i.cr = shl i64 %index159, 3                    ; 3 uses
  %i.cs = or disjoint i64 %i.cr, 16               ; 2 uses
  %next.gep161 = getelementptr i8, ptr %1, i64 %i.cr ; 2 uses
  %next.gep162 = getelementptr i8, ptr %1, i64 %i.cs ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.bu, i64 %i.cr ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.bu, i64 %i.cs ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep163), "nonnull"(ptr %next.gep165) ]
  %wide.vec167 = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !42
  %wide.vec170 = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !42
  store <4 x i32> %wide.vec167, ptr %next.gep163, align 4, !tbaa !42
  store <4 x i32> %wide.vec170, ptr %next.gep165, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep161, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep162, align 4, !tbaa !42
  %i.ct = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.cu = add <2 x i64> %vec.phi160, splat (i64 1) ; 2 uses
  %index.next175 = add nuw i64 %index159, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next175, %n.vec157
  br i1 %i.cv, label %middle.block176, label %vector.body158, !llvm.loop !1826

middle.block176:                                  ; preds = %vector.body158
  %bin.rdx = add <2 x i64> %i.cu, %i.ct
  %i.cw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n177 = icmp eq i64 %i.by, %n.vec157
  br i1 %cmp.n177, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph146.preheader

scalar.ph146.preheader:                           ; preds = %vector.memcheck148, %.lr.ph.i50, %middle.block176
  %.ph273 = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i51, %vector.memcheck148 ], [ %_ZZN14counting_value1cEvE2co.promoted.i51, %.lr.ph.i50 ], [ %i.cw, %middle.block176 ]
  %.018.i.ph = phi ptr [ %1, %vector.memcheck148 ], [ %1, %.lr.ph.i50 ], [ %i.co, %middle.block176 ]
  %.01517.i.ph = phi ptr [ %i.bu, %vector.memcheck148 ], [ %i.bu, %.lr.ph.i50 ], [ %i.cp, %middle.block176 ]
  br label %scalar.ph146

scalar.ph146:                                     ; preds = %scalar.ph146.preheader, %scalar.ph146
  %i.cx = phi i64 [ %i.da, %scalar.ph146 ], [ %.ph273, %scalar.ph146.preheader ]
  %.018.i = phi ptr [ %i.db, %scalar.ph146 ], [ %.018.i.ph, %scalar.ph146.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.dc, %scalar.ph146 ], [ %.01517.i.ph, %scalar.ph146.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.cz = load <2 x i32>, ptr %.018.i, align 4, !tbaa !42
  store <2 x i32> %i.cz, ptr %.01517.i, align 4, !tbaa !42
  store i32 0, ptr %.018.i, align 4, !tbaa !80
  store i32 0, ptr %i.cy, align 4, !tbaa !81
  %i.da = add i64 %i.cx, 1                        ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i52 = icmp eq ptr %i.db, %2
  br i1 %.not.i52, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph146, !llvm.loop !1827

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph146, %middle.block176
  %.lcssa92 = phi i64 [ %i.cw, %middle.block176 ], [ %i.da, %scalar.ph146 ]
  store i64 %.lcssa92, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.dd = load ptr, ptr %4, align 8, !tbaa !137   ; 9 uses
  %min.iters.check194 = icmp ult i64 %i.d, 14
  br i1 %min.iters.check194, label %.lr.ph.i.i55.preheader, label %vector.memcheck195

vector.memcheck195:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %i.de = add i64 %i.c, -4                        ; 2 uses
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.de
  %i.dh = getelementptr i8, ptr %1, i64 4
  %i.di = getelementptr nuw i8, ptr %i.dd, i64 4
  %i.dj = getelementptr i8, ptr %i.dd, i64 %i.c
  %bound0196 = icmp ult ptr %1, %i.dg
  %bound1197 = icmp ult ptr %i.dd, %i.df
  %found.conflict198 = and i1 %bound0196, %bound1197
  %bound0199 = icmp ult ptr %i.dh, %i.dj
  %bound1200 = icmp ult ptr %i.di, %2
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %found.conflict198, %found.conflict201
  br i1 %conflict.rdx202, label %.lr.ph.i.i55.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck195
  %n.vec204 = and i64 %i.d, -4                    ; 3 uses
  %i.dk = shl nsw i64 %n.vec204, 3                ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %1, i64 %i.dk
  %i.dn = and i64 %i.d, 3
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next219, %vector.body205 ] ; 2 uses
  %i.do = shl i64 %index206, 3                    ; 3 uses
  %i.dp = or disjoint i64 %i.do, 16               ; 2 uses
  %next.gep207 = getelementptr i8, ptr %i.dd, i64 %i.do
  %next.gep208 = getelementptr i8, ptr %i.dd, i64 %i.dp
  %next.gep209 = getelementptr i8, ptr %1, i64 %i.do
  %next.gep210 = getelementptr i8, ptr %1, i64 %i.dp
  %wide.vec211 = load <4 x i32>, ptr %next.gep207, align 4, !tbaa !42, !noalias !1839
  %wide.vec214 = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !42, !noalias !1839
  store <4 x i32> %wide.vec211, ptr %next.gep209, align 4, !tbaa !42, !noalias !1839
  store <4 x i32> %wide.vec214, ptr %next.gep210, align 4, !tbaa !42, !noalias !1839
  %index.next219 = add nuw i64 %index206, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next219, %n.vec204
  br i1 %i.dq, label %middle.block220, label %vector.body205, !llvm.loop !1830

middle.block220:                                  ; preds = %vector.body205
  %cmp.n221 = icmp eq i64 %i.d, %n.vec204
  br i1 %cmp.n221, label %.loopexit, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %vector.memcheck195, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %middle.block220
  %.ph272 = phi ptr [ %i.dd, %vector.memcheck195 ], [ %i.dd, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.dl, %middle.block220 ] ; 2 uses
  %.06.i.i56.ph = phi ptr [ %1, %vector.memcheck195 ], [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.dm, %middle.block220 ] ; 2 uses
  %.035.i.i57.ph = phi i64 [ %i.d, %vector.memcheck195 ], [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.dn, %middle.block220 ] ; 4 uses
  %i.dr = add nsw i64 %.035.i.i57.ph, -1
  %xtraiter279 = and i64 %.035.i.i57.ph, 7        ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %.lr.ph.i.i55.preheader, %.lr.ph.i.i55.prol
  %i.ds = phi ptr [ %i.dv, %.lr.ph.i.i55.prol ], [ %.ph272, %.lr.ph.i.i55.preheader ] ; 2 uses
  %.06.i.i56.prol = phi ptr [ %i.dw, %.lr.ph.i.i55.prol ], [ %.06.i.i56.ph, %.lr.ph.i.i55.preheader ] ; 2 uses
  %.035.i.i57.prol = phi i64 [ %i.dt, %.lr.ph.i.i55.prol ], [ %.035.i.i57.ph, %.lr.ph.i.i55.preheader ]
  %prol.iter281 = phi i64 [ %prol.iter281.next, %.lr.ph.i.i55.prol ], [ 0, %.lr.ph.i.i55.preheader ]
  %i.dt = add i64 %.035.i.i57.prol, -1            ; 2 uses
  %i.du = load <2 x i32>, ptr %i.ds, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.du, ptr %.06.i.i56.prol, align 4, !tbaa !42, !noalias !1839
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.06.i.i56.prol, i64 8 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !1831

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %.lr.ph.i.i55.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i55.preheader ], [ %i.dv, %.lr.ph.i.i55.prol ]
  %.unr282 = phi ptr [ %.ph272, %.lr.ph.i.i55.preheader ], [ %i.dv, %.lr.ph.i.i55.prol ]
  %.06.i.i56.unr = phi ptr [ %.06.i.i56.ph, %.lr.ph.i.i55.preheader ], [ %i.dw, %.lr.ph.i.i55.prol ]
  %.035.i.i57.unr = phi i64 [ %.035.i.i57.ph, %.lr.ph.i.i55.preheader ], [ %i.dt, %.lr.ph.i.i55.prol ]
  %i.dx = icmp ult i64 %i.dr, 7
  br i1 %i.dx, label %.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %i.dy = phi ptr [ %i.ew, %.lr.ph.i.i55 ], [ %.unr282, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %.06.i.i56 = phi ptr [ %i.ex, %.lr.ph.i.i55 ], [ %.06.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 9 uses
  %.035.i.i57 = phi i64 [ %i.eu, %.lr.ph.i.i55 ], [ %.035.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ]
  %i.dz = load <2 x i32>, ptr %i.dy, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.dz, ptr %.06.i.i56, align 4, !tbaa !42, !noalias !1839
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 8
  %i.ec = load <2 x i32>, ptr %i.ea, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.ec, ptr %i.eb, align 4, !tbaa !42, !noalias !1839
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 16
  %i.ef = load <2 x i32>, ptr %i.ed, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.ef, ptr %i.ee, align 4, !tbaa !42, !noalias !1839
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 24
  %i.ei = load <2 x i32>, ptr %i.eg, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.ei, ptr %i.eh, align 4, !tbaa !42, !noalias !1839
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 32
  %i.el = load <2 x i32>, ptr %i.ej, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.el, ptr %i.ek, align 4, !tbaa !42, !noalias !1839
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 40
  %i.eo = load <2 x i32>, ptr %i.em, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.eo, ptr %i.en, align 4, !tbaa !42, !noalias !1839
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 48
  %i.er = load <2 x i32>, ptr %i.ep, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.er, ptr %i.eq, align 4, !tbaa !42, !noalias !1839
  %i.es = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 56
  %i.eu = add i64 %.035.i.i57, -8                 ; 2 uses
  %i.ev = load <2 x i32>, ptr %i.es, align 4, !tbaa !42, !noalias !1839
  store <2 x i32> %i.ev, ptr %i.et, align 4, !tbaa !42, !noalias !1839
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 64 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 64
  %.not.i.i58.7 = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i58.7, label %.loopexit, label %.lr.ph.i.i55, !llvm.loop !1832

.loopexit:                                        ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %middle.block220, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread
  %i.ey = phi ptr [ %i.bt, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread ], [ %i.dl, %middle.block220 ], [ %.lcssa.unr, %.lr.ph.i.i55.prol.loopexit ], [ %i.ew, %.lr.ph.i.i55 ] ; 9 uses
  %i.ez = sub i64 %3, %i.d                        ; 7 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1840
  %min.iters.check239 = icmp ult i64 %i.ez, 20
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.loopexit
  %i.fa = shl i64 %3, 3                           ; 2 uses
  %i.fb = add i64 %i.fa, -4
  %i.fc = sub i64 %i.fb, %i.c                     ; 2 uses
  %i.fd = getelementptr i8, ptr %2, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.ff = getelementptr i8, ptr %2, i64 4
  %i.fg = sub i64 %i.fa, %i.c                     ; 2 uses
  %i.fh = getelementptr i8, ptr %2, i64 %i.fg
  %i.fi = getelementptr nuw i8, ptr %i.ey, i64 4
  %i.fj = getelementptr i8, ptr %i.ey, i64 %i.fg
  %bound0241 = icmp ult ptr %2, %i.fe
  %bound1242 = icmp ult ptr %i.ey, %i.fd
  %found.conflict243 = and i1 %bound0241, %bound1242
  %bound0244 = icmp ult ptr %i.ff, %i.fj
  %bound1245 = icmp ult ptr %i.fi, %i.fh
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %found.conflict243, %found.conflict246
  br i1 %conflict.rdx247, label %scalar.ph238.preheader, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck240
  %n.vec249 = and i64 %i.ez, -4                   ; 3 uses
  %i.fk = shl i64 %n.vec249, 3                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.ey, i64 %i.fk
  %i.fm = and i64 %i.ez, 3
  %i.fn = getelementptr i8, ptr %2, i64 %i.fk
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next266, %vector.body250 ] ; 2 uses
  %i.fo = shl i64 %index251, 3                    ; 3 uses
  %i.fp = or disjoint i64 %i.fo, 16               ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.ey, i64 %i.fo
  %next.gep253 = getelementptr i8, ptr %i.ey, i64 %i.fp
  %next.gep254 = getelementptr i8, ptr %2, i64 %i.fo ; 2 uses
  %next.gep256 = getelementptr i8, ptr %2, i64 %i.fp ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep254), "nonnull"(ptr %next.gep256) ]
  %wide.vec258 = load <4 x i32>, ptr %next.gep252, align 4, !tbaa !42, !noalias !1840
  %wide.vec261 = load <4 x i32>, ptr %next.gep253, align 4, !tbaa !42, !noalias !1840
  store <4 x i32> %wide.vec258, ptr %next.gep254, align 4, !tbaa !42, !noalias !1840
  store <4 x i32> %wide.vec261, ptr %next.gep256, align 4, !tbaa !42, !noalias !1840
  %index.next266 = add nuw i64 %index251, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next266, %n.vec249
  br i1 %i.fq, label %middle.block267, label %vector.body250, !llvm.loop !1835

middle.block267:                                  ; preds = %vector.body250
  %cmp.n268 = icmp eq i64 %i.ez, %n.vec249
  br i1 %cmp.n268, label %._crit_edge.i.i, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %vector.memcheck240, %.loopexit, %middle.block267
  %.ph = phi ptr [ %i.ey, %vector.memcheck240 ], [ %i.ey, %.loopexit ], [ %i.fl, %middle.block267 ] ; 2 uses
  %.015.i.i.ph = phi i64 [ %i.ez, %vector.memcheck240 ], [ %i.ez, %.loopexit ], [ %i.fm, %middle.block267 ] ; 4 uses
  %.01214.i.i.ph = phi ptr [ %2, %vector.memcheck240 ], [ %2, %.loopexit ], [ %i.fn, %middle.block267 ] ; 2 uses
  %i.fr = add i64 %.015.i.i.ph, -1
  %xtraiter283 = and i64 %.015.i.i.ph, 7          ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %scalar.ph238.prol.loopexit, label %scalar.ph238.prol

scalar.ph238.prol:                                ; preds = %scalar.ph238.preheader, %scalar.ph238.prol
  %i.fs = phi ptr [ %i.fu, %scalar.ph238.prol ], [ %.ph, %scalar.ph238.preheader ] ; 2 uses
  %.015.i.i.prol = phi i64 [ %i.fw, %scalar.ph238.prol ], [ %.015.i.i.ph, %scalar.ph238.preheader ]
  %.01214.i.i.prol = phi ptr [ %i.fv, %scalar.ph238.prol ], [ %.01214.i.i.ph, %scalar.ph238.preheader ] ; 3 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %scalar.ph238.prol ], [ 0, %scalar.ph238.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.prol) ]
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.ft, ptr %.01214.i.i.prol, align 4, !tbaa !42, !noalias !1840
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 8 ; 2 uses
  %i.fw = add i64 %.015.i.i.prol, -1              ; 2 uses
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %scalar.ph238.prol.loopexit, label %scalar.ph238.prol, !llvm.loop !1836

scalar.ph238.prol.loopexit:                       ; preds = %scalar.ph238.prol, %scalar.ph238.preheader
  %.unr286 = phi ptr [ %.ph, %scalar.ph238.preheader ], [ %i.fu, %scalar.ph238.prol ]
  %.015.i.i.unr = phi i64 [ %.015.i.i.ph, %scalar.ph238.preheader ], [ %i.fw, %scalar.ph238.prol ]
  %.01214.i.i.unr = phi ptr [ %.01214.i.i.ph, %scalar.ph238.preheader ], [ %i.fv, %scalar.ph238.prol ]
  %i.fx = icmp ult i64 %i.fr, 7
  br i1 %i.fx, label %._crit_edge.i.i, label %scalar.ph238

scalar.ph238:                                     ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238
  %i.fy = phi ptr [ %i.gv, %scalar.ph238 ], [ %.unr286, %scalar.ph238.prol.loopexit ] ; 9 uses
  %.015.i.i = phi i64 [ %i.gx, %scalar.ph238 ], [ %.015.i.i.unr, %scalar.ph238.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.gw, %scalar.ph238 ], [ %.01214.i.i.unr, %scalar.ph238.prol.loopexit ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.fz = load <2 x i32>, ptr %i.fy, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.fz, ptr %.01214.i.i, align 4, !tbaa !42, !noalias !1840
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.gc = load <2 x i32>, ptr %i.ga, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gc, ptr %i.gb, align 4, !tbaa !42, !noalias !1840
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.gf = load <2 x i32>, ptr %i.gd, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gf, ptr %i.ge, align 4, !tbaa !42, !noalias !1840
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gh = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.gi = load <2 x i32>, ptr %i.gg, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gi, ptr %i.gh, align 4, !tbaa !42, !noalias !1840
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gk = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32
  %i.gl = load <2 x i32>, ptr %i.gj, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gl, ptr %i.gk, align 4, !tbaa !42, !noalias !1840
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gn = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 40
  %i.go = load <2 x i32>, ptr %i.gm, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.go, ptr %i.gn, align 4, !tbaa !42, !noalias !1840
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 48
  %i.gr = load <2 x i32>, ptr %i.gp, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gr, ptr %i.gq, align 4, !tbaa !42, !noalias !1840
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 56
  %i.gu = load <2 x i32>, ptr %i.gs, align 4, !tbaa !42, !noalias !1840
  store <2 x i32> %i.gu, ptr %i.gt, align 4, !tbaa !42, !noalias !1840
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 64
  %i.gx = add i64 %.015.i.i, -8                   ; 2 uses
  %.not.i.i61.7 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i61.7, label %._crit_edge.i.i, label %scalar.ph238, !llvm.loop !1837

._crit_edge.i.i:                                  ; preds = %scalar.ph238.prol.loopexit, %scalar.ph238, %middle.block267
  %i.gy = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.ez
  store i64 %i.gy, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1840
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block128, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS2_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS4_NS2_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SW_mSR_(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %.not = icmp ult i64 %i.d, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %3
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 5 uses
  %.not17.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %min.iters.check = icmp eq i64 %3, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %3, -2                         ; 3 uses
  %i.g = and i64 %3, 1
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %2, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.k ; 2 uses
  %next.gep93 = getelementptr i8, ptr %2, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep93) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !42
  store <4 x i32> %wide.vec, ptr %next.gep93, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1841

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.020.i.ph = phi i64 [ %3, %.lr.ph.i ], [ %i.g, %middle.block ]
  %.0819.i.ph = phi ptr [ %i.f, %.lr.ph.i ], [ %i.i, %middle.block ]
  %.01618.i.ph = phi ptr [ %2, %.lr.ph.i ], [ %i.j, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020.i = phi i64 [ %i.m, %scalar.ph ], [ %.020.i.ph, %scalar.ph.preheader ]
  %.0819.i = phi ptr [ %i.p, %scalar.ph ], [ %.0819.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.01618.i = phi ptr [ %i.q, %scalar.ph ], [ %.01618.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.m = add i64 %.020.i, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.o = load <2 x i32>, ptr %.0819.i, align 4, !tbaa !42
  store <2 x i32> %i.o, ptr %.01618.i, align 4, !tbaa !42
  store i32 0, ptr %.0819.i, align 4, !tbaa !80
  store i32 0, ptr %i.n, align 4, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1842

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.r = add i64 %_ZZN14counting_value1cEvE2co.promoted.i, %3
  store i64 %i.r, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit: ; preds = %bb.b, %._crit_edge.i
  %.not8.i = icmp eq ptr %1, %i.f
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, %.lr.ph.i40
  %.010.i = phi ptr [ %i.t, %.lr.ph.i40 ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ]
  %.079.i = phi ptr [ %i.s, %.lr.ph.i40 ], [ %i.f, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.079.i, i64 -8 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.010.i, i64 -8 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079.i, i64 -4
  %i.v = load <2 x i32>, ptr %i.s, align 4, !tbaa !42
  store <2 x i32> %i.v, ptr %i.t, align 4, !tbaa !42
  store i32 0, ptr %i.s, align 4, !tbaa !80
  store i32 0, ptr %i.u, align 4, !tbaa !81
  %.not.i41 = icmp eq ptr %1, %i.s
  br i1 %.not.i41, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i40, !llvm.loop !28

_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit: ; preds = %.lr.ph.i40, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit
  br i1 %.not17.i, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.in.prol = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.06.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.prol ], [ %1, %.lr.ph.i.i.preheader ] ; 2 uses
  %.035.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.prol ], [ %3, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.w = load ptr, ptr %.in.prol, align 8, !tbaa !189 ; 3 uses
  %i.x = add i64 %.035.i.i.prol, -1               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !42, !noalias !1855
  store <2 x i32> %i.z, ptr %.06.i.i.prol, align 4, !tbaa !42, !noalias !1855
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1845

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.in.unr = phi ptr [ %4, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %.06.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.prol ]
  %.035.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %i.ab = icmp ult i64 %3, 4
  br i1 %i.ab, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.in = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.06.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i = phi i64 [ %i.ap, %.lr.ph.i.i ], [ %.035.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ac = load ptr, ptr %.in, align 8, !tbaa !189 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load <2 x i32>, ptr %i.ad, align 4, !tbaa !42, !noalias !1855
  store <2 x i32> %i.ae, ptr %.06.i.i, align 4, !tbaa !42, !noalias !1855
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !189 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load <2 x i32>, ptr %i.ah, align 4, !tbaa !42, !noalias !1855
  store <2 x i32> %i.ai, ptr %i.af, align 4, !tbaa !42, !noalias !1855
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load <2 x i32>, ptr %i.al, align 4, !tbaa !42, !noalias !1855
  store <2 x i32> %i.am, ptr %i.aj, align 4, !tbaa !42, !noalias !1855
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !189 ; 2 uses
  %i.ap = add i64 %.035.i.i, -4                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <2 x i32>, ptr %i.aq, align 4, !tbaa !42, !noalias !1855
  store <2 x i32> %i.ar, ptr %i.an, align 4, !tbaa !42, !noalias !1855
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %.not.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1846

bb.c:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread, label %.lr.ph.i50

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread: ; preds = %bb.c
  %i.at = load ptr, ptr %4, align 8, !tbaa !1857
  br label %.loopexit

.lr.ph.i50:                                       ; preds = %bb.c
  %i.au = getelementptr [8 x i8], ptr %1, i64 %3  ; 6 uses
  %_ZZN14counting_value1cEvE2co.promoted.i51 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76 ; 3 uses
  %i.av = add i64 %i.a, -8
  %i.aw = sub i64 %i.av, %i.b                     ; 3 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check107 = icmp ult i64 %i.aw, 184
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i50
  %i.az = shl i64 %3, 3                           ; 2 uses
  %i.ba = and i64 %i.aw, -8                       ; 3 uses
  %i.bb = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = getelementptr i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = getelementptr i8, ptr %1, i64 %i.ba
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = getelementptr i8, ptr %1, i64 %i.az
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = getelementptr i8, ptr %1, i64 %i.bb
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = getelementptr i8, ptr %1, i64 4
  %i.bl = getelementptr i8, ptr %1, i64 %i.ba
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %bound0 = icmp ult ptr %i.au, %i.bf
  %bound1 = icmp ult ptr %1, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  %bound0108 = icmp ult ptr %i.bh, %i.bm
  %bound1109 = icmp ult ptr %i.bk, %i.bj
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx = or i1 %found.conflict, %found.conflict110
  br i1 %conflict.rdx, label %scalar.ph106.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck
  %n.vec112 = and i64 %i.ay, 4611686018427387900  ; 3 uses
  %i.bn = shl i64 %n.vec112, 3                    ; 2 uses
  %i.bo = getelementptr i8, ptr %1, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.au, i64 %i.bn
  %i.bq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %_ZZN14counting_value1cEvE2co.promoted.i51, i64 0
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next130, %vector.body113 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bq, %vector.ph111 ], [ %i.bt, %vector.body113 ]
  %vec.phi115 = phi <2 x i64> [ zeroinitializer, %vector.ph111 ], [ %i.bu, %vector.body113 ]
  %i.br = shl i64 %index114, 3                    ; 3 uses
  %i.bs = or disjoint i64 %i.br, 16               ; 2 uses
  %next.gep116 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.au, i64 %i.br ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.au, i64 %i.bs ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep118), "nonnull"(ptr %next.gep120) ]
  %wide.vec122 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !42
  %wide.vec125 = load <4 x i32>, ptr %next.gep117, align 4, !tbaa !42
  store <4 x i32> %wide.vec122, ptr %next.gep118, align 4, !tbaa !42
  store <4 x i32> %wide.vec125, ptr %next.gep120, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep116, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep117, align 4, !tbaa !42
  %i.bt = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bu = add <2 x i64> %vec.phi115, splat (i64 1) ; 2 uses
  %index.next130 = add nuw i64 %index114, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next130, %n.vec112
  br i1 %i.bv, label %middle.block131, label %vector.body113, !llvm.loop !1847

middle.block131:                                  ; preds = %vector.body113
  %bin.rdx = add <2 x i64> %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n132 = icmp eq i64 %i.ay, %n.vec112
  br i1 %cmp.n132, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i50, %middle.block131
  %.ph = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i51, %vector.memcheck ], [ %_ZZN14counting_value1cEvE2co.promoted.i51, %.lr.ph.i50 ], [ %i.bw, %middle.block131 ]
  %.018.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i50 ], [ %i.bo, %middle.block131 ]
  %.01517.i.ph = phi ptr [ %i.au, %vector.memcheck ], [ %i.au, %.lr.ph.i50 ], [ %i.bp, %middle.block131 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %i.bx = phi i64 [ %i.ca, %scalar.ph106 ], [ %.ph, %scalar.ph106.preheader ]
  %.018.i = phi ptr [ %i.cb, %scalar.ph106 ], [ %.018.i.ph, %scalar.ph106.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.cc, %scalar.ph106 ], [ %.01517.i.ph, %scalar.ph106.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.by = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.bz = load <2 x i32>, ptr %.018.i, align 4, !tbaa !42
  store <2 x i32> %i.bz, ptr %.01517.i, align 4, !tbaa !42
  store i32 0, ptr %.018.i, align 4, !tbaa !80
  store i32 0, ptr %i.by, align 4, !tbaa !81
  %i.ca = add i64 %i.bx, 1                        ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i52 = icmp eq ptr %i.cb, %2
  br i1 %.not.i52, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph106, !llvm.loop !1848

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph106, %middle.block131
  %.lcssa92 = phi i64 [ %i.bw, %middle.block131 ], [ %i.ca, %scalar.ph106 ]
  store i64 %.lcssa92, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %i.cd = load ptr, ptr %4, align 8, !tbaa !1857  ; 2 uses
  %xtraiter138 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol

.lr.ph.i.i55.prol:                                ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %.lr.ph.i.i55.prol
  %i.ce = phi ptr [ %i.ci, %.lr.ph.i.i55.prol ], [ %i.cd, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ] ; 2 uses
  %.06.i.i56.prol = phi ptr [ %i.cj, %.lr.ph.i.i55.prol ], [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ] ; 2 uses
  %.035.i.i57.prol = phi i64 [ %i.cf, %.lr.ph.i.i55.prol ], [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ]
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph.i.i55.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ]
  %i.cf = add i64 %.035.i.i57.prol, -1            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = load <2 x i32>, ptr %i.cg, align 4, !tbaa !42, !noalias !1858
  store <2 x i32> %i.ch, ptr %.06.i.i56.prol, align 4, !tbaa !42, !noalias !1858
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !106, !noalias !1858 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i56.prol, i64 8 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i.i55.prol.loopexit, label %.lr.ph.i.i55.prol, !llvm.loop !1851

.lr.ph.i.i55.prol.loopexit:                       ; preds = %.lr.ph.i.i55.prol, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %.lcssa.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.ci, %.lr.ph.i.i55.prol ]
  %.unr = phi ptr [ %i.cd, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.ci, %.lr.ph.i.i55.prol ]
  %.06.i.i56.unr = phi ptr [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.cj, %.lr.ph.i.i55.prol ]
  %.035.i.i57.unr = phi i64 [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.cf, %.lr.ph.i.i55.prol ]
  %i.ck = icmp ult i64 %i.d, 4
  br i1 %i.ck, label %.loopexit, label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55
  %i.cl = phi ptr [ %i.db, %.lr.ph.i.i55 ], [ %.unr, %.lr.ph.i.i55.prol.loopexit ] ; 2 uses
  %.06.i.i56 = phi ptr [ %i.dc, %.lr.ph.i.i55 ], [ %.06.i.i56.unr, %.lr.ph.i.i55.prol.loopexit ] ; 5 uses
  %.035.i.i57 = phi i64 [ %i.cy, %.lr.ph.i.i55 ], [ %.035.i.i57.unr, %.lr.ph.i.i55.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load <2 x i32>, ptr %i.cm, align 4, !tbaa !42, !noalias !1858
  store <2 x i32> %i.cn, ptr %.06.i.i56, align 4, !tbaa !42, !noalias !1858
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !106, !noalias !1858 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = load <2 x i32>, ptr %i.cq, align 4, !tbaa !42, !noalias !1858
  store <2 x i32> %i.cr, ptr %i.cp, align 4, !tbaa !42, !noalias !1858
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !106, !noalias !1858 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !tbaa !42, !noalias !1858
  store <2 x i32> %i.cv, ptr %i.ct, align 4, !tbaa !42, !noalias !1858
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !106, !noalias !1858 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 24
  %i.cy = add i64 %.035.i.i57, -4                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load <2 x i32>, ptr %i.cz, align 4, !tbaa !42, !noalias !1858
  store <2 x i32> %i.da, ptr %i.cx, align 4, !tbaa !42, !noalias !1858
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !106, !noalias !1858 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06.i.i56, i64 32
  %.not.i.i58.3 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i58.3, label %.loopexit, label %.lr.ph.i.i55, !llvm.loop !1846

.loopexit:                                        ; preds = %.lr.ph.i.i55.prol.loopexit, %.lr.ph.i.i55, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread
  %i.dd = phi ptr [ %i.at, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.thread ], [ %.lcssa.unr, %.lr.ph.i.i55.prol.loopexit ], [ %i.db, %.lr.ph.i.i55 ] ; 2 uses
  %i.de = sub i64 %3, %i.d                        ; 4 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1859
  %xtraiter141 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.loopexit, %.prol.preheader
  %i.df = phi ptr [ %i.di, %.prol.preheader ], [ %i.dd, %.loopexit ] ; 2 uses
  %.015.i.i.prol = phi i64 [ %i.dk, %.prol.preheader ], [ %i.de, %.loopexit ]
  %.01214.i.i.prol = phi ptr [ %i.dj, %.prol.preheader ], [ %2, %.loopexit ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.prol.preheader ], [ 0, %.loopexit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.prol) ]
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !42, !noalias !1859
  store <2 x i32> %i.dh, ptr %.01214.i.i.prol, align 4, !tbaa !42, !noalias !1859
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !106, !noalias !1859 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 8 ; 2 uses
  %i.dk = add i64 %.015.i.i.prol, -1              ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1854

.prol.loopexit:                                   ; preds = %.prol.preheader, %.loopexit
  %.unr144 = phi ptr [ %i.dd, %.loopexit ], [ %i.di, %.prol.preheader ]
  %.015.i.i.unr = phi i64 [ %i.de, %.loopexit ], [ %i.dk, %.prol.preheader ]
  %.01214.i.i.unr = phi ptr [ %2, %.loopexit ], [ %i.dj, %.prol.preheader ]
  %i.dl = sub i64 %i.d, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %._crit_edge.i.i, label %.loopexit.new

.loopexit.new:                                    ; preds = %.prol.loopexit, %.loopexit.new
  %i.dn = phi ptr [ %i.ec, %.loopexit.new ], [ %.unr144, %.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.ee, %.loopexit.new ], [ %.015.i.i.unr, %.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.ed, %.loopexit.new ], [ %.01214.i.i.unr, %.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !42, !noalias !1859
  store <2 x i32> %i.dp, ptr %.01214.i.i, align 4, !tbaa !42, !noalias !1859
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !106, !noalias !1859 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load <2 x i32>, ptr %i.ds, align 4, !tbaa !42, !noalias !1859
  store <2 x i32> %i.dt, ptr %i.dr, align 4, !tbaa !42, !noalias !1859
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !106, !noalias !1859 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load <2 x i32>, ptr %i.dw, align 4, !tbaa !42, !noalias !1859
  store <2 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !42, !noalias !1859
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !106, !noalias !1859 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load <2 x i32>, ptr %i.ea, align 4, !tbaa !42, !noalias !1859
  store <2 x i32> %i.eb, ptr %i.dz, align 4, !tbaa !42, !noalias !1859
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !106, !noalias !1859
  %i.ed = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 32
  %i.ee = add i64 %.015.i.i, -4                   ; 2 uses
  %.not.i.i61.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i61.3, label %._crit_edge.i.i, label %.loopexit.new, !llvm.loop !27

._crit_edge.i.i:                                  ; preds = %.loopexit.new, %.prol.loopexit
  %i.ef = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.de
  store i64 %i.ef, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76, !noalias !1859
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.35", align 8 ; 12 uses
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142, !noalias !1900 ; 20 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i2.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i2.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, !prof !43

.lr.ph.i.i.i.i.i.i.i.preheader.i.i:               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !1901
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !83, !noalias !1901
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !1901
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1902
  unreachable

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2INS0_12vec_iteratorIPS3_Lb1EEEEET_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i, %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp83.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_3
begin_hunk_4_@_Z11test_insertI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEENS2_4listIS0_vEEEvRKT1_RKT2_:bb.a
  store i64 %i.eo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit47

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit47: ; preds = %bb.s, %.lr.ph.preheader.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 7 uses
  %.not = icmp ult i64 %i.d, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %3
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 5 uses
  %.not17.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  %min.iters.check = icmp eq i64 %3, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %3, -2                         ; 3 uses
  %i.g = and i64 %3, 1
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %2, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.k ; 2 uses
  %next.gep82 = getelementptr i8, ptr %2, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !42
  store <4 x i32> %wide.vec, ptr %next.gep82, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.020.i.ph = phi i64 [ %3, %.lr.ph.i ], [ %i.g, %middle.block ]
  %.0819.i.ph = phi ptr [ %i.f, %.lr.ph.i ], [ %i.i, %middle.block ]
  %.01618.i.ph = phi ptr [ %2, %.lr.ph.i ], [ %i.j, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020.i = phi i64 [ %i.m, %scalar.ph ], [ %.020.i.ph, %scalar.ph.preheader ]
  %.0819.i = phi ptr [ %i.p, %scalar.ph ], [ %.0819.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.01618.i = phi ptr [ %i.q, %scalar.ph ], [ %.01618.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.m = add i64 %.020.i, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.o = load <2 x i32>, ptr %.0819.i, align 4, !tbaa !42
  store <2 x i32> %i.o, ptr %.01618.i, align 4, !tbaa !42
  store i32 0, ptr %.0819.i, align 4, !tbaa !80
  store i32 0, ptr %i.n, align 4, !tbaa !81
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !2299

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.r = add i64 %_ZZN14counting_value1cEvE2co.promoted.i, %3
  store i64 %i.r, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit: ; preds = %bb.b, %._crit_edge.i
  %.not8.i = icmp eq ptr %1, %i.f
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, %.lr.ph.i37
  %.010.i = phi ptr [ %i.t, %.lr.ph.i37 ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ]
  %.079.i = phi ptr [ %i.s, %.lr.ph.i37 ], [ %i.f, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.079.i, i64 -8 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %.010.i, i64 -8 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079.i, i64 -4
  %i.v = load <2 x i32>, ptr %i.s, align 4, !tbaa !42
  store <2 x i32> %i.v, ptr %i.t, align 4, !tbaa !42
  store i32 0, ptr %i.s, align 4, !tbaa !80
  store i32 0, ptr %i.u, align 4, !tbaa !81
  %.not.i38 = icmp eq ptr %1, %i.s
  br i1 %.not.i38, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i37, !llvm.loop !28

_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit: ; preds = %.lr.ph.i37, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit
  br i1 %.not17.i, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  %i.w = load <2 x i32>, ptr %4, align 4, !tbaa !42 ; 2 uses
  %min.iters.check88 = icmp ult i64 %3, 4
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph.i40
  %n.vec90 = and i64 %3, -4                       ; 3 uses
  %i.x = and i64 %3, 3
  %i.y = shl i64 %n.vec90, 3
  %i.z = getelementptr i8, ptr %1, i64 %i.y
  %interleaved.vec97 = shufflevector <2 x i32> %i.w, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body93 ] ; 2 uses
  %i.aa = shl i64 %index94, 3                     ; 2 uses
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = getelementptr i8, ptr %1, i64 %i.aa
  %next.gep96 = getelementptr i8, ptr %i.ab, i64 16
  store <4 x i32> %interleaved.vec97, ptr %next.gep95, align 4, !tbaa !42
  store <4 x i32> %interleaved.vec97, ptr %next.gep96, align 4, !tbaa !42
  %index.next99 = add nuw i64 %index94, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.ac, label %middle.block100, label %vector.body93, !llvm.loop !2300

middle.block100:                                  ; preds = %vector.body93
  %cmp.n101 = icmp eq i64 %3, %n.vec90
  br i1 %cmp.n101, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %.lr.ph.i40, %middle.block100
  %.07.i.ph = phi i64 [ %3, %.lr.ph.i40 ], [ %i.x, %middle.block100 ]
  %.046.i.ph = phi ptr [ %1, %.lr.ph.i40 ], [ %i.z, %middle.block100 ]
  br label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.preheader, %scalar.ph87
  %.07.i = phi i64 [ %i.ad, %scalar.ph87 ], [ %.07.i.ph, %scalar.ph87.preheader ]
  %.046.i = phi ptr [ %i.ae, %scalar.ph87 ], [ %.046.i.ph, %scalar.ph87.preheader ] ; 2 uses
  %i.ad = add i64 %.07.i, -1                      ; 2 uses
  store <2 x i32> %i.w, ptr %.046.i, align 4, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %.not.i41 = icmp eq i64 %i.ad, 0
  br i1 %.not.i41, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit, label %scalar.ph87, !llvm.loop !2301

bb.c:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %1, %2
  %_ZZN14counting_value1cEvE2co.promoted.i.i.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76 ; 4 uses
  br i1 %.not16.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.c
  %i.af = getelementptr [8 x i8], ptr %1, i64 %3  ; 6 uses
  %i.ag = add i64 %i.a, -8
  %i.ah = sub i64 %i.ag, %i.b                     ; 3 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.ah, 184
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i44
  %i.ak = shl i64 %3, 3                           ; 2 uses
  %i.al = and i64 %i.ah, -8                       ; 3 uses
  %i.am = add i64 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = getelementptr i8, ptr %1, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = getelementptr i8, ptr %1, i64 %i.ak
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %i.at = getelementptr i8, ptr %1, i64 %i.am
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = getelementptr i8, ptr %1, i64 4
  %i.aw = getelementptr i8, ptr %1, i64 %i.al
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %bound0 = icmp ult ptr %i.af, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  %bound0114 = icmp ult ptr %i.as, %i.ax
  %bound1115 = icmp ult ptr %i.av, %i.au
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx = or i1 %found.conflict, %found.conflict116
  br i1 %conflict.rdx, label %scalar.ph112.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck
  %n.vec118 = and i64 %i.aj, 4611686018427387900  ; 3 uses
  %i.ay = shl i64 %n.vec118, 3                    ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.ay
  %i.bb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, i64 0
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next136, %vector.body119 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bb, %vector.ph117 ], [ %i.be, %vector.body119 ]
  %vec.phi121 = phi <2 x i64> [ zeroinitializer, %vector.ph117 ], [ %i.bf, %vector.body119 ]
  %i.bc = shl i64 %index120, 3                    ; 3 uses
  %i.bd = or disjoint i64 %i.bc, 16               ; 2 uses
  %next.gep122 = getelementptr i8, ptr %1, i64 %i.bc ; 2 uses
  %next.gep123 = getelementptr i8, ptr %1, i64 %i.bd ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.af, i64 %i.bd ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep124), "nonnull"(ptr %next.gep126) ]
  %wide.vec128 = load <4 x i32>, ptr %next.gep122, align 4, !tbaa !42
  %wide.vec131 = load <4 x i32>, ptr %next.gep123, align 4, !tbaa !42
  store <4 x i32> %wide.vec128, ptr %next.gep124, align 4, !tbaa !42
  store <4 x i32> %wide.vec131, ptr %next.gep126, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep122, align 4, !tbaa !42
  store <4 x i32> zeroinitializer, ptr %next.gep123, align 4, !tbaa !42
  %i.be = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bf = add <2 x i64> %vec.phi121, splat (i64 1) ; 2 uses
  %index.next136 = add nuw i64 %index120, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next136, %n.vec118
  br i1 %i.bg, label %middle.block137, label %vector.body119, !llvm.loop !2302

middle.block137:                                  ; preds = %vector.body119
  %bin.rdx = add <2 x i64> %i.bf, %i.be
  %i.bh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n138 = icmp eq i64 %i.aj, %n.vec118
  br i1 %cmp.n138, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i44, %middle.block137
  %.ph = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %vector.memcheck ], [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %.lr.ph.i44 ], [ %i.bh, %middle.block137 ]
  %.018.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i44 ], [ %i.az, %middle.block137 ]
  %.01517.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i44 ], [ %i.ba, %middle.block137 ]
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %i.bi = phi i64 [ %i.bl, %scalar.ph112 ], [ %.ph, %scalar.ph112.preheader ]
  %.018.i = phi ptr [ %i.bm, %scalar.ph112 ], [ %.018.i.ph, %scalar.ph112.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.bn, %scalar.ph112 ], [ %.01517.i.ph, %scalar.ph112.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.bk = load <2 x i32>, ptr %.018.i, align 4, !tbaa !42
  store <2 x i32> %i.bk, ptr %.01517.i, align 4, !tbaa !42
  store i32 0, ptr %.018.i, align 4, !tbaa !80
  store i32 0, ptr %i.bj, align 4, !tbaa !81
  %i.bl = add i64 %i.bi, 1                        ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i46 = icmp eq ptr %i.bm, %2
  br i1 %.not.i46, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %scalar.ph112, !llvm.loop !2303

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %scalar.ph112, %middle.block137
  %.lcssa = phi i64 [ %i.bh, %middle.block137 ], [ %i.bl, %scalar.ph112 ] ; 2 uses
  %i.bo = load <2 x i32>, ptr %4, align 4, !tbaa !42 ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %n.vec144 = and i64 %i.d, -4                    ; 3 uses
  %i.bp = and i64 %i.d, 3
  %i.bq = shl nsw i64 %n.vec144, 3
  %i.br = getelementptr i8, ptr %1, i64 %i.bq
  %interleaved.vec153 = shufflevector <2 x i32> %i.bo, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph143
  %index150 = phi i64 [ 0, %vector.ph143 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.bs = shl i64 %index150, 3                    ; 2 uses
  %next.gep151 = getelementptr i8, ptr %1, i64 %i.bs
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %next.gep152 = getelementptr i8, ptr %i.bt, i64 16
  store <4 x i32> %interleaved.vec153, ptr %next.gep151, align 4, !tbaa !42
  store <4 x i32> %interleaved.vec153, ptr %next.gep152, align 4, !tbaa !42
  %index.next155 = add nuw i64 %index150, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next155, %n.vec144
  br i1 %i.bu, label %middle.block156, label %vector.body149, !llvm.loop !2304

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.d, %n.vec144
  br i1 %cmp.n157, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %middle.block156
  %.07.i52.ph = phi i64 [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.bp, %middle.block156 ]
  %.046.i53.ph = phi ptr [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.br, %middle.block156 ]
  br label %scalar.ph141

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %scalar.ph141
  %.07.i52 = phi i64 [ %i.bv, %scalar.ph141 ], [ %.07.i52.ph, %scalar.ph141.preheader ]
  %.046.i53 = phi ptr [ %i.bw, %scalar.ph141 ], [ %.046.i53.ph, %scalar.ph141.preheader ] ; 2 uses
  %i.bv = add i64 %.07.i52, -1                    ; 2 uses
  store <2 x i32> %i.bo, ptr %.046.i53, align 4, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %.046.i53, i64 8
  %.not.i54 = icmp eq i64 %i.bv, 0
  br i1 %.not.i54, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, label %scalar.ph141, !llvm.loop !2305

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56: ; preds = %scalar.ph141, %middle.block156, %bb.c
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i.i.pre, %bb.c ], [ %.lcssa, %middle.block156 ], [ %.lcssa, %scalar.ph141 ]
  %i.bx = sub i64 %3, %i.d                        ; 6 uses
  %i.by = load <2 x i32>, ptr %4, align 4, !tbaa !42 ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56
  %n.vec163 = and i64 %i.bx, -4                   ; 3 uses
  %i.bz = and i64 %i.bx, 3
  %i.ca = shl i64 %n.vec163, 3
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca
  %interleaved.vec174 = shufflevector <2 x i32> %i.by, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph162
  %index169 = phi i64 [ 0, %vector.ph162 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.cc = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %2, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %2, i64 %i.cc
  %next.gep172 = getelementptr i8, ptr %i.cd, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep170), "nonnull"(ptr %next.gep172) ]
  store <4 x i32> %interleaved.vec174, ptr %next.gep170, align 4, !tbaa !42
  store <4 x i32> %interleaved.vec174, ptr %next.gep172, align 4, !tbaa !42
  %index.next176 = add nuw i64 %index169, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next176, %n.vec163
  br i1 %i.ce, label %middle.block177, label %vector.body168, !llvm.loop !2306

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.bx, %n.vec163
  br i1 %cmp.n178, label %._crit_edge.i.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56, %middle.block177
  %.017.i.i.ph = phi i64 [ %i.bx, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56 ], [ %i.bz, %middle.block177 ]
  %.01416.i.i.ph = phi ptr [ %2, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit56 ], [ %i.cb, %middle.block177 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %.017.i.i = phi i64 [ %i.cf, %scalar.ph160 ], [ %.017.i.i.ph, %scalar.ph160.preheader ]
  %.01416.i.i = phi ptr [ %i.cg, %scalar.ph160 ], [ %.01416.i.i.ph, %scalar.ph160.preheader ] ; 3 uses
  %i.cf = add i64 %.017.i.i, -1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store <2 x i32> %i.by, ptr %.01416.i.i, align 4, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %scalar.ph160, !llvm.loop !2307

._crit_edge.i.i:                                  ; preds = %scalar.ph160, %middle.block177
  %i.ch = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.bx
  store i64 %i.ch, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !76
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %scalar.ph87, %middle.block100, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03888 = phi i64 [ 0, %bb.a ], [ %i.du, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !142  ; 12 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !83
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !150

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %.idx63106 = shl nuw nsw i64 %.03888, 2         ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 %.idx63106 ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx      ; 11 uses
  %i.i = icmp samesign eq i64 %i.b, %.03888
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !2329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !83, !noalias !2329
  %i.j = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80, 3
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !2329
  br label %.loopexit67

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63106        ; 4 uses
  %i.k = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.k, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !2330 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i48.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.l, align 4, !tbaa !83, !noalias !2330
  store <2 x i32> %i.n, ptr %i.h, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.m, align 4, !tbaa !83, !noalias !2330
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !83, !noalias !2330
  store i32 %i.q, ptr %i.p, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.o, align 4, !tbaa !83, !noalias !2330
  %i.r = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !42, !noalias !2330
  %i.s = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63106, %i.s
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.t = sub nsw i64 %i.b, %.03888                ; 2 uses
  %i.u = add i64 %i.t, 4611686018427387900
  %i.v = and i64 %i.u, 4611686018427387903
  %i.w = add i64 %i.t, 5
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %.lr.ph.i40.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !83, !noalias !2330
  store i32 %i.z, ptr %i.y, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.x, align 4, !tbaa !83, !noalias !2330
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !2314

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.aa = icmp samesign ult i64 %i.v, 7
  br i1 %i.aa, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !83, !noalias !2330
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.ab, align 4, !tbaa !83, !noalias !2330
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !83, !noalias !2330
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.ae, align 4, !tbaa !83, !noalias !2330
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !83, !noalias !2330
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.ah, align 4, !tbaa !83, !noalias !2330
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !83, !noalias !2330
  store i32 %i.am, ptr %i.al, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.ak, align 4, !tbaa !83, !noalias !2330
  %i.an = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !83, !noalias !2330
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.an, align 4, !tbaa !83, !noalias !2330
  %i.aq = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !83, !noalias !2330
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.aq, align 4, !tbaa !83, !noalias !2330
  %i.at = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.at, align 4, !tbaa !83, !noalias !2330
  store i32 %i.av, ptr %i.au, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.at, align 4, !tbaa !83, !noalias !2330
  %i.aw = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !83, !noalias !2330
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !83, !noalias !2330
  store i32 0, ptr %i.aw, align 4, !tbaa !83, !noalias !2330
  %.not.i41.i.i.i.i.i.7 = icmp eq ptr %i.g, %i.aw
  br i1 %.not.i41.i.i.i.i.i.7, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !16

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !83, !noalias !2331
  br label %.loopexit67

.lr.ph.i48.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.ba = sub nsw i64 %i.b, %.03888               ; 2 uses
  %i.bb = add i64 %i.ba, 4611686018427387903
  %i.bc = and i64 %i.bb, 4611686018427387903
  %xtraiter162 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i48.i.i.i.i.i.prol.loopexit, label %.lr.ph.i48.i.i.i.i.i.prol

.lr.ph.i48.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i48.preheader.i.i.i.i.i, %.lr.ph.i48.i.i.i.i.i.prol
end_hunk_4
