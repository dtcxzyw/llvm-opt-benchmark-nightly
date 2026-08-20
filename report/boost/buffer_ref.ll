inline.NumInlined: 4778
inline.NumDeleted: 1324
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_:bb.a
  %i.ahc = icmp ult i64 %.040.i.i513, %i.ahb
  br i1 %i.ahc, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %.preheader.i.i511
  %i.ahd = sub nuw i64 %i.ahb, %.040.i.i513       ; 2 uses
  %.not47.i.i521 = icmp ugt i64 %i.agj, %i.ahd
  br i1 %.not47.i.i521, label %bb.ey, label %.thread.i.i522

.thread.i.i522:                                   ; preds = %bb.ex
  %i.ahe = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !68, !noalias !992
  %i.ahf = add i64 %.040.i.i513, %i.agj
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

bb.ey:                                            ; preds = %bb.ex
  %i.ahg = sub nuw i64 %i.agj, %i.ahd             ; 2 uses
  %.sroa.073.2115.i.i523 = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !68, !noalias !992 ; 3 uses
  %i.ahh = icmp eq ptr %.sroa.073.2115.i.i523, %i.agp
  br i1 %i.ahh, label %._crit_edge.i.i529, label %.lr.ph.i.i524

bb.ez:                                            ; preds = %.preheader.i.i511
  %i.ahi = sub nuw i64 %.040.i.i513, %i.ahb       ; 5 uses
  %i.ahj = load ptr, ptr %.sroa.073.0.i.i512, align 8, !tbaa !68, !noalias !992 ; 4 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.agp
  br i1 %i.ahk, label %bb.fa, label %.preheader.i.i511, !llvm.loop !82

bb.fa:                                            ; preds = %bb.ez
  %.not.i.i514 = icmp ult i64 %i.ahi, %.0.i.i.i510
  br i1 %.not.i.i514, label %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519, label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519: ; preds = %bb.fa
  %i.ahl = load ptr, ptr %i.ahj, align 8, !tbaa !68, !noalias !992
  %i.ahm = sub nuw i64 %.0.i.i.i510, %i.ahi
  %i.ahn = icmp ult i64 %i.agj, %i.ahm
  %i.aho = add i64 %i.ahi, %i.agj
  %spec.select1.i520 = select i1 %i.ahn, i64 %i.aho, i64 %.0.i.i.i510
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

._crit_edge.i.i529:                               ; preds = %bb.fc, %bb.ey
  %.1.lcssa.i.i530 = phi i64 [ %i.ahg, %bb.ey ], [ %i.aht, %bb.fc ]
  %.sroa.073.2.lcssa.i.i531 = phi ptr [ %.sroa.073.2115.i.i523, %bb.ey ], [ %.sroa.073.2.i.i528, %bb.fc ]
  %i.ahp = load ptr, ptr %.sroa.073.2.lcssa.i.i531, align 8, !tbaa !68, !noalias !992
  %spec.select2.i532 = call i64 @llvm.umin.i64(i64 %.1.lcssa.i.i530, i64 %.0.i.i.i510)
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

.lr.ph.i.i524:                                    ; preds = %bb.ey, %bb.fc
  %.sroa.073.2117.i.i525 = phi ptr [ %.sroa.073.2.i.i528, %bb.fc ], [ %.sroa.073.2115.i.i523, %bb.ey ] ; 3 uses
  %.1116.i.i526 = phi i64 [ %i.aht, %bb.fc ], [ %i.ahg, %bb.ey ] ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.073.2117.i.i525, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !62, !noalias !992 ; 2 uses
  %.not48.i.i527 = icmp ugt i64 %.1116.i.i526, %i.ahr
  br i1 %.not48.i.i527, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i524
  %i.ahs = load ptr, ptr %.sroa.073.2117.i.i525, align 8, !tbaa !68, !noalias !992
  br label %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536

bb.fc:                                            ; preds = %.lr.ph.i.i524
  %i.aht = sub nuw i64 %.1116.i.i526, %i.ahr      ; 2 uses
  %.sroa.073.2.i.i528 = load ptr, ptr %.sroa.073.2117.i.i525, align 8, !tbaa !68, !noalias !992 ; 3 uses
  %i.ahu = icmp eq ptr %.sroa.073.2.i.i528, %i.agp
  br i1 %i.ahu, label %._crit_edge.i.i529, label %.lr.ph.i.i524, !llvm.loop !83

_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507, %bb.ew, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534, %.thread.i.i522, %bb.fa, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519, %._crit_edge.i.i529, %bb.fb
  %.sroa.4.0.i515 = phi ptr [ %.sroa.073.0.i.i512, %.thread.i.i522 ], [ %i.ai, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ %i.ai, %bb.ew ], [ %i.ai, %bb.fa ], [ %.sroa.073.0.i.i512, %._crit_edge.i.i529 ], [ %i.agl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahj, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.sroa.073.0.i.i512, %bb.fb ]
  %.sroa.23.0.i516 = phi i64 [ %.040.i.i513, %.thread.i.i522 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ 0, %bb.ew ], [ 0, %bb.fa ], [ %.040.i.i513, %._crit_edge.i.i529 ], [ %i.agk, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahi, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.040.i.i513, %bb.fb ]
  %.sroa.31.0.i517 = phi i64 [ %i.ahf, %.thread.i.i522 ], [ 0, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ 0, %bb.ew ], [ 0, %bb.fa ], [ %spec.select2.i532, %._crit_edge.i.i529 ], [ %spec.select.i535, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %spec.select1.i520, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %.1116.i.i526, %bb.fb ]
  %.sroa.13.0.i518 = phi ptr [ %i.ahe, %.thread.i.i522 ], [ %i.ai, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEvEEmRKT_.exit507 ], [ %i.ai, %bb.ew ], [ %i.ai, %bb.fa ], [ %i.ahp, %._crit_edge.i.i529 ], [ %i.agw, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit56.i.i534 ], [ %i.ahl, %_ZSt4nextIN5boost9intrusive13list_iteratorINS1_8bhtraitsINS0_5beast18basic_multi_bufferISaIcEE7elementENS1_16list_node_traitsIPvEELNS1_14link_mode_typeE0ENS1_7dft_tagELj1EEELb1EEEET_SG_NSt15iterator_traitsISG_E15difference_typeE.exit.i.i519 ], [ %i.ahs, %bb.fb ]
  store ptr %0, ptr %40, align 8, !tbaa !84, !alias.scope !992
  %i.ahv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %.sroa.4.0.i515, ptr %i.ahv, align 8, !tbaa !87, !alias.scope !992
  %i.ahw = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %.sroa.13.0.i518, ptr %i.ahw, align 8, !tbaa !87, !alias.scope !992
  %i.ahx = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i64 %.sroa.23.0.i516, ptr %i.ahx, align 8, !tbaa !88, !alias.scope !992
  %i.ahy = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 %.sroa.31.0.i517, ptr %i.ahy, align 8, !tbaa !89, !alias.scope !992
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_18basic_multi_bufferISaIcEE8subrangeILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  br i1 %.not.i409, label %._crit_edge1275, label %.preheader978.lr.ph

.preheader978.lr.ph:                              ; preds = %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536
  %i.ahz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %41, i64 32
  %i.aic = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.phi.trans.insert.i.i566 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 10 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 7 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ain = add nuw nsw i64 %spec.select, 3
  %xtraiter2475 = and i64 %spec.select, 3         ; 3 uses
  %i.aio = icmp ult i64 %i.zh, 4
  %unroll_iter2479 = and i64 %spec.select, 12
  %lcmp.mod2477.not = icmp eq i64 %xtraiter2475, 0
  %lcmp.mod2478 = icmp ne i64 %xtraiter2475, 0
  br label %.preheader978

.preheader978:                                    ; preds = %.preheader978.lr.ph, %bb.fd
  %indvars.iv1532 = phi i64 [ 4, %.preheader978.lr.ph ], [ %indvars.iv.next1533, %bb.fd ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader978.lr.ph ], [ %indvars.iv.next, %bb.fd ] ; 2 uses
  %.0391274 = phi i64 [ 1, %.preheader978.lr.ph ], [ %i.aiq, %bb.fd ] ; 5 uses
  %.01273 = phi i8 [ 1, %.preheader978.lr.ph ], [ %i.ais, %bb.fd ]
  br label %.preheader.preheader

._crit_edge1275:                                  ; preds = %bb.fd, %_ZNK5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE4dataEv.exit536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #31
  ret void

.loopexit977:                                     ; preds = %bb.fe
  %indvars.iv.next1530 = add nuw nsw i64 %indvars.iv1529, 1 ; 2 uses
  %exitcond1534 = icmp eq i64 %indvars.iv.next1530, %indvars.iv1532
  br i1 %exitcond1534, label %bb.fd, label %.preheader.preheader, !llvm.loop !1003

.preheader.preheader:                             ; preds = %.loopexit977, %.preheader978
  %indvars.iv1529 = phi i64 [ 3, %.preheader978 ], [ %indvars.iv.next1530, %.loopexit977 ] ; 2 uses
  %storemerge1271 = phi i64 [ 1, %.preheader978 ], [ %i.aip, %.loopexit977 ] ; 2 uses
  %.11270 = phi i8 [ %.01273, %.preheader978 ], [ %i.ais, %.loopexit977 ]
  %i.aip = add nuw nsw i64 %storemerge1271, 1
  br label %.preheader

bb.fd:                                            ; preds = %.loopexit977
  %i.aiq = add nuw nsw i64 %.0391274, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next1533 = add nuw nsw i64 %indvars.iv1532, 1
  %exitcond1535.not = icmp eq i64 %indvars.iv1532, %i.ain
  br i1 %exitcond1535.not, label %._crit_edge1275, label %.preheader978, !llvm.loop !1004

.preheader:                                       ; preds = %.preheader.preheader, %bb.fe
  %storemerge521268 = phi i64 [ %i.air, %bb.fe ], [ 1, %.preheader.preheader ] ; 2 uses
  %.21267 = phi i8 [ %i.ais, %bb.fe ], [ %.11270, %.preheader.preheader ]
  br label %.lr.ph.i538.preheader

bb.fe:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770
  %i.air = add nuw nsw i64 %storemerge521268, 1   ; 2 uses
  %exitcond1531 = icmp eq i64 %i.air, %indvars.iv1529
  br i1 %exitcond1531, label %.loopexit977, label %.preheader, !llvm.loop !1005

.lr.ph.i538.preheader:                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770, %.preheader
  %.0381265 = phi i64 [ 1, %.preheader ], [ %i.awi, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770 ] ; 3 uses
  %.31264 = phi i8 [ %.21267, %.preheader ], [ %i.ais, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit770 ] ; 3 uses
  %i.ais = add i8 %.31264, 1                      ; 4 uses
  br i1 %i.aio, label %.lr.ph.i538.epil.preheader, label %.lr.ph.i538

.lr.ph.i538:                                      ; preds = %.lr.ph.i538.preheader, %.lr.ph.i538
  %.06.i539 = phi i64 [ %i.aje, %.lr.ph.i538 ], [ 0, %.lr.ph.i538.preheader ] ; 5 uses
  %.045.i540 = phi i8 [ %i.ajb, %.lr.ph.i538 ], [ %.31264, %.lr.ph.i538.preheader ] ; 5 uses
  %niter2480 = phi i64 [ %niter2480.next.3, %.lr.ph.i538 ], [ 0, %.lr.ph.i538.preheader ]
  %i.ait = add i8 %.045.i540, 1
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  store i8 %.045.i540, ptr %i.aiu, align 1, !tbaa !17
  %i.aiv = add i8 %.045.i540, 2
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1
  store i8 %i.ait, ptr %i.aix, align 1, !tbaa !17
  %i.aiy = add i8 %.045.i540, 3
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  store i8 %i.aiv, ptr %i.aja, align 1, !tbaa !17
  %i.ajb = add i8 %.045.i540, 4                   ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 3
  store i8 %i.aiy, ptr %i.ajd, align 1, !tbaa !17
  %i.aje = add nuw nsw i64 %.06.i539, 4           ; 2 uses
  %niter2480.next.3 = add i64 %niter2480, 4       ; 2 uses
  %niter2480.ncmp.3 = icmp eq i64 %niter2480.next.3, %unroll_iter2479
  br i1 %niter2480.ncmp.3, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa, label %.lr.ph.i538, !llvm.loop !962

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa: ; preds = %.lr.ph.i538
  br i1 %lcmp.mod2477.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, label %.lr.ph.i538.epil.preheader

.lr.ph.i538.epil.preheader:                       ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa, %.lr.ph.i538.preheader
  %.06.i539.epil.init = phi i64 [ 0, %.lr.ph.i538.preheader ], [ %i.aje, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa ]
  %.045.i540.epil.init = phi i8 [ %.31264, %.lr.ph.i538.preheader ], [ %i.ajb, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2478)
  br label %.lr.ph.i538.epil

.lr.ph.i538.epil:                                 ; preds = %.lr.ph.i538.epil, %.lr.ph.i538.epil.preheader
  %.06.i539.epil = phi i64 [ %i.ajh, %.lr.ph.i538.epil ], [ %.06.i539.epil.init, %.lr.ph.i538.epil.preheader ] ; 2 uses
  %.045.i540.epil = phi i8 [ %i.ajf, %.lr.ph.i538.epil ], [ %.045.i540.epil.init, %.lr.ph.i538.epil.preheader ] ; 2 uses
  %epil.iter2476 = phi i64 [ %epil.iter2476.next, %.lr.ph.i538.epil ], [ 0, %.lr.ph.i538.epil.preheader ]
  %i.ajf = add i8 %.045.i540.epil, 1
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06.i539.epil
  store i8 %.045.i540.epil, ptr %i.ajg, align 1, !tbaa !17
  %i.ajh = add nuw nsw i64 %.06.i539.epil, 1
  %epil.iter2476.next = add i64 %epil.iter2476, 1 ; 2 uses
  %epil.iter2476.cmp.not = icmp eq i64 %epil.iter2476.next, %xtraiter2475
  br i1 %epil.iter2476.cmp.not, label %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, label %.lr.ph.i538.epil, !llvm.loop !1006

_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541: ; preds = %.lr.ph.i538.epil, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541.unr-lcssa
  %i.aji = load i64, ptr %i.z, align 8, !tbaa !50 ; 5 uses
  br label %.lr.ph.i.i545

.lr.ph.i.i545:                                    ; preds = %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587
  %.sroa.0815.01260 = phi ptr [ %i.s, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541 ], [ %i.ali, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587 ] ; 2 uses
  %.sroa.7817.01259 = phi i64 [ %.0391274, %_ZZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_18basic_multi_bufferISaIcEEEEEEEvT_ENKUlvE_clEv.exit541 ], [ %i.alj, %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  %i.ajj = load i64, ptr %0, align 8, !tbaa !60
  %i.ajk = load i64, ptr %i.z, align 8, !tbaa !50
  %i.ajl = sub i64 %i.ajj, %i.ajk
  %.sroa.speculated812 = call i64 @llvm.umin.i64(i64 %i.ajl, i64 %storemerge1271)
  call void @_ZN5boost5beast18basic_multi_bufferISaIcEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::basic_multi_buffer<std::allocator<char>>::subrange.4") align 8 %41, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %.sroa.speculated812)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.ajm = load ptr, ptr %i.ahz, align 8, !tbaa !161, !noalias !1013
  store ptr %i.ajm, ptr %.sroa.25.i543, align 8, !tbaa !87, !alias.scope !1013
  %i.ajn = load ptr, ptr %i.aia, align 8, !tbaa !161, !noalias !1014
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7817.01259, i64 %storemerge521268)
  br label %bb.ff

bb.ff:                                            ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, %.lr.ph.i.i545
  %.sroa.5.020.in.i.i546 = phi ptr [ %.sroa.25.i543, %.lr.ph.i.i545 ], [ %.sroa.5.020.i.i550, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ]
  %.019.i.i547 = phi i64 [ 0, %.lr.ph.i.i545 ], [ %i.ajz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.07.018.i.i548 = phi ptr [ %.sroa.0815.01260, %.lr.ph.i.i545 ], [ %i.aka, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.6.017.i.i549 = phi i64 [ %.sroa.speculated, %.lr.ph.i.i545 ], [ %i.akb, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ] ; 2 uses
  %.sroa.5.020.i.i550 = load ptr, ptr %.sroa.5.020.in.i.i546, align 8, !tbaa !337 ; 6 uses
  %.not.i551 = icmp eq ptr %.sroa.5.020.i.i550, %i.ajn
  br i1 %.not.i551, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ajo = load ptr, ptr %i.aia, align 8, !tbaa !161
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !80
  %i.ajr = icmp eq ptr %.sroa.5.020.i.i550, %i.ajq
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i550, i64 16
  %.sroa.6.0.in.i.i.i552 = select i1 %i.ajr, ptr %i.aib, ptr %i.ajs
  %.sroa.6.0.i.i.i553 = load i64, ptr %.sroa.6.0.in.i.i.i552, align 8, !tbaa !13 ; 3 uses
  %.sroa.07.0.i.i.i554 = getelementptr inbounds nuw i8, ptr %.sroa.5.020.i.i550, i64 24 ; 2 uses
  %i.ajt = load ptr, ptr %i.ahz, align 8, !tbaa !161
  %i.aju = icmp eq ptr %.sroa.5.020.i.i550, %i.ajt
  br i1 %i.aju, label %bb.fh, label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555

bb.fh:                                            ; preds = %bb.fg
  %i.ajv = load i64, ptr %i.aic, align 8, !tbaa !162
  %..i.i.i.i562 = call i64 @llvm.umin.i64(i64 %i.ajv, i64 %.sroa.6.0.i.i.i553) ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i554, i64 %..i.i.i.i562
  %i.ajx = sub i64 %.sroa.6.0.i.i.i553, %..i.i.i.i562
  br label %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555

_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555: ; preds = %bb.fh, %bb.fg
  %.sroa.07.1.i.i.i556 = phi ptr [ %i.ajw, %bb.fh ], [ %.sroa.07.0.i.i.i554, %bb.fg ]
  %.sroa.6.1.i.i.i557 = phi i64 [ %i.ajx, %bb.fh ], [ %.sroa.6.0.i.i.i553, %bb.fg ] ; 2 uses
  %i.ajy = call i64 @llvm.umin.i64(i64 %.sroa.6.1.i.i.i557, i64 %.sroa.6.017.i.i549) ; 4 uses
  %.not.i.i.i558 = icmp eq i64 %.sroa.6.1.i.i.i557, 0
  br i1 %.not.i.i.i558, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, label %bb.fi

bb.fi:                                            ; preds = %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.07.1.i.i.i556, ptr align 1 %.sroa.07.018.i.i548, i64 %i.ajy, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559: ; preds = %bb.fi, %_ZNK5boost5beast18basic_multi_bufferISaIcEE8subrangeILb1EE14const_iteratordeEv.exit.i.i555
  %i.ajz = add i64 %i.ajy, %.019.i.i547           ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i.i548, i64 %i.ajy
  %i.akb = sub i64 %.sroa.6.017.i.i549, %i.ajy    ; 2 uses
  %.not.i.i560 = icmp eq i64 %i.akb, 0
  br i1 %.not.i.i560, label %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563, label %bb.ff, !llvm.loop !873

_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559, %bb.ff
  %.0.lcssa.i.i561.ph = phi i64 [ %i.ajz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i559 ], [ %.019.i.i547, %bb.ff ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i543)
  %i.akc = load ptr, ptr %i.ai, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i564 = icmp eq ptr %i.akc, null
  %i.akd = icmp eq ptr %i.akc, %i.ai
  %i.ake = or i1 %.not.i.i.i.i564, %i.akd
  br i1 %i.ake, label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587, label %bb.fj

bb.fj:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563
  %i.akf = load ptr, ptr %i.aid, align 8, !tbaa !61 ; 5 uses
  %i.akg = icmp eq ptr %i.akf, %i.ai
  br i1 %i.akg, label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.akh = load ptr, ptr %i.aie, align 8, !tbaa !80 ; 3 uses
  %.not1419.i.i565 = icmp eq ptr %i.akf, %i.akh
  %.pre.i.i584 = load i64, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !67 ; 3 uses
  %.pre31.i.i586 = load i64, ptr %i.z, align 8    ; 3 uses
  br i1 %.not1419.i.i565, label %._crit_edge.i.i576, label %.lr.ph.i.i567

.lr.ph.i.i567:                                    ; preds = %bb.fk
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akf, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !62
  %i.akk = sub i64 %i.akj, %.pre.i.i584           ; 3 uses
  %.not.peel.i.i570 = icmp ult i64 %.0.lcssa.i.i561.ph, %i.akk
  br i1 %.not.peel.i.i570, label %.thread.i.i580, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i567
  %i.akl = load ptr, ptr %i.akf, align 8, !tbaa !68 ; 4 uses
  store ptr %i.akl, ptr %i.aid, align 8, !tbaa !61
  %i.akm = sub nuw i64 %.0.lcssa.i.i561.ph, %i.akk ; 2 uses
  %i.akn = add i64 %i.akk, %.pre31.i.i586         ; 2 uses
  %.not14.peel.i.i571 = icmp eq ptr %i.akl, %i.akh
  br i1 %.not14.peel.i.i571, label %._crit_edge.i.i576, label %.peel.next.i.i572

.peel.next.i.i572:                                ; preds = %bb.fl, %bb.fm
  %i.ako = phi i64 [ %i.akx, %bb.fm ], [ %i.akn, %bb.fl ] ; 2 uses
  %.020.i.i573 = phi i64 [ %i.akw, %bb.fm ], [ %i.akm, %bb.fl ] ; 3 uses
  %i.akp = phi ptr [ %i.akv, %bb.fm ], [ %i.akl, %bb.fl ] ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !62 ; 3 uses
  %.not.i.i574 = icmp ult i64 %.020.i.i573, %i.akr
  br i1 %.not.i.i574, label %.thread.i.i580, label %bb.fm

.thread.i.i580:                                   ; preds = %.peel.next.i.i572, %.lr.ph.i.i567
  %i.aks = phi i64 [ %.pre31.i.i586, %.lr.ph.i.i567 ], [ %i.ako, %.peel.next.i.i572 ]
  %.lcssa25.i.i581 = phi i64 [ %.pre.i.i584, %.lr.ph.i.i567 ], [ 0, %.peel.next.i.i572 ]
  %.020.lcssa.i.i582 = phi i64 [ %.0.lcssa.i.i561.ph, %.lr.ph.i.i567 ], [ %.020.i.i573, %.peel.next.i.i572 ] ; 2 uses
  %i.akt = add i64 %.020.lcssa.i.i582, %.lcssa25.i.i581
  store i64 %i.akt, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !67
  %i.aku = add i64 %.020.lcssa.i.i582, %i.aks
  store i64 %i.aku, ptr %i.z, align 8, !tbaa !50
  br label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587

bb.fm:                                            ; preds = %.peel.next.i.i572
  %i.akv = load ptr, ptr %i.akp, align 8, !tbaa !68 ; 4 uses
  store ptr %i.akv, ptr %i.aid, align 8, !tbaa !61
  %i.akw = sub nuw i64 %.020.i.i573, %i.akr       ; 2 uses
  %i.akx = add i64 %i.akr, %i.ako                 ; 2 uses
  %.not14.i.i575 = icmp eq ptr %i.akv, %i.akh
  br i1 %.not14.i.i575, label %._crit_edge.i.i576, label %.peel.next.i.i572, !llvm.loop !100

._crit_edge.i.i576:                               ; preds = %bb.fm, %bb.fk, %bb.fl
  %i.aky = phi i64 [ %.pre31.i.i586, %bb.fk ], [ %i.akn, %bb.fl ], [ %i.akx, %bb.fm ]
  %i.akz = phi i64 [ %.pre.i.i584, %bb.fk ], [ 0, %bb.fl ], [ 0, %bb.fm ] ; 2 uses
  %.0.lcssa.i.i577 = phi i64 [ %.0.lcssa.i.i561.ph, %bb.fk ], [ %i.akm, %bb.fl ], [ %i.akw, %bb.fm ]
  %.lcssa.i.i578 = phi ptr [ %i.akf, %bb.fk ], [ %i.akl, %bb.fl ], [ %i.akv, %bb.fm ] ; 2 uses
  %i.ala = load i64, ptr %i.aif, align 8, !tbaa !81
  %i.alb = sub i64 %i.ala, %i.akz
  %.sroa.speculated.i.i579 = call i64 @llvm.umin.i64(i64 %i.alb, i64 %.0.lcssa.i.i577) ; 2 uses
  %i.alc = add i64 %.sroa.speculated.i.i579, %i.akz ; 2 uses
  store i64 %i.alc, ptr %.phi.trans.insert.i.i566, align 8, !tbaa !67
  %i.ald = add i64 %.sroa.speculated.i.i579, %i.aky
  store i64 %i.ald, ptr %i.z, align 8, !tbaa !50
  %i.ale = getelementptr inbounds nuw i8, ptr %.lcssa.i.i578, i64 16
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !62
  %i.alg = icmp eq i64 %i.alc, %i.alf
  br i1 %i.alg, label %bb.fn, label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587

bb.fn:                                            ; preds = %._crit_edge.i.i576
  %i.alh = load ptr, ptr %.lcssa.i.i578, align 8, !tbaa !68
  store ptr %i.alh, ptr %i.aid, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.phi.trans.insert.i.i566, i8 0, i64 16, i1 false)
  br label %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587

_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587: ; preds = %_ZN5boost4asio11buffer_copyINS_5beast18basic_multi_bufferISaIcEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit563, %bb.fj, %.thread.i.i580, %._crit_edge.i.i576, %bb.fn
  %..i588 = call i64 @llvm.umin.i64(i64 %.0.lcssa.i.i561.ph, i64 %.sroa.7817.01259) ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %.sroa.0815.01260, i64 %..i588
  %i.alj = sub i64 %.sroa.7817.01259, %..i588     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %.not55 = icmp eq i64 %i.alj, 0
  br i1 %.not55, label %bb.fo, label %.lr.ph.i.i545, !llvm.loop !1019

bb.fo:                                            ; preds = %_ZN5boost5beast10buffer_refINS0_18basic_multi_bufferISaIcEEEE6commitEm.exit587
  %i.alk = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !200 ; 7 uses
  %i.all = load i64, ptr %i.z, align 8, !tbaa !50
  %i.alm = add i64 %i.aji, %.0391274              ; 2 uses
  %i.aln = icmp eq i64 %i.all, %i.alm
  br i1 %i.aln, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %bb.fo
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.alp = load i8, ptr %i.alo, align 8, !tbaa !206, !range !186, !noundef !24
  %i.alq = trunc nuw i8 %i.alp to i1
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alk, i64 9
  %i.als = load i8, ptr %i.alr, align 1, !range !186
  %i.alt = trunc nuw i8 %i.als to i1
  %or.cond.i.i.i = select i1 %i.alq, i1 %i.alt, i1 false
  br i1 %or.cond.i.i.i, label %bb.fq, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %17, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr @.str.36, ptr %18, align 8, !tbaa !32
  %i.alu = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.37, ptr %i.alu, align 8, !tbaa !34
  %i.alv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 592, ptr %i.alv, align 8, !tbaa !35
  %i.alw = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 48, ptr %i.alw, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(24) %18) #33
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  unreachable

bb.fs:                                            ; preds = %bb.fq
  %i.alx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.fp
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alk, i64 16
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !221
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.alz)
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.ft:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 763)
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alk, i64 8 ; 2 uses
  %i.amb = load i8, ptr %i.ama, align 8, !tbaa !206, !range !186, !noundef !24
  %i.amc = trunc nuw i8 %i.amb to i1
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alk, i64 9
  %i.ame = load i8, ptr %i.amd, align 1, !range !186
  %i.amf = trunc nuw i8 %i.ame to i1
  %or.cond.i.i771 = select i1 %i.amc, i1 %i.amf, i1 false
  br i1 %or.cond.i.i771, label %bb.fu, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %5, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr @.str.36, ptr %6, align 8, !tbaa !32
  %i.amg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.37, ptr %i.amg, align 8, !tbaa !34
  %i.amh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 592, ptr %i.amh, align 8, !tbaa !35
  %i.ami = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 48, ptr %i.ami, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #33
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.amj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body774

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %bb.ft
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alk, i64 16
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !221
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.aml, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc776 unwind label %bb.ga

.noexc776:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.amm = load i8, ptr %i.ama, align 8, !tbaa !206, !range !186, !noundef !24
  %i.amn = trunc nuw i8 %i.amm to i1
  br i1 %i.amn, label %bb.fx, label %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fx:                                            ; preds = %.noexc776
  %i.amo = getelementptr inbounds nuw i8, ptr %i.alk, i64 9
  store i8 1, ptr %i.amo, align 1, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %7, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr @.str.36, ptr %8, align 8, !tbaa !32
  %i.amp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.39, ptr %i.amp, align 8, !tbaa !34
  %i.amq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 574, ptr %i.amq, align 8, !tbaa !35
  %i.amr = getelementptr inbounds nuw i8, ptr %8, i64 20
end_hunk_0
begin_hunk_1_@_ZN5boost5beast23test_dynamic_buffer_refINS0_10buffer_refINS0_13static_bufferILm1024EEEEEEEvT_:bb.a
  %i.lo = getelementptr inbounds nuw i8, ptr %.09.i.i.i141, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !118
  %i.lq = add i64 %i.lp, %.068.i.i.i142           ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.09.i.i.i141, i64 16 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.lr, %.0.v.i.i.i.i138.sroa.sel
  br i1 %.not.i.i.i143, label %.lr.ph.preheader.i.i149, label %.lr.ph.i.i.i140, !llvm.loop !1393

.lr.ph.preheader.i.i149:                          ; preds = %.lr.ph.i.i.i140
  %i.ls = icmp eq i64 %i.lq, 13
  %i.lt = zext i1 %i.ls to i8
  store i8 %i.lt, ptr %i.v, align 1, !tbaa !309
  %i.lu = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.ll, ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 725) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #31
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_6detail12buffers_pairILb1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %59)
  %i.lv = load i64, ptr %i.lm, align 8, !tbaa !118
  %.not.i.i.i145 = icmp eq i64 %i.lv, 0
  %.0.v.i.i.i146.sroa.sel = select i1 %.not.i.i.i145, ptr %.sroa.gep361, ptr %.sroa.gep362
  br label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159, %.lr.ph.preheader.i.i149
  %.018.i.i151 = phi i64 [ %i.lx, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159 ], [ 0, %.lr.ph.preheader.i.i149 ]
  %.01017.i.i152 = phi ptr [ %i.ma, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159 ], [ %59, %.lr.ph.preheader.i.i149 ] ; 3 uses
  %.sroa.011.016.i.i153 = phi ptr [ %i.ly, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159 ], [ %i.r, %.lr.ph.preheader.i.i149 ] ; 2 uses
  %.sroa.6.015.i.i154 = phi i64 [ %i.lz, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159 ], [ 13, %.lr.ph.preheader.i.i149 ] ; 2 uses
  %.sroa.4.0..010.sroa_idx.i.i155 = getelementptr inbounds nuw i8, ptr %.01017.i.i152, i64 8
  %.sroa.4.0.copyload.i.i156 = load i64, ptr %.sroa.4.0..010.sroa_idx.i.i155, align 8, !tbaa !13 ; 2 uses
  %i.lw = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i156, i64 %.sroa.6.015.i.i154) ; 4 uses
  %.not.i.i4.i157 = icmp eq i64 %.sroa.4.0.copyload.i.i156, 0
  br i1 %.not.i.i4.i157, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i150
  %.sroa.0.0.copyload.i.i158 = load ptr, ptr %.01017.i.i152, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i158, ptr align 1 %.sroa.011.016.i.i153, i64 %i.lw, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159: ; preds = %bb.am, %.lr.ph.i.i150
  %i.lx = add i64 %i.lw, %.018.i.i151             ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i153, i64 %i.lw
  %i.lz = sub i64 %.sroa.6.015.i.i154, %i.lw      ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.01017.i.i152, i64 16 ; 2 uses
  %i.mb = icmp ne i64 %i.lz, 0
  %i.mc = icmp ne ptr %i.ma, %.0.v.i.i.i146.sroa.sel
  %i.md = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %i.md, label %.lr.ph.i.i150, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit161, !llvm.loop !1370

_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit161: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i159
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.lx) #31
  %i.me = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31, !noalias !1394
  call void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair.6") align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %0) #31, !noalias !1394
  %i.mf = load ptr, ptr %29, align 8, !tbaa !116, !noalias !1394
  %i.mg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !118, !noalias !1394
  %i.mi = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !116, !noalias !1394
  %i.mk = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !118, !noalias !1394 ; 2 uses
  store ptr %i.mf, ptr %60, align 8, !tbaa !119, !alias.scope !1394
  %.sroa.22.0..sroa_idx.i.i.i162 = getelementptr inbounds nuw i8, ptr %60, i64 8
  store i64 %i.mh, ptr %.sroa.22.0..sroa_idx.i.i.i162, align 8, !tbaa !13, !alias.scope !1394
  %i.mm = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  store ptr %i.mj, ptr %i.mm, align 8, !tbaa !119, !alias.scope !1394
  %.sroa.2.0..sroa_idx.i.i.i163 = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i64 %i.ml, ptr %.sroa.2.0..sroa_idx.i.i.i163, align 8, !tbaa !13, !alias.scope !1394
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31, !noalias !1394
  %.not.i.i.i.i164 = icmp eq i64 %i.ml, 0
  %.sroa.gep358 = getelementptr inbounds nuw i8, ptr %60, i64 32
  %.0.v.i.i.i.i165.sroa.sel = select i1 %.not.i.i.i.i164, ptr %i.mm, ptr %.sroa.gep358
  br label %.lr.ph.i.i.i167

.lr.ph.i.i.i167:                                  ; preds = %.lr.ph.i.i.i167, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit161
  %.09.i.i.i168 = phi ptr [ %i.mo, %.lr.ph.i.i.i167 ], [ %60, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit161 ] ; 2 uses
  %.068.i.i.i169 = phi i64 [ %i.mn, %.lr.ph.i.i.i167 ], [ 0, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit161 ]
  %.sroa.3.0..0.sroa_idx.i.i.i170 = getelementptr inbounds nuw i8, ptr %.09.i.i.i168, i64 8
  %.sroa.3.0.copyload.i.i.i171 = load i64, ptr %.sroa.3.0..0.sroa_idx.i.i.i170, align 8, !tbaa !13
  %i.mn = add i64 %.sroa.3.0.copyload.i.i.i171, %.068.i.i.i169 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.09.i.i.i168, i64 16 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.mo, %.0.v.i.i.i.i165.sroa.sel
  br i1 %.not.i.i.i172, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173, label %.lr.ph.i.i.i167, !llvm.loop !1369

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173: ; preds = %.lr.ph.i.i.i167
  %i.mp = icmp eq i64 %i.mn, 13
  %i.mq = zext i1 %i.mp to i8
  store i8 %i.mq, ptr %i.w, align 1, !tbaa !309
  %i.mr = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.me, ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 730) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31, !noalias !1397
  call void @_ZN5boost5beast18static_buffer_base4dataEv(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair.6") align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %0) #31, !noalias !1397
  %i.ms = load ptr, ptr %28, align 8, !tbaa !116, !noalias !1397
  %i.mt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !118, !noalias !1397
  %i.mv = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !116, !noalias !1397
  %i.mx = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !118, !noalias !1397
  store ptr %i.ms, ptr %61, align 8, !tbaa !119, !alias.scope !1397
  %.sroa.22.0..sroa_idx.i.i.i174 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %i.mu, ptr %.sroa.22.0..sroa_idx.i.i.i174, align 8, !tbaa !13, !alias.scope !1397
  %i.mz = getelementptr inbounds nuw i8, ptr %61, i64 16
  store ptr %i.mw, ptr %i.mz, align 8, !tbaa !119, !alias.scope !1397
  %.sroa.2.0..sroa_idx.i.i.i175 = getelementptr inbounds nuw i8, ptr %61, i64 24
  store i64 %i.my, ptr %.sroa.2.0..sroa_idx.i.i.i175, align 8, !tbaa !13, !alias.scope !1397
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31, !noalias !1397
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_6detail12buffers_pairILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #31
  %i.na = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.nb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ne = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.22.0..sroa_idx.i.i.i200 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i201 = getelementptr inbounds nuw i8, ptr %63, i64 24
  %.sroa.gep320 = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.nj = getelementptr inbounds nuw i8, ptr %26, i64 24
  %.sroa.22.0..sroa_idx.i.i.i212 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i213 = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  %.sroa.gep315 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %25, i64 24
  %.sroa.22.0..sroa_idx.i.i.i239 = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.nt = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i240 = getelementptr inbounds nuw i8, ptr %67, i64 24
  %.sroa.gep313 = getelementptr inbounds nuw i8, ptr %67, i64 32
  %i.nu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  br label %.preheader446

.preheader446:                                    ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173, %bb.ao
  %indvars.iv740 = phi i64 [ 4, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173 ], [ %indvars.iv.next741, %bb.ao ] ; 2 uses
  %indvars.iv = phi i64 [ 2, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173 ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.039630 = phi i64 [ 1, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173 ], [ %i.nw, %bb.ao ] ; 5 uses
  %.0629 = phi i8 [ 1, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_12buffers_pairILb0EEEvEEmRKT_.exit173 ], [ %i.ob, %bb.ao ]
  br label %.preheader.preheader

bb.an:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #31
  ret void

.loopexit445:                                     ; preds = %bb.ap
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %exitcond742 = icmp eq i64 %indvars.iv.next738, %indvars.iv740
  br i1 %exitcond742, label %bb.ao, label %.preheader.preheader, !llvm.loop !1400

.preheader.preheader:                             ; preds = %.loopexit445, %.preheader446
  %indvars.iv737 = phi i64 [ 3, %.preheader446 ], [ %indvars.iv.next738, %.loopexit445 ] ; 2 uses
  %storemerge628 = phi i64 [ 1, %.preheader446 ], [ %i.nv, %.loopexit445 ] ; 2 uses
  %.1627 = phi i8 [ %.0629, %.preheader446 ], [ %i.ob, %.loopexit445 ]
  %i.nv = add nuw nsw i64 %storemerge628, 1
  br label %.preheader

bb.ao:                                            ; preds = %.loopexit445
  %i.nw = add nuw nsw i64 %.039630, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next741 = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %exitcond743 = icmp eq i64 %indvars.iv.next741, 17
  br i1 %exitcond743, label %bb.an, label %.preheader446, !llvm.loop !1401

.preheader:                                       ; preds = %.preheader.preheader, %bb.ap
  %storemerge52625 = phi i64 [ %i.nx, %bb.ap ], [ 1, %.preheader.preheader ] ; 2 uses
  %.2624 = phi i8 [ %i.ob, %bb.ap ], [ %.1627, %.preheader.preheader ]
  br label %.lr.ph.i177

bb.ap:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit290
  %i.nx = add nuw nsw i64 %storemerge52625, 1     ; 2 uses
  %exitcond739 = icmp eq i64 %i.nx, %indvars.iv737
  br i1 %exitcond739, label %.loopexit445, label %.preheader, !llvm.loop !1402

.lr.ph.i177:                                      ; preds = %.preheader, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit290
  %.038622 = phi i64 [ 1, %.preheader ], [ %i.wz, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit290 ] ; 2 uses
  %.3621 = phi i8 [ %.2624, %.preheader ], [ %i.ob, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit290 ] ; 4 uses
  %i.ny = insertelement <8 x i8> poison, i8 %.3621, i64 0
  %i.nz = shufflevector <8 x i8> %i.ny, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.oa = add <8 x i8> %i.nz, <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>
  %i.ob = add i8 %.3621, 1                        ; 4 uses
  store i8 %.3621, ptr %i.r, align 8, !tbaa !17
  %i.oc = insertelement <4 x i8> poison, i8 %.3621, i64 0
  %i.od = shufflevector <4 x i8> %i.oc, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.oe = add <4 x i8> %i.od, <i8 9, i8 10, i8 11, i8 12>
  store <8 x i8> %i.oa, ptr %i.lh, align 1, !tbaa !17
  store <4 x i8> %i.oe, ptr %i.lj, align 1, !tbaa !17
  %i.of = load i64, ptr %i.y, align 8, !tbaa !114 ; 5 uses
  br label %.lr.ph.i.i187.preheader

.lr.ph.i.i187.preheader:                          ; preds = %.lr.ph.i177, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198
  %.sroa.0331.0616 = phi ptr [ %i.r, %.lr.ph.i177 ], [ %i.or, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198 ] ; 2 uses
  %.sroa.7.0615 = phi i64 [ %.039630, %.lr.ph.i177 ], [ %i.os, %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #31
  %i.og = load i64, ptr %i.y, align 8, !tbaa !114
  %i.oh = sub i64 1024, %i.og
  %.sroa.speculated326 = call i64 @llvm.umin.i64(i64 %i.oh, i64 %storemerge628)
  call void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair.6") align 8 %62, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.speculated326)
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.7.0615, i64 %storemerge52625)
  %i.oi = load i64, ptr %i.na, align 8, !tbaa !118
  %.not.i.i.i182 = icmp eq i64 %i.oi, 0
  %.0.v.i.i.i183.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i182, i64 16, i64 32
  %.0.v.i.i.i183.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %62, i64 %.0.v.i.i.i183.sroa.sel.v.sroa.sel.v.sroa.sel.v
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %.lr.ph.i.i187.preheader, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196
  %.018.i.i188 = phi i64 [ %i.ok, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196 ], [ 0, %.lr.ph.i.i187.preheader ]
  %.01017.i.i189 = phi ptr [ %i.on, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196 ], [ %62, %.lr.ph.i.i187.preheader ] ; 3 uses
  %.sroa.011.016.i.i190 = phi ptr [ %i.ol, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196 ], [ %.sroa.0331.0616, %.lr.ph.i.i187.preheader ] ; 2 uses
  %.sroa.6.015.i.i191 = phi i64 [ %i.om, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196 ], [ %.sroa.speculated, %.lr.ph.i.i187.preheader ] ; 2 uses
  %.sroa.4.0..010.sroa_idx.i.i192 = getelementptr inbounds nuw i8, ptr %.01017.i.i189, i64 8
  %.sroa.4.0.copyload.i.i193 = load i64, ptr %.sroa.4.0..010.sroa_idx.i.i192, align 8, !tbaa !13 ; 2 uses
  %i.oj = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i193, i64 %.sroa.6.015.i.i191) ; 4 uses
  %.not.i.i4.i194 = icmp eq i64 %.sroa.4.0.copyload.i.i193, 0
  br i1 %.not.i.i4.i194, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i187
  %.sroa.0.0.copyload.i.i195 = load ptr, ptr %.01017.i.i189, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.copyload.i.i195, ptr align 1 %.sroa.011.016.i.i190, i64 %i.oj, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196: ; preds = %bb.aq, %.lr.ph.i.i187
  %i.ok = add i64 %i.oj, %.018.i.i188             ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i190, i64 %i.oj
  %i.om = sub i64 %.sroa.6.015.i.i191, %i.oj      ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.01017.i.i189, i64 16 ; 2 uses
  %i.oo = icmp ne i64 %i.om, 0
  %i.op = icmp ne ptr %i.on, %.0.v.i.i.i183.sroa.sel.v.sroa.sel.v.sroa.sel
  %i.oq = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %i.oq, label %.lr.ph.i.i187, label %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198, !llvm.loop !1370

_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198: ; preds = %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit.i.i196
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.ok) #31
  %..i199 = call i64 @llvm.umin.i64(i64 %i.ok, i64 %.sroa.7.0615) ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0331.0616, i64 %..i199
  %i.os = sub i64 %.sroa.7.0615, %..i199          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  %.not55 = icmp eq i64 %i.os, 0
  br i1 %.not55, label %bb.ar, label %.lr.ph.i.i187.preheader, !llvm.loop !1403

bb.ar:                                            ; preds = %_ZN5boost4asio11buffer_copyINS_5beast6detail12buffers_pairILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit198
  %i.ot = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !200 ; 7 uses
  %i.ou = load i64, ptr %i.y, align 8, !tbaa !114
  %i.ov = add i64 %i.of, %.039630                 ; 2 uses
  %i.ow = icmp eq i64 %i.ou, %i.ov
  br i1 %i.ow, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.oy = load i8, ptr %i.ox, align 8, !tbaa !206, !range !186, !noundef !24
  %i.oz = trunc nuw i8 %i.oy to i1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 9
  %i.pb = load i8, ptr %i.pa, align 1, !range !186
  %i.pc = trunc nuw i8 %i.pb to i1
  %or.cond.i.i.i = select i1 %i.oz, i1 %i.pc, i1 false
  br i1 %or.cond.i.i.i, label %bb.at, label %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %22, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  store ptr @.str.36, ptr %23, align 8, !tbaa !32
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.37, ptr %i.pd, align 8, !tbaa !34
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 592, ptr %i.pe, align 8, !tbaa !35
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 48, ptr %i.pf, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(24) %23) #33
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.pg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i: ; preds = %bb.as
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !221
  call void @_ZN5boost5beast9unit_test6runner4passIvEEvv(ptr noundef nonnull align 8 dereferenceable(88) %i.pi)
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  call void @_ZN5boost5beast9unit_test6detail11make_reasonIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_PKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 1 dereferenceable(1) @.str.25, ptr noundef nonnull @.str.44, i32 noundef 763)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 2 uses
  %i.pk = load i8, ptr %i.pj, align 8, !tbaa !206, !range !186, !noundef !24
  %i.pl = trunc nuw i8 %i.pk to i1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ot, i64 9
  %i.pn = load i8, ptr %i.pm, align 1, !range !186
  %i.po = trunc nuw i8 %i.pn to i1
  %or.cond.i.i291 = select i1 %i.pl, i1 %i.po, i1 false
  br i1 %or.cond.i.i291, label %bb.ax, label %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %9, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  store ptr @.str.36, ptr %10, align 8, !tbaa !32
  %i.pp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.37, ptr %i.pp, align 8, !tbaa !34
  %i.pq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 592, ptr %i.pq, align 8, !tbaa !35
  %i.pr = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 48, ptr %i.pr, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #33
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %.body294

_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i: ; preds = %bb.aw
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !221
  invoke void @_ZN5boost5beast9unit_test6runner4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %i.pu, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %.noexc296 unwind label %bb.bd

.noexc296:                                        ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.pv = load i8, ptr %i.pj, align 8, !tbaa !206, !range !186, !noundef !24
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.ba, label %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ba:                                            ; preds = %.noexc296
  %i.px = getelementptr inbounds nuw i8, ptr %i.ot, i64 9
  store i8 1, ptr %i.px, align 1, !tbaa !220
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost5beast9unit_test5suite15abort_exceptionE, i64 16), ptr %11, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  store ptr @.str.36, ptr %12, align 8, !tbaa !32
  %i.py = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.39, ptr %i.py, align 8, !tbaa !34
  %i.pz = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 574, ptr %i.pz, align 8, !tbaa !35
  %i.qa = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 48, ptr %i.qa, align 4, !tbaa !36
  invoke void @_ZN5boost15throw_exceptionINS_5beast9unit_test5suite15abort_exceptionEEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #33
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.body294

_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc296
  %i.qc = load ptr, ptr %24, align 8, !tbaa !15   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.nb
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251: ; preds = %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.qe = load i64, ptr %i.nb, align 8, !tbaa !17
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252: ; preds = %_ZN5boost5beast9unit_test5suite4failIvEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit

bb.bd:                                            ; preds = %_ZN5boost5beast9unit_test5suite15propagate_abortEv.exit.i
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %.body294

.body294:                                         ; preds = %bb.az, %bb.bc, %bb.bd
  %eh.lpad-body295 = phi { ptr, i32 } [ %i.qg, %bb.bd ], [ %i.ps, %bb.az ], [ %i.qb, %bb.bc ]
  %i.qh = load ptr, ptr %24, align 8, !tbaa !15   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.nb
  br i1 %i.qi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %.body294
  %i.qj = load i64, ptr %i.nb, align 8, !tbaa !17
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %.body294, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %common.resume

_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit: ; preds = %_ZN5boost5beast9unit_test5suite4passIvEEvv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i252
  %i.ql = load ptr, ptr @_ZZN5boost5beast9unit_test5suite12p_this_suiteEvE3pts, align 8, !tbaa !200 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
end_hunk_1
