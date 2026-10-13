Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/convertGmxToNblib?download=true
inline.NumInlined: 2097
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5nblib26convertToNblibInteractionsERK22InteractionDefinitions:bb.a
  %i.cld = ptrtoint ptr %i.cji to i64             ; 3 uses
  %i.cle = sub i64 %i.clc, %i.cld
  %i.clf = ashr exact i64 %i.cle, 2
  %i.clg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.clf, i1 true)
  %i.clh = shl nuw nsw i64 %i.clg, 1
  %i.cli = xor i64 %i.clh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.cji, ptr %.ph.i.i.i, i64 noundef %i.cli)
          to label %.noexc30.i.i.i unwind label %.thread66.i.i.i

.noexc30.i.i.i:                                   ; preds = %bb.gn
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.cji, ptr %.ph.i.i.i)
          to label %.preheader.i.i.i.i761.i.i unwind label %.thread66.i.i.i

vec.epilog.scalar.ph1018:                         ; preds = %vec.epilog.scalar.ph1018.prol.loopexit, %vec.epilog.scalar.ph1018
  %indvars.iv.i755.i.i = phi i64 [ %indvars.iv.next.i757.i.i.7, %vec.epilog.scalar.ph1018 ], [ %indvars.iv.i755.i.i.unr, %vec.epilog.scalar.ph1018.prol.loopexit ] ; 10 uses
  %.idx.i756.i.i = mul nuw nsw i64 %indvars.iv.i755.i.i, 20
  %i.clj = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i
  %i.clk = load i32, ptr %i.clj, align 4, !tbaa !17
  %i.cll = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.i755.i.i
  store i32 %i.clk, ptr %i.cll, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i = add nuw nsw i64 %indvars.iv.i755.i.i, 1 ; 2 uses
  %.idx.i756.i.i.1 = mul nuw nsw i64 %indvars.iv.next.i757.i.i, 20
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.1
  %i.cln = load i32, ptr %i.clm, align 4, !tbaa !17
  %i.clo = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i
  store i32 %i.cln, ptr %i.clo, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.1 = add nuw nsw i64 %indvars.iv.i755.i.i, 2 ; 2 uses
  %.idx.i756.i.i.2 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.1, 20
  %i.clp = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.2
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !17
  %i.clr = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.1
  store i32 %i.clq, ptr %i.clr, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.2 = add nuw nsw i64 %indvars.iv.i755.i.i, 3 ; 2 uses
  %.idx.i756.i.i.3 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.2, 20
  %i.cls = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.3
  %i.clt = load i32, ptr %i.cls, align 4, !tbaa !17
  %i.clu = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.2
  store i32 %i.clt, ptr %i.clu, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.3 = add nuw nsw i64 %indvars.iv.i755.i.i, 4 ; 2 uses
  %.idx.i756.i.i.4 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.3, 20
  %i.clv = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.4
  %i.clw = load i32, ptr %i.clv, align 4, !tbaa !17
  %i.clx = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.3
  store i32 %i.clw, ptr %i.clx, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.4 = add nuw nsw i64 %indvars.iv.i755.i.i, 5 ; 2 uses
  %.idx.i756.i.i.5 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.4, 20
  %i.cly = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.5
  %i.clz = load i32, ptr %i.cly, align 4, !tbaa !17
  %i.cma = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.4
  store i32 %i.clz, ptr %i.cma, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.5 = add nuw nsw i64 %indvars.iv.i755.i.i, 6 ; 2 uses
  %.idx.i756.i.i.6 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.5, 20
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.6
  %i.cmc = load i32, ptr %i.cmb, align 4, !tbaa !17
  %i.cmd = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.5
  store i32 %i.cmc, ptr %i.cmd, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.6 = add nuw nsw i64 %indvars.iv.i755.i.i, 7 ; 2 uses
  %.idx.i756.i.i.7 = mul nuw nsw i64 %indvars.iv.next.i757.i.i.6, 20
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cjq, i64 %.idx.i756.i.i.7
  %i.cmf = load i32, ptr %i.cme, align 4, !tbaa !17
  %i.cmg = getelementptr inbounds nuw [4 x i8], ptr %i.cji, i64 %indvars.iv.next.i757.i.i.6
  store i32 %i.cmf, ptr %i.cmg, align 4, !tbaa !17
  %indvars.iv.next.i757.i.i.7 = add nuw nsw i64 %indvars.iv.i755.i.i, 8 ; 2 uses
  %exitcond.not.i758.i.i.7 = icmp eq i64 %indvars.iv.next.i757.i.i.7, %wide.trip.count.i754.i.i
  br i1 %exitcond.not.i758.i.i.7, label %._crit_edge.i759.i.i, label %vec.epilog.scalar.ph1018, !llvm.loop !226

.preheader.i.i.i.i761.i.i:                        ; preds = %.noexc30.i.i.i, %bb.go
  %.sroa.09.0.i.i.i.i762.i.i = phi ptr [ %i.cmh, %bb.go ], [ %i.cji, %.noexc30.i.i.i ] ; 5 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i762.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i763.i.i = icmp eq ptr %i.cmh, %.ph.i.i.i
  br i1 %.not.i.i.i.i763.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i, label %bb.go

bb.go:                                            ; preds = %.preheader.i.i.i.i761.i.i
  %i.cmi = load i32, ptr %.sroa.09.0.i.i.i.i762.i.i, align 4, !tbaa !17 ; 2 uses
  %i.cmj = load i32, ptr %i.cmh, align 4, !tbaa !17
  %i.cmk = icmp eq i32 %i.cmi, %i.cmj
  br i1 %i.cmk, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i, label %.preheader.i.i.i.i761.i.i, !llvm.loop !103

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i: ; preds = %bb.go
  %i.cml = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i762.i.i, i64 8 ; 2 uses
  %.not18.i.i.i765.i.i = icmp eq ptr %i.cml, %.ph.i.i.i
  br i1 %.not18.i.i.i765.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i769.i.i, label %.lr.ph.i.i.i766.i.i

.lr.ph.i.i.i766.i.i:                              ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i, %bb.gq
  %i.cmm = phi i32 [ %i.cmo, %bb.gq ], [ %i.cmi, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i ]
  %i.cmn = phi ptr [ %i.cmr, %bb.gq ], [ %i.cml, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i767.i.i = phi ptr [ %.sroa.0.1.i.i.i768.i.i, %bb.gq ], [ %.sroa.09.0.i.i.i.i762.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i ] ; 2 uses
  %i.cmo = load i32, ptr %i.cmn, align 4, !tbaa !17 ; 3 uses
  %i.cmp = icmp eq i32 %i.cmm, %i.cmo
  br i1 %i.cmp, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.lr.ph.i.i.i766.i.i
  %i.cmq = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i767.i.i, i64 4 ; 2 uses
  store i32 %i.cmo, ptr %i.cmq, align 4, !tbaa !17
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.lr.ph.i.i.i766.i.i
  %.sroa.0.1.i.i.i768.i.i = phi ptr [ %.sroa.0.019.i.i.i767.i.i, %.lr.ph.i.i.i766.i.i ], [ %i.cmq, %bb.gp ] ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmn, i64 4 ; 2 uses
  %.not.i.i32.i.i.i = icmp eq ptr %i.cmr, %.ph.i.i.i
  br i1 %.not.i.i32.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i769.i.i, label %.lr.ph.i.i.i766.i.i, !llvm.loop !104

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i769.i.i: ; preds = %bb.gq, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i
  %.sroa.0.0.lcssa.i.i.i770.i.i = phi ptr [ %.sroa.09.0.i.i.i.i762.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i764.i.i ], [ %.sroa.0.1.i.i.i768.i.i, %bb.gq ]
  %i.cms = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i770.i.i, i64 4 ; 2 uses
  %.not.i.i33.i.i.i = icmp eq ptr %i.cms, %.ph.i.i.i
  br i1 %.not.i.i33.i.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i771.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i771.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i769.i.i
  %i.cmt = ptrtoint ptr %i.cms to i64
  %i.cmu = sub i64 %i.cmt, %i.cld
  %i.cmv = getelementptr inbounds i8, ptr %i.cji, i64 %i.cmu
  store ptr %i.cmv, ptr %i.cjp, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i: ; preds = %.preheader.i.i.i.i761.i.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i771.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i769.i.i, %._crit_edge.i759.i.i, %._crit_edge.thread.i773.i.i
  invoke void @_ZN5nblib6detail25transferIndicesGmxToNblibINS_16ImproperDihedralEEENSt9enable_ifIXaatlNS_8ContainsIT_St5tupleIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13MorseBondTypeENS_13CubicBondTypeENS_13UnimplementedENS_18NotInNblibButInGMXENS7_INS_21FENEBondTypeParameterEEESE_SE_SE_NS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENSK_INS_24RestrictedAngleParameterEEENS7_INS_20LinearAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleESE_NS_12QuarticAngleESE_NS_14ProperDihedralENS_24RyckaertBellemanDihedralESE_SE_SE_S2_SE_SE_SD_SD_SD_SD_SD_SD_NS_10PairLJTypeESD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SE_SE_SE_SE_SD_SD_SE_SD_SE_SD_SE_SE_SE_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_EEEEEtlNS4_IS5_NS_8TypeListIJSU_S2_SV_EEEEEEEvE4typeERK22InteractionDefinitionsRNS_14ListedTypeDataIS5_EERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(2760) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.gr unwind label %bb.gt

.thread66.i.i.i:                                  ; preds = %.noexc30.i.i.i, %bb.gn
  %i.cmw = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gr:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i
  %i.cmx = load ptr, ptr %3, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i35.i.i.i = icmp eq ptr %i.cmx, null
  br i1 %.not.i.i.i35.i.i.i, label %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16ImproperDihedralEEEEEDaRT_.exit.i.i", label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.cmy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cmz = load ptr, ptr %i.cmy, align 8, !tbaa !235
  %i.cna = ptrtoint ptr %i.cmz to i64
  %i.cnb = ptrtoint ptr %i.cmx to i64
  %i.cnc = sub i64 %i.cna, %i.cnb
  call void @_ZdlPvm(ptr noundef nonnull %i.cmx, i64 noundef %i.cnc) #16
  br label %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16ImproperDihedralEEEEEDaRT_.exit.i.i"

bb.gt:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i772.i.i
  %i.cnd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i36.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i36.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit37.i.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.gt
  %.pre67.i.i.a = ptrtoint ptr %.pre.i.i.i to i64
  br label %bb.gu

bb.gu:                                            ; preds = %._crit_edge.i.i, %.thread66.i.i.i
  %.pre-phi68.i.i = phi i64 [ %.pre67.i.i.a, %._crit_edge.i.i ], [ %i.cld, %.thread66.i.i.i ]
  %.pn2669.i.i.i = phi { ptr, i32 } [ %i.cnd, %._crit_edge.i.i ], [ %i.cmw, %.thread66.i.i.i ]
  %i.cne = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i ], [ %i.cji, %.thread66.i.i.i ]
  %i.cnf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cng = load ptr, ptr %i.cnf, align 8, !tbaa !235
  %i.cnh = ptrtoint ptr %i.cng to i64
  %i.cni = sub i64 %i.cnh, %.pre-phi68.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cne, i64 noundef %i.cni) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit37.i.i.i:            ; preds = %bb.gu, %bb.gt
  %.pn2670.i.i.i = phi { ptr, i32 } [ %.pn2669.i.i.i, %bb.gu ], [ %i.cnd, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.body

"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16ImproperDihedralEEEEEDaRT_.exit.i.i": ; preds = %bb.gs, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.cnj = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.cnk = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.cnl = load ptr, ptr %i.cnk, align 8, !tbaa !15
  %i.cnm = load ptr, ptr %i.cnj, align 8, !tbaa !16
  %i.cnn = ptrtoint ptr %i.cnl to i64
  %i.cno = ptrtoint ptr %i.cnm to i64
  %i.cnp = sub i64 %i.cnn, %i.cno
  %i.cnq = lshr exact i64 %i.cnp, 2
  %i.cnr = trunc i64 %i.cnq to i32                ; 5 uses
  %i.cns = sdiv i32 %i.cnr, 5                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.cnt = sext i32 %i.cns to i64                 ; 3 uses
  %i.cnu = icmp slt i32 %i.cnr, -4
  br i1 %i.cnu, label %.noexc.i834.i.i.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i775.i.i

.noexc.i834.i.i.invoke:                           ; preds = %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16ImproperDihedralEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_14ProperDihedralEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_23TwoParameterInteractionINS_20LinearAngleParameterEEEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_14CrossBondAngleEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_13CrossBondBondEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16CosineParamAngleINS_24RestrictedAngleParameterEEEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_12QuarticAngleEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16CosineParamAngleINS_17G96AngleParameterEEEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_10PairLJTypeEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_23TwoParameterInteractionINS_21FENEBondTypeParameterEEEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_13MorseBondTypeEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_13CubicBondTypeEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_11G96BondTypeEEEEEDaRT_.exit.i.i", %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEEEEEEDaRT_.exit.i.i", %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
          to label %.noexc.i834.i.i.cont unwind label %bb.hk

.noexc.i834.i.i.cont:                             ; preds = %.noexc.i834.i.i.invoke
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i775.i.i: ; preds = %"_ZZN5nblib26convertToNblibInteractionsERK22InteractionDefinitionsENK3$_0clINS_14ListedTypeDataINS_16ImproperDihedralEEEEEDaRT_.exit.i.i"
  %i.cnv = icmp slt i32 %i.cnr, 5
  br i1 %i.cnv, label %._crit_edge.thread.i833.i.i, label %.noexc31.i776.i.i

.noexc31.i776.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i775.i.i
  %i.cnw = shl nuw nsw i64 %i.cnt, 2
  %i.cnx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cnw) #14
          to label %.noexc33 unwind label %bb.hk  ; 28 uses

.noexc33:                                         ; preds = %.noexc31.i776.i.i
  store ptr %i.cnx, ptr %2, align 8, !tbaa !16
  %i.cny = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %i.cnt ; 4 uses
  %i.cnz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.cny, ptr %i.cnz, align 8, !tbaa !235
  store i32 0, ptr %i.cnx, align 4, !tbaa !17
  %i.coa = getelementptr i8, ptr %i.cnx, i64 4    ; 3 uses
  %i.cob = add nsw i64 %i.cnt, -1                 ; 2 uses
  %i.coc = icmp eq i64 %i.cob, 0
  br i1 %i.coc, label %iter.check1057, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i777.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i777.i.i: ; preds = %.noexc33
  %.idx.i.i.i.i.i.i.i.i778.i.i = shl nuw nsw i64 %i.cob, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.coa, i8 0, i64 %.idx.i.i.i.i.i.i.i.i778.i.i, i1 false), !tbaa !17
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coa, i64 %.idx.i.i.i.i.i.i.i.i778.i.i
  br label %iter.check1057

._crit_edge.thread.i833.i.i:                      ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i775.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge55.i820.i.i

iter.check1057:                                   ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i777.i.i, %.noexc33
  %.pre.ph.i780.i.i = phi ptr [ %i.cod, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i777.i.i ], [ %i.coa, %.noexc33 ] ; 11 uses
  %i.coe = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %.pre.ph.i780.i.i, ptr %i.coe, align 8, !tbaa !15
  %i.cof = load ptr, ptr %i.cnj, align 8, !tbaa !16 ; 16 uses
  %wide.trip.count.i781.i.i = zext nneg i32 %i.cns to i64 ; 9 uses
  %min.iters.check1035 = icmp ult i32 %i.cnr, 45
  br i1 %min.iters.check1035, label %vec.epilog.scalar.ph1058.preheader, label %vector.memcheck1036

vector.memcheck1036:                              ; preds = %iter.check1057
  %i.cog = shl nuw nsw i64 %wide.trip.count.i781.i.i, 2
  %i.coh = getelementptr i8, ptr %i.cnx, i64 %i.cog
  %i.coi = mul nuw nsw i64 %wide.trip.count.i781.i.i, 20
  %i.coj = getelementptr i8, ptr %i.cof, i64 %i.coi
  %i.cok = getelementptr i8, ptr %i.coj, i64 -16
  %bound01037 = icmp ult ptr %i.cnx, %i.cok
  %bound11038 = icmp ult ptr %i.cof, %i.coh
  %found.conflict1039 = and i1 %bound01037, %bound11038
  br i1 %found.conflict1039, label %vec.epilog.scalar.ph1058.preheader, label %vector.main.loop.iter.check1040

vector.main.loop.iter.check1040:                  ; preds = %vector.memcheck1036
  %min.iters.check1041 = icmp ult i32 %i.cnr, 165
  br i1 %min.iters.check1041, label %vec.epilog.ph1061, label %vector.ph1042

vector.ph1042:                                    ; preds = %vector.main.loop.iter.check1040
  %i.col = and i64 %wide.trip.count.i781.i.i, 31  ; 2 uses
  %i.com = icmp eq i64 %i.col, 0
  %i.con = select i1 %i.com, i64 32, i64 %i.col   ; 2 uses
  %n.vec1043 = sub nsw i64 %wide.trip.count.i781.i.i, %i.con ; 3 uses
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.ph1042, %vector.body1044
  %index1045 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1054, %vector.body1044 ] ; 6 uses
  %i.coo = mul nuw nsw i64 %index1045, 20
  %i.cop = mul nuw i64 %index1045, 20
  %i.coq = mul nuw i64 %index1045, 20
  %i.cor = mul nuw i64 %index1045, 20
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.coo
  %i.cot = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.cop
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 160
  %i.cov = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.coq
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 320
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.cor
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 480
  %wide.vec1046 = load <40 x i32>, ptr %i.cos, align 4, !tbaa !17, !alias.scope !312
  %strided.vec1047 = shufflevector <40 x i32> %wide.vec1046, <40 x i32> poison, <8 x i32> <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35>
  %wide.vec1048 = load <40 x i32>, ptr %i.cou, align 4, !tbaa !17, !alias.scope !312
  %strided.vec1049 = shufflevector <40 x i32> %wide.vec1048, <40 x i32> poison, <8 x i32> <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35>
  %wide.vec1050 = load <40 x i32>, ptr %i.cow, align 4, !tbaa !17, !alias.scope !312
  %strided.vec1051 = shufflevector <40 x i32> %wide.vec1050, <40 x i32> poison, <8 x i32> <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35>
  %wide.vec1052 = load <40 x i32>, ptr %i.coy, align 4, !tbaa !17, !alias.scope !312
  %strided.vec1053 = shufflevector <40 x i32> %wide.vec1052, <40 x i32> poison, <8 x i32> <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35>
  %i.coz = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %index1045 ; 4 uses
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 32
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.coz, i64 64
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.coz, i64 96
  store <8 x i32> %strided.vec1047, ptr %i.coz, align 4, !tbaa !17, !alias.scope !313, !noalias !312
  store <8 x i32> %strided.vec1049, ptr %i.cpa, align 4, !tbaa !17, !alias.scope !313, !noalias !312
  store <8 x i32> %strided.vec1051, ptr %i.cpb, align 4, !tbaa !17, !alias.scope !313, !noalias !312
  store <8 x i32> %strided.vec1053, ptr %i.cpc, align 4, !tbaa !17, !alias.scope !313, !noalias !312
  %index.next1054 = add nuw i64 %index1045, 32    ; 2 uses
  %i.cpd = icmp eq i64 %index.next1054, %n.vec1043
  br i1 %i.cpd, label %vec.epilog.iter.check1059, label %vector.body1044, !llvm.loop !230

vec.epilog.iter.check1059:                        ; preds = %vector.body1044
  %min.epilog.iters.check1060 = icmp samesign ult i64 %i.con, 9
  br i1 %min.epilog.iters.check1060, label %vec.epilog.scalar.ph1058.preheader, label %vec.epilog.ph1061, !prof !240

vec.epilog.scalar.ph1058.preheader:               ; preds = %vec.epilog.vector.body1063, %iter.check1057, %vector.memcheck1036, %vec.epilog.iter.check1059
  %indvars.iv.i782.i.i.ph = phi i64 [ 0, %iter.check1057 ], [ 0, %vector.memcheck1036 ], [ %n.vec1043, %vec.epilog.iter.check1059 ], [ %n.vec1062, %vec.epilog.vector.body1063 ] ; 4 uses
  %i.cpe = sub nsw i64 %wide.trip.count.i781.i.i, %indvars.iv.i782.i.i.ph
  %xtraiter1145 = and i64 %i.cpe, 7               ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %vec.epilog.scalar.ph1058.prol.loopexit, label %vec.epilog.scalar.ph1058.prol

vec.epilog.scalar.ph1058.prol:                    ; preds = %vec.epilog.scalar.ph1058.preheader, %vec.epilog.scalar.ph1058.prol
  %indvars.iv.i782.i.i.prol = phi i64 [ %indvars.iv.next.i784.i.i.prol, %vec.epilog.scalar.ph1058.prol ], [ %indvars.iv.i782.i.i.ph, %vec.epilog.scalar.ph1058.preheader ] ; 3 uses
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %vec.epilog.scalar.ph1058.prol ], [ 0, %vec.epilog.scalar.ph1058.preheader ]
  %.idx.i783.i.i.prol = mul nuw nsw i64 %indvars.iv.i782.i.i.prol, 20
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.prol
  %i.cpg = load i32, ptr %i.cpf, align 4, !tbaa !17
  %i.cph = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.i782.i.i.prol
  store i32 %i.cpg, ptr %i.cph, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.prol = add nuw nsw i64 %indvars.iv.i782.i.i.prol, 1 ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %vec.epilog.scalar.ph1058.prol.loopexit, label %vec.epilog.scalar.ph1058.prol, !llvm.loop !231

vec.epilog.scalar.ph1058.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1058.prol, %vec.epilog.scalar.ph1058.preheader
  %indvars.iv.i782.i.i.unr = phi i64 [ %indvars.iv.i782.i.i.ph, %vec.epilog.scalar.ph1058.preheader ], [ %indvars.iv.next.i784.i.i.prol, %vec.epilog.scalar.ph1058.prol ]
  %i.cpi = sub nsw i64 %indvars.iv.i782.i.i.ph, %wide.trip.count.i781.i.i
  %i.cpj = icmp ugt i64 %i.cpi, -8
  br i1 %i.cpj, label %._crit_edge.i786.i.i, label %vec.epilog.scalar.ph1058

vec.epilog.ph1061:                                ; preds = %vector.main.loop.iter.check1040, %vec.epilog.iter.check1059
  %vec.epilog.resume.val1056 = phi i64 [ %n.vec1043, %vec.epilog.iter.check1059 ], [ 0, %vector.main.loop.iter.check1040 ]
  %i.cpk = and i64 %wide.trip.count.i781.i.i, 7   ; 2 uses
  %i.cpl = icmp eq i64 %i.cpk, 0
  %i.cpm = select i1 %i.cpl, i64 8, i64 %i.cpk
  %n.vec1062 = sub nsw i64 %wide.trip.count.i781.i.i, %i.cpm ; 2 uses
  br label %vec.epilog.vector.body1063

vec.epilog.vector.body1063:                       ; preds = %vec.epilog.vector.body1063, %vec.epilog.ph1061
  %index1064 = phi i64 [ %vec.epilog.resume.val1056, %vec.epilog.ph1061 ], [ %index.next1067, %vec.epilog.vector.body1063 ] ; 3 uses
  %i.cpn = mul nuw nsw i64 %index1064, 20
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cof, i64 %i.cpn
  %wide.vec1065 = load <40 x i32>, ptr %i.cpo, align 4, !tbaa !17, !alias.scope !312
  %strided.vec1066 = shufflevector <40 x i32> %wide.vec1065, <40 x i32> poison, <8 x i32> <i32 0, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35>
  %i.cpp = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %index1064
  store <8 x i32> %strided.vec1066, ptr %i.cpp, align 4, !tbaa !17, !alias.scope !313, !noalias !312
  %index.next1067 = add nuw i64 %index1064, 8     ; 2 uses
  %i.cpq = icmp eq i64 %index.next1067, %n.vec1062
  br i1 %i.cpq, label %vec.epilog.scalar.ph1058.preheader, label %vec.epilog.vector.body1063, !llvm.loop !232

._crit_edge.i786.i.i:                             ; preds = %vec.epilog.scalar.ph1058, %vec.epilog.scalar.ph1058.prol.loopexit
  %.not.i.i.i787.i.i = icmp eq ptr %i.cnx, %.pre.ph.i780.i.i
  br i1 %.not.i.i.i787.i.i, label %._crit_edge55.i820.i.i, label %bb.gv

bb.gv:                                            ; preds = %._crit_edge.i786.i.i
  %i.cpr = ptrtoint ptr %.pre.ph.i780.i.i to i64
  %i.cps = ptrtoint ptr %i.cnx to i64             ; 6 uses
  %i.cpt = sub i64 %i.cpr, %i.cps
  %i.cpu = ashr exact i64 %i.cpt, 2
  %i.cpv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cpu, i1 true)
  %i.cpw = shl nuw nsw i64 %i.cpv, 1
  %i.cpx = xor i64 %i.cpw, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %i.cnx, ptr %.pre.ph.i780.i.i, i64 noundef %i.cpx)
          to label %.noexc32.i792.i.i unwind label %bb.gz

.noexc32.i792.i.i:                                ; preds = %bb.gv
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr nonnull %i.cnx, ptr %.pre.ph.i780.i.i)
          to label %.preheader.i.i.i.i793.i.i unwind label %bb.gz

vec.epilog.scalar.ph1058:                         ; preds = %vec.epilog.scalar.ph1058.prol.loopexit, %vec.epilog.scalar.ph1058
  %indvars.iv.i782.i.i = phi i64 [ %indvars.iv.next.i784.i.i.7, %vec.epilog.scalar.ph1058 ], [ %indvars.iv.i782.i.i.unr, %vec.epilog.scalar.ph1058.prol.loopexit ] ; 10 uses
  %.idx.i783.i.i = mul nuw nsw i64 %indvars.iv.i782.i.i, 20
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i
  %i.cpz = load i32, ptr %i.cpy, align 4, !tbaa !17
  %i.cqa = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.i782.i.i
  store i32 %i.cpz, ptr %i.cqa, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i = add nuw nsw i64 %indvars.iv.i782.i.i, 1 ; 2 uses
  %.idx.i783.i.i.1 = mul nuw nsw i64 %indvars.iv.next.i784.i.i, 20
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.1
  %i.cqc = load i32, ptr %i.cqb, align 4, !tbaa !17
  %i.cqd = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i
  store i32 %i.cqc, ptr %i.cqd, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.1 = add nuw nsw i64 %indvars.iv.i782.i.i, 2 ; 2 uses
  %.idx.i783.i.i.2 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.1, 20
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.2
  %i.cqf = load i32, ptr %i.cqe, align 4, !tbaa !17
  %i.cqg = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.1
  store i32 %i.cqf, ptr %i.cqg, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.2 = add nuw nsw i64 %indvars.iv.i782.i.i, 3 ; 2 uses
  %.idx.i783.i.i.3 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.2, 20
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.3
  %i.cqi = load i32, ptr %i.cqh, align 4, !tbaa !17
  %i.cqj = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.2
  store i32 %i.cqi, ptr %i.cqj, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.3 = add nuw nsw i64 %indvars.iv.i782.i.i, 4 ; 2 uses
  %.idx.i783.i.i.4 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.3, 20
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.4
  %i.cql = load i32, ptr %i.cqk, align 4, !tbaa !17
  %i.cqm = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.3
  store i32 %i.cql, ptr %i.cqm, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.4 = add nuw nsw i64 %indvars.iv.i782.i.i, 5 ; 2 uses
  %.idx.i783.i.i.5 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.4, 20
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.5
  %i.cqo = load i32, ptr %i.cqn, align 4, !tbaa !17
  %i.cqp = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.4
  store i32 %i.cqo, ptr %i.cqp, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.5 = add nuw nsw i64 %indvars.iv.i782.i.i, 6 ; 2 uses
  %.idx.i783.i.i.6 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.5, 20
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.6
  %i.cqr = load i32, ptr %i.cqq, align 4, !tbaa !17
  %i.cqs = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.5
  store i32 %i.cqr, ptr %i.cqs, align 4, !tbaa !17
  %indvars.iv.next.i784.i.i.6 = add nuw nsw i64 %indvars.iv.i782.i.i, 7 ; 2 uses
  %.idx.i783.i.i.7 = mul nuw nsw i64 %indvars.iv.next.i784.i.i.6, 20
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cof, i64 %.idx.i783.i.i.7
  %i.cqu = load i32, ptr %i.cqt, align 4, !tbaa !17
  %i.cqv = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %indvars.iv.next.i784.i.i.6
  store i32 %i.cqu, ptr %i.cqv, align 4, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN5nblib26convertToNblibInteractionsERK22InteractionDefinitions:bb.a
  %exitcond.not.i785.i.i.7 = icmp eq i64 %indvars.iv.next.i784.i.i.7, %wide.trip.count.i781.i.i
  br i1 %exitcond.not.i785.i.i.7, label %._crit_edge.i786.i.i, label %vec.epilog.scalar.ph1058, !llvm.loop !233

.preheader.i.i.i.i793.i.i:                        ; preds = %.noexc32.i792.i.i, %bb.gw
  %.sroa.09.0.i.i.i.i794.i.i = phi ptr [ %i.cqw, %bb.gw ], [ %i.cnx, %.noexc32.i792.i.i ] ; 5 uses
  %i.cqw = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i794.i.i, i64 4 ; 3 uses
  %.not.i.i.i.i795.i.i = icmp eq ptr %i.cqw, %.pre.ph.i780.i.i
  br i1 %.not.i.i.i.i795.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i, label %bb.gw

bb.gw:                                            ; preds = %.preheader.i.i.i.i793.i.i
  %i.cqx = load i32, ptr %.sroa.09.0.i.i.i.i794.i.i, align 4, !tbaa !17 ; 2 uses
  %i.cqy = load i32, ptr %i.cqw, align 4, !tbaa !17
  %i.cqz = icmp eq i32 %i.cqx, %i.cqy
  br i1 %i.cqz, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i, label %.preheader.i.i.i.i793.i.i, !llvm.loop !103

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i: ; preds = %bb.gw
  %i.cra = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i794.i.i, i64 8 ; 2 uses
  %.not18.i.i.i797.i.i = icmp eq ptr %i.cra, %.pre.ph.i780.i.i
  br i1 %.not18.i.i.i797.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i, label %.lr.ph.i.i.i798.i.i

.lr.ph.i.i.i798.i.i:                              ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i, %bb.gy
  %i.crb = phi i32 [ %i.crd, %bb.gy ], [ %i.cqx, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i ]
  %i.crc = phi ptr [ %i.crg, %bb.gy ], [ %i.cra, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i ] ; 2 uses
  %.sroa.0.019.i.i.i799.i.i = phi ptr [ %.sroa.0.1.i.i.i800.i.i, %bb.gy ], [ %.sroa.09.0.i.i.i.i794.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i ] ; 2 uses
  %i.crd = load i32, ptr %i.crc, align 4, !tbaa !17 ; 3 uses
  %i.cre = icmp eq i32 %i.crb, %i.crd
  br i1 %i.cre, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph.i.i.i798.i.i
  %i.crf = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i799.i.i, i64 4 ; 2 uses
  store i32 %i.crd, ptr %i.crf, align 4, !tbaa !17
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %.lr.ph.i.i.i798.i.i
  %.sroa.0.1.i.i.i800.i.i = phi ptr [ %.sroa.0.019.i.i.i799.i.i, %.lr.ph.i.i.i798.i.i ], [ %i.crf, %bb.gx ] ; 2 uses
  %i.crg = getelementptr inbounds nuw i8, ptr %i.crc, i64 4 ; 2 uses
  %.not.i.i34.i801.i.i = icmp eq ptr %i.crg, %.pre.ph.i780.i.i
  br i1 %.not.i.i34.i801.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i, label %.lr.ph.i.i.i798.i.i, !llvm.loop !104

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i: ; preds = %bb.gy, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i
  %.sroa.0.0.lcssa.i.i.i803.i.i = phi ptr [ %.sroa.09.0.i.i.i.i794.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i796.i.i ], [ %.sroa.0.1.i.i.i800.i.i, %bb.gy ]
  %i.crh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i803.i.i, i64 4 ; 2 uses
  %.not.i.i35.i804.i.i = icmp eq ptr %i.crh, %.pre.ph.i780.i.i
  br i1 %.not.i.i35.i804.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i805.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i805.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i
  %i.cri = ptrtoint ptr %i.crh to i64
  %i.crj = sub i64 %i.cri, %i.cps
  %i.crk = getelementptr inbounds i8, ptr %i.cnx, i64 %i.crj ; 2 uses
  store ptr %i.crk, ptr %i.coe, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i: ; preds = %.preheader.i.i.i.i793.i.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i805.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i
  %i.crl = phi ptr [ %i.crk, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i805.i.i ], [ %.pre.ph.i780.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i802.i.i ], [ %.pre.ph.i780.i.i, %.preheader.i.i.i.i793.i.i ] ; 2 uses
  %.not.i807.i.i = icmp eq ptr %i.crl, %i.cnx
  br i1 %.not.i807.i.i, label %._crit_edge55.i820.i.i, label %.lr.ph54.i808.i.i

.lr.ph54.i808.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i
  %i.crm = ptrtoint ptr %i.crl to i64
  %i.crn = sub i64 %i.crm, %i.cps
  %i.cro = ashr exact i64 %i.crn, 2
  %i.crp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.crq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.pre59.i809.i.i = load ptr, ptr %i.crp, align 8, !tbaa !314
  %.pre61.i810.i.i = load ptr, ptr %i.crq, align 8, !tbaa !78
  br label %bb.ha

._crit_edge55.i820.i.i:                           ; preds = %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i806.i.i, %._crit_edge.i786.i.i, %._crit_edge.thread.i833.i.i
  invoke void @_ZN5nblib6detail25transferIndicesGmxToNblibINS_24RyckaertBellemanDihedralEEENSt9enable_ifIXaatlNS_8ContainsIT_St5tupleIJNS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEENS_11G96BondTypeENS_13MorseBondTypeENS_13CubicBondTypeENS_13UnimplementedENS_18NotInNblibButInGMXENS7_INS_21FENEBondTypeParameterEEESE_SE_SE_NS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEENS_16CosineParamAngleINS_17G96AngleParameterEEENSK_INS_24RestrictedAngleParameterEEENS7_INS_20LinearAngleParameterEEENS_13CrossBondBondENS_14CrossBondAngleESE_NS_12QuarticAngleESE_NS_14ProperDihedralES2_SE_SE_SE_NS_16ImproperDihedralESE_SE_SD_SD_SD_SD_SD_SD_NS_10PairLJTypeESD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SE_SE_SE_SE_SD_SD_SE_SD_SE_SD_SE_SE_SE_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_SD_EEEEEtlNS4_IS5_NS_8TypeListIJSU_SV_S2_EEEEEEEvE4typeERK22InteractionDefinitionsRNS_14ListedTypeDataIS5_EERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(2760) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.hg unwind label %bb.hi

bb.gz:                                            ; preds = %.noexc32.i792.i.i, %bb.gv
  %i.crr = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.i788.i.i

bb.ha:                                            ; preds = %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i, %.lr.ph54.i808.i.i
  %i.crs = phi ptr [ %.pre61.i810.i.i, %.lr.ph54.i808.i.i ], [ %i.csy, %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i ] ; 2 uses
  %i.crt = phi ptr [ %.pre59.i809.i.i, %.lr.ph54.i808.i.i ], [ %i.csz, %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i ] ; 3 uses
  %.053.i811.i.i = phi i64 [ 0, %.lr.ph54.i808.i.i ], [ %i.cta, %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i ] ; 2 uses
  %i.cru = load ptr, ptr %1, align 8, !tbaa !259, !nonnull !260, !align !261
  %i.crv = getelementptr inbounds nuw [4 x i8], ptr %i.cnx, i64 %.053.i811.i.i
  %i.crw = load i32, ptr %i.crv, align 4, !tbaa !17
  %i.crx = sext i32 %i.crw to i64
  %i.cry = load ptr, ptr %i.cru, align 8, !tbaa !262
  %i.crz = getelementptr inbounds nuw [48 x i8], ptr %i.cry, i64 %i.crx ; 2 uses
  %i.csa = load <4 x float>, ptr %i.crz, align 4, !tbaa !22 ; 2 uses
  %i.csb = getelementptr inbounds nuw i8, ptr %i.crz, i64 16
  %i.csc = load <2 x float>, ptr %i.csb, align 4, !tbaa !22 ; 2 uses
  %.not.i.i37.i812.i.i = icmp eq ptr %i.crt, %i.crs
  br i1 %.not.i.i37.i812.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store <4 x float> %i.csa, ptr %i.crt, align 4
  %.sroa.8.0..sroa_idx.i.i816.i.i = getelementptr inbounds nuw i8, ptr %i.crt, i64 16
  store <2 x float> %i.csc, ptr %.sroa.8.0..sroa_idx.i.i816.i.i, align 4
  %i.csd = load ptr, ptr %i.crp, align 8, !tbaa !314
  %i.cse = getelementptr inbounds nuw i8, ptr %i.csd, i64 24 ; 2 uses
  store ptr %i.cse, ptr %i.crp, align 8, !tbaa !314
  %.pre60.i818.i.i = load ptr, ptr %i.crq, align 8, !tbaa !78
  br label %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.csf = load ptr, ptr %i.p, align 8, !tbaa !79 ; 4 uses
  %i.csg = ptrtoint ptr %i.crs to i64
  %i.csh = ptrtoint ptr %i.csf to i64             ; 2 uses
  %i.csi = sub i64 %i.csg, %i.csh                 ; 5 uses
  %i.csj = icmp eq i64 %i.csi, 9223372036854775800
  br i1 %i.csj, label %bb.hd, label %_ZNKSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.hd:                                            ; preds = %bb.hc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
          to label %.noexc39.i832.i.i unwind label %.loopexit.split-lp.i830.i.i

.noexc39.i832.i.i:                                ; preds = %bb.hd
  unreachable

_ZNKSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.hc
  %i.csk = sdiv exact i64 %i.csi, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i.i824.i.i = call i64 @llvm.umax.i64(i64 %i.csk, i64 1)
  %i.csl = add nsw i64 %.sroa.speculated.i.i.i.i.i824.i.i, %i.csk ; 2 uses
  %i.csm = icmp ult i64 %i.csl, %i.csk
  %i.csn = call i64 @llvm.umin.i64(i64 %i.csl, i64 384307168202282325)
  %i.cso = select i1 %i.csm, i64 384307168202282325, i64 %i.csn ; 3 uses
  %.not.i.i.i.i38.i825.i.i = icmp ne i64 %i.cso, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38.i825.i.i)
  %i.csp = mul nuw nsw i64 %i.cso, 24
  %i.csq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.csp) #14
          to label %.noexc40.i828.i.i unwind label %.loopexit.i826.i.i ; 4 uses

.noexc40.i828.i.i:                                ; preds = %_ZNKSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.csr = getelementptr inbounds i8, ptr %i.csq, i64 %i.csi ; 3 uses
  store <4 x float> %i.csa, ptr %i.csr, align 4
  %.sroa.8.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.csr, i64 16
  store <2 x float> %i.csc, ptr %.sroa.8.0..sroa_idx14.i.i.i.i, align 4
  %i.css = icmp sgt i64 %i.csi, 0
  br i1 %i.css, label %bb.he, label %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i.i

bb.he:                                            ; preds = %.noexc40.i828.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.csq, ptr align 4 %i.csf, i64 %i.csi, i1 false)
  br label %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i.i

_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i.i: ; preds = %bb.he, %.noexc40.i828.i.i
  %i.cst = getelementptr inbounds nuw i8, ptr %i.csr, i64 24 ; 2 uses
  %.not.i17.i.i.i.i829.i.i = icmp eq ptr %i.csf, null
  br i1 %.not.i17.i.i.i.i829.i.i, label %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i.i
  %i.csu = load ptr, ptr %i.crq, align 8, !tbaa !78
  %i.csv = ptrtoint ptr %i.csu to i64
  %i.csw = sub i64 %i.csv, %i.csh
  call void @_ZdlPvm(ptr noundef nonnull %i.csf, i64 noundef %i.csw) #16
  br label %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.hf, %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i.i
  store ptr %i.csq, ptr %i.p, align 8, !tbaa !79
  store ptr %i.cst, ptr %i.crp, align 8, !tbaa !314
  %i.csx = getelementptr inbounds nuw [24 x i8], ptr %i.csq, i64 %i.cso ; 2 uses
  store ptr %i.csx, ptr %i.crq, align 8, !tbaa !78
  br label %_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i

_ZN5nblib6detail28transferParametersGmxToNblibINS_14ListedTypeDataINS_24RyckaertBellemanDihedralEEEEEvRK9t_iparamsRT_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i, %bb.hb
  %i.csy = phi ptr [ %i.csx, %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %.pre60.i818.i.i, %bb.hb ]
  %i.csz = phi ptr [ %i.cst, %_ZNSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i.i ], [ %i.cse, %bb.hb ]
  %i.cta = add nuw i64 %.053.i811.i.i, 1          ; 2 uses
  %exitcond58.not.i819.i.i = icmp eq i64 %i.cta, %i.cro
  br i1 %exitcond58.not.i819.i.i, label %._crit_edge55.i820.i.i, label %bb.ha, !llvm.loop !234

.loopexit.i826.i.i:                               ; preds = %_ZNKSt6vectorIN5nblib24RyckaertBellemanDihedralESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i827.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.i788.i.i

.loopexit.split-lp.i830.i.i:                      ; preds = %bb.hd
  %lpad.loopexit.split-lp.i831.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread90.i788.i.i

bb.hg:                                            ; preds = %._crit_edge55.i820.i.i
  %i.ctb = load ptr, ptr %2, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i41.i823.i.i = icmp eq ptr %i.ctb, null
  br i1 %.not.i.i.i41.i823.i.i, label %bb.hj, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ctc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ctd = load ptr, ptr %i.ctc, align 8, !tbaa !235
  %i.cte = ptrtoint ptr %i.ctd to i64
  %i.ctf = ptrtoint ptr %i.ctb to i64
  %i.ctg = sub i64 %i.cte, %i.ctf
  call void @_ZdlPvm(ptr noundef nonnull %i.ctb, i64 noundef %i.ctg) #16
  br label %bb.hj

bb.hi:                                            ; preds = %._crit_edge55.i820.i.i
  %i.cth = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre62.i821.i.i = load ptr, ptr %2, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i42.i822.i.i = icmp eq ptr %.pre62.i821.i.i, null
  br i1 %.not.i.i.i42.i822.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit43.i790.i.i, label %..thread90.i788_crit_edge.i.i

..thread90.i788_crit_edge.i.i:                    ; preds = %bb.hi
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !235
  %.pre.i.i.a = ptrtoint ptr %.pre62.i821.i.i to i64
  br label %.thread90.i788.i.i

.thread90.i788.i.i:                               ; preds = %..thread90.i788_crit_edge.i.i, %.loopexit.split-lp.i830.i.i, %.loopexit.i826.i.i, %bb.gz
  %.pre-phi.i.i = phi i64 [ %.pre.i.i.a, %..thread90.i788_crit_edge.i.i ], [ %i.cps, %.loopexit.split-lp.i830.i.i ], [ %i.cps, %.loopexit.i826.i.i ], [ %i.cps, %bb.gz ]
  %18 = phi ptr [ %.pre.i.i, %..thread90.i788_crit_edge.i.i ], [ %i.cny, %.loopexit.split-lp.i830.i.i ], [ %i.cny, %.loopexit.i826.i.i ], [ %i.cny, %bb.gz ]
  %.pn27.pn93.i789.i.i = phi { ptr, i32 } [ %i.cth, %..thread90.i788_crit_edge.i.i ], [ %lpad.loopexit.split-lp.i831.i.i, %.loopexit.split-lp.i830.i.i ], [ %lpad.loopexit.i827.i.i, %.loopexit.i826.i.i ], [ %i.crr, %bb.gz ]
  %i.cti = phi ptr [ %.pre62.i821.i.i, %..thread90.i788_crit_edge.i.i ], [ %i.cnx, %.loopexit.split-lp.i830.i.i ], [ %i.cnx, %.loopexit.i826.i.i ], [ %i.cnx, %bb.gz ]
  %i.ctj = ptrtoint ptr %18 to i64
  %i.ctk = sub i64 %i.ctj, %.pre-phi.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cti, i64 noundef %i.ctk) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43.i790.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit43.i790.i.i:         ; preds = %.thread90.i788.i.i, %bb.hi
  %.pn27.pn94.i791.i.i = phi { ptr, i32 } [ %.pn27.pn93.i789.i.i, %.thread90.i788.i.i ], [ %i.cth, %bb.hi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.body

bb.hj:                                            ; preds = %bb.hh, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.hk:                                            ; preds = %.noexc.i834.i.i.invoke, %.noexc31.i776.i.i, %.noexc29.i.i.i, %.noexc31.i693.i.i, %.noexc31.i637.i.i, %.noexc31.i580.i.i, %.noexc31.i522.i.i, %.noexc31.i465.i.i, %.noexc31.i403.i.i, %.noexc31.i346.i.i, %.noexc31.i289.i.i, %.noexc31.i244.i.i, %.noexc31.i188.i.i, %.noexc31.i130.i.i, %.noexc31.i76.i.i, %.noexc31.i20.i.i, %.noexc31.i.i.i
  %i.ctl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit43.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i34.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i90.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i144.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i202.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i256.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i303.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i360.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i417.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i479.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i536.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i594.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i651.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i707.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit37.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i790.i.i, %bb.hk
  %eh.lpad-body = phi { ptr, i32 } [ %i.ctl, %bb.hk ], [ %.pn27.pn94.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i.i.i ], [ %.pn27.pn94.i35.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i34.i.i ], [ %.pn27.pn94.i91.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i90.i.i ], [ %.pn27.pn94.i145.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i144.i.i ], [ %.pn27.pn94.i203.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i202.i.i ], [ %.pn27.pn97.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i256.i.i ], [ %.pn27.pn94.i304.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i303.i.i ], [ %.pn27.pn94.i361.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i360.i.i ], [ %.pn27.pn97.i418.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i417.i.i ], [ %.pn27.pn94.i480.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i479.i.i ], [ %.pn27.pn94.i537.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i536.i.i ], [ %.pn27.pn94.i595.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i594.i.i ], [ %.pn27.pn94.i652.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i651.i.i ], [ %.pn27.pn94.i708.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i707.i.i ], [ %.pn2670.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit37.i.i.i ], [ %.pn27.pn94.i791.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit43.i790.i.i ]
  call void @_ZNSt11_Tuple_implILm0EJN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEENS1_INS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS2_INS0_21FENEBondTypeParameterEEEEENS1_INS2_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSO_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS2_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %0) #13
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm0EJN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEENS1_INS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS2_INS0_21FENEBondTypeParameterEEEEENS1_INS2_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSO_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS2_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #16
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt10_Head_baseILm0EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZNSt10_Head_baseILm0EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_Head_baseILm0EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEELb0EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #16
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNSt10_Head_baseILm0EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEELb0EED2Ev.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt10_Head_baseILm1EN5nblib14ListedTypeDataINS0_11G96BondTypeEEELb0EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt10_Head_baseILm1EN5nblib14ListedTypeDataINS0_11G96BondTypeEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm1EN5nblib14ListedTypeDataINS0_11G96BondTypeEEELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_Head_baseILm1EN5nblib14ListedTypeDataINS0_11G96BondTypeEEELb0EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #16
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt10_Head_baseILm1EN5nblib14ListedTypeDataINS0_11G96BondTypeEEELb0EED2Ev.exit.i
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt11_Tuple_implILm1EJN5nblib14ListedTypeDataINS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEENS1_INS8_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSL_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS8_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #16
  br label %_ZNSt11_Tuple_implILm1EJN5nblib14ListedTypeDataINS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEENS1_INS8_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSL_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS8_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev.exit

_ZNSt11_Tuple_implILm1EJN5nblib14ListedTypeDataINS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEENS1_INS8_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSL_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS8_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev.exit: ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i, %bb.g
  tail call void @_ZNSt11_Tuple_implILm3EJN5nblib14ListedTypeDataINS0_13MorseBondTypeEEENS1_INS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEENS1_INS4_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSH_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS4_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(816) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11_Tuple_implILm3EJN5nblib14ListedTypeDataINS0_13MorseBondTypeEEENS1_INS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEENS1_INS4_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSH_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS4_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #16
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt10_Head_baseILm3EN5nblib14ListedTypeDataINS0_13MorseBondTypeEEELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #16
  br label %_ZNSt10_Head_baseILm3EN5nblib14ListedTypeDataINS0_13MorseBondTypeEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm3EN5nblib14ListedTypeDataINS0_13MorseBondTypeEEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !82   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_Head_baseILm3EN5nblib14ListedTypeDataINS0_13MorseBondTypeEEELb0EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #16
  br label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZNSt10_Head_baseILm3EN5nblib14ListedTypeDataINS0_13MorseBondTypeEEELb0EED2Ev.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt10_Head_baseILm4EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEELb0EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt10_Head_baseILm4EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm4EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt5arrayIiLm3EESaIS1_EED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_Head_baseILm4EN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_21FENEBondTypeParameterEEEEELb0EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 616
end_hunk_1
