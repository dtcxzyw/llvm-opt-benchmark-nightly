Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 %.sroa.22.0.in ; 4 uses
  %i.ans = add nsw i32 %.sroa.0439.0, -1
  %i.ant = icmp slt i32 %.sroa.0439.0, 2
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 4
  %i.anv = ptrtoint ptr %i.anu to i64
  %i.anw = sub i64 %i.anv, %i.ce
  %.not.i398 = icmp ugt i64 %i.anw, %.sroa.6.0.i952
  %or.cond760 = select i1 %i.ant, i1 true, i1 %.not.i398, !prof !408
  br i1 %or.cond760, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread, label %bb.dn, !prof !408

bb.dn:                                            ; preds = %.thread580
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anr, i64 2
  %i.any = load i16, ptr %i.anx, align 1, !tbaa !283 ; 2 uses
  %i.anz = call noundef i16 @llvm.bswap.i16(i16 %i.any) ; 2 uses
  %.not.i.i399 = icmp ult i16 %i.anz, 16384
  br i1 %.not.i.i399, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403, label %bb.do, !prof !268

bb.do:                                            ; preds = %bb.dn
  %i.aoa = zext i16 %i.anz to i32                 ; 2 uses
  %i.aob = lshr i32 %i.aoa, 15
  %i.aoc = lshr i32 %i.aoa, 13
  %i.aod = and i32 %i.aoc, 2
  %i.aoe = or disjoint i32 %i.aod, %i.aob
  %narrow621 = mul nuw nsw i32 %i.aoe, %i.bm
  %narrow622 = add nuw nsw i32 %narrow621, 4
  %i.aof = zext nneg i32 %narrow622 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403: ; preds = %bb.dn, %bb.do
  %.0.i.i401 = phi i64 [ %i.aof, %bb.do ], [ 4, %bb.dn ] ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anr, i64 %.0.i.i401
  %i.aoh = ptrtoint ptr %i.aog to i64
  %i.aoi = sub i64 %i.aoh, %i.ce
  %.not623 = icmp ugt i64 %i.aoi, %.sroa.6.0.i952
  br i1 %.not623, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread, label %bb.o, !llvm.loop !3293

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread: ; preds = %.thread580, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403
  %i.aoj = trunc nuw i8 %.4288593 to i1
  %i.aok = select i1 %i.aoj, i1 %i.es, i1 false
  br i1 %i.aok, label %.lr.ph752.preheader, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

.lr.ph752.preheader:                              ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread
  %xtraiter1198 = and i64 %i.ev, 1
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %.lr.ph752.prol.loopexit, label %.lr.ph752.prol

.lr.ph752.prol:                                   ; preds = %.lr.ph752.preheader
  %i.aol = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.et ; 2 uses
  %i.aom = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.3592, i64 %i.et
  %i.aon = load <2 x float>, ptr %i.aom, align 4, !tbaa !304
  %i.aoo = load <2 x float>, ptr %i.aol, align 4, !tbaa !304
  %i.aop = fadd <2 x float> %i.aon, %i.aoo
  store <2 x float> %i.aop, ptr %i.aol, align 4, !tbaa !304
  %indvars.iv.next872.prol = add nuw nsw i64 %i.et, 1
  br label %.lr.ph752.prol.loopexit

.lr.ph752.prol.loopexit:                          ; preds = %.lr.ph752.prol, %.lr.ph752.preheader
  %indvars.iv871.unr = phi i64 [ %i.et, %.lr.ph752.preheader ], [ %indvars.iv.next872.prol, %.lr.ph752.prol ]
  %i.aoq = icmp eq i64 %i.ex, 0
  br i1 %i.aoq, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %.lr.ph752

.lr.ph752:                                        ; preds = %.lr.ph752.prol.loopexit, %.lr.ph752
  %indvars.iv871 = phi i64 [ %indvars.iv.next872.1, %.lr.ph752 ], [ %indvars.iv871.unr, %.lr.ph752.prol.loopexit ] ; 4 uses
  %i.aor = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv871 ; 2 uses
  %i.aos = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.3592, i64 %indvars.iv871
  %i.aot = load <2 x float>, ptr %i.aos, align 4, !tbaa !304
  %i.aou = load <2 x float>, ptr %i.aor, align 4, !tbaa !304
  %i.aov = fadd <2 x float> %i.aot, %i.aou
  store <2 x float> %i.aov, ptr %i.aor, align 4, !tbaa !304
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1 ; 2 uses
  %i.aow = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next872 ; 2 uses
  %i.aox = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0417.3592, i64 %indvars.iv.next872
  %i.aoy = load <2 x float>, ptr %i.aox, align 4, !tbaa !304
  %i.aoz = load <2 x float>, ptr %i.aow, align 4, !tbaa !304
  %i.apa = fadd <2 x float> %i.aoy, %i.aoz
  store <2 x float> %i.apa, ptr %i.aow, align 4, !tbaa !304
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %exitcond875.not.1 = icmp eq i64 %indvars.iv.next872.1, %i.eu
  br i1 %exitcond875.not.1, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %.lr.ph752, !llvm.loop !3294

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread: ; preds = %.lr.ph752.prol.loopexit, %.lr.ph752, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i, %bb.k, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, %.thread597, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit403.thread ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit ], [ false, %.thread597 ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i ], [ true, %bb.k ], [ true, %.lr.ph752 ], [ true, %.lr.ph752.prol.loopexit ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT9glyf_impl20CompositeGlyphRecord16transform_pointsE10hb_array_tI15contour_point_tERA4_KfRKS3_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = and i16 %i.a, 24
  %i.c = icmp eq i16 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %4, align 4, !tbaa !1558
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp une float %i.g, 0.000000e+00        ; 2 uses
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %2, 4294967295                   ; 2 uses
  %.idx52.i = mul nuw nsw i64 %i.i, 12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i
  %.not3148.i = icmp eq i64 %i.i, 0
  br i1 %.not3148.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %bb.c, %.lr.ph50.i
  %.02849.i = phi ptr [ %i.n, %.lr.ph50.i ], [ %1, %bb.c ] ; 3 uses
  %i.k = load <2 x float>, ptr %4, align 4, !tbaa !304
  %i.l = load <2 x float>, ptr %.02849.i, align 4, !tbaa !304
  %i.m = fadd <2 x float> %i.k, %i.l
  store <2 x float> %i.m, ptr %.02849.i, align 4, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %.02849.i, i64 12 ; 2 uses
  %.not31.i = icmp eq ptr %i.n, %i.j
  br i1 %.not31.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph50.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = and i64 %2, 4294967295                   ; 2 uses
  %.idx51.i = mul nuw nsw i64 %i.o, 12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i
  %.not3045.i = icmp eq i64 %i.o, 0
  br i1 %.not3045.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.e, %.lr.ph47.i
  %.02946.i = phi ptr [ %i.t, %.lr.ph47.i ], [ %1, %bb.e ] ; 3 uses
  %i.q = load float, ptr %4, align 4, !tbaa !1558
  %i.r = load float, ptr %.02946.i, align 4, !tbaa !1558
  %i.s = fadd float %i.q, %i.r
  store float %i.s, ptr %.02946.i, align 4, !tbaa !1558
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i, i64 12 ; 2 uses
  %.not30.i = icmp eq ptr %i.t, %i.p
  br i1 %.not30.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit

bb.g:                                             ; preds = %bb.f
  %i.u = and i64 %2, 4294967295                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.u, 12
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not43.i = icmp eq i64 %i.u, 0
  br i1 %.not43.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.044.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %1, %bb.g ] ; 2 uses
  %i.w = load float, ptr %i.f, align 4, !tbaa !1559
  %i.x = getelementptr inbounds nuw i8, ptr %.044.i, i64 4 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !1559
  %i.z = fadd float %i.w, %i.y
  store float %i.z, ptr %i.x, align 4, !tbaa !1559
  %i.aa = getelementptr inbounds nuw i8, ptr %.044.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit: ; preds = %.lr.ph.i, %.lr.ph47.i, %.lr.ph50.i, %bb.c, %bb.e, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load <4 x float>, ptr %3, align 4
  %.fr105 = freeze <4 x float> %i.ac
  %i.ad = fcmp une <4 x float> %.fr105, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ae = bitcast <4 x i1> %i.ad to i4
  %.not106 = icmp eq i4 %i.ae, 0
  br i1 %.not106, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  %i.af = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %i.af, 12           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i16
  %.not21.i = icmp eq i64 %i.af, 0
  br i1 %.not21.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.h
  %i.ah = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.ai = udiv i64 %i.ah, 12                      ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check81 = icmp ult i64 %i.ah, 96
  br i1 %min.iters.check81, label %.lr.ph.i17.preheader107, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph.i17.preheader
  %i.ak = mul nuw i64 %i.ai, 12
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound083 = icmp ult ptr %1, %i.an
  %bound184 = icmp ult ptr %3, %i.am
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %.lr.ph.i17.preheader107, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck82
  %i.ao = and i64 %i.aj, 3                        ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = select i1 %i.ap, i64 4, i64 %i.ao
  %n.vec87 = sub nsw i64 %i.aj, %i.aq             ; 2 uses
  %i.ar = mul i64 %n.vec87, 12
  %i.as = getelementptr i8, ptr %1, i64 %i.ar
  %i.at = load <4 x float>, ptr %3, align 4       ; 4 uses
  %broadcast.splat97 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat95 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat101 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat99 = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next102, %vector.body88 ] ; 2 uses
  %i.au = mul i64 %index89, 12                    ; 4 uses
  %next.gep90 = getelementptr i8, ptr %1, i64 %i.au ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 %i.au     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %i.av, i64 12 ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au     ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.au     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ax, i64 36 ; 2 uses
  %i.ay = load float, ptr %next.gep90, align 4, !tbaa !1558, !alias.scope !3308, !noalias !3309
  %i.az = load float, ptr %next.gep91, align 4, !tbaa !1558, !alias.scope !3308, !noalias !3309
  %i.ba = load float, ptr %next.gep92, align 4, !tbaa !1558, !alias.scope !3308, !noalias !3309
  %i.bb = load float, ptr %next.gep93, align 4, !tbaa !1558, !alias.scope !3308, !noalias !3309
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep90, i64 4 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 16
  %i.bi = getelementptr i8, ptr %i.aw, i64 28
  %i.bj = getelementptr i8, ptr %i.ax, i64 40
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !1559, !alias.scope !3308, !noalias !3309
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !1559, !alias.scope !3308, !noalias !3309
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !1559, !alias.scope !3308, !noalias !3309
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !1559, !alias.scope !3308, !noalias !3309
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3 ; 2 uses
  %i.bs = fmul <4 x float> %i.br, %broadcast.splat95
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat97, <4 x float> %i.bs) ; 4 uses
  %i.bu = fmul <4 x float> %i.br, %broadcast.splat99
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat101, <4 x float> %i.bu) ; 4 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  store float %i.bw, ptr %i.bg, align 4, !tbaa !1559, !alias.scope !3308, !noalias !3309
  %i.bx = extractelement <4 x float> %i.bt, i64 0
  store float %i.bx, ptr %next.gep90, align 4, !tbaa !1558, !alias.scope !3308, !noalias !3309
  %i.by = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.by, ptr %next.gep91, align 4, !tbaa !304, !alias.scope !3308, !noalias !3309
  %i.bz = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bz, ptr %next.gep92, align 4, !tbaa !304, !alias.scope !3308, !noalias !3309
  %i.ca = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ca, ptr %next.gep93, align 4, !tbaa !304, !alias.scope !3308, !noalias !3309
  %index.next102 = add nuw i64 %index89, 4        ; 2 uses
  %i.cb = icmp eq i64 %index.next102, %n.vec87
  br i1 %i.cb, label %.lr.ph.i17.preheader107, label %vector.body88, !llvm.loop !3301

.lr.ph.i17.preheader107:                          ; preds = %vector.body88, %vector.memcheck82, %.lr.ph.i17.preheader
  %.022.i.ph = phi ptr [ %1, %vector.memcheck82 ], [ %1, %.lr.ph.i17.preheader ], [ %i.as, %vector.body88 ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader107, %.lr.ph.i17
  %.022.i = phi ptr [ %i.cj, %.lr.ph.i17 ], [ %.022.i.ph, %.lr.ph.i17.preheader107 ] ; 3 uses
  %i.cc = load <2 x float>, ptr %.022.i, align 4, !tbaa !304 ; 2 uses
  %i.cd = load <2 x float>, ptr %3, align 4, !tbaa !304
  %i.ce = load <2 x float>, ptr %i.ab, align 4, !tbaa !304
  %i.cf = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.cf, %i.ce
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cd, <2 x float> %i.cg)
  store <2 x float> %i.ci, ptr %.022.i, align 4, !tbaa !304
  %i.cj = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.cj, %i.ag
  br i1 %.not.i18, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17, !llvm.loop !3302

bb.i:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load <4 x float>, ptr %3, align 4
  %.fr = freeze <4 x float> %i.cl
  %i.cm = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.cn = bitcast <4 x i1> %i.cm to i4
  %.not = icmp eq i4 %i.cn, 0
  br i1 %.not, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i22 = mul nuw nsw i64 %i.co, 12           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i22
  %.not21.i23 = icmp eq i64 %i.co, 0
  br i1 %.not21.i23, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.j
  %i.cq = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.cr = udiv i64 %i.cq, 12                      ; 2 uses
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 96
  br i1 %min.iters.check, label %.lr.ph.i24.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24.preheader
  %i.ct = mul nuw i64 %i.cr, 12
  %i.cu = getelementptr i8, ptr %1, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound0 = icmp ult ptr %1, %i.cw
  %bound1 = icmp ult ptr %3, %i.cv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cx = and i64 %i.cs, 3                        ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 4, i64 %i.cx
  %n.vec = sub nsw i64 %i.cs, %i.cz               ; 2 uses
  %i.da = mul i64 %n.vec, 12
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %i.dc = load <4 x float>, ptr %3, align 4       ; 4 uses
  %broadcast.splat70 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat74 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat72 = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.dd ; 3 uses
  %i.de = getelementptr i8, ptr %1, i64 %i.dd     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.de, i64 12 ; 2 uses
  %i.df = getelementptr i8, ptr %1, i64 %i.dd     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.df, i64 24 ; 2 uses
  %i.dg = getelementptr i8, ptr %1, i64 %i.dd     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.dg, i64 36 ; 2 uses
  %i.dh = load float, ptr %next.gep, align 4, !tbaa !1558, !alias.scope !3310, !noalias !3311
  %i.di = load float, ptr %next.gep66, align 4, !tbaa !1558, !alias.scope !3310, !noalias !3311
  %i.dj = load float, ptr %next.gep67, align 4, !tbaa !1558, !alias.scope !3310, !noalias !3311
  %i.dk = load float, ptr %next.gep68, align 4, !tbaa !1558, !alias.scope !3310, !noalias !3311
  %i.dl = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.de, i64 16
  %i.dr = getelementptr i8, ptr %i.df, i64 28
  %i.ds = getelementptr i8, ptr %i.dg, i64 40
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !1559, !alias.scope !3310, !noalias !3311
  %i.du = load float, ptr %i.dq, align 4, !tbaa !1559, !alias.scope !3310, !noalias !3311
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !1559, !alias.scope !3310, !noalias !3311
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !1559, !alias.scope !3310, !noalias !3311
  %i.dx = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 3 ; 2 uses
  %i.eb = fmul <4 x float> %i.ea, %broadcast.splat
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat70, <4 x float> %i.eb) ; 4 uses
  %i.ed = fmul <4 x float> %i.ea, %broadcast.splat72
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat74, <4 x float> %i.ed) ; 4 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  store float %i.ef, ptr %i.dp, align 4, !tbaa !1559, !alias.scope !3310, !noalias !3311
  %i.eg = extractelement <4 x float> %i.ec, i64 0
  store float %i.eg, ptr %next.gep, align 4, !tbaa !1558, !alias.scope !3310, !noalias !3311
  %i.eh = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.eh, ptr %next.gep66, align 4, !tbaa !304, !alias.scope !3310, !noalias !3311
  %i.ei = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ei, ptr %next.gep67, align 4, !tbaa !304, !alias.scope !3310, !noalias !3311
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ej, ptr %next.gep68, align 4, !tbaa !304, !alias.scope !3310, !noalias !3311
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %.lr.ph.i24.preheader113, label %vector.body, !llvm.loop !3306

.lr.ph.i24.preheader113:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph.i24.preheader
  %.022.i25.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i24.preheader ], [ %i.db, %vector.body ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader113, %.lr.ph.i24
  %.022.i25 = phi ptr [ %i.es, %.lr.ph.i24 ], [ %.022.i25.ph, %.lr.ph.i24.preheader113 ] ; 3 uses
  %i.el = load <2 x float>, ptr %.022.i25, align 4, !tbaa !304 ; 2 uses
  %i.em = load <2 x float>, ptr %3, align 4, !tbaa !304
  %i.en = load <2 x float>, ptr %i.ck, align 4, !tbaa !304
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.eo, %i.en
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.em, <2 x float> %i.ep)
  store <2 x float> %i.er, ptr %.022.i25, align 4, !tbaa !304
  %i.es = getelementptr inbounds nuw i8, ptr %.022.i25, i64 12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.es, %i.cp
  br i1 %.not.i26, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24, !llvm.loop !3307

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27: ; preds = %.lr.ph.i24, %bb.i, %bb.j
  %i.et = load float, ptr %4, align 4, !tbaa !1558
  %i.eu = fcmp une float %i.et, 0.000000e+00      ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = fcmp une float %i.ew, 0.000000e+00      ; 2 uses
  %or.cond.i28 = select i1 %i.eu, i1 %i.ex, i1 false
  br i1 %or.cond.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  %i.ey = and i64 %2, 4294967295                  ; 2 uses
  %.idx52.i39 = mul nuw nsw i64 %i.ey, 12
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i39
  %.not3148.i40 = icmp eq i64 %i.ey, 0
  br i1 %.not3148.i40, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

.lr.ph50.i41:                                     ; preds = %bb.k, %.lr.ph50.i41
  %.02849.i42 = phi ptr [ %i.fd, %.lr.ph50.i41 ], [ %1, %bb.k ] ; 3 uses
  %i.fa = load <2 x float>, ptr %4, align 4, !tbaa !304
  %i.fb = load <2 x float>, ptr %.02849.i42, align 4, !tbaa !304
  %i.fc = fadd <2 x float> %i.fa, %i.fb
  store <2 x float> %i.fc, ptr %.02849.i42, align 4, !tbaa !304
  %i.fd = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 12 ; 2 uses
  %.not31.i43 = icmp eq ptr %i.fd, %i.ez
  br i1 %.not31.i43, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

bb.l:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  br i1 %i.eu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fe = and i64 %2, 4294967295                  ; 2 uses
  %.idx51.i34 = mul nuw nsw i64 %i.fe, 12
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i34
  %.not3045.i35 = icmp eq i64 %i.fe, 0
  br i1 %.not3045.i35, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

.lr.ph47.i36:                                     ; preds = %bb.m, %.lr.ph47.i36
  %.02946.i37 = phi ptr [ %i.fj, %.lr.ph47.i36 ], [ %1, %bb.m ] ; 3 uses
  %i.fg = load float, ptr %4, align 4, !tbaa !1558
  %i.fh = load float, ptr %.02946.i37, align 4, !tbaa !1558
  %i.fi = fadd float %i.fg, %i.fh
  store float %i.fi, ptr %.02946.i37, align 4, !tbaa !1558
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 12 ; 2 uses
  %.not30.i38 = icmp eq ptr %i.fj, %i.ff
  br i1 %.not30.i38, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

bb.n:                                             ; preds = %bb.l
  br i1 %i.ex, label %bb.o, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit

bb.o:                                             ; preds = %bb.n
  %i.fk = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i29 = mul nuw nsw i64 %i.fk, 12
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i29
  %.not43.i30 = icmp eq i64 %i.fk, 0
  br i1 %.not43.i30, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.o, %.lr.ph.i31
  %.044.i32 = phi ptr [ %i.fq, %.lr.ph.i31 ], [ %1, %bb.o ] ; 2 uses
  %i.fm = load float, ptr %i.ev, align 4, !tbaa !1559
  %i.fn = getelementptr inbounds nuw i8, ptr %.044.i32, i64 4 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !1559
  %i.fp = fadd float %i.fm, %i.fo
  store float %i.fp, ptr %i.fn, align 4, !tbaa !1559
  %i.fq = getelementptr inbounds nuw i8, ptr %.044.i32, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %i.fq, %i.fl
  br i1 %.not.i33, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit: ; preds = %.lr.ph.i31, %.lr.ph47.i36, %.lr.ph50.i41, %.lr.ph.i17, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1541   ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !324
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !267

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !3312

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !267

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not50 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not50, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1532
  tail call void @free(ptr noundef %i.m) #59
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1532 ; 3 uses
  br i1 %.not50, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

end_hunk_0
begin_hunk_1_@_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE6hflex1ERS2_RS3_:bb.a
  %i.x = fadd double %i.t, %.pre79                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1159 ; 2 uses
  %.not.i49 = icmp eq ptr %i.z, null
  %i.aa = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ab = shufflevector <2 x double> %i.h, <2 x double> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %.not.i49, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  %i.ac = load <2 x double>, ptr %i.z, align 8, !tbaa !477 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ae = fadd <4 x double> %i.ab, %i.ad
  %i.af = extractelement <2 x double> %i.ac, i64 0
  %i.ag = fadd double %i.n, %i.af
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38
  %.sroa.0.0.i55 = phi double [ %i.n, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38 ], [ %i.ag, %bb.b ]
  %i.ah = phi <4 x double> [ %i.ab, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit38 ], [ %i.ae, %bb.b ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1156 ; 5 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1158  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load float, ptr %i.al, align 8, !tbaa !615 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 84
  %i.ao = load float, ptr %i.an, align 4, !tbaa !618 ; 2 uses
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !338 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !339 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !358
  %.not.i.i.i56 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i56, label %bb.d, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(48) %i.as)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57:  ; preds = %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !725
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !365 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i58, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57, %bb.e
  %i.ba = phi ptr [ %i.az, %bb.e ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i57 ]
  %i.bb = extractelement <4 x double> %i.ah, i64 3
  %i.bc = fptrunc double %i.bb to float
  %i.bd = fmul float %i.ao, %i.bc                 ; 3 uses
  %i.be = fptrunc double %.sroa.0.0.i55 to float
  %i.bf = fmul float %i.am, %i.be                 ; 2 uses
  %i.bg = extractelement <4 x double> %i.ah, i64 2
  %i.bh = fptrunc double %i.bg to float
  %i.bi = fmul float %i.am, %i.bh
  %i.bj = extractelement <4 x double> %i.ah, i64 1
  %i.bk = fptrunc double %i.bj to float
  %i.bl = fmul float %i.ao, %i.bk
  %i.bm = extractelement <4 x double> %i.ah, i64 0
  %i.bn = fptrunc double %i.bm to float
  %i.bo = fmul float %i.am, %i.bn
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, ptr noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(48) %i.as, float noundef %i.bo, float noundef %i.bl, float noundef %i.bi, float noundef %i.bd, float noundef %i.bf, float noundef %i.bd, ptr noundef %i.ba) #59, !inline_history !149
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aj, i64 28
  store float %i.bf, ptr %i.bp, align 4, !tbaa !360
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store float %i.bd, ptr %i.bq, align 8, !tbaa !730
  store double %i.n, ptr %i.d, align 8, !tbaa !712
  store double %i.u, ptr %.sroa.774.0..sroa_idx, align 8, !tbaa !712
  %i.br = load ptr, ptr %i.y, align 8, !tbaa !1159 ; 2 uses
  %.not.i = icmp eq ptr %i.br, null
  %i.bs = insertelement <4 x double> %i.aa, double %i.t, i64 0
  %i.bt = insertelement <4 x double> %i.bs, double %i.v, i64 1 ; 2 uses
  %i.bu = insertelement <4 x double> %i.bt, double %i.p, i64 2
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59
  %i.bv = load <2 x double>, ptr %i.br, align 8, !tbaa !477 ; 3 uses
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bx = shufflevector <2 x double> %i.k, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x double> %i.bx, <4 x double> %i.bt, <4 x i32> <i32 4, i32 5, i32 poison, i32 1>
  %i.bz = insertelement <4 x double> %i.by, double %i.p, i64 2
  %i.ca = fadd <4 x double> %i.bz, %i.bw
  %i.cb = extractelement <2 x double> %i.bv, i64 0
  %i.cc = fadd double %i.x, %i.cb
  %i.cd = extractelement <2 x double> %i.bv, i64 1
  %i.ce = fadd double %.sroa.774.0.copyload, %i.cd
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59
  %.sroa.6.0.i = phi double [ %.sroa.774.0.copyload, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59 ], [ %i.ce, %bb.f ]
  %.sroa.0.0.i = phi double [ %i.x, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59 ], [ %i.cc, %bb.f ]
  %i.cf = phi <4 x double> [ %i.bu, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit59 ], [ %i.ca, %bb.f ]
  %i.cg = load ptr, ptr %i.ai, align 8, !tbaa !1156 ; 5 uses
  %i.ch = load ptr, ptr %1, align 8, !tbaa !1158
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load <2 x float>, ptr %i.ci, align 8, !tbaa !304 ; 3 uses
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !338 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !339 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(48) %i.co)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.h, %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !725
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !365 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i39, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.i
  %i.cw = phi ptr [ %i.cv, %bb.i ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.cx = fptrunc double %.sroa.6.0.i to float
  %i.cy = extractelement <2 x float> %i.cj, i64 1
  %i.cz = fmul float %i.cy, %i.cx                 ; 2 uses
  %i.da = fptrunc double %.sroa.0.0.i to float
  %i.db = extractelement <2 x float> %i.cj, i64 0
  %i.dc = fmul float %i.db, %i.da                 ; 2 uses
  %i.dd = fptrunc <4 x double> %i.cf to <4 x float>
  %i.de = fmul <4 x float> %i.ck, %i.dd           ; 4 uses
  %i.df = extractelement <4 x float> %i.de, i64 0
  %i.dg = extractelement <4 x float> %i.de, i64 1
  %i.dh = extractelement <4 x float> %i.de, i64 2
  %i.di = extractelement <4 x float> %i.de, i64 3
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(48) %i.co, float noundef %i.dh, float noundef %i.di, float noundef %i.df, float noundef %i.dg, float noundef %i.dc, float noundef %i.cz, ptr noundef %i.cw) #59, !inline_history !149
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  store float %i.dc, ptr %i.dj, align 4, !tbaa !360
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store float %i.cz, ptr %i.dk, align 8, !tbaa !730
  store double %i.x, ptr %i.d, align 8, !tbaa !712
  store double %.sroa.774.0.copyload, ptr %.sroa.774.0..sroa_idx, align 8, !tbaa !712
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !464
  %i.dn = add i32 %i.dm, 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !420
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF12path_procs_tI22cff1_path_procs_path_tNS_20cff1_cs_interp_env_tE17cff1_path_param_tE5flex1ERS2_RS3_(ptr noundef nonnull align 8 dereferenceable(4481) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1152
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50, label %bb.j, !prof !268

_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 3 uses
  %.sroa.798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4456 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre111 = load double, ptr %i.j, align 8, !tbaa !477
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load <2 x double>, ptr %i.d, align 8, !tbaa !477 ; 2 uses
  %i.p = fadd <2 x double> %i.o, zeroinitializer
  %i.q = load <2 x double>, ptr %i.e, align 8, !tbaa !477
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = load <2 x double>, ptr %i.f, align 8, !tbaa !477
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = load <2 x double>, ptr %i.g, align 8, !tbaa !477
  %i.v = fadd <2 x double> %i.t, %i.u
  %i.w = load <2 x double>, ptr %i.h, align 8, !tbaa !477
  %i.x = fadd <2 x double> %i.v, %i.w
  %i.y = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.x) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  %i.aa = extractelement <2 x double> %i.y, i64 1
  %i.ab = fcmp ogt double %i.z, %i.aa             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %2 = load <2 x double>, ptr %i.ac, align 8
  %i.ad = load <2 x double>, ptr %i.i, align 8, !tbaa !712 ; 3 uses
  %i.ae = load <2 x double>, ptr %i.k, align 8, !tbaa !477
  %i.af = load <2 x double>, ptr %i.l, align 8, !tbaa !477
  %i.ag = load <2 x double>, ptr %i.m, align 8, !tbaa !477
  %i.ah = load <2 x double>, ptr %i.n, align 8, !tbaa !477
  %i.ai = insertelement <2 x double> %i.o, double %.pre111, i64 1
  %i.aj = fadd <2 x double> %i.ad, %i.ai          ; 2 uses
  %i.ak = fadd <2 x double> %i.aj, %i.ae          ; 2 uses
  %i.al = fadd <2 x double> %i.ak, %i.af          ; 3 uses
  %i.am = fadd <2 x double> %i.al, %i.ag          ; 2 uses
  %i.an = fadd <2 x double> %i.am, %i.ah          ; 2 uses
  %i.ao = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fadd <2 x double> %i.an, %i.ao          ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 1
  %i.ar = extractelement <2 x double> %i.ad, i64 1
  %.sroa.8.0 = select i1 %i.ab, double %i.ar, double %i.aq ; 3 uses
  %i.as = extractelement <2 x double> %i.ap, i64 0
  %i.at = extractelement <2 x double> %i.ad, i64 0
  %.sroa.0.0 = select i1 %i.ab, double %i.as, double %i.at ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1159 ; 2 uses
  %.not.i73 = icmp eq ptr %i.av, null
  %i.aw = shufflevector <2 x double> %i.ak, <2 x double> %i.aj, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ax = extractelement <2 x double> %i.al, i64 0 ; 3 uses
  %i.ay = extractelement <2 x double> %i.al, i64 1 ; 3 uses
  br i1 %.not.i73, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %i.az = load <2 x double>, ptr %i.av, align 8, !tbaa !477 ; 3 uses
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bb = fadd <4 x double> %i.aw, %i.ba
  %i.bc = extractelement <2 x double> %i.az, i64 0
  %i.bd = fadd double %i.ax, %i.bc
  %i.be = extractelement <2 x double> %i.az, i64 1
  %i.bf = fadd double %i.ay, %i.be
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50
  %.sroa.6.0.i78 = phi double [ %i.ay, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.bf, %bb.b ]
  %.sroa.0.0.i79 = phi double [ %i.ax, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.bd, %bb.b ]
  %i.bg = phi <4 x double> [ %i.aw, %_ZN3CFF12interp_env_tINS_8number_tEE8eval_argEj.exit50 ], [ %i.bb, %bb.b ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1156 ; 5 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !1158
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load <2 x float>, ptr %i.bk, align 8, !tbaa !304 ; 3 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !338 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !339 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !358
  %.not.i.i.i80 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.i80, label %bb.d, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.bn, ptr noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(48) %i.bq)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81:  ; preds = %bb.d, %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !725
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !365 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i82, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83, label %bb.e

bb.e:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81, %bb.e
  %i.by = phi ptr [ %i.bx, %bb.e ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i81 ]
  %i.bz = fptrunc double %.sroa.6.0.i78 to float
  %i.ca = extractelement <2 x float> %i.bl, i64 1
  %i.cb = fmul float %i.ca, %i.bz                 ; 2 uses
  %i.cc = fptrunc double %.sroa.0.0.i79 to float
  %i.cd = extractelement <2 x float> %i.bl, i64 0
  %i.ce = fmul float %i.cd, %i.cc                 ; 2 uses
  %i.cf = fptrunc <4 x double> %i.bg to <4 x float>
  %i.cg = fmul <4 x float> %i.bm, %i.cf           ; 4 uses
  %i.ch = extractelement <4 x float> %i.cg, i64 0
  %i.ci = extractelement <4 x float> %i.cg, i64 1
  %i.cj = extractelement <4 x float> %i.cg, i64 2
  %i.ck = extractelement <4 x float> %i.cg, i64 3
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(72) %i.bn, ptr noundef %i.bp, ptr noundef nonnull align 4 dereferenceable(48) %i.bq, float noundef %i.cj, float noundef %i.ck, float noundef %i.ch, float noundef %i.ci, float noundef %i.ce, float noundef %i.cb, ptr noundef %i.by) #59, !inline_history !149
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store float %i.ce, ptr %i.cl, align 4, !tbaa !360
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store float %i.cb, ptr %i.cm, align 8, !tbaa !730
  store double %i.ax, ptr %i.i, align 8, !tbaa !712
  store double %i.ay, ptr %.sroa.798.0..sroa_idx, align 8, !tbaa !712
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !1159 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  %i.co = shufflevector <2 x double> %i.an, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83
  %i.cp = load <2 x double>, ptr %i.cn, align 8, !tbaa !477 ; 3 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cr = fadd <4 x double> %i.co, %i.cq
  %i.cs = extractelement <2 x double> %i.cp, i64 0
  %i.ct = fadd double %.sroa.0.0, %i.cs
  %i.cu = extractelement <2 x double> %i.cp, i64 1
  %i.cv = fadd double %.sroa.8.0, %i.cu
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83
  %.sroa.6.0.i = phi double [ %.sroa.8.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.cv, %bb.f ]
  %.sroa.0.0.i = phi double [ %.sroa.0.0, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.ct, %bb.f ]
  %i.cw = phi <4 x double> [ %i.co, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit83 ], [ %i.cr, %bb.f ]
  %i.cx = load ptr, ptr %i.bh, align 8, !tbaa !1156 ; 5 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !1158
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load <2 x float>, ptr %i.cz, align 8, !tbaa !304 ; 3 uses
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !338 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !339 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !358
  %.not.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, !prof !267

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(48) %i.df)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i

_ZN17hb_draw_session_t8cubic_toEffffff.exit.i:    ; preds = %bb.h, %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !725
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !365 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i63, label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !726
  br label %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit

_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i, %bb.i
  %i.dn = phi ptr [ %i.dm, %bb.i ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit.i ]
  %i.do = fptrunc double %.sroa.6.0.i to float
  %i.dp = extractelement <2 x float> %i.da, i64 1
  %i.dq = fmul float %i.dp, %i.do                 ; 2 uses
  %i.dr = fptrunc double %.sroa.0.0.i to float
  %i.ds = extractelement <2 x float> %i.da, i64 0
  %i.dt = fmul float %i.ds, %i.dr                 ; 2 uses
  %i.du = fptrunc <4 x double> %i.cw to <4 x float>
  %i.dv = fmul <4 x float> %i.db, %i.du           ; 4 uses
  %i.dw = extractelement <4 x float> %i.dv, i64 0
  %i.dx = extractelement <4 x float> %i.dv, i64 1
  %i.dy = extractelement <4 x float> %i.dv, i64 2
  %i.dz = extractelement <4 x float> %i.dv, i64 3
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(72) %i.dc, ptr noundef %i.de, ptr noundef nonnull align 4 dereferenceable(48) %i.df, float noundef %i.dy, float noundef %i.dz, float noundef %i.dw, float noundef %i.dx, float noundef %i.dt, float noundef %i.dq, ptr noundef %i.dn) #59, !inline_history !149
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  store float %i.dt, ptr %i.ea, align 4, !tbaa !360
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store float %i.dq, ptr %i.eb, align 8, !tbaa !730
  store double %.sroa.0.0, ptr %i.i, align 8, !tbaa !712
  store double %.sroa.8.0, ptr %.sroa.798.0..sroa_idx, align 8, !tbaa !712
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !464
  %i.ee = add i32 %i.ed, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !420
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN17cff1_path_param_t8cubic_toERKN3CFF7point_tES3_S3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(8) ptr @_ZNK2OT4sbix13accelerator_t13choose_strikeEP9hb_font_t(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !272    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.a ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276
  %i.f = icmp ult i32 %i.e, 8
  %spec.select.i.i1.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.c ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 4
  %i.h = load i32, ptr %i.g, align 1, !tbaa !278  ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %_ZNK2OT4sbix10get_strikeEj.exit, !prof !267

_ZNK2OT4sbix10get_strikeEj.exit:                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.j, align 4, !tbaa !324
  %i.m = load i32, ptr %i.k, align 4, !tbaa !324
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %i.m) ; 2 uses
  %.not25 = icmp eq i32 %i.n, 0
  %spec.store.select = select i1 %.not25, i32 1073741824, i32 %i.n ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.o = icmp ugt i32 %i.i, 1
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2OT4sbix10get_strikeEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 1, !tbaa !278  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)
end_hunk_1
