inline.NumInlined: 1995
inline.NumDeleted: 945
begin_hunk_0_@_ZN5arrow2io8internal18CoalesceReadRangesESt6vectorINS0_9ReadRangeESaIS3_EEll:bb.a

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i26.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i28.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i32.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i31.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.val2.i11.i.i33.i.i.i.i = load i64, ptr %.pn17.i28.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.ca = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i11.i.i33.i.i.i.i
  br i1 %i.ca, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i

.lr.ph.i.i38.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i38.i.i.i.i
  %.sroa.0.013.i.i39.i.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.pn17.i28.i.i.i.i, %bb.z ] ; 4 uses
  %.sroa.07.012.i.i40.i.i.i.i = phi ptr [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ], [ %.sroa.0.018.i27.i.i.i.i, %bb.z ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.012.i.i40.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.013.i.i39.i.i.i.i, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  %.sroa.0.0.i.i41.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i39.i.i.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i42.i.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i.i, align 8, !tbaa !360, !noalias !352
  %i.cb = icmp slt i64 %.val.i.i29.i.i.i.i, %.val2.i.i.i42.i.i.i.i
  br i1 %i.cb, label %.lr.ph.i.i38.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, !llvm.loop !361

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i.i, %bb.z
  %.sroa.07.0.lcssa.i.i35.i.i.i.i = phi ptr [ %.sroa.0.018.i27.i.i.i.i, %bb.z ], [ %.sroa.0.013.i.i39.i.i.i.i, %.lr.ph.i.i38.i.i.i.i ] ; 2 uses
  store i64 %.val.i.i29.i.i.i.i, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, align 8, !tbaa !246, !noalias !352
  %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i35.i.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i32.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i36.i.i.i.i, align 8, !tbaa !246, !noalias !352
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i34.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i.i
  %.sroa.0.0.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i27.i.i.i.i, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.0.0.i37.i.i.i.i, %.sroa.012.2.i.i.i
  br i1 %i.cc, label %.preheader.i.i.i.i.preheader, label %.lr.ph.i26.i.i.i.i, !llvm.loop !362

.preheader.i.i.i.i.preheader:                     ; preds = %bb.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_.exit.i16.i.i.i.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_.exit.i.i.i.i, %bb.u
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %bb.ab
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.cd, %bb.ab ], [ %i.a, %.preheader.i.i.i.i.preheader ] ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, %.sroa.012.2.i.i.i
  br i1 %i.ce, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %.sroa.09.0.i.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.cf, align 8, !noalias !352
  %.val2.i.i.i.i.i = load i64, ptr %i.cd, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.09.0.i.i.i.i, i64 24
  %.val3.i.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !352
  %.not.i.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i.i, %.val.i.i.i.i.i
  %i.ch = add nsw i64 %.val3.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.ci = add nsw i64 %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  %i.cj = icmp sle i64 %i.ch, %i.ci
  %i.ck = select i1 %.not.i.i.i.i.i.i, i1 %i.cj, i1 false
  br i1 %i.ck, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !364

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i: ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 32 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %.sroa.012.2.i.i.i
  br i1 %i.cm, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i

.lr.ph.i.i34.i:                                   ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i, %bb.ad
  %i.cn = phi ptr [ %i.cv, %bb.ad ], [ %i.cl, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.ad ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.012.019.i.i.i = phi ptr [ %i.cn, %bb.ad ], [ %i.cd, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ]
  %.val.i.i.i35.i = load i64, ptr %.sroa.0.020.i.i.i, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.0.020.i.i.i, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.co, align 8, !noalias !352
  %.val2.i.i.i.i = load i64, ptr %i.cn, align 8, !tbaa !360, !noalias !352 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.012.019.i.i.i, i64 24
  %.val3.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !352
  %.not.i.i.i.i.i = icmp sge i64 %.val2.i.i.i.i, %.val.i.i.i35.i
  %i.cq = add nsw i64 %.val3.i.i.i.i, %.val2.i.i.i.i
  %i.cr = add nsw i64 %.val1.i.i.i.i, %.val.i.i.i35.i
  %i.cs = icmp sle i64 %i.cq, %i.cr
  %i.ct = select i1 %.not.i.i.i.i.i, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i34.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !358, !noalias !352
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i34.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i34.i ], [ %i.cu, %bb.ac ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %.sroa.012.2.i.i.i
  br i1 %i.cw, label %._crit_edge.i.i.i, label %.lr.ph.i.i34.i, !llvm.loop !365

._crit_edge.i.i.i:                                ; preds = %bb.ad, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E0_EEET_SJ_SJ_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.ad ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 16
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i: ; preds = %.preheader.i.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i, %._crit_edge.i.i.i
  %.sroa.06.0.i.i36.i = phi ptr [ %i.cx, %._crit_edge.i.i.i ], [ %i.a, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_E_ET_SG_SG_T0_.exit.i ], [ %.sroa.012.2.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.06.0.i.i36.i to i64
  %i.cz = sub i64 %i.cy, %i.m                     ; 2 uses
  %i.da = ashr exact i64 %i.cz, 4                 ; 3 uses
  %i.db = ashr exact i64 %i.n, 4                  ; 3 uses
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.dd = sub nuw nsw i64 %i.da, %i.db
  invoke void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.dd)
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %bb.ae
  %.pre78.i = load ptr, ptr %6, align 8, !tbaa !244, !noalias !352
  %.pre79.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

bb.af:                                            ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEEZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SE_E0_ET_SG_SG_T0_.exit.i
  %i.de = icmp uge i64 %i.da, %i.db
  %.not.i.i.i = icmp eq ptr %i.d, %.sroa.06.0.i.i36.i
  %or.cond31.i = or i1 %.not.i.i.i, %i.de
  br i1 %or.cond31.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cz ; 2 uses
  store ptr %i.df, ptr %i.b, align 8, !tbaa !350, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.af, %.noexc
  %i.dg = phi ptr [ %.pre79.i, %.noexc ], [ %i.d, %bb.af ], [ %i.df, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 4 uses
  %i.dh = phi ptr [ %.pre78.i, %.noexc ], [ %i.a, %bb.af ], [ %i.a, %_ZSt8_DestroyIPN5arrow2io9ReadRangeES2_EvT_S4_RSaIT0_E.exit.i.i.i ] ; 5 uses
  %i.di = icmp eq ptr %i.dh, %i.dg
  br i1 %i.di, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !348, !alias.scope !352
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dg, ptr %i.dk, align 8, !tbaa !350, !alias.scope !352
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !351, !noalias !352
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !351, !alias.scope !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE6resizeEm.exit.i
  %.not53.i = icmp ult ptr %i.dh, %i.dg
  br i1 %.not53.i, label %.lr.ph.i.preheader, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

.lr.ph.i.preheader:                               ; preds = %bb.ah
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !360, !noalias !352 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.do = phi ptr [ %i.en, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dg, %.lr.ph.i.preheader ] ; 3 uses
  %.02959.i = phi i64 [ %.1.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dn, %.lr.ph.i.preheader ] ; 6 uses
  %.03058.i = phi i64 [ %i.ds, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dn, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.015.057.i = phi ptr [ %.sroa.015.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.12.056.i = phi ptr [ %.sroa.12.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 9 uses
  %.sroa.21.055.i = phi ptr [ %.sroa.21.2.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ null, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.054.i = phi ptr [ %i.eo, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 3 uses
  %i.dp = load i64, ptr %.sroa.010.054.i, align 8, !tbaa !360, !noalias !352 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !355, !noalias !352
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 4 uses
  %i.dt = sub nsw i64 %i.ds, %.02959.i
  %i.du = icmp sgt i64 %i.dt, %3
  %i.dv = sub nsw i64 %i.dp, %.03058.i
  %i.dw = icmp sgt i64 %i.dv, %2
  %or.cond.i = select i1 %i.du, i1 true, i1 %i.dw
  br i1 %or.cond.i, label %bb.ai, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.dx = icmp sgt i64 %.03058.i, %.02959.i
  br i1 %i.dx, label %bb.aj, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.dy = sub nsw i64 %.03058.i, %.02959.i        ; 2 uses
  %.not.i.i37.i = icmp eq ptr %.sroa.12.056.i, %.sroa.21.055.i
  br i1 %.not.i.i37.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i64 %.02959.i, ptr %.sroa.12.056.i, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 8
  store i64 %i.dy, ptr %.sroa.66.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.12.056.i, i64 16
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.ea = ptrtoint ptr %.sroa.12.056.i to i64
  %i.eb = ptrtoint ptr %.sroa.015.057.i to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775792
  br i1 %i.ed, label %bb.am, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !352

.noexc.i:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.al
  %i.ee = ashr exact i64 %i.ec, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ee ; 2 uses
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ef, i64 576460752303423487) ; 2 uses
  %.not.i.i.i.i38.i = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i.i.i38.i)
  %i.eh = shl nuw nsw i64 %i.eg, 4
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #35
          to label %.noexc39.i unwind label %.loopexit.i, !noalias !352 ; 4 uses

.noexc39.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ec ; 3 uses
  store i64 %.02959.i, ptr %i.ej, align 8, !tbaa !246, !noalias !352
  %.sroa.66.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.dy, ptr %.sroa.66.0..sroa_idx7.i, align 8, !tbaa !246, !noalias !352
  %i.ek = icmp sgt i64 %i.ec, 0
  br i1 %i.ek, label %bb.an, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.an:                                            ; preds = %.noexc39.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %.sroa.015.057.i, i64 %i.ec, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.an, %.noexc39.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.015.057.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.057.i, i64 noundef %i.ec) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.eg
  %.pre80.i = load ptr, ptr %i.b, align 8, !tbaa !244, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp.i:                             ; preds = %bb.am
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.ak, %bb.ai, %.lr.ph.i
  %i.en = phi ptr [ %i.do, %.lr.ph.i ], [ %i.do, %bb.ai ], [ %.pre80.i, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.do, %bb.ak ] ; 2 uses
  %.sroa.21.2.i = phi ptr [ %.sroa.21.055.i, %.lr.ph.i ], [ %.sroa.21.055.i, %bb.ai ], [ %i.em, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.21.055.i, %bb.ak ] ; 6 uses
  %.sroa.12.2.i = phi ptr [ %.sroa.12.056.i, %.lr.ph.i ], [ %.sroa.12.056.i, %bb.ai ], [ %i.el, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dz, %bb.ak ] ; 6 uses
  %.sroa.015.2.i = phi ptr [ %.sroa.015.057.i, %.lr.ph.i ], [ %.sroa.015.057.i, %bb.ai ], [ %i.ei, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.015.057.i, %bb.ak ] ; 8 uses
  %.1.i = phi i64 [ %.02959.i, %.lr.ph.i ], [ %i.dp, %bb.ai ], [ %i.dp, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.dp, %bb.ak ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.010.054.i, i64 16 ; 2 uses
  %.not.i = icmp ult ptr %i.eo, %i.en
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !366

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE9push_backEOS2_.exit.i
  %i.ep = icmp sgt i64 %i.ds, %.1.i
  br i1 %i.ep, label %bb.ap, label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.ap:                                            ; preds = %._crit_edge.i
  %i.eq = sub nsw i64 %i.ds, %.1.i                ; 2 uses
  %.not.i.i40.i = icmp eq ptr %.sroa.12.2.i, %.sroa.21.2.i
  br i1 %.not.i.i40.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %.1.i, ptr %.sroa.12.2.i, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 8
  store i64 %i.eq, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !246, !noalias !352
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i, i64 16
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.ar:                                            ; preds = %bb.ap
  %i.es = ptrtoint ptr %.sroa.21.2.i to i64
  %i.et = ptrtoint ptr %.sroa.015.2.i to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 6 uses
  %i.ev = icmp eq i64 %i.eu, 9223372036854775792
  br i1 %i.ev, label %bb.as, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
          to label %.noexc47.i unwind label %bb.av, !noalias !352

.noexc47.i:                                       ; preds = %bb.as
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i: ; preds = %bb.ar
  %i.ew = ashr exact i64 %i.eu, 4                 ; 2 uses
  %.sroa.speculated.i.i.i.i42.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 1)
  %i.ex = add nsw i64 %.sroa.speculated.i.i.i.i42.i, %i.ew ; 2 uses
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ex, i64 576460752303423487) ; 2 uses
  %.not.i.i.i.i43.i = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43.i)
  %i.ez = shl nuw nsw i64 %i.ey, 4
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #35
          to label %.noexc48.i unwind label %bb.av, !noalias !352 ; 4 uses

.noexc48.i:                                       ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.eu ; 3 uses
  store i64 %.1.i, ptr %i.fb, align 8, !tbaa !246, !noalias !352
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %i.eq, ptr %.sroa.6.0..sroa_idx2.i, align 8, !tbaa !246, !noalias !352
  %i.fc = icmp sgt i64 %i.eu, 0
  br i1 %i.fc, label %bb.at, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

bb.at:                                            ; preds = %.noexc48.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %.sroa.015.2.i, i64 %i.eu, i1 false), !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i: ; preds = %bb.at, %.noexc48.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.not.i17.i.i.i45.i = icmp eq ptr %.sroa.015.2.i, null
  br i1 %.not.i17.i.i.i45.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.2.i, i64 noundef %i.eu) #36, !noalias !352
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i: ; preds = %bb.au, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i44.i
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.ey
  br label %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit

bb.av:                                            ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i41.i, %bb.as
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.21.045.i = phi ptr [ %.sroa.21.2.i, %bb.av ], [ %.sroa.12.056.i, %.loopexit.i ], [ %.sroa.12.056.i, %.loopexit.split-lp.i ]
  %.sroa.015.039.i = phi ptr [ %.sroa.015.2.i, %bb.av ], [ %.sroa.015.057.i, %.loopexit.i ], [ %.sroa.015.057.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.i = phi { ptr, i32 } [ %i.ff, %bb.av ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i50.i = icmp eq ptr %.sroa.015.039.i, null
  br i1 %.not.i.i.i50.i, label %.body, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fg = ptrtoint ptr %.sroa.21.045.i to i64
  %i.fh = ptrtoint ptr %.sroa.015.039.i to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.015.039.i, i64 noundef %i.fi) #36, !noalias !352
  br label %.body

_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit: ; preds = %bb.ah, %._crit_edge.i, %bb.aq, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i
  %.sroa.21.4.i = phi ptr [ %.sroa.21.2.i, %._crit_edge.i ], [ %i.fe, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.21.2.i, %bb.aq ], [ null, %bb.ah ]
  %.sroa.12.4.i = phi ptr [ %.sroa.12.2.i, %._crit_edge.i ], [ %i.fd, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %i.er, %bb.aq ], [ null, %bb.ah ]
  %.sroa.015.4.i = phi ptr [ %.sroa.015.2.i, %._crit_edge.i ], [ %i.fa, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i46.i ], [ %.sroa.015.2.i, %bb.aq ], [ null, %bb.ah ]
  store ptr null, ptr %0, align 8, !tbaa !81, !alias.scope !352
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.015.4.i, ptr %i.fj, align 8, !tbaa !348, !alias.scope !352
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.4.i, ptr %i.fk, align 8, !tbaa !350, !alias.scope !352
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.21.4.i, ptr %i.fl, align 8, !tbaa !351, !alias.scope !352
  %.pr = load ptr, ptr %6, align 8, !tbaa !348    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit
  %i.fm = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %.pr to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fp) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.ag, %_ZN5arrow2io8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceESt6vectorINS0_9ReadRangeESaIS5_EE.exit, %bb.ay
  ret void

bb.az:                                            ; preds = %bb.ae
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.ax, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.fq, %bb.az ], [ %.pn.i, %bb.ax ], [ %.pn.i, %bb.aw ]
  %i.fr = load ptr, ptr %6, align 8, !tbaa !348   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6, label %bb.ba

bb.ba:                                            ; preds = %.body
  %i.fs = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #36
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit6: ; preds = %.body, %bb.ba
  resume { ptr, i32 } %eh.lpad-body
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8WritableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8ReadableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io11InputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD1Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5arrow2io11InputStreamD0Ev(ptr noundef %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !29
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !367
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #32, !inline_history !368
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !29
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !369
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !369
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !34

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !33
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #36
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #36
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8SeekableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow2io8SeekableD0Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !253    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #34
  unreachable

_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #35 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !14
  store ptr null, ptr %i.p, align 8, !tbaa !26
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !14
  store ptr null, ptr %2, align 8, !tbaa !67
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !14, !alias.scope !373, !noalias !370
  store ptr null, ptr %i.r, align 8, !tbaa !26, !alias.scope !373, !noalias !370
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !14, !alias.scope !370, !noalias !373
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !67, !alias.scope !373, !noalias !370
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !375

_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !14, !alias.scope !379, !noalias !376
  store ptr null, ptr %i.w, align 8, !tbaa !26, !alias.scope !379, !noalias !376
  store <2 x ptr> %i.x, ptr %.012.i.i.i18, align 8, !tbaa !14, !alias.scope !376, !noalias !379
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !67, !alias.scope !379, !noalias !376
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !375

_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.z, %.lr.ph.i.i.i17 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !250
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #36
  br label %_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN5arrow6FutureISt10shared_ptrINS0_6BufferEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !253
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !247
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !250
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #19

declare void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.99") align 8, i64, ptr) local_unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN5arrow8internal10ThreadPool11MakeEternalEi(ptr dead_on_unwind writable sret(%"class.arrow::Result.103") align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZNK5arrow6Status5AbortERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !334
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !34

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !127
  store i64 %i.c, ptr %i.a, align 8, !tbaa !33
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !33
  store i8 %i.j, ptr %i.i, align 1, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !292
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !29
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !381
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !381
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, !prof !34

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !118

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !90, !range !100, !noundef !101
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !81 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !118

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !90, !range !100, !noundef !101
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

end_hunk_0
