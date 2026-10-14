Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.43.0, i64 %.sroa.22.0.in ; 4 uses
  %i.ant = add nsw i32 %.sroa.0443.0, -1
  %i.anu = icmp slt i32 %.sroa.0443.0, 2
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 4
  %i.anw = ptrtoint ptr %i.anv to i64
  %i.anx = sub i64 %i.anw, %i.ce
  %.not.i402 = icmp ugt i64 %i.anx, %.sroa.6.0.i956
  %or.cond764 = select i1 %i.anu, i1 true, i1 %.not.i402, !prof !173
  br i1 %or.cond764, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread, label %bb.dn, !prof !173

bb.dn:                                            ; preds = %.thread584
  %i.any = getelementptr inbounds nuw i8, ptr %i.ans, i64 2
  %i.anz = load i16, ptr %i.any, align 1, !tbaa !180 ; 2 uses
  %i.aoa = call noundef i16 @llvm.bswap.i16(i16 %i.anz) ; 2 uses
  %.not.i.i403 = icmp ult i16 %i.aoa, 16384
  br i1 %.not.i.i403, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407, label %bb.do, !prof !175

bb.do:                                            ; preds = %bb.dn
  %i.aob = zext i16 %i.aoa to i32                 ; 2 uses
  %i.aoc = lshr i32 %i.aob, 15
  %i.aod = lshr i32 %i.aob, 13
  %i.aoe = and i32 %i.aod, 2
  %i.aof = or disjoint i32 %i.aoe, %i.aoc
  %narrow625 = mul nuw nsw i32 %i.aof, %i.bm
  %narrow626 = add nuw nsw i32 %narrow625, 4
  %i.aog = zext nneg i32 %narrow626 to i64
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407: ; preds = %bb.dn, %bb.do
  %.0.i.i405 = phi i64 [ %i.aog, %bb.do ], [ 4, %bb.dn ] ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ans, i64 %.0.i.i405
  %i.aoi = ptrtoint ptr %i.aoh to i64
  %i.aoj = sub i64 %i.aoi, %i.ce
  %.not627 = icmp ugt i64 %i.aoj, %.sroa.6.0.i956
  br i1 %.not627, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread, label %bb.o, !llvm.loop !1078

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread: ; preds = %.thread584, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407
  %i.aok = trunc nuw i8 %.4288597 to i1
  %i.aol = select i1 %i.aok, i1 %i.es, i1 false
  br i1 %i.aol, label %.lr.ph756.preheader, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

.lr.ph756.preheader:                              ; preds = %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread
  %xtraiter1202 = and i64 %i.ew, 1
  %lcmp.mod1203.not = icmp eq i64 %xtraiter1202, 0
  br i1 %lcmp.mod1203.not, label %.lr.ph756.prol.loopexit, label %.lr.ph756.prol

.lr.ph756.prol:                                   ; preds = %.lr.ph756.preheader
  %i.aom = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %i.eu ; 2 uses
  %i.aon = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0421.3596, i64 %i.eu
  %i.aoo = load <2 x float>, ptr %i.aon, align 4, !tbaa !319
  %i.aop = load <2 x float>, ptr %i.aom, align 4, !tbaa !319
  %i.aoq = fadd <2 x float> %i.aoo, %i.aop
  store <2 x float> %i.aoq, ptr %i.aom, align 4, !tbaa !319
  %indvars.iv.next876.prol = add nuw nsw i64 %i.eu, 1
  br label %.lr.ph756.prol.loopexit

.lr.ph756.prol.loopexit:                          ; preds = %.lr.ph756.prol, %.lr.ph756.preheader
  %indvars.iv875.unr = phi i64 [ %i.eu, %.lr.ph756.preheader ], [ %indvars.iv.next876.prol, %.lr.ph756.prol ]
  %i.aor = icmp eq i64 %i.ey, 0
  br i1 %i.aor, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %.lr.ph756

.lr.ph756:                                        ; preds = %.lr.ph756.prol.loopexit, %.lr.ph756
  %indvars.iv875 = phi i64 [ %indvars.iv.next876.1, %.lr.ph756 ], [ %indvars.iv875.unr, %.lr.ph756.prol.loopexit ] ; 4 uses
  %i.aos = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv875 ; 2 uses
  %i.aot = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0421.3596, i64 %indvars.iv875
  %i.aou = load <2 x float>, ptr %i.aot, align 4, !tbaa !319
  %i.aov = load <2 x float>, ptr %i.aos, align 4, !tbaa !319
  %i.aow = fadd <2 x float> %i.aou, %i.aov
  store <2 x float> %i.aow, ptr %i.aos, align 4, !tbaa !319
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 1 ; 2 uses
  %i.aox = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next876 ; 2 uses
  %i.aoy = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0421.3596, i64 %indvars.iv.next876
  %i.aoz = load <2 x float>, ptr %i.aoy, align 4, !tbaa !319
  %i.apa = load <2 x float>, ptr %i.aox, align 4, !tbaa !319
  %i.apb = fadd <2 x float> %i.aoz, %i.apa
  store <2 x float> %i.apb, ptr %i.aox, align 4, !tbaa !319
  %indvars.iv.next876.1 = add nuw nsw i64 %indvars.iv875, 2 ; 2 uses
  %exitcond879.not.1 = icmp eq i64 %indvars.iv.next876.1, %i.ev
  br i1 %exitcond879.not.1, label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread, label %.lr.ph756, !llvm.loop !1079

_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread: ; preds = %.lr.ph756.prol.loopexit, %.lr.ph756, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i, %bb.k, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit, %.thread601, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE24get_glyph_var_data_bytesEP9hb_blob_tjj.exit ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit407.thread ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit ], [ false, %.thread601 ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.thread.i ], [ true, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t18get_shared_indicesER11hb_vector_tIjLb0EE.exit.i ], [ true, %bb.k ], [ true, %.lr.ph756 ], [ true, %.lr.ph756.prol.loopexit ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT9glyf_impl20CompositeGlyphRecord16transform_pointsE10hb_array_tI15contour_point_tERA4_KfRKS3_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !180
  %i.b = and i16 %i.a, 24
  %i.c = icmp eq i16 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %4, align 4, !tbaa !335
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
  %i.k = load <2 x float>, ptr %4, align 4, !tbaa !319
  %i.l = load <2 x float>, ptr %.02849.i, align 4, !tbaa !319
  %i.m = fadd <2 x float> %i.k, %i.l
  store <2 x float> %i.m, ptr %.02849.i, align 4, !tbaa !319
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
  %i.q = load float, ptr %4, align 4, !tbaa !335
  %i.r = load float, ptr %.02946.i, align 4, !tbaa !335
  %i.s = fadd float %i.q, %i.r
  store float %i.s, ptr %.02946.i, align 4, !tbaa !335
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
  %i.w = load float, ptr %i.f, align 4, !tbaa !336
  %i.x = getelementptr inbounds nuw i8, ptr %.044.i, i64 4 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !336
  %i.z = fadd float %i.w, %i.y
  store float %i.z, ptr %i.x, align 4, !tbaa !336
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
  %i.ay = load float, ptr %next.gep90, align 4, !tbaa !335, !alias.scope !1093, !noalias !1094
  %i.az = load float, ptr %next.gep91, align 4, !tbaa !335, !alias.scope !1093, !noalias !1094
  %i.ba = load float, ptr %next.gep92, align 4, !tbaa !335, !alias.scope !1093, !noalias !1094
  %i.bb = load float, ptr %next.gep93, align 4, !tbaa !335, !alias.scope !1093, !noalias !1094
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep90, i64 4 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.av, i64 16
  %i.bi = getelementptr i8, ptr %i.aw, i64 28
  %i.bj = getelementptr i8, ptr %i.ax, i64 40
  %i.bk = load float, ptr %i.bg, align 4, !tbaa !336, !alias.scope !1093, !noalias !1094
  %i.bl = load float, ptr %i.bh, align 4, !tbaa !336, !alias.scope !1093, !noalias !1094
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !336, !alias.scope !1093, !noalias !1094
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !336, !alias.scope !1093, !noalias !1094
  %i.bo = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 1
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 2
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 3 ; 2 uses
  %i.bs = fmul <4 x float> %i.br, %broadcast.splat95
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat97, <4 x float> %i.bs) ; 4 uses
  %i.bu = fmul <4 x float> %i.br, %broadcast.splat99
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat101, <4 x float> %i.bu) ; 4 uses
  %i.bw = extractelement <4 x float> %i.bv, i64 0
  store float %i.bw, ptr %i.bg, align 4, !tbaa !336, !alias.scope !1093, !noalias !1094
  %i.bx = extractelement <4 x float> %i.bt, i64 0
  store float %i.bx, ptr %next.gep90, align 4, !tbaa !335, !alias.scope !1093, !noalias !1094
  %i.by = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.by, ptr %next.gep91, align 4, !tbaa !319, !alias.scope !1093, !noalias !1094
  %i.bz = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.bz, ptr %next.gep92, align 4, !tbaa !319, !alias.scope !1093, !noalias !1094
  %i.ca = shufflevector <4 x float> %i.bt, <4 x float> %i.bv, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ca, ptr %next.gep93, align 4, !tbaa !319, !alias.scope !1093, !noalias !1094
  %index.next102 = add nuw i64 %index89, 4        ; 2 uses
  %i.cb = icmp eq i64 %index.next102, %n.vec87
  br i1 %i.cb, label %.lr.ph.i17.preheader107, label %vector.body88, !llvm.loop !1086

.lr.ph.i17.preheader107:                          ; preds = %vector.body88, %vector.memcheck82, %.lr.ph.i17.preheader
  %.022.i.ph = phi ptr [ %1, %vector.memcheck82 ], [ %1, %.lr.ph.i17.preheader ], [ %i.as, %vector.body88 ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader107, %.lr.ph.i17
  %.022.i = phi ptr [ %i.cj, %.lr.ph.i17 ], [ %.022.i.ph, %.lr.ph.i17.preheader107 ] ; 3 uses
  %i.cc = load <2 x float>, ptr %.022.i, align 4, !tbaa !319 ; 2 uses
  %i.cd = load <2 x float>, ptr %3, align 4, !tbaa !319
  %i.ce = load <2 x float>, ptr %i.ab, align 4, !tbaa !319
  %i.cf = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x float> %i.cf, %i.ce
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cd, <2 x float> %i.cg)
  store <2 x float> %i.ci, ptr %.022.i, align 4, !tbaa !319
  %i.cj = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.cj, %i.ag
  br i1 %.not.i18, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17, !llvm.loop !1087

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
  %i.dh = load float, ptr %next.gep, align 4, !tbaa !335, !alias.scope !1095, !noalias !1096
  %i.di = load float, ptr %next.gep66, align 4, !tbaa !335, !alias.scope !1095, !noalias !1096
  %i.dj = load float, ptr %next.gep67, align 4, !tbaa !335, !alias.scope !1095, !noalias !1096
  %i.dk = load float, ptr %next.gep68, align 4, !tbaa !335, !alias.scope !1095, !noalias !1096
  %i.dl = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 1
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.de, i64 16
  %i.dr = getelementptr i8, ptr %i.df, i64 28
  %i.ds = getelementptr i8, ptr %i.dg, i64 40
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !336, !alias.scope !1095, !noalias !1096
  %i.du = load float, ptr %i.dq, align 4, !tbaa !336, !alias.scope !1095, !noalias !1096
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !336, !alias.scope !1095, !noalias !1096
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !336, !alias.scope !1095, !noalias !1096
  %i.dx = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 3 ; 2 uses
  %i.eb = fmul <4 x float> %i.ea, %broadcast.splat
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat70, <4 x float> %i.eb) ; 4 uses
  %i.ed = fmul <4 x float> %i.ea, %broadcast.splat72
  %i.ee = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %broadcast.splat74, <4 x float> %i.ed) ; 4 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  store float %i.ef, ptr %i.dp, align 4, !tbaa !336, !alias.scope !1095, !noalias !1096
  %i.eg = extractelement <4 x float> %i.ec, i64 0
  store float %i.eg, ptr %next.gep, align 4, !tbaa !335, !alias.scope !1095, !noalias !1096
  %i.eh = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.eh, ptr %next.gep66, align 4, !tbaa !319, !alias.scope !1095, !noalias !1096
  %i.ei = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.ei, ptr %next.gep67, align 4, !tbaa !319, !alias.scope !1095, !noalias !1096
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ej, ptr %next.gep68, align 4, !tbaa !319, !alias.scope !1095, !noalias !1096
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %.lr.ph.i24.preheader113, label %vector.body, !llvm.loop !1091

.lr.ph.i24.preheader113:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph.i24.preheader
  %.022.i25.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i24.preheader ], [ %i.db, %vector.body ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader113, %.lr.ph.i24
  %.022.i25 = phi ptr [ %i.es, %.lr.ph.i24 ], [ %.022.i25.ph, %.lr.ph.i24.preheader113 ] ; 3 uses
  %i.el = load <2 x float>, ptr %.022.i25, align 4, !tbaa !319 ; 2 uses
  %i.em = load <2 x float>, ptr %3, align 4, !tbaa !319
  %i.en = load <2 x float>, ptr %i.ck, align 4, !tbaa !319
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ep = fmul <2 x float> %i.eo, %i.en
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.em, <2 x float> %i.ep)
  store <2 x float> %i.er, ptr %.022.i25, align 4, !tbaa !319
  %i.es = getelementptr inbounds nuw i8, ptr %.022.i25, i64 12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.es, %i.cp
  br i1 %.not.i26, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24, !llvm.loop !1092

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27: ; preds = %.lr.ph.i24, %bb.i, %bb.j
  %i.et = load float, ptr %4, align 4, !tbaa !335
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
  %i.fa = load <2 x float>, ptr %4, align 4, !tbaa !319
  %i.fb = load <2 x float>, ptr %.02849.i42, align 4, !tbaa !319
  %i.fc = fadd <2 x float> %i.fa, %i.fb
  store <2 x float> %i.fc, ptr %.02849.i42, align 4, !tbaa !319
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
  %i.fg = load float, ptr %4, align 4, !tbaa !335
  %i.fh = load float, ptr %.02946.i37, align 4, !tbaa !335
  %i.fi = fadd float %i.fg, %i.fh
  store float %i.fi, ptr %.02946.i37, align 4, !tbaa !335
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
  %i.fm = load float, ptr %i.ev, align 4, !tbaa !336
  %i.fn = getelementptr inbounds nuw i8, ptr %.044.i32, i64 4 ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !336
  %i.fp = fadd float %i.fm, %i.fo
  store float %i.fp, ptr %i.fn, align 4, !tbaa !336
  %i.fq = getelementptr inbounds nuw i8, ptr %.044.i32, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %i.fq, %i.fl
  br i1 %.not.i33, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit: ; preds = %.lr.ph.i31, %.lr.ph47.i36, %.lr.ph50.i41, %.lr.ph.i17, %bb.o, %bb.n, %bb.m, %bb.k, %bb.h, %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !310    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !174
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !74

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !1097

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !74

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !312
  tail call void @hb_free(ptr noundef %i.m) #15
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !312  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

end_hunk_0
