Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
bb.dc:                                            ; preds = %bb.da
  %i.amb = fcmp ole float %i.alu, %i.alv
  %.sroa.speculated35.i = select i1 %i.amb, float %i.alu, float %i.alv
  %i.amc = fcmp ugt float %i.alt, %.sroa.speculated35.i
  br i1 %i.amc, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.amd = fcmp olt float %i.alu, %i.alv
  %i.ame = select i1 %i.amd, float %i.alw, float %i.alx
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

bb.de:                                            ; preds = %bb.dc
  %i.amf = fcmp oge float %i.alu, %i.alv
  %.sroa.speculated.i = select i1 %i.amf, float %i.alu, float %i.alv
  %i.amg = fcmp ult float %i.alt, %.sroa.speculated.i
  br i1 %i.amg, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.amh = fcmp ogt float %i.alu, %i.alv
  %i.ami = select i1 %i.amh, float %i.alw, float %i.alx
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

bb.dg:                                            ; preds = %bb.de
  %i.amj = fsub float %i.alt, %i.alu
  %i.amk = fsub float %i.alv, %i.alu
  %i.aml = fdiv float %i.amj, %i.amk
  %i.amm = fsub float %i.alx, %i.alw
  %i.amn = call float @llvm.fmuladd.f32(float %i.aml, float %i.amm, float %i.alw)
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit

_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit: ; preds = %bb.db, %bb.dd, %bb.df, %bb.dg
  %.0.i397 = phi float [ %i.ama, %bb.db ], [ %i.ame, %bb.dd ], [ %i.ami, %bb.df ], [ %i.amn, %bb.dg ]
  %i.amo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0421.1, i64 %i.alr ; 2 uses
  store float %.0.i397, ptr %i.amo, align 4, !tbaa !335
  %i.amp = getelementptr inbounds nuw i8, ptr %i.als, i64 4
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !319 ; 3 uses
  %i.amr = load float, ptr %i.alk, align 4, !tbaa !319 ; 9 uses
  %i.ams = load float, ptr %i.all, align 4, !tbaa !319 ; 8 uses
  %i.amt = load float, ptr %i.alm, align 4, !tbaa !319 ; 6 uses
  %i.amu = load float, ptr %i.aln, align 4, !tbaa !319 ; 4 uses
  %i.amv = fcmp oeq float %i.amr, %i.ams
  br i1 %i.amv, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit
  %i.amw = fcmp oeq float %i.amt, %i.amu
  %i.amx = select i1 %i.amw, float %i.amt, float 0.000000e+00
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401

bb.di:                                            ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit
  %i.amy = fcmp ole float %i.amr, %i.ams
  %.sroa.speculated35.i398 = select i1 %i.amy, float %i.amr, float %i.ams
  %i.amz = fcmp ugt float %i.amq, %.sroa.speculated35.i398
  br i1 %i.amz, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ana = fcmp olt float %i.amr, %i.ams
  %i.anb = select i1 %i.ana, float %i.amt, float %i.amu
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401

bb.dk:                                            ; preds = %bb.di
  %i.anc = fcmp oge float %i.amr, %i.ams
  %.sroa.speculated.i400 = select i1 %i.anc, float %i.amr, float %i.ams
  %i.and = fcmp ult float %i.amq, %.sroa.speculated.i400
  br i1 %i.and, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ane = fcmp ogt float %i.amr, %i.ams
  %i.anf = select i1 %i.ane, float %i.amt, float %i.amu
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401

bb.dm:                                            ; preds = %bb.dk
  %i.ang = fsub float %i.amq, %i.amr
  %i.anh = fsub float %i.ams, %i.amr
  %i.ani = fdiv float %i.ang, %i.anh
  %i.anj = fsub float %i.amu, %i.amt
  %i.ank = call float @llvm.fmuladd.f32(float %i.ani, float %i.anj, float %i.amt)
  br label %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401

_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401: ; preds = %bb.dh, %bb.dj, %bb.dl, %bb.dm
  %.0.i399 = phi float [ %i.amx, %bb.dh ], [ %i.anb, %bb.dj ], [ %i.anf, %bb.dl ], [ %i.ank, %bb.dm ]
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amo, i64 4
  store float %.0.i399, ptr %i.anl, align 4, !tbaa !336
  %i.anm = add i32 %.2274, -1                     ; 2 uses
  %i.ann = icmp eq i32 %i.anm, 0
  br i1 %i.ann, label %.thread581, label %bb.cz, !llvm.loop !1076

.thread581:                                       ; preds = %_ZN2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t11infer_deltaE10hb_array_tI15contour_point_tES7_jjjMS6_f.exit401, %._crit_edge
  br label %.preheader641, !llvm.loop !1077

.thread601:                                       ; preds = %bb.ba, %bb.bd, %_ZN11hb_vector_tI15contour_point_tLb0EE6extendE10hb_array_tIS0_Eb.exit, %bb.bc, %bb.au, %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16tuple_iterator_t8is_validEv.exit.thread, %bb.aw, %bb.ax, %bb.be, %bb.bf, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit, %bb.cg, %_ZN2OT11TupleValues9decompileIiEEbRPKNS_7NumTypeILb1EhLj1EEER11hb_vector_tIT_Lb0EES5_bj.exit.thread, %.lr.ph706, %bb.bq, %bb.bo, %bb.bl, %bb.bh, %.lr.ph733, %bb.cc, %bb.ca, %bb.bx, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18get_tuple_iteratorE10hb_array_tIKcEjPKvR11hb_vector_tIjLb0EEPNS3_16tuple_iterator_tE.exit.thread

select.unfold:                                    ; preds = %.critedge, %scalar.ph1054, %scalar.ph, %bb.cv, %.thread571, %.thread576, %bb.bd, %.loopexit642
  %.sroa.6440.4 = phi i64 [ %.sroa.6440.0, %bb.bd ], [ %.sroa.6440.1, %.loopexit642 ], [ %.sroa.6440.1, %bb.cv ], [ %.sroa.6440.0, %.thread571 ], [ %.sroa.6440.0, %scalar.ph1054 ], [ %.sroa.6440.0, %scalar.ph ], [ %.sroa.6440.0, %.thread576 ], [ %.sroa.6440.1, %.critedge ]
  %.sroa.0439.4 = phi ptr [ %.sroa.0439.0, %bb.bd ], [ %.sroa.0439.1, %.loopexit642 ], [ %.sroa.0439.1, %bb.cv ], [ %.sroa.0439.0, %.thread571 ], [ %.sroa.0439.0, %scalar.ph1054 ], [ %.sroa.0439.0, %scalar.ph ], [ %.sroa.0439.0, %.thread576 ], [ %.sroa.0439.1, %.critedge ]
  %.3287 = phi i8 [ %.0284, %bb.bd ], [ 1, %.loopexit642 ], [ 1, %bb.cv ], [ 1, %.thread571 ], [ 1, %scalar.ph1054 ], [ 1, %scalar.ph ], [ 1, %.thread576 ], [ 1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread584

.thread584:                                       ; preds = %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit, %select.unfold
  %.3263599 = phi i1 [ %.2262, %select.unfold ], [ %.0260, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ]
  %.2266598 = phi i1 [ true, %select.unfold ], [ %.0264, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ]
  %.4288597 = phi i8 [ %.3287, %select.unfold ], [ %.0284, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ] ; 2 uses
  %.sroa.0421.3596 = phi ptr [ %.sroa.0421.1, %select.unfold ], [ %.sroa.0421.0, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ] ; 4 uses
  %.sroa.18.3595 = phi i64 [ %.sroa.18.1, %select.unfold ], [ %.sroa.18.0, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ]
  %.sroa.0439.5594 = phi ptr [ %.sroa.0439.4, %select.unfold ], [ %.sroa.0439.0, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ]
  %.sroa.6440.5593 = phi i64 [ %.sroa.6440.4, %select.unfold ], [ %.sroa.6440.0, %_ZNK2OT20TupleVariationHeader16calculate_scalarE10hb_array_tIKiEjS1_IKNS_7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEEEPNS_17hb_scalar_cache_tE.exit ]
  %i.ano = load i16, ptr %.sroa.43.0, align 1, !tbaa !180
  %i.anp = call noundef i16 @llvm.bswap.i16(i16 %i.ano)
  %i.anq = zext i16 %i.anp to i32
  %i.anr = add i32 %.sroa.16.0, %i.anq
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
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ae = load <4 x float>, ptr %3, align 4
  %.fr103 = freeze <4 x float> %i.ae
  %i.af = fcmp une <4 x float> %.fr103, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ag = bitcast <4 x i1> %i.af to i4
  %.not104 = icmp eq i4 %i.ag, 0
  br i1 %.not104, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  %i.ah = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %i.ah, 12           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i16
  %.not21.i = icmp eq i64 %i.ah, 0
  br i1 %.not21.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.h
  %i.aj = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.ak = udiv i64 %i.aj, 12                      ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check82 = icmp ult i64 %i.aj, 96
  br i1 %min.iters.check82, label %.lr.ph.i17.preheader105, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i17.preheader
  %5 = mul nuw i64 %i.ak, 12
  %i.am = getelementptr i8, ptr %1, i64 %5
  %scevgep76 = getelementptr i8, ptr %i.am, i64 8
  %scevgep77 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound078 = icmp ult ptr %1, %scevgep77
  %bound179 = icmp ult ptr %3, %scevgep76
  %found.conflict80 = and i1 %bound078, %bound179
  br i1 %found.conflict80, label %.lr.ph.i17.preheader105, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck75
  %i.an = and i64 %i.al, 3                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 4, i64 %i.an
  %n.vec84 = sub nsw i64 %i.al, %i.ap             ; 2 uses
  %i.aq = mul i64 %n.vec84, 12
  %i.ar = getelementptr i8, ptr %1, i64 %i.aq
  %i.as = load float, ptr %3, align 4, !tbaa !319, !alias.scope !1093
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.as, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = load float, ptr %i.ac, align 4, !tbaa !319, !alias.scope !1093
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = load float, ptr %i.ab, align 4, !tbaa !319, !alias.scope !1093
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = load float, ptr %i.ad, align 4, !tbaa !319, !alias.scope !1093
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.av, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next99, %vector.body85 ] ; 2 uses
  %i.aw = mul i64 %index86, 12                    ; 4 uses
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ax, i64 12 ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.aw     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.ay, i64 24 ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.aw     ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.az, i64 36 ; 2 uses
  %i.ba = load float, ptr %next.gep87, align 4, !tbaa !335, !alias.scope !1094, !noalias !1093
  %i.bb = load float, ptr %next.gep88, align 4, !tbaa !335, !alias.scope !1094, !noalias !1093
  %i.bc = load float, ptr %next.gep89, align 4, !tbaa !335, !alias.scope !1094, !noalias !1093
  %i.bd = load float, ptr %next.gep90, align 4, !tbaa !335, !alias.scope !1094, !noalias !1093
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep87, i64 4 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 16
  %i.bk = getelementptr i8, ptr %i.ay, i64 28
  %i.bl = getelementptr i8, ptr %i.az, i64 40
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !336, !alias.scope !1094, !noalias !1093
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !336, !alias.scope !1094, !noalias !1093
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !336, !alias.scope !1094, !noalias !1093
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !336, !alias.scope !1094, !noalias !1093
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3 ; 2 uses
  %i.bu = fmul <4 x float> %i.bt, %broadcast.splat92
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %broadcast.splat94, <4 x float> %i.bu) ; 4 uses
  %i.bw = fmul <4 x float> %i.bt, %broadcast.splat96
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %broadcast.splat98, <4 x float> %i.bw) ; 4 uses
  %i.by = extractelement <4 x float> %i.bx, i64 0
  store float %i.by, ptr %i.bi, align 4, !tbaa !336, !alias.scope !1094, !noalias !1093
  %i.bz = extractelement <4 x float> %i.bv, i64 0
  store float %i.bz, ptr %next.gep87, align 4, !tbaa !335, !alias.scope !1094, !noalias !1093
  %i.ca = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.ca, ptr %next.gep88, align 4, !tbaa !319, !alias.scope !1094, !noalias !1093
  %i.cb = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cb, ptr %next.gep89, align 4, !tbaa !319, !alias.scope !1094, !noalias !1093
  %i.cc = shufflevector <4 x float> %i.bv, <4 x float> %i.bx, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.cc, ptr %next.gep90, align 4, !tbaa !319, !alias.scope !1094, !noalias !1093
  %index.next99 = add nuw i64 %index86, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next99, %n.vec84
  br i1 %i.cd, label %.lr.ph.i17.preheader105, label %vector.body85, !llvm.loop !1086

.lr.ph.i17.preheader105:                          ; preds = %vector.body85, %vector.memcheck75, %.lr.ph.i17.preheader
  %.022.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i17.preheader ], [ %i.ar, %vector.body85 ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader105, %.lr.ph.i17
  %.022.i = phi ptr [ %i.cl, %.lr.ph.i17 ], [ %.022.i.ph, %.lr.ph.i17.preheader105 ] ; 3 uses
  %i.ce = load <2 x float>, ptr %.022.i, align 4, !tbaa !319 ; 2 uses
  %i.cf = load <2 x float>, ptr %3, align 4, !tbaa !319
  %i.cg = load <2 x float>, ptr %i.ac, align 4, !tbaa !319
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fmul <2 x float> %i.ch, %i.cg
  %i.cj = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cf, <2 x float> %i.ci)
  store <2 x float> %i.ck, ptr %.022.i, align 4, !tbaa !319
  %i.cl = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.cl, %i.ai
  br i1 %.not.i18, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17, !llvm.loop !1087

bb.i:                                             ; preds = %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cp = load <4 x float>, ptr %3, align 4
  %.fr = freeze <4 x float> %i.cp
  %i.cq = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.cr = bitcast <4 x i1> %i.cq to i4
  %.not = icmp eq i4 %i.cr, 0
  br i1 %.not, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i22 = mul nuw nsw i64 %i.cs, 12           ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i22
  %.not21.i23 = icmp eq i64 %i.cs, 0
  br i1 %.not21.i23, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.j
  %i.cu = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.cv = udiv i64 %i.cu, 12                      ; 2 uses
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cu, 96
  br i1 %min.iters.check, label %.lr.ph.i24.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24.preheader
  %6 = mul nuw i64 %i.cv, 12
  %i.cx = getelementptr i8, ptr %1, i64 %6
  %scevgep = getelementptr i8, ptr %i.cx, i64 8
  %scevgep65 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound0 = icmp ult ptr %1, %scevgep65
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cy = and i64 %i.cw, 3                        ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  %i.da = select i1 %i.cz, i64 4, i64 %i.cy
  %n.vec = sub nsw i64 %i.cw, %i.da               ; 2 uses
  %i.db = mul i64 %n.vec, 12
  %i.dc = getelementptr i8, ptr %1, i64 %i.db
  %i.dd = load float, ptr %3, align 4, !tbaa !319, !alias.scope !1095
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = load float, ptr %i.cn, align 4, !tbaa !319, !alias.scope !1095
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = load float, ptr %i.cm, align 4, !tbaa !319, !alias.scope !1095
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat74 = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = load float, ptr %i.co, align 4, !tbaa !319, !alias.scope !1095
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.dh ; 3 uses
  %i.di = getelementptr i8, ptr %1, i64 %i.dh     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.di, i64 12 ; 2 uses
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 %i.dh     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.dk, i64 36 ; 2 uses
  %i.dl = load float, ptr %next.gep, align 4, !tbaa !335, !alias.scope !1096, !noalias !1095
  %i.dm = load float, ptr %next.gep66, align 4, !tbaa !335, !alias.scope !1096, !noalias !1095
  %i.dn = load float, ptr %next.gep67, align 4, !tbaa !335, !alias.scope !1096, !noalias !1095
  %i.do = load float, ptr %next.gep68, align 4, !tbaa !335, !alias.scope !1096, !noalias !1095
  %i.dp = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 1
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 2
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.du = getelementptr i8, ptr %i.di, i64 16
  %i.dv = getelementptr i8, ptr %i.dj, i64 28
  %i.dw = getelementptr i8, ptr %i.dk, i64 40
  %i.dx = load float, ptr %i.dt, align 4, !tbaa !336, !alias.scope !1096, !noalias !1095
  %i.dy = load float, ptr %i.du, align 4, !tbaa !336, !alias.scope !1096, !noalias !1095
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !336, !alias.scope !1096, !noalias !1095
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !336, !alias.scope !1096, !noalias !1095
  %i.eb = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 1
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 2
  %i.ee = insertelement <4 x float> %i.ed, float %i.ea, i64 3 ; 2 uses
  %i.ef = fmul <4 x float> %i.ee, %broadcast.splat
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %broadcast.splat70, <4 x float> %i.ef) ; 4 uses
  %i.eh = fmul <4 x float> %i.ee, %broadcast.splat72
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %broadcast.splat74, <4 x float> %i.eh) ; 4 uses
  %i.ej = extractelement <4 x float> %i.ei, i64 0
  store float %i.ej, ptr %i.dt, align 4, !tbaa !336, !alias.scope !1096, !noalias !1095
  %i.ek = extractelement <4 x float> %i.eg, i64 0
  store float %i.ek, ptr %next.gep, align 4, !tbaa !335, !alias.scope !1096, !noalias !1095
  %i.el = shufflevector <4 x float> %i.eg, <4 x float> %i.ei, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.el, ptr %next.gep66, align 4, !tbaa !319, !alias.scope !1096, !noalias !1095
  %i.em = shufflevector <4 x float> %i.eg, <4 x float> %i.ei, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.em, ptr %next.gep67, align 4, !tbaa !319, !alias.scope !1096, !noalias !1095
  %i.en = shufflevector <4 x float> %i.eg, <4 x float> %i.ei, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.en, ptr %next.gep68, align 4, !tbaa !319, !alias.scope !1096, !noalias !1095
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eo = icmp eq i64 %index.next, %n.vec
  br i1 %i.eo, label %.lr.ph.i24.preheader111, label %vector.body, !llvm.loop !1091

.lr.ph.i24.preheader111:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph.i24.preheader
  %.022.i25.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i24.preheader ], [ %i.dc, %vector.body ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader111, %.lr.ph.i24
  %.022.i25 = phi ptr [ %i.ew, %.lr.ph.i24 ], [ %.022.i25.ph, %.lr.ph.i24.preheader111 ] ; 3 uses
  %i.ep = load <2 x float>, ptr %.022.i25, align 4, !tbaa !319 ; 2 uses
  %i.eq = load <2 x float>, ptr %3, align 4, !tbaa !319
  %i.er = load <2 x float>, ptr %i.cn, align 4, !tbaa !319
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.es, %i.er
  %i.eu = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.eq, <2 x float> %i.et)
  store <2 x float> %i.ev, ptr %.022.i25, align 4, !tbaa !319
  %i.ew = getelementptr inbounds nuw i8, ptr %.022.i25, i64 12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ew, %i.ct
  br i1 %.not.i26, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24, !llvm.loop !1092

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27: ; preds = %.lr.ph.i24, %bb.i, %bb.j
  %i.ex = load float, ptr %4, align 4, !tbaa !335
  %i.ey = fcmp une float %i.ex, 0.000000e+00      ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = fcmp une float %i.fa, 0.000000e+00      ; 2 uses
  %or.cond.i28 = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %or.cond.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  %i.fc = and i64 %2, 4294967295                  ; 2 uses
  %.idx52.i39 = mul nuw nsw i64 %i.fc, 12
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i39
  %.not3148.i40 = icmp eq i64 %i.fc, 0
  br i1 %.not3148.i40, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

.lr.ph50.i41:                                     ; preds = %bb.k, %.lr.ph50.i41
  %.02849.i42 = phi ptr [ %i.fh, %.lr.ph50.i41 ], [ %1, %bb.k ] ; 3 uses
  %i.fe = load <2 x float>, ptr %4, align 4, !tbaa !319
  %i.ff = load <2 x float>, ptr %.02849.i42, align 4, !tbaa !319
  %i.fg = fadd <2 x float> %i.fe, %i.ff
  store <2 x float> %i.fg, ptr %.02849.i42, align 4, !tbaa !319
  %i.fh = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 12 ; 2 uses
  %.not31.i43 = icmp eq ptr %i.fh, %i.fd
  br i1 %.not31.i43, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

bb.l:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  br i1 %i.ey, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fi = and i64 %2, 4294967295                  ; 2 uses
  %.idx51.i34 = mul nuw nsw i64 %i.fi, 12
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i34
  %.not3045.i35 = icmp eq i64 %i.fi, 0
  br i1 %.not3045.i35, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

.lr.ph47.i36:                                     ; preds = %bb.m, %.lr.ph47.i36
  %.02946.i37 = phi ptr [ %i.fn, %.lr.ph47.i36 ], [ %1, %bb.m ] ; 3 uses
  %i.fk = load float, ptr %4, align 4, !tbaa !335
  %i.fl = load float, ptr %.02946.i37, align 4, !tbaa !335
  %i.fm = fadd float %i.fk, %i.fl
  store float %i.fm, ptr %.02946.i37, align 4, !tbaa !335
  %i.fn = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 12 ; 2 uses
  %.not30.i38 = icmp eq ptr %i.fn, %i.fj
  br i1 %.not30.i38, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

bb.n:                                             ; preds = %bb.l
  br i1 %i.fb, label %bb.o, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit

bb.o:                                             ; preds = %bb.n
  %i.fo = and i64 %2, 4294967295                  ; 2 uses
  %.idx.i29 = mul nuw nsw i64 %i.fo, 12
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i29
  %.not43.i30 = icmp eq i64 %i.fo, 0
  br i1 %.not43.i30, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.o, %.lr.ph.i31
  %.044.i32 = phi ptr [ %i.fu, %.lr.ph.i31 ], [ %1, %bb.o ] ; 2 uses
  %i.fq = load float, ptr %i.ez, align 4, !tbaa !336
  %i.fr = getelementptr inbounds nuw i8, ptr %.044.i32, i64 4 ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !336
  %i.ft = fadd float %i.fq, %i.fs
  store float %i.ft, ptr %i.fr, align 4, !tbaa !336
  %i.fu = getelementptr inbounds nuw i8, ptr %.044.i32, i64 12 ; 2 uses
  %.not.i33 = icmp eq ptr %i.fu, %i.fp
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

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #15 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !311  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !312
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !1101
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #15 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !158

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !310   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !312
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !310
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE16decompile_pointsERPKNS1_ILb1EhLj1EEER11hb_vector_tIjLb0EES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !353    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.c = icmp ugt ptr %i.b, %2
  br i1 %i.c, label %.critedge, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !353
  %i.d = load i8, ptr %i.a, align 1, !tbaa !304   ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.g = icmp ugt ptr %i.f, %2
  br i1 %i.g, label %.critedge, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %i.e, 8
  %i.i = and i32 %i.h, 32512
  store ptr %i.f, ptr %0, align 8, !tbaa !353
  %i.j = load i8, ptr %i.b, align 1, !tbaa !304
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.i, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.051 = phi i32 [ %i.l, %bb.d ], [ %i.e, %bb.b ] ; 5 uses
  %i.m = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.051, i1 noundef zeroext false)
  br i1 %i.m, label %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit, label %.critedge, !prof !258

_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit:     ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.051, ptr %i.n, align 4, !tbaa !286
  %.not6477.not = icmp eq i32 %.051, 0
  br i1 %.not6477.not, label %.critedge, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZN11hb_vector_tIjLb0EE12resize_dirtyEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !353
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph80, %.loopexit
  %i.p = phi ptr [ %.pre, %.lr.ph80 ], [ %i.co, %.loopexit ] ; 3 uses
  %.079 = phi i32 [ 0, %.lr.ph80 ], [ %.4, %.loopexit ] ; 7 uses
  %.04578 = phi i32 [ 0, %.lr.ph80 ], [ %.449, %.loopexit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 10 uses
  %i.r = icmp ugt ptr %i.q, %2
  br i1 %i.r, label %.critedge, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !353
  %i.s = load i8, ptr %i.p, align 1, !tbaa !304   ; 2 uses
  %i.t = and i8 %i.s, 127
  %narrow = add nuw i8 %i.t, 1                    ; 2 uses
  %i.u = zext i8 %narrow to i32                   ; 2 uses
  %i.v = add i32 %.079, %i.u                      ; 6 uses
  %i.w = icmp ugt i32 %i.v, %.051
  br i1 %i.w, label %.critedge, label %bb.h, !prof !74
end_hunk_0
