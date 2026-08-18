inline.NumInlined: 29521
inline.NumDeleted: 7045
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@_ZN6duckdb4SortC2ERNS_13ClientContextERKNS_6vectorINS_16BoundOrderByNodeELb1ESaIS4_EEERKNS3_INS_11LogicalTypeELb1ESaIS9_EEENS3_ImLb1ESaImEEEb:bb.a
  %i.agp = load ptr, ptr %i.yk, align 8, !tbaa !437
  %i.agq = load ptr, ptr %4, align 8, !tbaa !439
  %i.agr = ptrtoint ptr %i.agp to i64
  %i.ags = ptrtoint ptr %i.agq to i64
  %i.agt = sub i64 %i.agr, %i.ags
  %i.agu = ashr exact i64 %i.agt, 3
  %i.agv = icmp ult i64 %i.ago, %i.agu
  br i1 %i.agv, label %bb.gy, label %._crit_edge879, !llvm.loop !1010

bb.hy:                                            ; preds = %._crit_edge879
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.iy

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.hy
  invoke void @_ZN6duckdb15TupleDataLayout10InitializeENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEENS_21TupleDataValidityTypeENS_23TupleDataNestednessTypeE(ptr noundef nonnull align 8 dereferenceable(217) %i.acx, ptr noundef nonnull %64, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %bb.hz unwind label %bb.iz

bb.hz:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.agw = load ptr, ptr %64, align 8, !tbaa !250 ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !237 ; 2 uses
  %.not4.i.i.i432 = icmp eq ptr %i.agw, %i.agy
  br i1 %.not4.i.i.i432, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i433

.lr.ph.i.i.i433:                                  ; preds = %bb.hz, %.lr.ph.i.i.i433
  %.05.i.i.i434 = phi ptr [ %i.agz, %.lr.ph.i.i.i433 ], [ %i.agw, %bb.hz ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i434) #29
  %i.agz = getelementptr inbounds nuw i8, ptr %.05.i.i.i434, i64 24 ; 2 uses
  %.not.i.i.i435 = icmp eq ptr %i.agz, %i.agy
  br i1 %.not.i.i.i435, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i433, !llvm.loop !251

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i433
  %.pr.i436 = load ptr, ptr %64, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.hz
  %i.aha = phi ptr [ %.pr.i436, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.agw, %bb.hz ] ; 2 uses
  %.not.i.i1.i437 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i1.i437, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.ia

bb.ia:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.aha) #30
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.ia
  %i.ahb = load ptr, ptr %i.bd, align 8, !tbaa !511 ; 19 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ahd = load ptr, ptr %i.ahc, align 8, !tbaa !511 ; 7 uses
  %.not.i.i438 = icmp eq ptr %i.ahb, %i.ahd
  br i1 %.not.i.i438, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit", label %bb.ib

bb.ib:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.ahe = ptrtoint ptr %i.ahd to i64
  %i.ahf = ptrtoint ptr %i.ahb to i64             ; 2 uses
  %i.ahg = sub i64 %i.ahe, %i.ahf                 ; 2 uses
  %i.ahh = sdiv exact i64 %i.ahg, 24
  %i.ahi = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahh, i1 true)
  %i.ahj = shl nuw nsw i64 %i.ahi, 1
  %i.ahk = xor i64 %i.ahj, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_T1_"(ptr %i.ahb, ptr %i.ahd, i64 noundef %i.ahk)
  %i.ahl = icmp sgt i64 %i.ahg, 384
  br i1 %i.ahl, label %.lr.ph.i.i.i.i439, label %.preheader.i34.i.i.i

.lr.ph.i.i.i.i439:                                ; preds = %bb.ib
  %i.ahm = getelementptr i8, ptr %i.ahb, i64 8
  %scevgep.i.i.i = getelementptr i8, ptr %i.ahb, i64 24
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ih, %.lr.ph.i.i.i.i439
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ 24, %.lr.ph.i.i.i.i439 ], [ %.sroa.0.019.i.add.i.i.i, %bb.ih ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %i.ahb, %.lr.ph.i.i.i.i439 ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.ih ] ; 7 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %.val.i.i.i.i.i = load i8, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 7 uses
  %i.ahn = getelementptr i8, ptr %.pn18.i.i.i.i, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.ahn, align 8 ; 4 uses
  %.val2.i.i.i.i.i = load i8, ptr %i.ahb, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %.val3.i.i.i.i.i = load i64, ptr %i.ahm, align 8
  %i.aho = icmp eq i8 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %i.ahp = icmp ult i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ahq = icmp samesign ult i8 %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  %.0.i.i.i.i.i.i440 = select i1 %i.aho, i1 %i.ahp, i1 %i.ahq
  br i1 %.0.i.i.i.i.i.i440, label %bb.id, label %bb.ig

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !1011
  %i.ahr = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.ahr, label %bb.ie, label %bb.if, !prof !337

bb.ie:                                            ; preds = %bb.id
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ahb, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

bb.if:                                            ; preds = %bb.id
  %i.ahs = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahs, ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, i64 24, i1 false), !tbaa.struct !1011
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i: ; preds = %bb.if, %bb.ie
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ih

bb.ig:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 40
  %.sroa.6.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !168
  %.val3.i16.i.i.i.i.i = load i8, ptr %.pn18.i.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.aht = getelementptr i8, ptr %.pn18.i.i.i.i, i64 8
  %.val4.i17.i.i.i.i.i = load i64, ptr %i.aht, align 8
  %i.ahu = icmp eq i8 %.val.i.i.i.i.i, %.val3.i16.i.i.i.i.i
  %i.ahv = icmp ult i64 %.val1.i.i.i.i.i, %.val4.i17.i.i.i.i.i
  %i.ahw = icmp samesign ult i8 %.val.i.i.i.i.i, %.val3.i16.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i = select i1 %i.ahu, i1 %i.ahv, i1 %i.ahw
  br i1 %.0.i.i18.i.i.i.i.i, label %.lr.ph.i.i.i.i.i442, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i442:                              ; preds = %bb.ig, %.lr.ph.i.i.i.i.i442
  %.sroa.0.020.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i442 ], [ %.pn18.i.i.i.i, %bb.ig ] ; 5 uses
  %.sroa.012.019.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i442 ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.ig ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.019.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1011
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.020.i.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i.i.i.i = load i8, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.ahx = getelementptr i8, ptr %.sroa.0.020.i.i.i.i.i, i64 -16
  %.val4.i.i.i.i.i.i = load i64, ptr %i.ahx, align 8
  %i.ahy = icmp eq i8 %.val.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %i.ahz = icmp ult i64 %.val1.i.i.i.i.i, %.val4.i.i.i.i.i.i
  %i.aia = icmp samesign ult i8 %.val.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = select i1 %i.ahy, i1 %i.ahz, i1 %i.aia
  br i1 %.0.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i442, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i.i.i.i", !llvm.loop !1013

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i442, %bb.ig
  %.sroa.012.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.ig ], [ %.sroa.0.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i442 ] ; 4 uses
  store i8 %.val.i.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i.i.i.i, align 8, !tbaa !219
  %.sroa.5.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx6.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.57.0..sroa_idx8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i, i64 8
  store i64 %.val1.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx8.i.i.i.i.i, align 8, !tbaa !168
  %.sroa.6.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx10.i.i.i.i.i, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.ih

bb.ih:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i441 = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i441, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_.exit.i.i.i", label %bb.ic, !llvm.loop !1014

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_.exit.i.i.i": ; preds = %bb.ih
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahb, i64 384 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.aib, %i.ahd
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ail, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i" ], [ %i.aib, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_.exit.i.i.i" ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.04.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !219 ; 5 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %i.aic = load <2 x i64>, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !168
  %.sroa.57.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.sroa.0.015.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -24 ; 2 uses
  %.val3.i16.i.i17.i.i.i = load i8, ptr %.sroa.0.015.i.i.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.aid = getelementptr i8, ptr %.sroa.0.07.i.i.i.i, i64 -16
  %.val4.i17.i.i18.i.i.i = load i64, ptr %i.aid, align 8
  %i.aie = icmp eq i8 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i16.i.i17.i.i.i
  %i.aif = icmp ult i64 %.sroa.57.0.copyload.i.i.i.i.i, %.val4.i17.i.i18.i.i.i
  %i.aig = icmp samesign ult i8 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i16.i.i17.i.i.i
  %.0.i.i18.i.i19.i.i.i = select i1 %i.aie, i1 %i.aif, i1 %i.aig
  br i1 %.0.i.i18.i.i19.i.i.i, label %.lr.ph.i.i26.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i"

.lr.ph.i.i26.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i26.i.i.i
  %.sroa.0.020.i.i27.i.i.i = phi ptr [ %.sroa.0.0.i.i29.i.i.i, %.lr.ph.i.i26.i.i.i ], [ %.sroa.0.015.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 5 uses
  %.sroa.012.019.i.i28.i.i.i = phi ptr [ %.sroa.0.020.i.i27.i.i.i, %.lr.ph.i.i26.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.019.i.i28.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.i27.i.i.i, i64 24, i1 false), !tbaa.struct !1011
  %.sroa.0.0.i.i29.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.020.i.i27.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i30.i.i.i = load i8, ptr %.sroa.0.0.i.i29.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.aih = getelementptr i8, ptr %.sroa.0.020.i.i27.i.i.i, i64 -16
  %.val4.i.i.i31.i.i.i = load i64, ptr %i.aih, align 8
  %i.aii = icmp eq i8 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i.i.i30.i.i.i
  %i.aij = icmp ult i64 %.sroa.57.0.copyload.i.i.i.i.i, %.val4.i.i.i31.i.i.i
  %i.aik = icmp samesign ult i8 %.sroa.04.0.copyload.i.i.i.i.i, %.val3.i.i.i30.i.i.i
  %.0.i.i.i.i32.i.i.i = select i1 %i.aii, i1 %i.aij, i1 %i.aik
  br i1 %.0.i.i.i.i32.i.i.i, label %.lr.ph.i.i26.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i", !llvm.loop !1013

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i": ; preds = %.lr.ph.i.i26.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.012.0.lcssa.i.i21.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.020.i.i27.i.i.i, %.lr.ph.i.i26.i.i.i ] ; 3 uses
  store i8 %.sroa.04.0.copyload.i.i.i.i.i, ptr %.sroa.012.0.lcssa.i.i21.i.i.i, align 8, !tbaa !219
  %.sroa.5.0..sroa_idx6.i.i22.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i21.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx6.i.i22.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i12.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.57.0..sroa_idx8.i.i23.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i21.i.i.i, i64 8
  store <2 x i64> %i.aic, ptr %.sroa.57.0..sroa_idx8.i.i23.i.i.i, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %i.ail, %i.ahd
  br i1 %.not.i25.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !1015

.preheader.i34.i.i.i:                             ; preds = %bb.ib
  %.sroa.0.016.i35.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahb, i64 24 ; 3 uses
  %.not17.i36.i.i.i = icmp eq ptr %.sroa.0.016.i35.i.i.i, %i.ahd
  br i1 %.not17.i36.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit", label %.lr.ph.i37.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %.preheader.i34.i.i.i
  %i.aim = getelementptr i8, ptr %i.ahb, i64 8
  br label %bb.ii

bb.ii:                                            ; preds = %bb.io, %.lr.ph.i37.i.i.i
  %.sroa.0.019.i38.i.i.i = phi ptr [ %.sroa.0.016.i35.i.i.i, %.lr.ph.i37.i.i.i ], [ %.sroa.0.0.i56.i.i.i, %bb.io ] ; 7 uses
  %.pn18.i39.i.i.i = phi ptr [ %i.ahb, %.lr.ph.i37.i.i.i ], [ %.sroa.0.019.i38.i.i.i, %bb.io ] ; 7 uses
  %.val.i.i40.i.i.i = load i8, ptr %.sroa.0.019.i38.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 7 uses
  %i.ain = getelementptr i8, ptr %.pn18.i39.i.i.i, i64 32
  %.val1.i.i41.i.i.i = load i64, ptr %i.ain, align 8 ; 4 uses
  %.val2.i.i42.i.i.i = load i8, ptr %i.ahb, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %.val3.i.i43.i.i.i = load i64, ptr %i.aim, align 8
  %i.aio = icmp eq i8 %.val.i.i40.i.i.i, %.val2.i.i42.i.i.i
  %i.aip = icmp ult i64 %.val1.i.i41.i.i.i, %.val3.i.i43.i.i.i
  %i.aiq = icmp samesign ult i8 %.val.i.i40.i.i.i, %.val2.i.i42.i.i.i
  %.0.i.i.i44.i.i.i = select i1 %i.aio, i1 %i.aip, i1 %i.aiq
  br i1 %.0.i.i.i44.i.i.i, label %bb.ij, label %bb.in

bb.ij:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i38.i.i.i, i64 24, i1 false), !tbaa.struct !1011
  %i.air = ptrtoint ptr %.sroa.0.019.i38.i.i.i to i64
  %i.ais = sub i64 %i.air, %i.ahf                 ; 3 uses
  %i.ait = icmp sgt i64 %i.ais, 24
  br i1 %i.ait, label %bb.ik, label %bb.il, !prof !337

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.016.i35.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ahb, i64 %i.ais, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i65.i.i.i

bb.il:                                            ; preds = %bb.ij
  %i.aiu = icmp eq i64 %i.ais, 24
  br i1 %i.aiu, label %bb.im, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i65.i.i.i

bb.im:                                            ; preds = %bb.il
  %i.aiv = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aiv, ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, i64 24, i1 false), !tbaa.struct !1011
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i65.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i65.i.i.i: ; preds = %bb.im, %bb.il, %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahb, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.io

bb.in:                                            ; preds = %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i33.i.i.i)
  %.sroa.5.0..sroa_idx.i.i45.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i33.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx.i.i45.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.6.0..sroa_idx.i.i46.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i39.i.i.i, i64 40
  %.sroa.6.0.copyload.i.i47.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i46.i.i.i, align 8, !tbaa !168
  %.val3.i16.i.i48.i.i.i = load i8, ptr %.pn18.i39.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.aiw = getelementptr i8, ptr %.pn18.i39.i.i.i, i64 8
  %.val4.i17.i.i49.i.i.i = load i64, ptr %i.aiw, align 8
  %i.aix = icmp eq i8 %.val.i.i40.i.i.i, %.val3.i16.i.i48.i.i.i
  %i.aiy = icmp ult i64 %.val1.i.i41.i.i.i, %.val4.i17.i.i49.i.i.i
  %i.aiz = icmp samesign ult i8 %.val.i.i40.i.i.i, %.val3.i16.i.i48.i.i.i
  %.0.i.i18.i.i50.i.i.i = select i1 %i.aix, i1 %i.aiy, i1 %i.aiz
  br i1 %.0.i.i18.i.i50.i.i.i, label %.lr.ph.i.i58.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i51.i.i.i"

.lr.ph.i.i58.i.i.i:                               ; preds = %bb.in, %.lr.ph.i.i58.i.i.i
  %.sroa.0.020.i.i59.i.i.i = phi ptr [ %.sroa.0.0.i.i61.i.i.i, %.lr.ph.i.i58.i.i.i ], [ %.pn18.i39.i.i.i, %bb.in ] ; 5 uses
  %.sroa.012.019.i.i60.i.i.i = phi ptr [ %.sroa.0.020.i.i59.i.i.i, %.lr.ph.i.i58.i.i.i ], [ %.sroa.0.019.i38.i.i.i, %bb.in ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.019.i.i60.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.i59.i.i.i, i64 24, i1 false), !tbaa.struct !1011
  %.sroa.0.0.i.i61.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.020.i.i59.i.i.i, i64 -24 ; 2 uses
  %.val3.i.i.i62.i.i.i = load i8, ptr %.sroa.0.0.i.i61.i.i.i, align 8, !tbaa !512, !range !68, !noundef !69 ; 2 uses
  %i.aja = getelementptr i8, ptr %.sroa.0.020.i.i59.i.i.i, i64 -16
  %.val4.i.i.i63.i.i.i = load i64, ptr %i.aja, align 8
  %i.ajb = icmp eq i8 %.val.i.i40.i.i.i, %.val3.i.i.i62.i.i.i
  %i.ajc = icmp ult i64 %.val1.i.i41.i.i.i, %.val4.i.i.i63.i.i.i
  %i.ajd = icmp samesign ult i8 %.val.i.i40.i.i.i, %.val3.i.i.i62.i.i.i
  %.0.i.i.i.i64.i.i.i = select i1 %i.ajb, i1 %i.ajc, i1 %i.ajd
  br i1 %.0.i.i.i.i64.i.i.i, label %.lr.ph.i.i58.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i51.i.i.i", !llvm.loop !1013

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i51.i.i.i": ; preds = %.lr.ph.i.i58.i.i.i, %bb.in
  %.sroa.012.0.lcssa.i.i52.i.i.i = phi ptr [ %.sroa.0.019.i38.i.i.i, %bb.in ], [ %.sroa.0.020.i.i59.i.i.i, %.lr.ph.i.i58.i.i.i ] ; 4 uses
  store i8 %.val.i.i40.i.i.i, ptr %.sroa.012.0.lcssa.i.i52.i.i.i, align 8, !tbaa !219
  %.sroa.5.0..sroa_idx6.i.i53.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i52.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx6.i.i53.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i33.i.i.i, i64 7, i1 false), !tbaa.struct !1012
  %.sroa.57.0..sroa_idx8.i.i54.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i52.i.i.i, i64 8
  store i64 %.val1.i.i41.i.i.i, ptr %.sroa.57.0..sroa_idx8.i.i54.i.i.i, align 8, !tbaa !168
  %.sroa.6.0..sroa_idx10.i.i55.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i.i52.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i47.i.i.i, ptr %.sroa.6.0..sroa_idx10.i.i55.i.i.i, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i33.i.i.i)
  br label %bb.io

bb.io:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i51.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i65.i.i.i
  %.sroa.0.0.i56.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i38.i.i.i, i64 24 ; 2 uses
  %.not.i57.i.i.i = icmp eq ptr %.sroa.0.0.i56.i.i.i, %i.ahd
  br i1 %.not.i57.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit", label %bb.ii, !llvm.loop !1014

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit": ; preds = %bb.io, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_T0_.exit.i20.i.i.i", %.preheader.i34.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_.exit.i.i.i", %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.aje = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %bb.ip unwind label %bb.iy

bb.ip:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEEZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISD_EEERKNSC_INS2_11LogicalTypeELb1ESaISI_EEENSC_ImLb1ESaImEEEbE3$_1EvT_SQ_T0_.exit"
  %i.ajf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.iq unwind label %bb.iy

bb.iq:                                            ; preds = %bb.ip
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 56
  %i.ajh = load ptr, ptr %63, align 8, !tbaa !1016
  %i.aji = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !1016
  %i.ajk = icmp ne ptr %i.ajh, %i.ajj
  invoke void @_ZN6duckdb15TupleDataLayout10InitializeERKNS_6vectorINS_16BoundOrderByNodeELb1ESaIS2_EEERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(217) %i.aje, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ajg, i1 noundef zeroext %i.ajk)
          to label %bb.ir unwind label %bb.iy

bb.ir:                                            ; preds = %bb.iq
  %i.ajl = load ptr, ptr %63, align 8, !tbaa !250 ; 3 uses
  %i.ajm = load ptr, ptr %i.aji, align 8, !tbaa !237 ; 2 uses
  %.not4.i.i.i443 = icmp eq ptr %i.ajl, %i.ajm
  br i1 %.not4.i.i.i443, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i449, label %.lr.ph.i.i.i444

.lr.ph.i.i.i444:                                  ; preds = %bb.ir, %.lr.ph.i.i.i444
  %.05.i.i.i445 = phi ptr [ %i.ajn, %.lr.ph.i.i.i444 ], [ %i.ajl, %bb.ir ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i445) #29
  %i.ajn = getelementptr inbounds nuw i8, ptr %.05.i.i.i445, i64 24 ; 2 uses
  %.not.i.i.i446 = icmp eq ptr %i.ajn, %i.ajm
  br i1 %.not.i.i.i446, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i447, label %.lr.ph.i.i.i444, !llvm.loop !251

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i447: ; preds = %.lr.ph.i.i.i444
  %.pr.i448 = load ptr, ptr %63, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i449

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i449: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i447, %bb.ir
  %i.ajo = phi ptr [ %.pr.i448, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i447 ], [ %i.ajl, %bb.ir ] ; 2 uses
  %.not.i.i1.i450 = icmp eq ptr %i.ajo, null
  br i1 %.not.i.i1.i450, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451, label %bb.is

bb.is:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i449
  call void @_ZdlPv(ptr noundef nonnull %i.ajo) #30
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i449, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #29
  %i.ajp = load ptr, ptr %i.abr, align 8, !tbaa !1017 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ajp, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i452

.lr.ph.i.i.i.i452:                                ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451, %.lr.ph.i.i.i.i452
  %.06.i.i.i.i = phi ptr [ %i.ajq, %.lr.ph.i.i.i.i452 ], [ %i.ajp, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451 ] ; 2 uses
  %i.ajq = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !266 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #30
  %.not.i.i.i.i453 = icmp eq ptr %i.ajq, null
  br i1 %.not.i.i.i.i453, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i452, !llvm.loop !1018

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i452, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit451
  %i.ajr = load ptr, ptr %62, align 8, !tbaa !1000
  %i.ajs = load i64, ptr %i.abq, align 8, !tbaa !1002
  %i.ajt = shl i64 %i.ajs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ajr, i8 0, i64 %i.ajt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abr, i8 0, i64 16, i1 false)
  %i.aju = load ptr, ptr %62, align 8, !tbaa !1000 ; 2 uses
  %i.ajv = icmp eq ptr %i.aju, %i.abp
  br i1 %i.ajv, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, label %bb.it

bb.it:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.aju) #30
  br label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit

_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  %i.ajw = getelementptr inbounds nuw i8, ptr %46, i64 72 ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %46, i64 88 ; 2 uses
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !1019 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ajy, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i454

.lr.ph.i.i.i.i.i454:                              ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ajz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i ], [ %i.ajy, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit ] ; 6 uses
  %i.ajz = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !266 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.akb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 40
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !57 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 56
  %i.ake = icmp eq ptr %i.akc, %i.akd
  br i1 %i.ake, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i455: ; preds = %.lr.ph.i.i.i.i.i454
  call void @_ZdlPv(ptr noundef %i.akc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i454, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i455
  %i.akf = load ptr, ptr %i.aka, align 8, !tbaa !57 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.akh = icmp eq ptr %i.akf, %i.akg
  br i1 %i.akh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.akf) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #30
  %.not.i.i.i.i.i456 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i.i.i.i456, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i454, !llvm.loop !1021

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit
  %i.aki = load ptr, ptr %i.ajw, align 8, !tbaa !1022
  %i.akj = getelementptr inbounds nuw i8, ptr %46, i64 80
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !1023
  %i.akl = shl i64 %i.akk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aki, i8 0, i64 %i.akl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajx, i8 0, i64 16, i1 false)
  %i.akm = load ptr, ptr %i.ajw, align 8, !tbaa !1022 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %46, i64 120
  %i.ako = icmp eq ptr %i.akm, %i.akn
  br i1 %i.ako, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.akm) #30
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i: ; preds = %bb.iu, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.akp = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !57 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %46, i64 56
  %i.aks = icmp eq ptr %i.akq, %i.akr
  br i1 %i.aks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.akq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.akt = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !57 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %46, i64 24
end_hunk_0
