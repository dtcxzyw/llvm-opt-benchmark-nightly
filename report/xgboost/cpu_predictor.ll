Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor12_GLOBAL__N_119DispatchArrayLayoutERKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEEbNSD_15OptionalWeightsE:bb.a
  %i.sd = icmp eq i8 %i.sc, 1
  %i.se = sext i32 %.010.i.i.i102 to i64          ; 3 uses
  br i1 %i.sd, label %bb.cw, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i104

bb.cw:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i103
  %i.sf = load i64, ptr %i.nu, align 8, !tbaa !406
  %i.sg = icmp ugt i64 %i.sf, %i.se
  br i1 %i.sg, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i111, label %bb.cx, !prof !70

bb.cx:                                            ; preds = %bb.cw
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i111: ; preds = %bb.cw
  %i.sh = load ptr, ptr %i.nv, align 8, !tbaa !407
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %i.se ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !409 ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !410 ; 3 uses
  %i.sm = icmp eq i64 %i.sl, -1
  br i1 %i.sm, label %.split.i.i.i116, label %bb.cy

.split.i.i.i116:                                  ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i111
  %i.sn = load i64, ptr %i.nl, align 8, !tbaa !384 ; 2 uses
  %.not8.i.i.i117 = icmp ugt i64 %i.sj, %i.sn
  br i1 %.not8.i.i.i117, label %bb.cz, label %bb.da, !prof !173

bb.cy:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i111
  %i.so = add i64 %i.sl, %i.sj
  %i.sp = load i64, ptr %i.nl, align 8, !tbaa !384
  %.not.i.i33.i112 = icmp ugt i64 %i.so, %i.sp
  br i1 %.not.i.i33.i112, label %bb.cz, label %bb.db, !prof !173

bb.cz:                                            ; preds = %bb.cy, %.split.i.i.i116
  call void @_ZSt9terminatev() #35
  unreachable

bb.da:                                            ; preds = %.split.i.i.i116
  %i.sq = sub nuw i64 %i.sn, %i.sj
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy
  %i.sr = phi i64 [ %i.sq, %bb.da ], [ %i.sl, %bb.cy ] ; 2 uses
  %i.ss = load ptr, ptr %.in.i.i.i94, align 8, !tbaa !385 ; 2 uses
  %i.st = icmp ne ptr %i.ss, null
  %i.su = icmp eq i64 %i.sr, 0
  %i.sv = or i1 %i.su, %i.st
  br i1 %i.sv, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i113, label %bb.dc, !prof !70

bb.dc:                                            ; preds = %bb.db
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i113: ; preds = %bb.db
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.sj
  %i.sx = fcmp olt float %i.ry, 0.000000e+00
  %i.sy = fcmp oge float %i.ry, f0x4B800000
  %i.sz = or i1 %i.sx, %i.sy
  br i1 %i.sz, label %.noexc12.i.i105, label %bb.dd, !prof !173

bb.dd:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i113
  %i.ta = fptoui float %i.ry to i64
  %i.tb = lshr i64 %i.ta, 5
  %.not.i15.i.i114 = icmp ult i64 %i.tb, %i.sr
  br i1 %.not.i15.i.i114, label %bb.de, label %.noexc12.i.i105

bb.de:                                            ; preds = %bb.dd
  %i.tc = fptosi float %i.ry to i32               ; 2 uses
  %i.td = lshr i32 %i.tc, 5
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = and i32 %i.tc, 31
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.sw, i64 %i.te
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !83
  %i.ti = lshr exact i32 -2147483648, %i.tf
  %i.tj = and i32 %i.th, %i.ti
  %.not5.i.i.i115 = icmp eq i32 %i.tj, 0
  br label %.noexc12.i.i105

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i104: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i103
  %i.tk = getelementptr inbounds [20 x i8], ptr %i.oc, i64 %i.se
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !50
  %i.tn = fcmp olt float %i.ry, %i.tm
  br label %.noexc12.i.i105

.noexc12.i.i105:                                  ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i104, %bb.de, %bb.dd, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i113
  %.0.i.i106 = phi i1 [ %i.tn, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i104 ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i113 ], [ %.not5.i.i.i115, %bb.de ], [ true, %bb.dd ]
  %i.to = xor i1 %.0.i.i106, true
  %i.tp = zext i1 %i.to to i32
  %i.tq = add nuw nsw i32 %i.rq, %i.tp            ; 2 uses
  %i.tr = sext i32 %i.tq to i64                   ; 3 uses
  %i.ts = getelementptr inbounds [20 x i8], ptr %i.oc, i64 %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !401 ; 2 uses
  %i.tv = icmp eq i32 %i.tu, -1
  br i1 %i.tv, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i107, label %.lr.ph.i10.i.i101, !llvm.loop !975

_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i107: ; preds = %.noexc12.i.i105, %.lr.ph.i10.i.us.i118, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i129, %bb.cu, %bb.cg
  %.pre-phi.i.i108 = phi i64 [ %i.qo, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i129 ], [ %i.od, %bb.cu ], [ %i.od, %bb.cg ], [ %i.rl, %.lr.ph.i10.i.us.i118 ], [ %i.tr, %.noexc12.i.i105 ]
  %i.tw = getelementptr inbounds [20 x i8], ptr %i.oc, i64 %.pre-phi.i.i108
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !50
  %i.tz = add i64 %.020.i.i.i.i.i.i.i.i95, %1
  %i.ua = mul i64 %i.tz, %.sroa.0411.0.copyload
  %gep.i.i.i.i.i.i.i.i109 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i92, i64 %i.ua ; 2 uses
  %i.ub = load float, ptr %gep.i.i.i.i.i.i.i.i109, align 4, !tbaa !72
  %i.uc = call float @llvm.fmuladd.f32(float %i.ty, float %.in.i.i84.sroa.speculated, float %i.ub)
  store float %i.uc, ptr %gep.i.i.i.i.i.i.i.i109, align 4, !tbaa !72
  %i.ud = add nuw i64 %.020.i.i.i.i.i.i.i.i95, 1  ; 2 uses
  %exitcond21.not.i.i.i.i.i.i.i.i110 = icmp eq i64 %i.ud, %4
  br i1 %exitcond21.not.i.i.i.i.i.i.i.i110, label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb1ELb0EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i, label %bb.ce, !llvm.loop !979

bb.df:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i89
  invoke void @_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0ELb0ELb1EEEvRKNS_4tree14ScalarTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiiif(ptr noundef nonnull align 8 dereferenceable(193) %i.nf, i64 noundef %1, i64 %2, ptr %3, i64 noundef range(i64 2, 0) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef %i.nq, i32 noundef %i.nc, i32 noundef %i.np, float noundef %.in.i.i84.sroa.speculated)
          to label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb1ELb0EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i unwind label %bb.dj

bb.dg:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i86
  %i.ue = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !384
  %.not.i.i.i.i6.i.i.i87 = icmp eq i64 %i.uf, 0
  %i.ug = load ptr, ptr %9, align 8, !tbaa !175   ; 2 uses
  br i1 %.not.i.i.i.i6.i.i.i87, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN7xgboost9predictor5multi18PredValueByOneTreeILb1ELb0ELb1EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif(ptr noundef nonnull align 8 dereferenceable(193) %i.nf, i64 noundef %1, i64 %2, ptr %3, i64 noundef range(i64 2, 0) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef %i.ug, i32 noundef %i.nc, float noundef %.in.i.i84.sroa.speculated)
          to label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb1ELb0EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i unwind label %bb.dj

bb.di:                                            ; preds = %bb.dg
  invoke void @_ZN7xgboost9predictor5multi18PredValueByOneTreeILb0ELb0ELb1EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif(ptr noundef nonnull align 8 dereferenceable(193) %i.nf, i64 noundef %1, i64 %2, ptr %3, i64 noundef range(i64 2, 0) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef %i.ug, i32 noundef %i.nc, float noundef %.in.i.i84.sroa.speculated)
          to label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb1ELb0EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i unwind label %bb.dj

_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb1ELb0EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i: ; preds = %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i107, %bb.di, %bb.dh, %bb.df
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i82, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i81
  br i1 %exitcond81.not.i, label %._crit_edge.i78, label %bb.bw, !llvm.loop !980

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.df, %bb.cd
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.bv
  %.pn.pn.pn.pn.i72 = phi { ptr, i32 } [ %i.mz, %bb.bv ], [ %i.uh, %bb.dj ]
  %i.ui = load ptr, ptr %9, align 8, !tbaa !175   ; 3 uses
  %.not.i.i.i31.i73 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i31.i73, label %_ZNSt6vectorIiSaIiEED2Ev.exit32.i74, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.uj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !246
  %i.ul = ptrtoint ptr %i.uk to i64
  %i.um = ptrtoint ptr %i.ui to i64
  %i.un = sub i64 %i.ul, %i.um
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.un) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit32.i74

_ZNSt6vectorIiSaIiEED2Ev.exit32.i74:              ; preds = %bb.dl, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit: ; preds = %._crit_edge.i78, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit

bb.dm:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.sroa.0416.0.copyload = load i64, ptr %5, align 8
  %.sroa.4417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4417.0.copyload = load i64, ptr %.sroa.4417.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.5419.0.copyload = load ptr, ptr %.sroa.5419.0..sroa_idx, align 8
  %.sroa.0218.0.copyload = load i64, ptr %8, align 8, !tbaa !59 ; 2 uses
  %.sroa.2219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2219.0.copyload = load ptr, ptr %.sroa.2219.0..sroa_idx, align 8, !tbaa !69
  %.sroa.3220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.3220.0.copyload = load float, ptr %.sroa.3220.0..sroa_idx, align 8, !tbaa !72
  %.val19.i = load ptr, ptr %0, align 8, !tbaa !144 ; 3 uses
  %.val20.i = load ptr, ptr %i.k, align 8, !tbaa !201 ; 2 uses
  %i.uo = icmp ne ptr %.val19.i, null
  %i.up = icmp eq ptr %.val20.i, null
  %i.uq = or i1 %i.uo, %i.up
  br i1 %i.uq, label %bb.do, label %bb.dn, !prof !70

bb.dn:                                            ; preds = %bb.dm
  call void @_ZSt9terminatev() #35
  unreachable

bb.do:                                            ; preds = %bb.dm
  %i.ur = ptrtoint ptr %.val20.i to i64
  %i.us = ptrtoint ptr %.val19.i to i64
  %i.ut = sub i64 %i.ur, %i.us
  %i.uu = sdiv exact i64 %i.ut, 200               ; 3 uses
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = icmp sgt i32 %i.uv, 0
  br i1 %i.uw, label %.lr.ph.i140, label %_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit

.lr.ph.i140:                                      ; preds = %bb.do
  %i.ux = icmp eq i64 %.sroa.0218.0.copyload, 0
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i8.i.i.i.i.i.i.i = icmp eq i64 %4, 0      ; 2 uses
  %15 = icmp eq i64 %2, 0                         ; 2 uses
  %wide.trip.count.i142 = and i64 %i.uu, 2147483647
  %i.va = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.vb = mul i64 %.sroa.0416.0.copyload, %1
  %invariant.gep.i = getelementptr [4 x i8], ptr %.sroa.5419.0.copyload, i64 %i.vb ; 2 uses
  br label %bb.dp

bb.dp:                                            ; preds = %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i, %.lr.ph.i140
  %indvars.iv.i145 = phi i64 [ 0, %.lr.ph.i140 ], [ %indvars.iv.next.i151, %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i ] ; 7 uses
  br i1 %i.ux, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vc = icmp ugt i64 %.sroa.0218.0.copyload, %indvars.iv.i145
  br i1 %i.vc, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146, label %bb.dr, !prof !70

bb.dr:                                            ; preds = %bb.dq
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146: ; preds = %bb.dq
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.2219.0.copyload, i64 %indvars.iv.i145
  %.in.i.i147.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146 = load float, ptr %i.vd, align 4, !tbaa !72
  br label %bb.ds

bb.ds:                                            ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146, %bb.dp
  %.in.i.i147.sroa.speculated = phi float [ %.in.i.i147.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i146 ], [ %.sroa.3220.0.copyload, %bb.dp ] ; 4 uses
  %exitcond.not.i148 = icmp eq i64 %indvars.iv.i145, %i.uu
  br i1 %exitcond.not.i148, label %bb.dt, label %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i149, !prof !173

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i149: ; preds = %bb.ds
  %i.ve = getelementptr inbounds nuw [200 x i8], ptr %.val19.i, i64 %indvars.iv.i145 ; 13 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 192
  %i.vg = load i8, ptr %i.vf, align 8, !tbaa !210
  %i.vh = icmp eq i8 %i.vg, 0
  br i1 %i.vh, label %bb.du, label %bb.fb

bb.du:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i149
  %i.vi = load i64, ptr %i.uy, align 8, !tbaa !384
  %i.vj = icmp ugt i64 %i.vi, %indvars.iv.i145
  br i1 %i.vj, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i152, label %bb.dv, !prof !70

bb.dv:                                            ; preds = %bb.du
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i152: ; preds = %bb.du
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !384 ; 7 uses
  %.not.i.i.i.i.i.i.i153 = icmp eq i64 %i.vl, 0
  %i.vm = load ptr, ptr %i.uz, align 8, !tbaa !385
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %indvars.iv.i145
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !83 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i153, label %bb.ew, label %bb.dw

bb.dw:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i152
  br i1 %.not.i8.i.i.i.i.i.i.i, label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i.i.i154:                        ; preds = %bb.dw
  %i.vp = sext i32 %i.vo to i64
  %i.vq = mul i64 %.sroa.4417.0.copyload, %i.vp
  %.sroa.23.0..sroa_idx.i.i155 = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 32 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.ve, i64 40 ; 2 uses
  %.in.i.i.i156 = getelementptr inbounds nuw i8, ptr %i.ve, i64 24 ; 2 uses
  br i1 %15, label %16, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i.i157, !prof !173

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i.i.i.i.i.i154
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  %i.vu = load i8, ptr %i.va, align 8, !tbaa !319, !range !140, !noundef !141
  %i.vv = trunc nuw i8 %i.vu to i1
  %i.vw = load ptr, ptr %i.vt, align 8, !tbaa !399 ; 11 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !401 ; 4 uses
  %i.vz = icmp eq i32 %i.vy, -1                   ; 2 uses
  br i1 %i.vv, label %bb.dx, label %bb.el

16:                                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i154
  call void @_ZSt9terminatev() #35
  unreachable

bb.dx:                                            ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i.i157
  br i1 %i.vz, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, label %.lr.ph.i.i.preheader.i177

.lr.ph.i.i.preheader.i177:                        ; preds = %bb.dx
  %i.wa = load ptr, ptr %3, align 8, !tbaa !68
  br label %.lr.ph.i.i.i178

.lr.ph.i.i.i178:                                  ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181, %.lr.ph.i.i.preheader.i177
  %i.wb = phi i32 [ %i.yh, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181 ], [ %i.vy, %.lr.ph.i.i.preheader.i177 ]
  %i.wc = phi ptr [ %i.yf, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181 ], [ %i.vw, %.lr.ph.i.i.preheader.i177 ] ; 2 uses
  %.012.i.i.i179 = phi i32 [ %.0.i.i.i.i182, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181 ], [ 0, %.lr.ph.i.i.preheader.i177 ] ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 12
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !405 ; 2 uses
  %i.wf = and i32 %i.we, 2147483647
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %i.wg
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !72 ; 6 uses
  %i.wj = fcmp uno float %i.wi, 0.000000e+00
  br i1 %i.wj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %.lr.ph.i.i.i178
  %i.wk = icmp slt i32 %i.we, 0
  %.in.v.i.i.i.i.i183 = select i1 %i.wk, i64 4, i64 8
  %.in.i.i.i.i.i184 = getelementptr inbounds nuw i8, ptr %i.wc, i64 %.in.v.i.i.i.i.i183
  %i.wl = load i32, ptr %.in.i.i.i.i.i184, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181

bb.dz:                                            ; preds = %.lr.ph.i.i.i178
  %.sroa.02.0.copyload.i27.i = load i64, ptr %i.ve, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i29.i = load ptr, ptr %.sroa.23.0..sroa_idx.i.i155, align 8, !tbaa !65
  %i.wm = icmp eq i64 %.sroa.02.0.copyload.i27.i, 0
  br i1 %i.wm, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i31.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.wn = zext i32 %.012.i.i.i179 to i64          ; 2 uses
  %i.wo = icmp ugt i64 %.sroa.02.0.copyload.i27.i, %i.wn
  br i1 %i.wo, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i30.i, label %bb.eb, !prof !70

bb.eb:                                            ; preds = %bb.ea
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i30.i: ; preds = %bb.ea
  %i.wp = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i29.i, i64 %i.wn
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !252
  %i.wr = icmp eq i8 %i.wq, 1
  br i1 %i.wr, label %bb.ec, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i31.i

bb.ec:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i30.i
  %i.ws = sext i32 %.012.i.i.i179 to i64          ; 2 uses
  %i.wt = load i64, ptr %i.vr, align 8, !tbaa !406
  %i.wu = icmp ugt i64 %i.wt, %i.ws
  br i1 %i.wu, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i33.i, label %bb.ed, !prof !70

bb.ed:                                            ; preds = %bb.ec
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i33.i: ; preds = %bb.ec
  %i.wv = load ptr, ptr %i.vs, align 8, !tbaa !407
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %i.ws ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !409 ; 4 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !410 ; 3 uses
  %i.xa = icmp eq i64 %i.wz, -1
  br i1 %i.xa, label %.split.i.i39.i, label %bb.ee

.split.i.i39.i:                                   ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i33.i
  %.not8.i.i40.i = icmp ugt i64 %i.wx, %i.vl
  br i1 %.not8.i.i40.i, label %bb.ef, label %bb.eg, !prof !173

bb.ee:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i33.i
  %i.xb = add i64 %i.wz, %i.wx
  %.not.i.i34.i = icmp ugt i64 %i.xb, %i.vl
  br i1 %.not.i.i34.i, label %bb.ef, label %bb.eh, !prof !173

bb.ef:                                            ; preds = %bb.ee, %.split.i.i39.i
  call void @_ZSt9terminatev() #35
  unreachable

bb.eg:                                            ; preds = %.split.i.i39.i
  %i.xc = sub nuw i64 %i.vl, %i.wx
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ee
  %i.xd = phi i64 [ %i.xc, %bb.eg ], [ %i.wz, %bb.ee ] ; 2 uses
  %i.xe = load ptr, ptr %.in.i.i.i156, align 8, !tbaa !385 ; 2 uses
  %i.xf = icmp ne ptr %i.xe, null
  %i.xg = icmp eq i64 %i.xd, 0
  %i.xh = or i1 %i.xg, %i.xf
  br i1 %i.xh, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i36.i, label %bb.ei, !prof !70

bb.ei:                                            ; preds = %bb.eh
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i36.i: ; preds = %bb.eh
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.wx
  %i.xj = fcmp olt float %i.wi, 0.000000e+00
  %i.xk = fcmp oge float %i.wi, f0x4B800000
  %i.xl = or i1 %i.xj, %i.xk
  br i1 %i.xl, label %.noexc.i.i180, label %bb.ej, !prof !173

bb.ej:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i36.i
  %i.xm = fptoui float %i.wi to i64
  %i.xn = lshr i64 %i.xm, 5
  %.not.i15.i37.i = icmp ult i64 %i.xn, %i.xd
  br i1 %.not.i15.i37.i, label %bb.ek, label %.noexc.i.i180

bb.ek:                                            ; preds = %bb.ej
  %i.xo = fptosi float %i.wi to i32               ; 2 uses
  %i.xp = lshr i32 %i.xo, 5
  %i.xq = zext nneg i32 %i.xp to i64
  %i.xr = and i32 %i.xo, 31
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.xq
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !83
  %i.xu = lshr exact i32 -2147483648, %i.xr
  %i.xv = and i32 %i.xt, %i.xu
  %.not5.i.i38.i = icmp eq i32 %i.xv, 0
  br label %.noexc.i.i180

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i31.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i30.i, %bb.dz
  %i.xw = sext i32 %.012.i.i.i179 to i64
  %i.xx = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.xw
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !50
  %i.ya = fcmp olt float %i.wi, %i.xz
  br label %.noexc.i.i180

.noexc.i.i180:                                    ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i31.i, %bb.ek, %bb.ej, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i36.i
  %.0.i32.i = phi i1 [ %i.ya, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i31.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i36.i ], [ %.not5.i.i38.i, %bb.ek ], [ true, %bb.ej ]
  %i.yb = xor i1 %.0.i32.i, true
  %i.yc = zext i1 %i.yb to i32
  %i.yd = add nuw nsw i32 %i.wb, %i.yc
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181: ; preds = %.noexc.i.i180, %bb.dy
  %.0.i.i.i.i182 = phi i32 [ %i.wl, %bb.dy ], [ %i.yd, %.noexc.i.i180 ] ; 2 uses
  %i.ye = sext i32 %.0.i.i.i.i182 to i64          ; 2 uses
  %i.yf = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.ye ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !401 ; 2 uses
  %i.yi = icmp eq i32 %i.yh, -1
  br i1 %i.yi, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, label %.lr.ph.i.i.i178, !llvm.loop !9

bb.el:                                            ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i.i157
  br i1 %i.vz, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, label %.lr.ph.i10.i.preheader.i158

.lr.ph.i10.i.preheader.i158:                      ; preds = %bb.el
  %i.yj = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %.sroa.02.0.copyload.i.i159 = load i64, ptr %i.ve, align 8, !tbaa !59 ; 2 uses
  %.sroa.23.0.copyload.i.i160 = load ptr, ptr %.sroa.23.0..sroa_idx.i.i155, align 8, !tbaa !65
  %i.yk = icmp eq i64 %.sroa.02.0.copyload.i.i159, 0
  br i1 %i.yk, label %.lr.ph.i10.i.us.i175, label %.lr.ph.i10.i.i161

.lr.ph.i10.i.us.i175:                             ; preds = %.lr.ph.i10.i.preheader.i158, %.lr.ph.i10.i.us.i175
  %i.yl = phi i32 [ %i.zd, %.lr.ph.i10.i.us.i175 ], [ %i.vy, %.lr.ph.i10.i.preheader.i158 ]
  %i.ym = phi ptr [ %i.zb, %.lr.ph.i10.i.us.i175 ], [ %i.vw, %.lr.ph.i10.i.preheader.i158 ]
  %.010.i.i.us.i176 = phi i32 [ %i.yz, %.lr.ph.i10.i.us.i175 ], [ 0, %.lr.ph.i10.i.preheader.i158 ]
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 12
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !405
  %i.yp = and i32 %i.yo, 2147483647
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !72
  %i.yt = sext i32 %.010.i.i.us.i176 to i64
  %i.yu = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yw = load float, ptr %i.yv, align 4, !tbaa !50
  %i.yx = fcmp uge float %i.ys, %i.yw
  %i.yy = zext i1 %i.yx to i32
  %i.yz = add nuw nsw i32 %i.yl, %i.yy            ; 2 uses
  %i.za = sext i32 %i.yz to i64                   ; 2 uses
  %i.zb = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.za ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !401 ; 2 uses
  %i.ze = icmp eq i32 %i.zd, -1
  br i1 %i.ze, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, label %.lr.ph.i10.i.us.i175, !llvm.loop !975

.lr.ph.i10.i.i161:                                ; preds = %.lr.ph.i10.i.preheader.i158, %.noexc12.i.i165
  %i.zf = phi i32 [ %i.abg, %.noexc12.i.i165 ], [ %i.vy, %.lr.ph.i10.i.preheader.i158 ]
  %i.zg = phi ptr [ %i.abe, %.noexc12.i.i165 ], [ %i.vw, %.lr.ph.i10.i.preheader.i158 ]
  %.010.i.i.i162 = phi i32 [ %i.abc, %.noexc12.i.i165 ], [ 0, %.lr.ph.i10.i.preheader.i158 ] ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !405
  %i.zj = and i32 %i.zi, 2147483647
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %i.zk
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !72 ; 5 uses
  %i.zn = zext i32 %.010.i.i.i162 to i64          ; 2 uses
  %i.zo = icmp ugt i64 %.sroa.02.0.copyload.i.i159, %i.zn
  br i1 %i.zo, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i163, label %bb.em, !prof !70

bb.em:                                            ; preds = %.lr.ph.i10.i.i161
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i163: ; preds = %.lr.ph.i10.i.i161
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i.i160, i64 %i.zn
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !252
  %i.zr = icmp eq i8 %i.zq, 1
  %i.zs = sext i32 %.010.i.i.i162 to i64          ; 3 uses
  br i1 %i.zr, label %bb.en, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i164

bb.en:                                            ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i163
  %i.zt = load i64, ptr %i.vr, align 8, !tbaa !406
  %i.zu = icmp ugt i64 %i.zt, %i.zs
  br i1 %i.zu, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i169, label %bb.eo, !prof !70

bb.eo:                                            ; preds = %bb.en
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i169: ; preds = %bb.en
  %i.zv = load ptr, ptr %i.vs, align 8, !tbaa !407
  %i.zw = getelementptr inbounds nuw [16 x i8], ptr %i.zv, i64 %i.zs ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !409 ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !410 ; 3 uses
  %i.aaa = icmp eq i64 %i.zz, -1
  br i1 %i.aaa, label %.split.i.i.i173, label %bb.ep

.split.i.i.i173:                                  ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i169
  %.not8.i.i.i174 = icmp ugt i64 %i.zx, %i.vl
  br i1 %.not8.i.i.i174, label %bb.eq, label %bb.er, !prof !173

bb.ep:                                            ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i.i169
  %i.aab = add i64 %i.zz, %i.zx
  %.not.i.i.i = icmp ugt i64 %i.aab, %i.vl
  br i1 %.not.i.i.i, label %bb.eq, label %bb.es, !prof !173

bb.eq:                                            ; preds = %bb.ep, %.split.i.i.i173
  call void @_ZSt9terminatev() #35
  unreachable

bb.er:                                            ; preds = %.split.i.i.i173
  %i.aac = sub nuw i64 %i.vl, %i.zx
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ep
  %i.aad = phi i64 [ %i.aac, %bb.er ], [ %i.zz, %bb.ep ] ; 2 uses
  %i.aae = load ptr, ptr %.in.i.i.i156, align 8, !tbaa !385 ; 2 uses
  %i.aaf = icmp ne ptr %i.aae, null
  %i.aag = icmp eq i64 %i.aad, 0
  %i.aah = or i1 %i.aag, %i.aaf
  br i1 %i.aah, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i170, label %bb.et, !prof !70

bb.et:                                            ; preds = %bb.es
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i170: ; preds = %bb.es
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.zx
  %i.aaj = fcmp olt float %i.zm, 0.000000e+00
  %i.aak = fcmp oge float %i.zm, f0x4B800000
  %i.aal = or i1 %i.aaj, %i.aak
  br i1 %i.aal, label %.noexc12.i.i165, label %bb.eu, !prof !173

bb.eu:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i170
  %i.aam = fptoui float %i.zm to i64
  %i.aan = lshr i64 %i.aam, 5
  %.not.i15.i.i171 = icmp ult i64 %i.aan, %i.aad
  br i1 %.not.i15.i.i171, label %bb.ev, label %.noexc12.i.i165

bb.ev:                                            ; preds = %bb.eu
  %i.aao = fptosi float %i.zm to i32              ; 2 uses
  %i.aap = lshr i32 %i.aao, 5
  %i.aaq = zext nneg i32 %i.aap to i64
  %i.aar = and i32 %i.aao, 31
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aai, i64 %i.aaq
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !83
  %i.aau = lshr exact i32 -2147483648, %i.aar
  %i.aav = and i32 %i.aat, %i.aau
  %.not5.i.i.i172 = icmp eq i32 %i.aav, 0
  br label %.noexc12.i.i165

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i164: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i.i163
  %i.aaw = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.zs
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !50
  %i.aaz = fcmp olt float %i.zm, %i.aay
  br label %.noexc12.i.i165

.noexc12.i.i165:                                  ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i164, %bb.ev, %bb.eu, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i170
  %.0.i.i166 = phi i1 [ %i.aaz, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.i164 ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i.i170 ], [ %.not5.i.i.i172, %bb.ev ], [ true, %bb.eu ]
  %i.aba = xor i1 %.0.i.i166, true
  %i.abb = zext i1 %i.aba to i32
  %i.abc = add nuw nsw i32 %i.zf, %i.abb          ; 2 uses
  %i.abd = sext i32 %i.abc to i64                 ; 2 uses
  %i.abe = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %i.abd ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 4
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !401 ; 2 uses
  %i.abh = icmp eq i32 %i.abg, -1
  br i1 %i.abh, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, label %.lr.ph.i10.i.i161, !llvm.loop !975

_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167: ; preds = %.noexc12.i.i165, %.lr.ph.i10.i.us.i175, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181, %bb.el, %bb.dx
  %.pre-phi.i.i168 = phi i64 [ %i.ye, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i181 ], [ 0, %bb.el ], [ 0, %bb.dx ], [ %i.za, %.lr.ph.i10.i.us.i175 ], [ %i.abd, %.noexc12.i.i165 ]
  %i.abi = getelementptr inbounds [20 x i8], ptr %i.vw, i64 %.pre-phi.i.i168
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !50
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.vq ; 2 uses
  %i.abl = load float, ptr %gep.i, align 4, !tbaa !72
  %i.abm = call float @llvm.fmuladd.f32(float %i.abk, float %.in.i.i147.sroa.speculated, float %i.abl)
  store float %i.abm, ptr %gep.i, align 4, !tbaa !72
  br label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i

bb.ew:                                            ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit.i.i.i.i.i.i.i152
  br i1 %.not.i8.i.i.i.i.i.i.i, label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i, label %.lr.ph.i9.i.i.i.i.i.i.i185

.lr.ph.i9.i.i.i.i.i.i.i185:                       ; preds = %bb.ew
  %i.abn = sext i32 %i.vo to i64
  %i.abo = mul i64 %.sroa.4417.0.copyload, %i.abn
  br i1 %15, label %17, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i12.i.i.i.i.i.i.i186, !prof !173

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i12.i.i.i.i.i.i.i186: ; preds = %.lr.ph.i9.i.i.i.i.i.i.i185
  %i.abp = getelementptr inbounds nuw i8, ptr %i.ve, i64 48
  %i.abq = load i8, ptr %i.va, align 8, !tbaa !319, !range !140, !noundef !141
  %i.abr = trunc nuw i8 %i.abq to i1
  %.val.i.i.i.i.i.i.i.i.i187 = load ptr, ptr %i.abp, align 8 ; 6 uses
  %.val10.i.i.i.i.i.i.i.i.i188 = load ptr, ptr %3, align 8 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i187, i64 4
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !401 ; 3 uses
  %i.abu = icmp eq i32 %i.abt, -1                 ; 2 uses
  br i1 %i.abr, label %bb.ex, label %bb.fa

17:                                               ; preds = %.lr.ph.i9.i.i.i.i.i.i.i185
  call void @_ZSt9terminatev() #35
  unreachable

bb.ex:                                            ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i12.i.i.i.i.i.i.i186
  br i1 %i.abu, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i192

.lr.ph.i.i.i.i.i.i.i.i.i.i192:                    ; preds = %bb.ex, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193
  %i.abv = phi i32 [ %i.aco, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193 ], [ %i.abt, %bb.ex ]
  %i.abw = phi ptr [ %i.acm, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193 ], [ %.val.i.i.i.i.i.i.i.i.i187, %bb.ex ] ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !405 ; 2 uses
  %i.abz = and i32 %i.aby, 2147483647
  %i.aca = zext nneg i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i.i.i.i.i188, i64 %i.aca
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !72 ; 2 uses
  %i.acd = fcmp uno float %i.acc, 0.000000e+00
  br i1 %i.acd, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i192
  %i.ace = icmp slt i32 %i.aby, 0
  %.in.v.i.i.i.i.i.i.i.i.i.i.i.i195 = select i1 %i.ace, i64 4, i64 8
  %.in.i.i.i.i.i.i.i.i.i.i.i.i196 = getelementptr inbounds nuw i8, ptr %i.abw, i64 %.in.v.i.i.i.i.i.i.i.i.i.i.i.i195
  %i.acf = load i32, ptr %.in.i.i.i.i.i.i.i.i.i.i.i.i196, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193

bb.ez:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i192
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !50
  %i.aci = fcmp uge float %i.acc, %i.ach
  %i.acj = zext i1 %i.aci to i32
  %i.ack = add nuw nsw i32 %i.abv, %i.acj
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193

_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i.i.i.i.i.i194 = phi i32 [ %i.acf, %bb.ey ], [ %i.ack, %bb.ez ]
  %i.acl = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i194 to i64 ; 2 uses
  %i.acm = getelementptr inbounds [20 x i8], ptr %.val.i.i.i.i.i.i.i.i.i187, i64 %i.acl ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !401 ; 2 uses
  %i.acp = icmp eq i32 %i.aco, -1
  br i1 %i.acp, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i.i.i.i192, !llvm.loop !10

bb.fa:                                            ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit.i12.i.i.i.i.i.i.i186
  br i1 %i.abu, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i189

.lr.ph.i13.i.i.i.i.i.i.i.i.i189:                  ; preds = %bb.fa, %.lr.ph.i13.i.i.i.i.i.i.i.i.i189
  %i.acq = phi i32 [ %i.adg, %.lr.ph.i13.i.i.i.i.i.i.i.i.i189 ], [ %i.abt, %bb.fa ]
  %i.acr = phi ptr [ %i.ade, %.lr.ph.i13.i.i.i.i.i.i.i.i.i189 ], [ %.val.i.i.i.i.i.i.i.i.i187, %bb.fa ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 12
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !405
  %i.acu = and i32 %i.act, 2147483647
  %i.acv = zext nneg i32 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %.val10.i.i.i.i.i.i.i.i.i188, i64 %i.acv
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !72
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !50
  %i.ada = fcmp uge float %i.acx, %i.acz
  %i.adb = zext i1 %i.ada to i32
  %i.adc = add nuw nsw i32 %i.acq, %i.adb
  %i.add = sext i32 %i.adc to i64                 ; 2 uses
  %i.ade = getelementptr inbounds [20 x i8], ptr %.val.i.i.i.i.i.i.i.i.i187, i64 %i.add ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !401 ; 2 uses
  %i.adh = icmp eq i32 %i.adg, -1
  br i1 %i.adh, label %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190, label %.lr.ph.i13.i.i.i.i.i.i.i.i.i189, !llvm.loop !11

_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190: ; preds = %.lr.ph.i13.i.i.i.i.i.i.i.i.i189, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193, %bb.fa, %bb.ex
  %.pre-phi.i.i.i.i.i.i.i.i.i191 = phi i64 [ %i.acl, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.i.i.i.i.i.i.i.i.i193 ], [ 0, %bb.fa ], [ 0, %bb.ex ], [ %i.add, %.lr.ph.i13.i.i.i.i.i.i.i.i.i189 ]
  %i.adi = getelementptr inbounds [20 x i8], ptr %.val.i.i.i.i.i.i.i.i.i187, i64 %.pre-phi.i.i.i.i.i.i.i.i.i191
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adk = load float, ptr %i.adj, align 4, !tbaa !50
  %gep66.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.abo ; 2 uses
  %i.adl = load float, ptr %gep66.i, align 4, !tbaa !72
  %i.adm = call float @llvm.fmuladd.f32(float %i.adk, float %.in.i.i147.sroa.speculated, float %i.adl)
  store float %i.adm, ptr %gep66.i, align 4, !tbaa !72
  br label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i

bb.fb:                                            ; preds = %_ZNK7xgboost6common4SpanIKSt7variantIJNS_4tree14ScalarTreeViewENS3_19MultiTargetTreeViewEEELm18446744073709551615EEixEm.exit.i149
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !384
  %.not.i.i.i.i6.i.i.i150 = icmp eq i64 %i.ado, 0
  br i1 %.not.i.i.i.i6.i.i.i150, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @_ZN7xgboost9predictor5multi18PredValueByOneTreeILb1ELb1ELb0EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif(ptr noundef nonnull align 8 dereferenceable(193) %i.ve, i64 noundef %1, i64 %2, ptr %3, i64 noundef range(i64 0, 2) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef null, i32 noundef 0, float noundef %.in.i.i147.sroa.speculated)
  br label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i

bb.fd:                                            ; preds = %bb.fb
  call void @_ZN7xgboost9predictor5multi18PredValueByOneTreeILb0ELb1ELb0EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif(ptr noundef nonnull align 8 dereferenceable(193) %i.ve, i64 noundef %1, i64 %2, ptr %3, i64 noundef range(i64 0, 2) %4, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef null, i32 noundef 0, float noundef %.in.i.i147.sroa.speculated)
  br label %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i

_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i: ; preds = %bb.fd, %bb.fc, %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb0EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i.i.i.i.i.i.i.i190, %bb.ew, %_ZN7xgboost9predictor6scalar18PredValueByOneTreeILb1EEEfRKNS_7RegTree4FVecERKNS_4tree14ScalarTreeViewERKNS3_22CategoricalSplitMatrixEi.exit.i167, %bb.dw
  %indvars.iv.next.i151 = add nuw nsw i64 %indvars.iv.i145, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next.i151, %wide.trip.count.i142
  br i1 %exitcond38.not.i, label %_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit, label %bb.dp, !llvm.loop !981

_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit: ; preds = %bb.do, %_ZSt5visitIN3enc10OverloadedIJZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb0ELb1EEEvRKNS3_15GBTreeModelViewINS4_3VecESt7variantIJNS2_4tree14ScalarTreeViewENS9_19MultiTargetTreeViewEEENS4_9CopyViewsEEEmNS2_6common4SpanINS2_7RegTree4FVecELm18446744073709551615EEEmNS2_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSH_15OptionalWeightsEEUlRKSA_E_ZNS5_ILb0ELb1EEEvSG_mSL_mSO_ST_SU_EUlRKSB_E_EEEJRKSC_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS17_EEEEE4typeEE4typeEOS1G_EEEE4typeEOS15_DpOS17_.exit.i, %_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb1EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit, %_ZN7xgboost9predictor12_GLOBAL__N_122PredictBlockByAllTreesILb1ELb0EEEvRKNS0_15GBTreeModelViewINS1_3VecESt7variantIJNS_4tree14ScalarTreeViewENS6_19MultiTargetTreeViewEEENS1_9CopyViewsEEEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEERKSt6vectorIiSaIiEENSE_15OptionalWeightsE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void

bb.fe:                                            ; preds = %bb.m, %bb.f
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.m ], [ %.pn, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %common.resume

bb.ff:                                            ; preds = %bb.l, %bb.e
  %i.adp = landingpad { ptr, i32 }
          catch ptr null
  %i.adq = extractvalue { ptr, i32 } %i.adp, 0
  call void @__clang_call_terminate(ptr %i.adq) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !72
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !167
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #33 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !72
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !72
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #34
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

end_hunk_0
