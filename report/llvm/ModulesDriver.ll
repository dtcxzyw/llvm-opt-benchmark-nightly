Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModulesDriver?download=true
inline.NumInlined: 9770
inline.NumDeleted: 5655
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZL27pruneUnusedStdlibModuleJobsRN12_GLOBAL__N_116CompilationGraphEN4llvm8ArrayRefIPNS_7JobNodeEEE:bb.a
  %i.ui = sub i64 %i.ug, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i62.i, i64 noundef %i.ui) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i65.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i65.i: ; preds = %bb.av, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i63
  %.val3.i.i66.i = load i8, ptr %i.er, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.uj = trunc nuw i8 %.val3.i.i66.i to i1
  br i1 %i.uj, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit68.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i65.i
  %.val2.i.i67.i = load ptr, ptr %38, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i67.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit68.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit68.i: ; preds = %bb.aw, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i65.i
  %.val.i.i.i69.i = load ptr, ptr %i.cu, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i.i70.i = icmp eq ptr %.val.i.i.i69.i, null
  br i1 %.not.i.i.i.i.i.i70.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i72.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit68.i
  %.val1.i.i.i71.i = load ptr, ptr %i.cw, align 8, !tbaa !1151, !noalias !1169
  %i.uk = ptrtoint ptr %.val1.i.i.i71.i to i64
  %i.ul = ptrtoint ptr %.val.i.i.i69.i to i64
  %i.um = sub i64 %i.uk, %i.ul
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i69.i, i64 noundef %i.um) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i72.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i72.i: ; preds = %bb.ax, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit68.i
  %.val3.i.i.i73.i = load i8, ptr %i.es, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.un = trunc nuw i8 %.val3.i.i.i73.i to i1
  br i1 %i.un, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i75.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i72.i
  %.val2.i.i.i74.i = load ptr, ptr %i.cq, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i.i74.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i75.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i75.i: ; preds = %bb.ay, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i72.i
  %.val.i.i.i.i76.i = load ptr, ptr %i.ck, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i.i.i77.i = icmp eq ptr %.val.i.i.i.i76.i, null
  br i1 %.not.i.i.i.i.i.i.i77.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i79.i, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i75.i
  %.val1.i.i.i.i78.i = load ptr, ptr %i.cm, align 8, !tbaa !1151, !noalias !1169
  %i.uo = ptrtoint ptr %.val1.i.i.i.i78.i to i64
  %i.up = ptrtoint ptr %.val.i.i.i.i76.i to i64
  %i.uq = sub i64 %i.uo, %i.up
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i76.i, i64 noundef %i.uq) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i79.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i79.i: ; preds = %bb.az, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i75.i
  %.val3.i.i.i.i80.i = load i8, ptr %i.et, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.ur = trunc nuw i8 %.val3.i.i.i.i80.i to i1
  br i1 %i.ur, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagED2Ev.exit82.i", label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i79.i
  %.val2.i.i.i.i81.i = load ptr, ptr %34, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i.i.i81.i) #22
  br label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagED2Ev.exit82.i"

"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagED2Ev.exit82.i": ; preds = %bb.ba, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i79.i
  %.val.i.i83.i = load ptr, ptr %i.bt, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i84.i = icmp eq ptr %.val.i.i83.i, null
  br i1 %.not.i.i.i.i.i84.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i86.i, label %bb.bb

bb.bb:                                            ; preds = %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagED2Ev.exit82.i"
  %.val1.i.i85.i = load ptr, ptr %i.bv, align 8, !tbaa !1151, !noalias !1169
  %i.us = ptrtoint ptr %.val1.i.i85.i to i64
  %i.ut = ptrtoint ptr %.val.i.i83.i to i64
  %i.uu = sub i64 %i.us, %i.ut
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i83.i, i64 noundef %i.uu) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i86.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i86.i: ; preds = %bb.bb, %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagED2Ev.exit82.i"
  %.val3.i.i87.i = load i8, ptr %i.eu, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.uv = trunc nuw i8 %.val3.i.i87.i to i1
  br i1 %i.uv, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit89.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i86.i
  %.val2.i.i88.i = load ptr, ptr %36, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i88.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit89.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit89.i: ; preds = %bb.bc, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i86.i
  %.val.i.i90.i = load ptr, ptr %i.bo, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i91.i = icmp eq ptr %.val.i.i90.i, null
  br i1 %.not.i.i.i.i.i91.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i93.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit89.i
  %.val1.i.i92.i = load ptr, ptr %i.bq, align 8, !tbaa !1151, !noalias !1169
  %i.uw = ptrtoint ptr %.val1.i.i92.i to i64
  %i.ux = ptrtoint ptr %.val.i.i90.i to i64
  %i.uy = sub i64 %i.uw, %i.ux
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i90.i, i64 noundef %i.uy) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i93.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i93.i: ; preds = %bb.bd, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit89.i
  %.val3.i.i94.i = load i8, ptr %i.ev, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.uz = trunc nuw i8 %.val3.i.i94.i to i1
  br i1 %i.uz, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit96.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i93.i
  %.val2.i.i95.i = load ptr, ptr %35, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i95.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit96.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit96.i: ; preds = %bb.be, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i93.i
  %.val.i.i97.i = load ptr, ptr %i.bj, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i98.i = icmp eq ptr %.val.i.i97.i, null
  br i1 %.not.i.i.i.i.i98.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i100.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit96.i
  %.val1.i.i99.i = load ptr, ptr %i.bl, align 8, !tbaa !1151, !noalias !1169
  %i.va = ptrtoint ptr %.val1.i.i99.i to i64
  %i.vb = ptrtoint ptr %.val.i.i97.i to i64
  %i.vc = sub i64 %i.va, %i.vb
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i97.i, i64 noundef %i.vc) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i100.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i100.i: ; preds = %bb.bf, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit96.i
  %.val3.i.i101.i = load i8, ptr %i.ew, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.vd = trunc nuw i8 %.val3.i.i101.i to i1
  br i1 %i.vd, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit103.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i100.i
  %.val2.i.i102.i = load ptr, ptr %33, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i102.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit103.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit103.i: ; preds = %bb.bg, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22, !noalias !1169
  %.val.i.i104.i = load ptr, ptr %i.be, align 8, !tbaa !1145, !noalias !1169 ; 3 uses
  %.not.i.i.i.i.i105.i = icmp eq ptr %.val.i.i104.i, null
  br i1 %.not.i.i.i.i.i105.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i107.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit103.i
  %.val1.i.i106.i = load ptr, ptr %i.bg, align 8, !tbaa !1151, !noalias !1169
  %i.ve = ptrtoint ptr %.val1.i.i106.i to i64
  %i.vf = ptrtoint ptr %.val.i.i104.i to i64
  %i.vg = sub i64 %i.ve, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i104.i, i64 noundef %i.vg) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i107.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i107.i: ; preds = %bb.bh, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit103.i
  %.val3.i.i108.i = load i8, ptr %i.ex, align 8, !tbaa !897, !range !21, !noalias !1169, !noundef !22
  %i.vh = trunc nuw i8 %.val3.i.i108.i to i1
  br i1 %i.vh, label %"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit", label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i107.i
  %.val2.i.i109.i = load ptr, ptr %32, align 8, !noalias !1169
  call void @free(ptr noundef %.val2.i.i109.i) #22
  br label %"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit"

"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit": ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i107.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22, !noalias !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call fastcc void @"_ZN4llvm20filter_iterator_implINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ERKSN_"(ptr noundef nonnull align 8 dereferenceable(241) %28, ptr noundef nonnull align 8 dereferenceable(496) %49)
  call fastcc void @"_ZN4llvm20filter_iterator_implINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ERKSN_"(ptr noundef nonnull align 8 dereferenceable(241) %29, ptr noundef nonnull align 8 dereferenceable(241) %i.ea)
  %.val.pre.i.i = load ptr, ptr %i.ey, align 8, !tbaa !1145
  %.val1.pre.i.i = load ptr, ptr %i.ez, align 8, !tbaa !1149
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i", %"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit"
  %.val1.i.i64 = phi ptr [ %.val1.i.i.i.i68, %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i" ], [ %.val1.pre.i.i, %"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit" ] ; 4 uses
  %.val.i.i65 = phi ptr [ %.val.i.i.i.i69, %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i" ], [ %.val.pre.i.i, %"_ZN4llvm17make_filter_rangeIRNS_14iterator_rangeINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail8CastFuncINS4_7JobNodeEEEPSE_EEEEZL27pruneUnusedStdlibModuleJobsRNS4_16CompilationGraphENS_8ArrayRefISG_EEE3$_0EENS1_INS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISS_E17iterator_categoryEEESV_St20forward_iterator_tagE4typeEEEEEOSQ_ST_.exit" ] ; 3 uses
  %.val2.i.i66 = load ptr, ptr %i.fa, align 8, !tbaa !1145 ; 2 uses
  %.val3.i.i67 = load ptr, ptr %i.fb, align 8, !tbaa !1149
  %i.vi = ptrtoint ptr %.val1.i.i64 to i64
  %i.vj = ptrtoint ptr %.val.i.i65 to i64
  %i.vk = sub i64 %i.vi, %i.vj
  %i.vl = ptrtoint ptr %.val3.i.i67 to i64
  %i.vm = ptrtoint ptr %.val2.i.i66 to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp eq i64 %i.vk, %i.vn
  br i1 %i.vo, label %bb.bk, label %.loopexit.i.i

bb.bk:                                            ; preds = %bb.bj
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i65, %.val1.i.i64
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertINS_20filter_iterator_implINS_15mapped_iteratorINS_11df_iteratorIPNS1_6CGNodeENS_23df_iterator_default_setISA_Lj8EEELb0ENS_11GraphTraitsISA_EEEENS_6detail8CastFuncIS2_EES3_EEZL27pruneUnusedStdlibModuleJobsRNS1_16CompilationGraphENS_8ArrayRefIS3_EEE3$_0St20forward_iterator_tagEEEEvT_SR_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bk, %bb.bm
  %.012.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vz, %bb.bm ], [ %.val2.i.i66, %bb.bk ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.vy, %bb.bm ], [ %.val.i.i65, %bb.bk ] ; 4 uses
  %i.vp = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.vq = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %bb.bl, label %.loopexit.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.vs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.vs, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.vt, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i76.a = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i76.a, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl
  %i.vu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vu, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.vv, align 8
  %i.vw = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.vx = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.vw, i1 %i.vx, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.vy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i77 = icmp eq ptr %i.vy, %.val1.i.i64
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i77, label %"_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertINS_20filter_iterator_implINS_15mapped_iteratorINS_11df_iteratorIPNS1_6CGNodeENS_23df_iterator_default_setISA_Lj8EEELb0ENS_11GraphTraitsISA_EEEENS_6detail8CastFuncIS2_EES3_EEZL27pruneUnusedStdlibModuleJobsRNS1_16CompilationGraphENS_8ArrayRefIS3_EEE3$_0St20forward_iterator_tagEEEEvT_SR_.exit.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

.loopexit.i.i:                                    ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.bj
  %i.wa = getelementptr i8, ptr %.val1.i.i64, i64 -32
  %.val4.val.i.i = load ptr, ptr %i.wa, align 8, !tbaa !719 ; 3 uses
  %i.wb = load i8, ptr %i.d, align 8, !tbaa !897, !range !21, !noalias !1206, !noundef !22
  %i.wc = trunc nuw i8 %i.wb to i1
  br i1 %i.wc, label %bb.bn, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.bn:                                            ; preds = %.loopexit.i.i
  %i.wd = load ptr, ptr %46, align 8, !tbaa !893, !noalias !1206 ; 2 uses
  %i.we = load i32, ptr %i.c, align 4, !tbaa !896, !noalias !1206 ; 4 uses
  %i.wf = zext i32 %i.we to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.wf, 3
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.we, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bn, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.wi, %.critedge.i.i.i.i ], [ %i.wd, %bb.bn ] ; 2 uses
  %i.wh = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !436, !noalias !1206
  %.not15.i.i.i.i = icmp eq ptr %i.wh, %.val4.val.i.i
  br i1 %.not15.i.i.i.i, label %_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.wi = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.wi, %i.wg
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.bn
  %i.wj = load i32, ptr %i.b, align 8, !tbaa !895, !noalias !1206
  %i.wk = icmp ult i32 %i.we, %i.wj
  br i1 %i.wk, label %bb.bo, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.bo:                                            ; preds = %._crit_edge.i.i.i.i
  %i.wl = add nuw i32 %i.we, 1
  store i32 %i.wl, ptr %i.c, align 4, !tbaa !896, !noalias !1206
  store ptr %.val4.val.i.i, ptr %i.wg, align 8, !tbaa !436, !noalias !1206
  br label %_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.loopexit.i.i
  %i.wm = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %46, ptr noundef %.val4.val.i.i) #22, !noalias !1206 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i

_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.bo
  %.val10.pre.i.i = load ptr, ptr %i.ez, align 8, !tbaa !1152
  br label %bb.bp

bb.bp:                                            ; preds = %.thread.i.i, %_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i
  %.val10.i.i = phi ptr [ %i.yo, %.thread.i.i ], [ %.val10.pre.i.i, %_ZN4llvm15SmallPtrSetImplIPN12_GLOBAL__N_17JobNodeEE6insertES3_.exit.i.i ] ; 5 uses
  %i.wn = getelementptr inbounds i8, ptr %.val10.i.i, i64 -32
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !1198 ; 3 uses
  %i.wp = getelementptr inbounds i8, ptr %.val10.i.i, i64 -24 ; 4 uses
  %i.wq = getelementptr i8, ptr %.val10.i.i, i64 -8 ; 2 uses
  %.val11.i.i = load i8, ptr %i.wq, align 8, !tbaa !1204, !range !21, !noundef !22
  %i.wr = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.wr, label %._crit_edge.i427, label %bb.bq

._crit_edge.i427:                                 ; preds = %bb.bp
  %.val15.i7.pre.i = load ptr, ptr %i.wp, align 8, !tbaa !1209
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ws = getelementptr i8, ptr %i.wo, i64 32
  %.val12.i.i = load ptr, ptr %i.ws, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i.i, ptr %i.wp, align 8
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.val10.i.i, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i.i, align 8
  store i8 1, ptr %i.wq, align 8, !tbaa !1204
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i427
  %.val15.i7.i = phi ptr [ %.val15.i7.pre.i, %._crit_edge.i427 ], [ %.val12.i.i, %bb.bq ] ; 2 uses
  %i.wt = getelementptr i8, ptr %i.wo, i64 32     ; 2 uses
  %i.wu = getelementptr i8, ptr %i.wo, i64 40     ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.val10.i.i, i64 -16
  %.val13.i5.i = load ptr, ptr %i.wt, align 8, !tbaa !197
  %.val14.i6.i = load i32, ptr %i.wu, align 8, !tbaa !195
  %i.wv = zext i32 %.val14.i6.i to i64
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5.i, i64 %i.wv
  %.not.i8.i = icmp eq ptr %.val15.i7.i, %i.ww
  br i1 %.not.i8.i, label %.thread.i.i, label %.lr.ph.i420

.lr.ph.i420:                                      ; preds = %bb.br, %.critedge.i.backedge.i
  %.val15.i9.i = phi ptr [ %.val15.i.i, %.critedge.i.backedge.i ], [ %.val15.i7.i, %bb.br ] ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %.val15.i9.i, i64 8
  store ptr %i.wx, ptr %i.wp, align 8, !tbaa !1209
  %.val17.val.i.i = load ptr, ptr %.val15.i9.i, align 8, !tbaa !902
  %i.wy = call noundef ptr %.sroa.2.0.copyload.i.i.i(ptr noundef %.val17.val.i.i) #22, !inline_history !1210 ; 5 uses
  %i.wz = load i8, ptr %i.fe, align 8, !tbaa !897, !range !21, !noalias !1211, !noundef !22
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %bb.bs, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.bs:                                            ; preds = %.lr.ph.i420
  %i.xb = load ptr, ptr %28, align 8, !tbaa !893, !noalias !1211 ; 2 uses
  %i.xc = load i32, ptr %i.ff, align 4, !tbaa !896, !noalias !1211 ; 4 uses
  %i.xd = zext i32 %i.xc to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.xd, 3
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i32 %i.xc, 0
  br i1 %.not22.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i425

.lr.ph.i.i.i.i.i425:                              ; preds = %bb.bs, %.critedge.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.xg, %.critedge.i.i.i.i.i ], [ %i.xb, %bb.bs ] ; 2 uses
  %i.xf = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !436, !noalias !1211
  %.not15.i.i.i.i.i = icmp eq ptr %i.xf, %i.wy
  br i1 %.not15.i.i.i.i.i, label %.critedge.i.backedge.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i425
  %i.xg = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i426 = icmp eq ptr %i.xg, %i.xe
  br i1 %.not.i.i.i.i.i426, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i425

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.bs
  %i.xh = load i32, ptr %i.fg, align 8, !tbaa !895, !noalias !1211
  %i.xi = icmp ult i32 %i.xc, %i.xh
  br i1 %i.xi, label %.critedge56.i.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

.critedge56.i.i:                                  ; preds = %._crit_edge.i.i.i.i.i
  %i.xj = add nuw i32 %i.xc, 1
  store i32 %i.xj, ptr %i.ff, align 4, !tbaa !896, !noalias !1211
  store ptr %i.wy, ptr %i.xe, align 8, !tbaa !436, !noalias !1211
  br label %.loopexit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i420
  %i.xk = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(248) %28, ptr noundef %i.wy) #22, !noalias !1211
  %i.xl = extractvalue { ptr, i8 } %i.xk, 1
  %i.xm = trunc nuw i8 %i.xl to i1
  br i1 %i.xm, label %.loopexit.i, label %.critedge.i.backedge.i

.critedge.i.backedge.i:                           ; preds = %.lr.ph.i.i.i.i.i425, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i
  %.val13.i.i = load ptr, ptr %i.wt, align 8, !tbaa !197
  %.val14.i.i = load i32, ptr %i.wu, align 8, !tbaa !195
  %i.xn = zext i32 %.val14.i.i to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i, i64 %i.xn
  %.val15.i.i = load ptr, ptr %i.wp, align 8, !tbaa !1209 ; 2 uses
  %.not.i.i421 = icmp eq ptr %.val15.i.i, %i.xo
  br i1 %.not.i.i421, label %.thread.i.i, label %.lr.ph.i420

.loopexit.i:                                      ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i, %.critedge56.i.i
  %i.xp = load ptr, ptr %i.ez, align 8, !tbaa !1149 ; 6 uses
  %i.xq = load ptr, ptr %i.fh, align 8, !tbaa !1151
  %.not.i.i.i.i422 = icmp eq ptr %i.xp, %i.xq
  br i1 %.not.i.i.i.i422, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.i
  store ptr %i.wy, ptr %i.xp, align 8
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i.i, align 8
  %i.xr = load ptr, ptr %i.ez, align 8, !tbaa !1149
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 32 ; 2 uses
  store ptr %i.xs, ptr %i.ez, align 8, !tbaa !1149
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader

bb.bu:                                            ; preds = %.loopexit.i
  %.val.i.i.i.i.i423 = load ptr, ptr %i.ey, align 8, !tbaa !1145 ; 5 uses
  %i.xt = ptrtoint ptr %i.xp to i64
  %i.xu = ptrtoint ptr %.val.i.i.i.i.i423 to i64  ; 2 uses
  %i.xv = sub i64 %i.xt, %i.xu                    ; 3 uses
  %i.xw = icmp eq i64 %i.xv, 9223372036854775776
  br i1 %i.xw, label %bb.bv, label %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.bu
  %i.xx = ashr exact i64 %i.xv, 5                 ; 3 uses
  %i.xy = icmp eq ptr %i.xp, %.val.i.i.i.i.i423   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.xy, i64 1, i64 %i.xx
  %i.xz = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.xx ; 2 uses
  %i.ya = icmp ult i64 %i.xz, %i.xx
  %i.yb = call i64 @llvm.umin.i64(i64 %i.xz, i64 288230376151711743)
  %i.yc = select i1 %i.ya, i64 288230376151711743, i64 %i.yb ; 3 uses
  %.not.i.i.i.i.i.i424 = icmp ne i64 %i.yc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i424)
  %i.yd = shl nuw nsw i64 %i.yc, 5
  %i.ye = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yd) #25 ; 5 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.xv ; 2 uses
  store ptr %i.wy, ptr %i.yf, align 8
  %.sroa.529.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx30.i.i, align 8
  br i1 %i.xy, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i

.lr.ph.i.i.i.i.i.i25.i.i:                         ; preds = %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.yh, %.lr.ph.i.i.i.i.i.i25.i.i ], [ %i.ye, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i.i25.i.i ], [ %.val.i.i.i.i.i423, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i, i64 32, i1 false), !alias.scope !1216
  %i.yg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i26.i.i = icmp eq ptr %i.yg, %i.xp
  br i1 %.not.i.i.i.i.i.i26.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i, !llvm.loop !1220

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ye, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.yh, %.lr.ph.i.i.i.i.i.i25.i.i ]
  %i.yi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i423, null
  br i1 %.not.i27.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i
  %i.yj = load ptr, ptr %i.fh, align 8, !tbaa !1151
  %i.yk = ptrtoint ptr %i.yj to i64
  %i.yl = sub i64 %i.yk, %i.xu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i423, i64 noundef %i.yl) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bw, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i
  store ptr %i.ye, ptr %i.ey, align 8, !tbaa !1145
  store ptr %i.yi, ptr %i.ez, align 8, !tbaa !1149
  %i.ym = getelementptr inbounds nuw [32 x i8], ptr %i.ye, i64 %i.yc
  store ptr %i.ym, ptr %i.fh, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader

.thread.i.i:                                      ; preds = %.critedge.i.backedge.i, %bb.br
  %i.yn = load ptr, ptr %i.ez, align 8, !tbaa !1149
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 -32 ; 4 uses
  store ptr %i.yo, ptr %i.ez, align 8, !tbaa !1149
  %.val19.i.i = load ptr, ptr %i.ey, align 8, !tbaa !1152
  %i.yp = icmp eq ptr %.val19.i.i, %i.yo
  br i1 %i.yp, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader, label %bb.bp, !llvm.loop !1221

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader: ; preds = %.thread.i.i, %bb.bt, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i
  %.val1.i.i.i.i68.ph = phi ptr [ %i.yi, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i ], [ %i.xs, %bb.bt ], [ %i.yo, %.thread.i.i ]
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.i.i
  %.val1.i.i.i.i68 = phi ptr [ %.val1.i.i29.i.i, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.i.i ], [ %.val1.i.i.i.i68.ph, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.preheader ] ; 6 uses
  %.val.i.i.i.i69 = load ptr, ptr %i.ey, align 8, !tbaa !1145 ; 4 uses
  %.val2.i.i.i.i70 = load ptr, ptr %i.fc, align 8, !tbaa !1145 ; 2 uses
  %.val3.i.i.i.i71 = load ptr, ptr %i.fd, align 8, !tbaa !1149
  %i.yq = ptrtoint ptr %.val1.i.i.i.i68 to i64
  %i.yr = ptrtoint ptr %.val.i.i.i.i69 to i64
  %i.ys = sub i64 %i.yq, %i.yr
  %i.yt = ptrtoint ptr %.val3.i.i.i.i71 to i64
  %i.yu = ptrtoint ptr %.val2.i.i.i.i70 to i64
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = icmp eq i64 %i.ys, %i.yv
  br i1 %i.yw, label %bb.bx, label %.loopexit.i.i.i.i

bb.bx:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i69, %.val1.i.i.i.i68
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i75:                 ; preds = %bb.bx, %bb.bz
  %.012.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zh, %bb.bz ], [ %.val2.i.i.i.i70, %bb.bx ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.zg, %bb.bz ], [ %.val.i.i.i.i69, %bb.bx ] ; 4 uses
  %i.yx = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.yy = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %bb.by, label %.loopexit.i.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i75
  %i.za = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.za, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.zb, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.zc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zc, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.zd, align 8
  %i.ze = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.zf = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ze, i1 %i.zf, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.zg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i6.i.i = icmp eq ptr %i.zg, %.val1.i.i.i.i68
  br i1 %.not.i.i.i.i.i.i.i.i.i.i6.i.i, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i75, !llvm.loop !1205

.loopexit.i.i.i.i:                                ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i75, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit
  %i.zi = getelementptr i8, ptr %.val1.i.i.i.i68, i64 -32
  %.val4.val.i.i.i.i = load ptr, ptr %i.zi, align 8, !tbaa !719
  %i.zj = getelementptr i8, ptr %.val4.val.i.i.i.i, i64 48
  %.val.val.i.i.i.i.i = load i32, ptr %i.zj, align 8, !tbaa !705
  %.not.i.i5.i.i = icmp eq i32 %.val.val.i.i.i.i.i, 4
  br i1 %.not.i.i5.i.i, label %.preheader.i.i, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEppEv.exit.i.i"

.preheader.i.i:                                   ; preds = %.loopexit.i.i.i.i, %.thread.i.i.i.i
  %.val10.i.i.i.i = phi ptr [ %i.abl, %.thread.i.i.i.i ], [ %.val1.i.i.i.i68, %.loopexit.i.i.i.i ] ; 5 uses
  %i.zk = getelementptr inbounds i8, ptr %.val10.i.i.i.i, i64 -32
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !1198 ; 3 uses
  %i.zm = getelementptr inbounds i8, ptr %.val10.i.i.i.i, i64 -24 ; 4 uses
  %i.zn = getelementptr i8, ptr %.val10.i.i.i.i, i64 -8 ; 2 uses
  %.val11.i.i.i.i = load i8, ptr %i.zn, align 8, !tbaa !1204, !range !21, !noundef !22
  %i.zo = trunc nuw i8 %.val11.i.i.i.i to i1
  br i1 %i.zo, label %._crit_edge.i.i.i, label %bb.ca

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i
  %.val15.i7.pre.i.i.i = load ptr, ptr %i.zm, align 8, !tbaa !1209
  br label %bb.cb

bb.ca:                                            ; preds = %.preheader.i.i
  %i.zp = getelementptr i8, ptr %i.zl, i64 32
  %.val12.i.i.i.i = load ptr, ptr %i.zp, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i.i.i.i, ptr %i.zm, align 8
  %.sroa.440.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.val10.i.i.i.i, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i.i.i.i, align 8
  store i8 1, ptr %i.zn, align 8, !tbaa !1204
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge.i.i.i
  %.val15.i7.i.i.i = phi ptr [ %.val15.i7.pre.i.i.i, %._crit_edge.i.i.i ], [ %.val12.i.i.i.i, %bb.ca ] ; 2 uses
  %i.zq = getelementptr i8, ptr %i.zl, i64 32     ; 2 uses
  %i.zr = getelementptr i8, ptr %i.zl, i64 40     ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %.val10.i.i.i.i, i64 -16
  %.val13.i5.i.i.i = load ptr, ptr %i.zq, align 8, !tbaa !197
  %.val14.i6.i.i.i = load i32, ptr %i.zr, align 8, !tbaa !195
  %i.zs = zext i32 %.val14.i6.i.i.i to i64
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5.i.i.i, i64 %i.zs
  %.not.i8.i.i.i = icmp eq ptr %.val15.i7.i.i.i, %i.zt
  br i1 %.not.i8.i.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cb, %.critedge.i.backedge.i.i.i
  %.val15.i9.i.i.i = phi ptr [ %.val15.i.i.i.i, %.critedge.i.backedge.i.i.i ], [ %.val15.i7.i.i.i, %bb.cb ] ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %.val15.i9.i.i.i, i64 8
  store ptr %i.zu, ptr %i.zm, align 8, !tbaa !1209
  %.val17.val.i.i.i.i = load ptr, ptr %.val15.i9.i.i.i, align 8, !tbaa !902
  %i.zv = call noundef ptr %.sroa.2.0.copyload.i.i.i.i.i(ptr noundef %.val17.val.i.i.i.i) #22, !inline_history !1222 ; 5 uses
  %i.zw = load i8, ptr %i.fe, align 8, !tbaa !897, !range !21, !noalias !1223, !noundef !22
  %i.zx = trunc nuw i8 %i.zw to i1
  br i1 %i.zx, label %bb.cc, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.zy = load ptr, ptr %28, align 8, !tbaa !893, !noalias !1223 ; 2 uses
  %i.zz = load i32, ptr %i.ff, align 4, !tbaa !896, !noalias !1223 ; 4 uses
  %i.aaa = zext i32 %i.zz to i64
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aaa, 3
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i.i.i = icmp eq i32 %i.zz, 0
  br i1 %.not22.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i8.i.i

.lr.ph.i.i.i.i.i8.i.i:                            ; preds = %bb.cc, %.critedge.i.i.i.i.i.i.i
  %.023.i.i.i.i.i.i.i = phi ptr [ %i.aad, %.critedge.i.i.i.i.i.i.i ], [ %i.zy, %bb.cc ] ; 2 uses
  %i.aac = load ptr, ptr %.023.i.i.i.i.i.i.i, align 8, !tbaa !436, !noalias !1223
  %.not15.i.i.i.i.i.i.i = icmp eq ptr %i.aac, %i.zv
  br i1 %.not15.i.i.i.i.i.i.i, label %.critedge.i.backedge.i.i.i, label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i8.i.i
  %i.aad = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9.i.i = icmp eq ptr %i.aad, %i.aab
  br i1 %.not.i.i.i.i.i9.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i8.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.critedge.i.i.i.i.i.i.i, %bb.cc
  %i.aae = load i32, ptr %i.fg, align 8, !tbaa !895, !noalias !1223
  %i.aaf = icmp ult i32 %i.zz, %i.aae
  br i1 %i.aaf, label %.critedge56.i.i.i.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i.i

.critedge56.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aag = add nuw i32 %i.zz, 1
  store i32 %i.aag, ptr %i.ff, align 4, !tbaa !896, !noalias !1223
  store ptr %i.zv, ptr %i.aab, align 8, !tbaa !436, !noalias !1223
  br label %.loopexit.i.i.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aah = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(248) %28, ptr noundef %i.zv) #22, !noalias !1223
  %i.aai = extractvalue { ptr, i8 } %i.aah, 1
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %.loopexit.i.i.i, label %.critedge.i.backedge.i.i.i

.critedge.i.backedge.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i8.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i.i
  %.val13.i.i.i.i = load ptr, ptr %i.zq, align 8, !tbaa !197
  %.val14.i.i.i.i = load i32, ptr %i.zr, align 8, !tbaa !195
  %i.aak = zext i32 %.val14.i.i.i.i to i64
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i.i.i, i64 %i.aak
  %.val15.i.i.i.i = load ptr, ptr %i.zm, align 8, !tbaa !1209 ; 2 uses
  %.not.i.i7.i.i = icmp eq ptr %.val15.i.i.i.i, %i.aal
  br i1 %.not.i.i7.i.i, label %.thread.i.i.i.i, label %.lr.ph.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i.i.i, %.critedge56.i.i.i.i
  %i.aam = load ptr, ptr %i.ez, align 8, !tbaa !1149 ; 6 uses
  %i.aan = load ptr, ptr %i.fh, align 8, !tbaa !1151
  %.not.i.i.i.i.i.i72 = icmp eq ptr %i.aam, %i.aan
  br i1 %.not.i.i.i.i.i.i72, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i.i.i
  store ptr %i.zv, ptr %i.aam, align 8
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8
  %i.aao = load ptr, ptr %i.ez, align 8, !tbaa !1149
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 32 ; 2 uses
  store ptr %i.aap, ptr %i.ez, align 8, !tbaa !1149
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.i.i

bb.ce:                                            ; preds = %.loopexit.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !1145 ; 5 uses
  %i.aaq = ptrtoint ptr %i.aam to i64
  %i.aar = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.aas = sub i64 %i.aaq, %i.aar                 ; 3 uses
  %i.aat = icmp eq i64 %i.aas, 9223372036854775776
  br i1 %i.aat, label %bb.cf, label %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.ce
  %i.aau = ashr exact i64 %i.aas, 5               ; 3 uses
  %i.aav = icmp eq ptr %i.aam, %.val.i.i.i.i.i.i.i ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = select i1 %i.aav, i64 1, i64 %i.aau
  %i.aaw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.aau ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %i.aau
  %i.aay = call i64 @llvm.umin.i64(i64 %i.aaw, i64 288230376151711743)
  %i.aaz = select i1 %i.aax, i64 288230376151711743, i64 %i.aay ; 3 uses
  %.not.i.i.i.i.i.i.i.i73 = icmp ne i64 %i.aaz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i73)
  %i.aba = shl nuw nsw i64 %i.aaz, 5
  %i.abb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aba) #25 ; 5 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aas ; 2 uses
  store ptr %i.zv, ptr %i.abc, align 8
  %.sroa.529.0..sroa_idx30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abc, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx30.i.i.i.i, align 8
  br i1 %i.aav, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i.i.i

.lr.ph.i.i.i.i.i.i25.i.i.i.i:                     ; preds = %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abe, %.lr.ph.i.i.i.i.i.i25.i.i.i.i ], [ %i.abb, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abd, %.lr.ph.i.i.i.i.i.i25.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !alias.scope !1228
  %i.abd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i26.i.i.i.i = icmp eq ptr %i.abd, %i.aam
  br i1 %.not.i.i.i.i.i.i26.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i.i.i, !llvm.loop !1220

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i.i.i, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i74 = phi ptr [ %i.abb, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i ], [ %i.abe, %.lr.ph.i.i.i.i.i.i25.i.i.i.i ]
  %i.abf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i74, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i.i.i
  %i.abg = load ptr, ptr %i.fh, align 8, !tbaa !1151
  %i.abh = ptrtoint ptr %i.abg to i64
  %i.abi = sub i64 %i.abh, %i.aar
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.abi) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.cg, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i.i.i
  store ptr %i.abb, ptr %i.ey, align 8, !tbaa !1145
  store ptr %i.abf, ptr %i.ez, align 8, !tbaa !1149
  %i.abj = getelementptr inbounds nuw [32 x i8], ptr %i.abb, i64 %i.aaz
  store ptr %i.abj, ptr %i.fh, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.i.i

.thread.i.i.i.i:                                  ; preds = %.critedge.i.backedge.i.i.i, %bb.cb
  %i.abk = load ptr, ptr %i.ez, align 8, !tbaa !1149
  %i.abl = getelementptr inbounds i8, ptr %i.abk, i64 -32 ; 4 uses
  store ptr %i.abl, ptr %i.ez, align 8, !tbaa !1149
  %.val19.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !1152
  %i.abm = icmp eq ptr %.val19.i.i.i.i, %i.abl
  br i1 %i.abm, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit.i.i, label %.preheader.i.i, !llvm.loop !1221

end_hunk_0
begin_hunk_1_@_ZL27pruneUnusedStdlibModuleJobsRN12_GLOBAL__N_116CompilationGraphEN4llvm8ArrayRefIPNS_7JobNodeEEE:bb.a
  %i.all = trunc nuw i8 %.val3.i.i.i.i21.i to i1
  br i1 %i.all, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit23.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i20.i
  %.val2.i.i.i.i22.i = load ptr, ptr %14, align 8, !noalias !1276
  call void @free(ptr noundef %.val2.i.i.i.i22.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit23.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit23.i: ; preds = %bb.fi, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i20.i
  %.val.i.i24.i = load ptr, ptr %i.md, align 8, !tbaa !1145, !noalias !1276 ; 3 uses
  %.not.i.i.i.i.i25.i = icmp eq ptr %.val.i.i24.i, null
  br i1 %.not.i.i.i.i.i25.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i27.i, label %bb.fj

bb.fj:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit23.i
  %.val1.i.i26.i = load ptr, ptr %i.me, align 8, !tbaa !1151, !noalias !1276
  %i.alm = ptrtoint ptr %.val1.i.i26.i to i64
  %i.aln = ptrtoint ptr %.val.i.i24.i to i64
  %i.alo = sub i64 %i.alm, %i.aln
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i24.i, i64 noundef %i.alo) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i27.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i27.i: ; preds = %bb.fj, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit23.i
  %.val3.i.i28.i = load i8, ptr %i.mf, align 8, !tbaa !897, !range !21, !noalias !1276, !noundef !22
  %i.alp = trunc nuw i8 %.val3.i.i28.i to i1
  br i1 %i.alp, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i27.i
  %.val2.i.i29.i = load ptr, ptr %i.mc, align 8, !noalias !1276
  call void @free(ptr noundef %.val2.i.i29.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i: ; preds = %bb.fk, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i27.i
  %.val.i.i.i31.i = load ptr, ptr %i.mg, align 8, !tbaa !1145, !noalias !1276 ; 3 uses
  %.not.i.i.i.i.i.i32.i = icmp eq ptr %.val.i.i.i31.i, null
  br i1 %.not.i.i.i.i.i.i32.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i
  %.val1.i.i.i33.i = load ptr, ptr %i.mh, align 8, !tbaa !1151, !noalias !1276
  %i.alq = ptrtoint ptr %.val1.i.i.i33.i to i64
  %i.alr = ptrtoint ptr %.val.i.i.i31.i to i64
  %i.als = sub i64 %i.alq, %i.alr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i31.i, i64 noundef %i.als) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i: ; preds = %bb.fl, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i
  %.val3.i.i.i35.i = load i8, ptr %i.mi, align 8, !tbaa !897, !range !21, !noalias !1276, !noundef !22
  %i.alt = trunc nuw i8 %.val3.i.i.i35.i to i1
  br i1 %i.alt, label %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i
  %.val2.i.i.i36.i = load ptr, ptr %15, align 8, !noalias !1276
  call void @free(ptr noundef %.val2.i.i.i36.i) #22
  br label %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit

_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %.val.i.i.i215 = load ptr, ptr %i.ja, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i216 = icmp eq ptr %.val.i.i.i215, null
  br i1 %.not.i.i.i.i.i.i216, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i218, label %bb.fn

bb.fn:                                            ; preds = %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit
  %.val1.i.i.i217 = load ptr, ptr %i.jb, align 8, !tbaa !1151
  %i.alu = ptrtoint ptr %.val1.i.i.i217 to i64
  %i.alv = ptrtoint ptr %.val.i.i.i215 to i64
  %i.alw = sub i64 %i.alu, %i.alv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i215, i64 noundef %i.alw) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i218

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i218: ; preds = %bb.fn, %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit
  %.val3.i.i.i219 = load i8, ptr %i.mj, align 8, !tbaa !897, !range !21, !noundef !22
  %i.alx = trunc nuw i8 %.val3.i.i.i219 to i1
  br i1 %i.alx, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i221, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i218
  %.val2.i.i.i220 = load ptr, ptr %i.iy, align 8
  call void @free(ptr noundef %.val2.i.i.i220) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i221

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i221: ; preds = %bb.fo, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i218
  %.val.i.i.i.i222 = load ptr, ptr %i.iw, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i223 = icmp eq ptr %.val.i.i.i.i222, null
  br i1 %.not.i.i.i.i.i.i.i223, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i225, label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i221
  %.val1.i.i.i.i224 = load ptr, ptr %i.ix, align 8, !tbaa !1151
  %i.aly = ptrtoint ptr %.val1.i.i.i.i224 to i64
  %i.alz = ptrtoint ptr %.val.i.i.i.i222 to i64
  %i.ama = sub i64 %i.aly, %i.alz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i222, i64 noundef %i.ama) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i225

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i225: ; preds = %bb.fp, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i221
  %.val3.i.i.i.i226 = load i8, ptr %i.mk, align 8, !tbaa !897, !range !21, !noundef !22
  %i.amb = trunc nuw i8 %.val3.i.i.i.i226 to i1
  br i1 %i.amb, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i228, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i225
  %.val2.i.i.i.i227 = load ptr, ptr %i.iu, align 8
  call void @free(ptr noundef %.val2.i.i.i.i227) #22
  br label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i228

_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i228: ; preds = %bb.fq, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i225
  %.val.i.i1.i229 = load ptr, ptr %i.is, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i2.i230 = icmp eq ptr %.val.i.i1.i229, null
  br i1 %.not.i.i.i.i.i2.i230, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i232, label %bb.fr

bb.fr:                                            ; preds = %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i228
  %.val1.i.i3.i231 = load ptr, ptr %i.it, align 8, !tbaa !1151
  %i.amc = ptrtoint ptr %.val1.i.i3.i231 to i64
  %i.amd = ptrtoint ptr %.val.i.i1.i229 to i64
  %i.ame = sub i64 %i.amc, %i.amd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i1.i229, i64 noundef %i.ame) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i232

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i232: ; preds = %bb.fr, %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i228
  %.val3.i.i5.i233 = load i8, ptr %i.ml, align 8, !tbaa !897, !range !21, !noundef !22
  %i.amf = trunc nuw i8 %.val3.i.i5.i233 to i1
  br i1 %i.amf, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i232
  %.val2.i.i6.i234 = load ptr, ptr %i.iq, align 8
  call void @free(ptr noundef %.val2.i.i6.i234) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i: ; preds = %bb.fs, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i232
  %.val.i.i.i8.i235 = load ptr, ptr %i.io, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i9.i236 = icmp eq ptr %.val.i.i.i8.i235, null
  br i1 %.not.i.i.i.i.i.i9.i236, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i238, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i
  %.val1.i.i.i10.i237 = load ptr, ptr %i.ip, align 8, !tbaa !1151
  %i.amg = ptrtoint ptr %.val1.i.i.i10.i237 to i64
  %i.amh = ptrtoint ptr %.val.i.i.i8.i235 to i64
  %i.ami = sub i64 %i.amg, %i.amh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i8.i235, i64 noundef %i.ami) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i238

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i238: ; preds = %bb.ft, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i
  %.val3.i.i.i12.i239 = load i8, ptr %i.mm, align 8, !tbaa !897, !range !21, !noundef !22
  %i.amj = trunc nuw i8 %.val3.i.i.i12.i239 to i1
  br i1 %i.amj, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i238
  %.val2.i.i.i13.i240 = load ptr, ptr %53, align 8
  call void @free(ptr noundef %.val2.i.i.i13.i240) #22
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i238, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call fastcc void @_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(234) %54, ptr noundef nonnull align 8 dereferenceable(480) %52)
  %i.amk = load i16, ptr %i.ld, align 8, !noalias !1283
  store i16 %i.amk, ptr %i.mn, align 8, !alias.scope !1283
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  call fastcc void @_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(234) %55, ptr noundef nonnull align 8 dereferenceable(234) %i.le)
  %i.aml = load i16, ptr %i.lm, align 8, !noalias !1286
  store i16 %i.aml, ptr %i.mo, align 8, !alias.scope !1286
  %.val33.pre = load ptr, ptr %i.mp, align 8, !tbaa !1145
  %.val34.pre = load ptr, ptr %i.mq, align 8, !tbaa !1149
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge: ; preds = %.loopexit.i.i.i330, %bb.hh, %bb.hj
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit
  %.val34 = phi ptr [ %.val34.pre, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit ], [ %.val2.i.i.i327, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge ] ; 4 uses
  %.val33 = phi ptr [ %.val33.pre, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_12ImageJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit ], [ %.val1.i.i.i326, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge ] ; 3 uses
  %.val35 = load ptr, ptr %i.mr, align 8, !tbaa !1145 ; 2 uses
  %.val36 = load ptr, ptr %i.ms, align 8, !tbaa !1149
  %i.amm = ptrtoint ptr %.val34 to i64
  %i.amn = ptrtoint ptr %.val33 to i64
  %i.amo = sub i64 %i.amm, %i.amn
  %i.amp = ptrtoint ptr %.val36 to i64
  %i.amq = ptrtoint ptr %.val35 to i64
  %i.amr = sub i64 %i.amp, %i.amq
  %i.ams = icmp eq i64 %i.amo, %i.amr
  br i1 %i.ams, label %bb.fv, label %.loopexit

bb.fv:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val33, %.val34
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i241

.lr.ph.i.i.i.i.i.i.i.i.i241:                      ; preds = %bb.fv, %bb.fx
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.and, %bb.fx ], [ %.val35, %bb.fv ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.anc, %bb.fx ], [ %.val33, %bb.fv ] ; 4 uses
  %i.amt = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.amu = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.amv = icmp eq ptr %i.amt, %i.amu
  br i1 %i.amv, label %bb.fw, label %.loopexit

bb.fw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i241
  %i.amw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.amw, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.amx, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i242 = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i242, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, label %.loopexit

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.fw
  %i.amy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.amz, align 8
  %i.ana = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i to i1
  %i.anb = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i = select i1 %i.ana, i1 %i.anb, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.fx

bb.fx:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i
  %i.anc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i243 = icmp eq ptr %i.anc, %.val34
  br i1 %.not.i.i.i.i.i.i.i.i.i243, label %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i241, !llvm.loop !1205

_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit: ; preds = %bb.fv, %bb.fx
  %.val.i.i.i244 = load ptr, ptr %i.nd, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i245 = icmp eq ptr %.val.i.i.i244, null
  br i1 %.not.i.i.i.i.i.i245, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i247, label %bb.fy

bb.fy:                                            ; preds = %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit
  %.val1.i.i.i246 = load ptr, ptr %i.ne, align 8, !tbaa !1151
  %i.ane = ptrtoint ptr %.val1.i.i.i246 to i64
  %i.anf = ptrtoint ptr %.val.i.i.i244 to i64
  %i.ang = sub i64 %i.ane, %i.anf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i244, i64 noundef %i.ang) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i247

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i247: ; preds = %bb.fy, %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit
  %.val3.i.i.i248 = load i8, ptr %i.nf, align 8, !tbaa !897, !range !21, !noundef !22
  %i.anh = trunc nuw i8 %.val3.i.i.i248 to i1
  br i1 %i.anh, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i250, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i247
  %.val2.i.i.i249 = load ptr, ptr %i.nc, align 8
  call void @free(ptr noundef %.val2.i.i.i249) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i250

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i250: ; preds = %bb.fz, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i247
  %.val.i.i.i.i251 = load ptr, ptr %i.mr, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i252 = icmp eq ptr %.val.i.i.i.i251, null
  br i1 %.not.i.i.i.i.i.i.i252, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i254, label %bb.ga

bb.ga:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i250
  %.val1.i.i.i.i253 = load ptr, ptr %i.ng, align 8, !tbaa !1151
  %i.ani = ptrtoint ptr %.val1.i.i.i.i253 to i64
  %i.anj = ptrtoint ptr %.val.i.i.i.i251 to i64
  %i.ank = sub i64 %i.ani, %i.anj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i251, i64 noundef %i.ank) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i254

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i254: ; preds = %bb.ga, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i250
  %.val3.i.i.i.i255 = load i8, ptr %i.nh, align 8, !tbaa !897, !range !21, !noundef !22
  %i.anl = trunc nuw i8 %.val3.i.i.i.i255 to i1
  br i1 %i.anl, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i254
  %.val2.i.i.i.i256 = load ptr, ptr %55, align 8
  call void @free(ptr noundef %.val2.i.i.i.i256) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i254, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #22
  %.val.i.i.i258 = load ptr, ptr %i.na, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i259 = icmp eq ptr %.val.i.i.i258, null
  br i1 %.not.i.i.i.i.i.i259, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i261, label %bb.gc

bb.gc:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit
  %.val1.i.i.i260 = load ptr, ptr %i.nj, align 8, !tbaa !1151
  %i.anm = ptrtoint ptr %.val1.i.i.i260 to i64
  %i.ann = ptrtoint ptr %.val.i.i.i258 to i64
  %i.ano = sub i64 %i.anm, %i.ann
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i258, i64 noundef %i.ano) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i261

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i261: ; preds = %bb.gc, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit
  %.val3.i.i.i262 = load i8, ptr %i.nk, align 8, !tbaa !897, !range !21, !noundef !22
  %i.anp = trunc nuw i8 %.val3.i.i.i262 to i1
  br i1 %i.anp, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i264, label %bb.gd

bb.gd:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i261
  %.val2.i.i.i263 = load ptr, ptr %i.ni, align 8
  call void @free(ptr noundef %.val2.i.i.i263) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i264

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i264: ; preds = %bb.gd, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i261
  %.val.i.i.i.i265 = load ptr, ptr %i.mp, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i266 = icmp eq ptr %.val.i.i.i.i265, null
  br i1 %.not.i.i.i.i.i.i.i266, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i268, label %bb.ge

bb.ge:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i264
  %.val1.i.i.i.i267 = load ptr, ptr %i.mz, align 8, !tbaa !1151
  %i.anq = ptrtoint ptr %.val1.i.i.i.i267 to i64
  %i.anr = ptrtoint ptr %.val.i.i.i.i265 to i64
  %i.ans = sub i64 %i.anq, %i.anr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i265, i64 noundef %i.ans) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i268

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i268: ; preds = %bb.ge, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i264
  %.val3.i.i.i.i269 = load i8, ptr %i.mw, align 8, !tbaa !897, !range !21, !noundef !22
  %i.ant = trunc nuw i8 %.val3.i.i.i.i269 to i1
  br i1 %i.ant, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit272, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i268
  %.val2.i.i.i.i270 = load ptr, ptr %54, align 8
  call void @free(ptr noundef %.val2.i.i.i.i270) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit272

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit272: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i268, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #22
  %.val.i.i.i.i273 = load ptr, ptr %i.lk, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i274 = icmp eq ptr %.val.i.i.i.i273, null
  br i1 %.not.i.i.i.i.i.i.i274, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i276, label %bb.gg

bb.gg:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit272
  %.val1.i.i.i.i275 = load ptr, ptr %i.ll, align 8, !tbaa !1151
  %i.anu = ptrtoint ptr %.val1.i.i.i.i275 to i64
  %i.anv = ptrtoint ptr %.val.i.i.i.i273 to i64
  %i.anw = sub i64 %i.anu, %i.anv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i273, i64 noundef %i.anw) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i276

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i276: ; preds = %bb.gg, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit272
  %.val3.i.i.i.i277 = load i8, ptr %i.nl, align 8, !tbaa !897, !range !21, !noundef !22
  %i.anx = trunc nuw i8 %.val3.i.i.i.i277 to i1
  br i1 %i.anx, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i279, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i276
  %.val2.i.i.i.i278 = load ptr, ptr %i.li, align 8
  call void @free(ptr noundef %.val2.i.i.i.i278) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i279

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i279: ; preds = %bb.gh, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i276
  %.val.i.i.i.i.i280 = load ptr, ptr %i.lg, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i281 = icmp eq ptr %.val.i.i.i.i.i280, null
  br i1 %.not.i.i.i.i.i.i.i.i281, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i283, label %bb.gi

bb.gi:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i279
  %.val1.i.i.i.i.i282 = load ptr, ptr %i.lh, align 8, !tbaa !1151
  %i.any = ptrtoint ptr %.val1.i.i.i.i.i282 to i64
  %i.anz = ptrtoint ptr %.val.i.i.i.i.i280 to i64
  %i.aoa = sub i64 %i.any, %i.anz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i280, i64 noundef %i.aoa) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i283

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i283: ; preds = %bb.gi, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i279
  %.val3.i.i.i.i.i284 = load i8, ptr %i.nm, align 8, !tbaa !897, !range !21, !noundef !22
  %i.aob = trunc nuw i8 %.val3.i.i.i.i.i284 to i1
  br i1 %i.aob, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i286, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i283
  %.val2.i.i.i.i.i285 = load ptr, ptr %i.le, align 8
  call void @free(ptr noundef %.val2.i.i.i.i.i285) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i286

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i286: ; preds = %bb.gj, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i283
  %.val.i.i.i1.i287 = load ptr, ptr %i.lb, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i2.i288 = icmp eq ptr %.val.i.i.i1.i287, null
  br i1 %.not.i.i.i.i.i.i2.i288, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i290, label %bb.gk

bb.gk:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i286
  %.val1.i.i.i3.i289 = load ptr, ptr %i.lc, align 8, !tbaa !1151
  %i.aoc = ptrtoint ptr %.val1.i.i.i3.i289 to i64
  %i.aod = ptrtoint ptr %.val.i.i.i1.i287 to i64
  %i.aoe = sub i64 %i.aoc, %i.aod
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i1.i287, i64 noundef %i.aoe) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i290

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i290: ; preds = %bb.gk, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i286
  %.val3.i.i.i5.i291 = load i8, ptr %i.nn, align 8, !tbaa !897, !range !21, !noundef !22
  %i.aof = trunc nuw i8 %.val3.i.i.i5.i291 to i1
  br i1 %i.aof, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i, label %bb.gl

bb.gl:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i290
  %.val2.i.i.i6.i292 = load ptr, ptr %i.kz, align 8
  call void @free(ptr noundef %.val2.i.i.i6.i292) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i: ; preds = %bb.gl, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i290
  %.val.i.i.i.i8.i293 = load ptr, ptr %i.kx, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i9.i294 = icmp eq ptr %.val.i.i.i.i8.i293, null
  br i1 %.not.i.i.i.i.i.i.i9.i294, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i11.i296, label %bb.gm

bb.gm:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i
  %.val1.i.i.i.i10.i295 = load ptr, ptr %i.ky, align 8, !tbaa !1151
  %i.aog = ptrtoint ptr %.val1.i.i.i.i10.i295 to i64
  %i.aoh = ptrtoint ptr %.val.i.i.i.i8.i293 to i64
  %i.aoi = sub i64 %i.aog, %i.aoh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i8.i293, i64 noundef %i.aoi) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i11.i296

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i11.i296: ; preds = %bb.gm, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i
  %.val3.i.i.i.i12.i297 = load i8, ptr %i.no, align 8, !tbaa !897, !range !21, !noundef !22
  %i.aoj = trunc nuw i8 %.val3.i.i.i.i12.i297 to i1
  br i1 %i.aoj, label %_ZN4llvm14iterator_rangeINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EEED2Ev.exit, label %bb.gn

bb.gn:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i11.i296
end_hunk_1
begin_hunk_2_@_ZL27pruneUnusedStdlibModuleJobsRN12_GLOBAL__N_116CompilationGraphEN4llvm8ArrayRefIPNS_7JobNodeEEE:bb.a

._crit_edge.i526:                                 ; preds = %bb.gz
  %.val15.i7.pre.i527 = load ptr, ptr %i.asy, align 8, !tbaa !1209
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.atb = getelementptr i8, ptr %i.asx, i64 32
  %.val12.i.i482 = load ptr, ptr %i.atb, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i.i482, ptr %i.asy, align 8
  %.sroa.440.0..sroa_idx.i.i483 = getelementptr inbounds i8, ptr %.val10.i.i480, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i.i483, align 8
  store i8 1, ptr %i.asz, align 8, !tbaa !1204
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %._crit_edge.i526
  %.val15.i7.i484 = phi ptr [ %.val15.i7.pre.i527, %._crit_edge.i526 ], [ %.val12.i.i482, %bb.ha ] ; 2 uses
  %i.atc = getelementptr i8, ptr %i.asx, i64 32   ; 2 uses
  %i.atd = getelementptr i8, ptr %i.asx, i64 40   ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i485 = getelementptr inbounds i8, ptr %.val10.i.i480, i64 -16
  %.val13.i5.i486 = load ptr, ptr %i.atc, align 8, !tbaa !197
  %.val14.i6.i487 = load i32, ptr %i.atd, align 8, !tbaa !195
  %i.ate = zext i32 %.val14.i6.i487 to i64
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5.i486, i64 %i.ate
  %.not.i8.i488 = icmp eq ptr %.val15.i7.i484, %i.atf
  br i1 %.not.i8.i488, label %.thread.i.i499, label %.lr.ph.i489

.lr.ph.i489:                                      ; preds = %bb.hb, %.critedge.i.backedge.i494
  %.val15.i9.i490 = phi ptr [ %.val15.i.i497, %.critedge.i.backedge.i494 ], [ %.val15.i7.i484, %bb.hb ] ; 2 uses
  %.sroa.2.0.copyload.i.i.i491 = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i.i485, align 8
  %i.atg = getelementptr inbounds nuw i8, ptr %.val15.i9.i490, i64 8
  store ptr %i.atg, ptr %i.asy, align 8, !tbaa !1209
  %.val17.val.i.i492 = load ptr, ptr %.val15.i9.i490, align 8, !tbaa !902
  %i.ath = call noundef ptr %.sroa.2.0.copyload.i.i.i491(ptr noundef %.val17.val.i.i492) #22, !inline_history !1210 ; 5 uses
  %i.ati = load i8, ptr %i.mw, align 8, !tbaa !897, !range !21, !noalias !1305, !noundef !22
  %i.atj = trunc nuw i8 %i.ati to i1
  br i1 %i.atj, label %bb.hc, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i493

bb.hc:                                            ; preds = %.lr.ph.i489
  %i.atk = load ptr, ptr %54, align 8, !tbaa !893, !noalias !1305 ; 2 uses
  %i.atl = load i32, ptr %i.mx, align 4, !tbaa !896, !noalias !1305 ; 4 uses
  %i.atm = zext i32 %i.atl to i64
  %.idx.i.i.i.i.i517 = shl nuw nsw i64 %i.atm, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 %.idx.i.i.i.i.i517 ; 2 uses
  %.not22.i.i.i.i.i518 = icmp eq i32 %i.atl, 0
  br i1 %.not22.i.i.i.i.i518, label %._crit_edge.i.i.i.i.i524, label %.lr.ph.i.i.i.i.i519

.lr.ph.i.i.i.i.i519:                              ; preds = %bb.hc, %.critedge.i.i.i.i.i522
  %.023.i.i.i.i.i520 = phi ptr [ %i.atp, %.critedge.i.i.i.i.i522 ], [ %i.atk, %bb.hc ] ; 2 uses
  %i.ato = load ptr, ptr %.023.i.i.i.i.i520, align 8, !tbaa !436, !noalias !1305
  %.not15.i.i.i.i.i521 = icmp eq ptr %i.ato, %i.ath
  br i1 %.not15.i.i.i.i.i521, label %.critedge.i.backedge.i494, label %.critedge.i.i.i.i.i522

.critedge.i.i.i.i.i522:                           ; preds = %.lr.ph.i.i.i.i.i519
  %i.atp = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i520, i64 8 ; 2 uses
  %.not.i.i.i.i.i523 = icmp eq ptr %i.atp, %i.atn
  br i1 %.not.i.i.i.i.i523, label %._crit_edge.i.i.i.i.i524, label %.lr.ph.i.i.i.i.i519

._crit_edge.i.i.i.i.i524:                         ; preds = %.critedge.i.i.i.i.i522, %bb.hc
  %i.atq = load i32, ptr %i.my, align 8, !tbaa !895, !noalias !1305
  %i.atr = icmp ult i32 %i.atl, %i.atq
  br i1 %i.atr, label %.critedge56.i.i525, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i493

.critedge56.i.i525:                               ; preds = %._crit_edge.i.i.i.i.i524
  %i.ats = add nuw i32 %i.atl, 1
  store i32 %i.ats, ptr %i.mx, align 4, !tbaa !896, !noalias !1305
  store ptr %i.ath, ptr %i.atn, align 8, !tbaa !436, !noalias !1305
  br label %.loopexit.i501

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i493: ; preds = %._crit_edge.i.i.i.i.i524, %.lr.ph.i489
  %i.att = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(232) %54, ptr noundef %i.ath) #22, !noalias !1305
  %i.atu = extractvalue { ptr, i8 } %i.att, 1
  %i.atv = trunc nuw i8 %i.atu to i1
  br i1 %i.atv, label %.loopexit.i501, label %.critedge.i.backedge.i494

.critedge.i.backedge.i494:                        ; preds = %.lr.ph.i.i.i.i.i519, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i493
  %.val13.i.i495 = load ptr, ptr %i.atc, align 8, !tbaa !197
  %.val14.i.i496 = load i32, ptr %i.atd, align 8, !tbaa !195
  %i.atw = zext i32 %.val14.i.i496 to i64
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i495, i64 %i.atw
  %.val15.i.i497 = load ptr, ptr %i.asy, align 8, !tbaa !1209 ; 2 uses
  %.not.i.i498 = icmp eq ptr %.val15.i.i497, %i.atx
  br i1 %.not.i.i498, label %.thread.i.i499, label %.lr.ph.i489

.loopexit.i501:                                   ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i493, %.critedge56.i.i525
  %i.aty = load ptr, ptr %i.mq, align 8, !tbaa !1149 ; 6 uses
  %i.atz = load ptr, ptr %i.mz, align 8, !tbaa !1151
  %.not.i.i.i.i502 = icmp eq ptr %i.aty, %i.atz
  br i1 %.not.i.i.i.i502, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %.loopexit.i501
  store ptr %i.ath, ptr %i.aty, align 8
  %.sroa.529.0..sroa_idx.i.i503 = getelementptr inbounds nuw i8, ptr %i.aty, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i.i503, align 8
  %i.aua = load ptr, ptr %i.mq, align 8, !tbaa !1149
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 32 ; 2 uses
  store ptr %i.aub, ptr %i.mq, align 8, !tbaa !1149
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader

bb.he:                                            ; preds = %.loopexit.i501
  %.val.i.i.i.i.i504 = load ptr, ptr %i.mp, align 8, !tbaa !1145 ; 5 uses
  %i.auc = ptrtoint ptr %i.aty to i64
  %i.aud = ptrtoint ptr %.val.i.i.i.i.i504 to i64 ; 2 uses
  %i.aue = sub i64 %i.auc, %i.aud                 ; 3 uses
  %i.auf = icmp eq i64 %i.aue, 9223372036854775776
  br i1 %i.auf, label %bb.hf, label %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505

bb.hf:                                            ; preds = %bb.he
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505: ; preds = %bb.he
  %i.aug = ashr exact i64 %i.aue, 5               ; 3 uses
  %i.auh = icmp eq ptr %i.aty, %.val.i.i.i.i.i504 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i506 = select i1 %i.auh, i64 1, i64 %i.aug
  %i.aui = add nsw i64 %.sroa.speculated.i.i.i.i.i.i506, %i.aug ; 2 uses
  %i.auj = icmp ult i64 %i.aui, %i.aug
  %i.auk = call i64 @llvm.umin.i64(i64 %i.aui, i64 288230376151711743)
  %i.aul = select i1 %i.auj, i64 288230376151711743, i64 %i.auk ; 3 uses
  %.not.i.i.i.i.i.i507 = icmp ne i64 %i.aul, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i507)
  %i.aum = shl nuw nsw i64 %i.aul, 5
  %i.aun = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aum) #25 ; 5 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 %i.aue ; 2 uses
  store ptr %i.ath, ptr %i.auo, align 8
  %.sroa.529.0..sroa_idx30.i.i508 = getelementptr inbounds nuw i8, ptr %i.auo, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx30.i.i508, align 8
  br i1 %i.auh, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i513, label %.lr.ph.i.i.i.i.i.i25.i.i509

.lr.ph.i.i.i.i.i.i25.i.i509:                      ; preds = %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505, %.lr.ph.i.i.i.i.i.i25.i.i509
  %.03.i.i.i.i.i.i.i.i510 = phi ptr [ %i.auq, %.lr.ph.i.i.i.i.i.i25.i.i509 ], [ %i.aun, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505 ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i511 = phi ptr [ %i.aup, %.lr.ph.i.i.i.i.i.i25.i.i509 ], [ %.val.i.i.i.i.i504, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i510, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i511, i64 32, i1 false), !alias.scope !1310
  %i.aup = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i511, i64 32 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i510, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i26.i.i512 = icmp eq ptr %i.aup, %i.aty
  br i1 %.not.i.i.i.i.i.i26.i.i512, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i513, label %.lr.ph.i.i.i.i.i.i25.i.i509, !llvm.loop !1220

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i513: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i509, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505
  %.0.lcssa.i.i.i.i.i.i.i.i514 = phi ptr [ %i.aun, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i505 ], [ %i.auq, %.lr.ph.i.i.i.i.i.i25.i.i509 ]
  %i.aur = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i514, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i515 = icmp eq ptr %.val.i.i.i.i.i504, null
  br i1 %.not.i27.i.i.i.i.i515, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i516, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i513
  %i.aus = load ptr, ptr %i.mz, align 8, !tbaa !1151
  %i.aut = ptrtoint ptr %i.aus to i64
  %i.auu = sub i64 %i.aut, %i.aud
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i504, i64 noundef %i.auu) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i516

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i516: ; preds = %bb.hg, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i513
  store ptr %i.aun, ptr %i.mp, align 8, !tbaa !1145
  store ptr %i.aur, ptr %i.mq, align 8, !tbaa !1149
  %i.auv = getelementptr inbounds nuw [32 x i8], ptr %i.aun, i64 %i.aul
  store ptr %i.auv, ptr %i.mz, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader

.thread.i.i499:                                   ; preds = %.critedge.i.backedge.i494, %bb.hb
  %i.auw = load ptr, ptr %i.mq, align 8, !tbaa !1149
  %i.aux = getelementptr inbounds i8, ptr %i.auw, i64 -32 ; 4 uses
  store ptr %i.aux, ptr %i.mq, align 8, !tbaa !1149
  %.val19.i.i500 = load ptr, ptr %i.mp, align 8, !tbaa !1152
  %i.auy = icmp eq ptr %.val19.i.i500, %i.aux
  br i1 %i.auy, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader, label %bb.gz, !llvm.loop !1221

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader: ; preds = %.thread.i.i499, %bb.hd, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i516
  %.val2.i.i.i327.ph = phi ptr [ %i.aur, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i516 ], [ %i.aub, %bb.hd ], [ %i.aux, %.thread.i.i499 ]
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit478
  %.val2.i.i.i327 = phi ptr [ %.val2.i.i.i327786, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit478 ], [ %.val2.i.i.i327.ph, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528.preheader ] ; 6 uses
  %.val1.i.i.i326 = load ptr, ptr %i.mp, align 8, !tbaa !1145 ; 4 uses
  %.val3.i.i.i328 = load ptr, ptr %i.na, align 8, !tbaa !1145 ; 2 uses
  %.val4.i.i.i329 = load ptr, ptr %i.nb, align 8, !tbaa !1149
  %i.auz = ptrtoint ptr %.val2.i.i.i327 to i64
  %i.ava = ptrtoint ptr %.val1.i.i.i326 to i64
  %i.avb = sub i64 %i.auz, %i.ava
  %i.avc = ptrtoint ptr %.val4.i.i.i329 to i64
  %i.avd = ptrtoint ptr %.val3.i.i.i328 to i64
  %i.ave = sub i64 %i.avc, %i.avd
  %i.avf = icmp eq i64 %i.avb, %i.ave
  br i1 %i.avf, label %bb.hh, label %.loopexit.i.i.i330

bb.hh:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val1.i.i.i326, %.val2.i.i.i327
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i332

.lr.ph.i.i.i.i.i.i.i.i.i.i332:                    ; preds = %bb.hh, %bb.hj
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.avq, %bb.hj ], [ %.val3.i.i.i328, %bb.hh ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.avp, %bb.hj ], [ %.val1.i.i.i326, %bb.hh ] ; 4 uses
  %i.avg = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.avh = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.avi = icmp eq ptr %i.avg, %i.avh
  br i1 %i.avi, label %bb.hi, label %.loopexit.i.i.i330

bb.hi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i332
  %i.avj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.avj, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.avk, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i.i333 = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i333, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i330

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hi
  %i.avl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.avl, align 8
  %i.avm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.avm, align 8
  %i.avn = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.avo = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i = select i1 %i.avn, i1 %i.avo, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i330, label %bb.hj

bb.hj:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i
  %i.avp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i334 = icmp eq ptr %i.avp, %.val2.i.i.i327
  br i1 %.not.i.i.i.i.i.i.i.i.i.i334, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i332, !llvm.loop !1205

.loopexit.i.i.i330:                               ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, %bb.hi, %.lr.ph.i.i.i.i.i.i.i.i.i.i332, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit528
  %i.avr = getelementptr inbounds i8, ptr %.val2.i.i.i327, i64 -32
  %.val5.i.i.i331 = load ptr, ptr %i.avr, align 8, !tbaa !719
  %i.avs = getelementptr i8, ptr %.val5.i.i.i331, i64 48
  %.val5.val.i.i.i = load i32, ptr %i.avs, align 8, !tbaa !705
  %i.avt = icmp eq i32 %.val5.val.i.i.i, 4
  br i1 %i.avt, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_12ImageJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.preheader

.preheader:                                       ; preds = %.loopexit.i.i.i330, %.thread.i.i449
  %.val10.i.i430 = phi ptr [ %i.axv, %.thread.i.i449 ], [ %.val2.i.i.i327, %.loopexit.i.i.i330 ] ; 5 uses
  %i.avu = getelementptr inbounds i8, ptr %.val10.i.i430, i64 -32
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !1198 ; 3 uses
  %i.avw = getelementptr inbounds i8, ptr %.val10.i.i430, i64 -24 ; 4 uses
  %i.avx = getelementptr i8, ptr %.val10.i.i430, i64 -8 ; 2 uses
  %.val11.i.i431 = load i8, ptr %i.avx, align 8, !tbaa !1204, !range !21, !noundef !22
  %i.avy = trunc nuw i8 %.val11.i.i431 to i1
  br i1 %i.avy, label %._crit_edge.i476, label %bb.hk

._crit_edge.i476:                                 ; preds = %.preheader
  %.val15.i7.pre.i477 = load ptr, ptr %i.avw, align 8, !tbaa !1209
  br label %bb.hl

bb.hk:                                            ; preds = %.preheader
  %i.avz = getelementptr i8, ptr %i.avv, i64 32
  %.val12.i.i432 = load ptr, ptr %i.avz, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i.i432, ptr %i.avw, align 8
  %.sroa.440.0..sroa_idx.i.i433 = getelementptr inbounds i8, ptr %.val10.i.i430, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i.i433, align 8
  store i8 1, ptr %i.avx, align 8, !tbaa !1204
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %._crit_edge.i476
  %.val15.i7.i434 = phi ptr [ %.val15.i7.pre.i477, %._crit_edge.i476 ], [ %.val12.i.i432, %bb.hk ] ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avv, i64 32   ; 2 uses
  %i.awb = getelementptr i8, ptr %i.avv, i64 40   ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i435 = getelementptr inbounds i8, ptr %.val10.i.i430, i64 -16
  %.val13.i5.i436 = load ptr, ptr %i.awa, align 8, !tbaa !197
  %.val14.i6.i437 = load i32, ptr %i.awb, align 8, !tbaa !195
  %i.awc = zext i32 %.val14.i6.i437 to i64
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5.i436, i64 %i.awc
  %.not.i8.i438 = icmp eq ptr %.val15.i7.i434, %i.awd
  br i1 %.not.i8.i438, label %.thread.i.i449, label %.lr.ph.i439

.lr.ph.i439:                                      ; preds = %bb.hl, %.critedge.i.backedge.i444
  %.val15.i9.i440 = phi ptr [ %.val15.i.i447, %.critedge.i.backedge.i444 ], [ %.val15.i7.i434, %bb.hl ] ; 2 uses
  %.sroa.2.0.copyload.i.i.i441 = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i.i435, align 8
  %i.awe = getelementptr inbounds nuw i8, ptr %.val15.i9.i440, i64 8
  store ptr %i.awe, ptr %i.avw, align 8, !tbaa !1209
  %.val17.val.i.i442 = load ptr, ptr %.val15.i9.i440, align 8, !tbaa !902
  %i.awf = call noundef ptr %.sroa.2.0.copyload.i.i.i441(ptr noundef %.val17.val.i.i442) #22, !inline_history !1210 ; 5 uses
  %i.awg = load i8, ptr %i.mw, align 8, !tbaa !897, !range !21, !noalias !1314, !noundef !22
  %i.awh = trunc nuw i8 %i.awg to i1
  br i1 %i.awh, label %bb.hm, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i443

bb.hm:                                            ; preds = %.lr.ph.i439
  %i.awi = load ptr, ptr %54, align 8, !tbaa !893, !noalias !1314 ; 2 uses
  %i.awj = load i32, ptr %i.mx, align 4, !tbaa !896, !noalias !1314 ; 4 uses
  %i.awk = zext i32 %i.awj to i64
  %.idx.i.i.i.i.i467 = shl nuw nsw i64 %i.awk, 3
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awi, i64 %.idx.i.i.i.i.i467 ; 2 uses
  %.not22.i.i.i.i.i468 = icmp eq i32 %i.awj, 0
  br i1 %.not22.i.i.i.i.i468, label %._crit_edge.i.i.i.i.i474, label %.lr.ph.i.i.i.i.i469

.lr.ph.i.i.i.i.i469:                              ; preds = %bb.hm, %.critedge.i.i.i.i.i472
  %.023.i.i.i.i.i470 = phi ptr [ %i.awn, %.critedge.i.i.i.i.i472 ], [ %i.awi, %bb.hm ] ; 2 uses
  %i.awm = load ptr, ptr %.023.i.i.i.i.i470, align 8, !tbaa !436, !noalias !1314
  %.not15.i.i.i.i.i471 = icmp eq ptr %i.awm, %i.awf
  br i1 %.not15.i.i.i.i.i471, label %.critedge.i.backedge.i444, label %.critedge.i.i.i.i.i472

.critedge.i.i.i.i.i472:                           ; preds = %.lr.ph.i.i.i.i.i469
  %i.awn = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i470, i64 8 ; 2 uses
  %.not.i.i.i.i.i473 = icmp eq ptr %i.awn, %i.awl
  br i1 %.not.i.i.i.i.i473, label %._crit_edge.i.i.i.i.i474, label %.lr.ph.i.i.i.i.i469

._crit_edge.i.i.i.i.i474:                         ; preds = %.critedge.i.i.i.i.i472, %bb.hm
  %i.awo = load i32, ptr %i.my, align 8, !tbaa !895, !noalias !1314
  %i.awp = icmp ult i32 %i.awj, %i.awo
  br i1 %i.awp, label %.critedge56.i.i475, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i443

.critedge56.i.i475:                               ; preds = %._crit_edge.i.i.i.i.i474
  %i.awq = add nuw i32 %i.awj, 1
  store i32 %i.awq, ptr %i.mx, align 4, !tbaa !896, !noalias !1314
  store ptr %i.awf, ptr %i.awl, align 8, !tbaa !436, !noalias !1314
  br label %.loopexit.i451

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i443: ; preds = %._crit_edge.i.i.i.i.i474, %.lr.ph.i439
  %i.awr = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(232) %54, ptr noundef %i.awf) #22, !noalias !1314
  %i.aws = extractvalue { ptr, i8 } %i.awr, 1
  %i.awt = trunc nuw i8 %i.aws to i1
  br i1 %i.awt, label %.loopexit.i451, label %.critedge.i.backedge.i444

.critedge.i.backedge.i444:                        ; preds = %.lr.ph.i.i.i.i.i469, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i443
  %.val13.i.i445 = load ptr, ptr %i.awa, align 8, !tbaa !197
  %.val14.i.i446 = load i32, ptr %i.awb, align 8, !tbaa !195
  %i.awu = zext i32 %.val14.i.i446 to i64
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i445, i64 %i.awu
  %.val15.i.i447 = load ptr, ptr %i.avw, align 8, !tbaa !1209 ; 2 uses
  %.not.i.i448 = icmp eq ptr %.val15.i.i447, %i.awv
  br i1 %.not.i.i448, label %.thread.i.i449, label %.lr.ph.i439

.loopexit.i451:                                   ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i443, %.critedge56.i.i475
  %i.aww = load ptr, ptr %i.mq, align 8, !tbaa !1149 ; 6 uses
  %i.awx = load ptr, ptr %i.mz, align 8, !tbaa !1151
  %.not.i.i.i.i452 = icmp eq ptr %i.aww, %i.awx
  br i1 %.not.i.i.i.i452, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %.loopexit.i451
  store ptr %i.awf, ptr %i.aww, align 8
  %.sroa.529.0..sroa_idx.i.i453 = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i.i453, align 8
  %i.awy = load ptr, ptr %i.mq, align 8, !tbaa !1149
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 32 ; 2 uses
  store ptr %i.awz, ptr %i.mq, align 8, !tbaa !1149
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit478

bb.ho:                                            ; preds = %.loopexit.i451
  %.val.i.i.i.i.i454 = load ptr, ptr %i.mp, align 8, !tbaa !1145 ; 5 uses
  %i.axa = ptrtoint ptr %i.aww to i64
  %i.axb = ptrtoint ptr %.val.i.i.i.i.i454 to i64 ; 2 uses
  %i.axc = sub i64 %i.axa, %i.axb                 ; 3 uses
  %i.axd = icmp eq i64 %i.axc, 9223372036854775776
  br i1 %i.axd, label %bb.hp, label %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455

bb.hp:                                            ; preds = %bb.ho
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455: ; preds = %bb.ho
  %i.axe = ashr exact i64 %i.axc, 5               ; 3 uses
  %i.axf = icmp eq ptr %i.aww, %.val.i.i.i.i.i454 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i456 = select i1 %i.axf, i64 1, i64 %i.axe
  %i.axg = add nsw i64 %.sroa.speculated.i.i.i.i.i.i456, %i.axe ; 2 uses
  %i.axh = icmp ult i64 %i.axg, %i.axe
  %i.axi = call i64 @llvm.umin.i64(i64 %i.axg, i64 288230376151711743)
  %i.axj = select i1 %i.axh, i64 288230376151711743, i64 %i.axi ; 3 uses
  %.not.i.i.i.i.i.i457 = icmp ne i64 %i.axj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i457)
  %i.axk = shl nuw nsw i64 %i.axj, 5
  %i.axl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axk) #25 ; 5 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 %i.axc ; 2 uses
  store ptr %i.awf, ptr %i.axm, align 8
  %.sroa.529.0..sroa_idx30.i.i458 = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx30.i.i458, align 8
  br i1 %i.axf, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i463, label %.lr.ph.i.i.i.i.i.i25.i.i459

.lr.ph.i.i.i.i.i.i25.i.i459:                      ; preds = %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455, %.lr.ph.i.i.i.i.i.i25.i.i459
  %.03.i.i.i.i.i.i.i.i460 = phi ptr [ %i.axo, %.lr.ph.i.i.i.i.i.i25.i.i459 ], [ %i.axl, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455 ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i461 = phi ptr [ %i.axn, %.lr.ph.i.i.i.i.i.i25.i.i459 ], [ %.val.i.i.i.i.i454, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i460, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i461, i64 32, i1 false), !alias.scope !1319
  %i.axn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i461, i64 32 ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i460, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i26.i.i462 = icmp eq ptr %i.axn, %i.aww
  br i1 %.not.i.i.i.i.i.i26.i.i462, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i463, label %.lr.ph.i.i.i.i.i.i25.i.i459, !llvm.loop !1220

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i463: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i459, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455
  %.0.lcssa.i.i.i.i.i.i.i.i464 = phi ptr [ %i.axl, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i455 ], [ %i.axo, %.lr.ph.i.i.i.i.i.i25.i.i459 ]
  %i.axp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i464, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i465 = icmp eq ptr %.val.i.i.i.i.i454, null
  br i1 %.not.i27.i.i.i.i.i465, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i466, label %bb.hq

bb.hq:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i463
  %i.axq = load ptr, ptr %i.mz, align 8, !tbaa !1151
  %i.axr = ptrtoint ptr %i.axq to i64
  %i.axs = sub i64 %i.axr, %i.axb
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i454, i64 noundef %i.axs) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i466

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i466: ; preds = %bb.hq, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i463
  store ptr %i.axl, ptr %i.mp, align 8, !tbaa !1145
  store ptr %i.axp, ptr %i.mq, align 8, !tbaa !1149
  %i.axt = getelementptr inbounds nuw [32 x i8], ptr %i.axl, i64 %i.axj
  store ptr %i.axt, ptr %i.mz, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit478

.thread.i.i449:                                   ; preds = %.critedge.i.backedge.i444, %bb.hl
  %i.axu = load ptr, ptr %i.mq, align 8, !tbaa !1149
  %i.axv = getelementptr inbounds i8, ptr %i.axu, i64 -32 ; 4 uses
  store ptr %i.axv, ptr %i.mq, align 8, !tbaa !1149
  %.val19.i.i450 = load ptr, ptr %i.mp, align 8, !tbaa !1152
  %i.axw = icmp eq ptr %.val19.i.i450, %i.axv
  br i1 %i.axw, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit478, label %.preheader, !llvm.loop !1221

end_hunk_2
begin_hunk_3_@"_ZN4llvm20filter_iterator_implINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_":bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i.i.i8 = icmp eq ptr %.val7.i.i.i.i6.pre, %.val8.i.i.i.i7.pre
  br i1 %.not7.i.i.i.i.i.i.i.i8, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14, label %.lr.ph.i.i.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i.i.i9:                          ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5, %.lr.ph.i.i.i.i.i.i.i.i9
  %.09.i.i.i.i.i.i.i.i10 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i9 ], [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i.i11 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i9 ], [ %.val7.i.i.i.i6.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i10, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i.i.i11, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i.i11, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i10, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i12 = icmp eq ptr %i.al, %.val8.i.i.i.i7.pre
  br i1 %.not.i.i.i.i.i.i.i.i12, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14, label %.lr.ph.i.i.i.i.i.i.i.i9, !llvm.loop !1153

_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14: ; preds = %.lr.ph.i.i.i.i.i.i.i.i9, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5
  %i.an = phi ptr [ %i.ak, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5 ], [ %i.af, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.thread ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i9 ]
  %i.ao = phi ptr [ %i.ai, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5 ], [ %i.ad, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.thread ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i9 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i.i.i13 = phi ptr [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5 ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.thread ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i9 ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i13, ptr %i.ao, align 8, !tbaa !1149
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ar = load i16, ptr %i.aq, align 8
  store i16 %i.ar, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(114) %3, ptr noundef nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(120) %4) #22
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !1149 ; 2 uses
  %i.au = ptrtoint ptr %.val6.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %.val6.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i15, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i, label %bb.f

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i: ; preds = %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr null, i64 %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !1151
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14
  %i.ba = icmp ugt i64 %i.aw, 9223372036854775776
  br i1 %i.ba, label %bb.g, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i, !prof !107

bb.g:                                             ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #25 ; 5 uses
  %.val7.i.i.i.i.pre.i = load ptr, ptr %i.b, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i.i.i.pre.i = load ptr, ptr %i.s, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.bb, ptr %i.at, align 8, !tbaa !1145
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !1149
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.i.i.pre.i, %.val8.i.i.i.i.pre.i
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bb, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.val7.i.i.i.i.pre.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, %.val8.i.i.i.i.pre.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1153

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i
  %i.bh = phi ptr [ %i.be, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i ], [ %i.az, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.bi = phi ptr [ %i.bc, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i ], [ %i.ax, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i.thread.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.bi, align 8, !tbaa !1149
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bk = load i16, ptr %i.t, align 8
  store i16 %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(241) %0, ptr noundef nonnull %i.bl, i32 noundef 8, ptr noundef nonnull %i.as, ptr noundef nonnull align 8 dereferenceable(120) %3) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !1145
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !1145
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1149
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !1149
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !1151
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !1151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = load i16, ptr %i.bj, align 8
  store i16 %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i.i = load i8, ptr %i.bu, align 8, !tbaa !897, !range !21, !noundef !22
  %i.bv = trunc nuw i8 %.val3.i.i.i to i1
  br i1 %i.bv, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i
  %.val2.i.i.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val2.i.i.i) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(114) %i.bw, ptr noundef nonnull %i.bx, ptr noundef nonnull align 8 dereferenceable(120) %5) #22
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %.val.i.i.i.i1.i = load ptr, ptr %i.x, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i.i.i2.i = load ptr, ptr %i.ao, align 8, !tbaa !1149 ; 2 uses
  %i.bz = ptrtoint ptr %.val6.i.i.i.i2.i to i64
  %i.ca = ptrtoint ptr %.val.i.i.i.i1.i to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i3.i = icmp eq ptr %.val6.i.i.i.i2.i, %.val.i.i.i.i1.i
  br i1 %.not.i.i.i.i.i.i.i3.i, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread, label %bb.i

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cd = getelementptr inbounds nuw i8, ptr null, i64 %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !1151
  br label %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i

bb.i:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit.i
  %i.cf = icmp ugt i64 %i.cb, 9223372036854775776
  br i1 %i.cf, label %bb.j, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i, !prof !107

bb.j:                                             ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i: ; preds = %bb.i
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #25 ; 7 uses
  %.val7.i.i.i.i6.i.pre = load ptr, ptr %i.x, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i.i.i7.i.pre = load ptr, ptr %i.ao, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.cg, ptr %i.by, align 8, !tbaa !1145
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !1149
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i.i.i8.i = icmp eq ptr %.val7.i.i.i.i6.i.pre, %.val8.i.i.i.i7.i.pre
  br i1 %.not7.i.i.i.i.i.i.i.i8.i, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i, label %.lr.ph.i.i.i.i.i.i.i.i9.i

.lr.ph.i.i.i.i.i.i.i.i9.i:                        ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i, %.lr.ph.i.i.i.i.i.i.i.i9.i
  %.09.i.i.i.i.i.i.i.i10.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i9.i ], [ %i.cg, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i.i11.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i9.i ], [ %.val7.i.i.i.i6.i.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i.i10.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i.i.i11.i, i64 32, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i.i11.i, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i10.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i12.i = icmp eq ptr %i.ck, %.val8.i.i.i.i7.i.pre
  br i1 %.not.i.i.i.i.i.i.i.i12.i, label %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i, label %.lr.ph.i.i.i.i.i.i.i.i9.i, !llvm.loop !1153

_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i9.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i
  %i.cm = phi ptr [ %i.ch, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i ], [ %i.cc, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i9.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cg, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i9.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i13.i = phi ptr [ %i.cg, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i.i5.i.thread ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i9.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i13.i, ptr %i.cm, align 8, !tbaa !1149
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cp = load i16, ptr %i.ap, align 8
  store i16 %i.cp, ptr %i.co, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i
  %.val3.i.i = phi ptr [ %.val3.i.pre.i, %bb.o ], [ %.0.lcssa.i.i.i.i.i.i.i.i13.i, %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i ]
  %.val2.i.i = phi ptr [ %.val2.i.pre.i, %bb.o ], [ %i.cn, %_ZN4llvm15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail8CastFuncINS2_7JobNodeEEEPSC_EC2ERKSF_.exit14.i ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.bm, align 8, !tbaa !1145 ; 3 uses
  %.val1.i.i = load ptr, ptr %i.bo, align 8, !tbaa !1149 ; 4 uses
  %i.cq = ptrtoint ptr %.val1.i.i to i64
  %i.cr = ptrtoint ptr %.val.i.i to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ptrtoint ptr %.val3.i.i to i64
  %i.cu = ptrtoint ptr %.val2.i.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp eq i64 %i.cs, %i.cv
  br i1 %i.cw, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, %.val1.i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.l, %bb.n
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.n ], [ %.val2.i.i, %bb.l ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dg, %bb.n ], [ %.val.i.i, %bb.l ] ; 4 uses
  %i.cx = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cy = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.da, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.db, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dd, align 8
  %i.de = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.df = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %.val1.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

.loopexit.i.i:                                    ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.di = getelementptr i8, ptr %.val1.i.i, i64 -32
  %.val4.val.i.i = load ptr, ptr %i.di, align 8, !tbaa !719
  %i.dj = getelementptr i8, ptr %.val4.val.i.i, i64 48
  %.val.val.i.i.i = load i32, ptr %i.dj, align 8, !tbaa !705
  %.not.i.i = icmp eq i32 %.val.val.i.i.i, 4
  br i1 %.not.i.i, label %bb.o, label %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit"

bb.o:                                             ; preds = %.loopexit.i.i
  %i.dk = call fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(241) %0) ; 0 uses
  %.val2.i.pre.i = load ptr, ptr %i.by, align 8, !tbaa !1145
  %.val3.i.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !1149
  br label %bb.k, !llvm.loop !1232

"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit": ; preds = %bb.l, %.loopexit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val.i.i16 = load ptr, ptr %i.x, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i16, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit"
  %.val1.i.i17 = load ptr, ptr %i.an, align 8, !tbaa !1151
  %i.dl = ptrtoint ptr %.val1.i.i17 to i64
  %i.dm = ptrtoint ptr %.val.i.i16 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i16, i64 noundef %i.dn) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i: ; preds = %bb.p, %"_ZN4llvm20filter_iterator_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EEZL27pruneUnusedStdlibModuleJobsRNS3_16CompilationGraphENS_8ArrayRefISF_EEE3$_0St20forward_iterator_tagEC2ESG_SG_SL_.exit"
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i.i18 = load i8, ptr %i.do, align 8, !tbaa !897, !range !21, !noundef !22
  %i.dp = trunc nuw i8 %.val3.i.i18 to i1
  br i1 %i.dp, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i
  %.val2.i.i19 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %.val2.i.i19) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, %bb.q
  %.val.i.i20 = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i21 = icmp eq ptr %.val.i.i20, null
  br i1 %.not.i.i.i.i.i21, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i23, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit
  %.val1.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !1151
  %i.dq = ptrtoint ptr %.val1.i.i22 to i64
  %i.dr = ptrtoint ptr %.val.i.i20 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i20, i64 noundef %i.ds) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i23

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i23: ; preds = %bb.r, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val3.i.i24 = load i8, ptr %i.dt, align 8, !tbaa !897, !range !21, !noundef !22
  %i.du = trunc nuw i8 %.val3.i.i24 to i1
  br i1 %i.du, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i23
  %.val2.i.i25 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val2.i.i25) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit26

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail8CastFuncINS3_7JobNodeEEEPSD_EESA_St20forward_iterator_tagSF_lPSF_SF_ED2Ev.exit26: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i23, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv(ptr noundef nonnull returned align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10.pre.i = load ptr, ptr %i.b, align 8, !tbaa !1152
  br label %bb.b

bb.b:                                             ; preds = %.thread.i, %bb.a
  %.val10.i = phi ptr [ %i.bh, %.thread.i ], [ %.val10.pre.i, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %.val10.i, i64 -32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1198 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.val10.i, i64 -24 ; 4 uses
  %i.i = getelementptr i8, ptr %.val10.i, i64 -8  ; 2 uses
  %.val11.i = load i8, ptr %i.i, align 8, !tbaa !1204, !range !21, !noundef !22
  %i.j = trunc nuw i8 %.val11.i to i1
  br i1 %i.j, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.val15.i7.pre = load ptr, ptr %i.h, align 8, !tbaa !1209
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %.val12.i = load ptr, ptr %i.k, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i, ptr %i.h, align 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds i8, ptr %.val10.i, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i, align 8
  store i8 1, ptr %i.i, align 8, !tbaa !1204
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.val15.i7 = phi ptr [ %.val15.i7.pre, %._crit_edge ], [ %.val12.i, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  %i.m = getelementptr i8, ptr %i.g, i64 40       ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.val10.i, i64 -16
  %.val13.i5 = load ptr, ptr %i.l, align 8, !tbaa !197
  %.val14.i6 = load i32, ptr %i.m, align 8, !tbaa !195
  %i.n = zext i32 %.val14.i6 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5, i64 %i.n
  %.not.i8 = icmp eq ptr %.val15.i7, %i.o
  br i1 %.not.i8, label %.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.critedge.i.backedge
  %.val15.i9 = phi ptr [ %.val15.i, %.critedge.i.backedge ], [ %.val15.i7, %bb.d ] ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.val15.i9, i64 8
  store ptr %i.p, ptr %i.h, align 8, !tbaa !1209
  %.val17.val.i = load ptr, ptr %.val15.i9, align 8, !tbaa !902
  %i.q = tail call noundef ptr %.sroa.2.0.copyload.i.i(ptr noundef %.val17.val.i) #22, !inline_history !2225 ; 5 uses
  %i.r = load i8, ptr %i.c, align 8, !tbaa !897, !range !21, !noalias !2226, !noundef !22
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.t = load ptr, ptr %0, align 8, !tbaa !893, !noalias !2226 ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !896, !noalias !2226 ; 4 uses
  %i.v = zext i32 %i.u to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.v, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.y, %.critedge.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !436, !noalias !2226
  %.not15.i.i.i.i = icmp eq ptr %i.x, %i.q
  br i1 %.not15.i.i.i.i, label %.critedge.i.backedge, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.e
  %i.z = load i32, ptr %i.e, align 8, !tbaa !895, !noalias !2226
  %i.aa = icmp ult i32 %i.u, %i.z
  br i1 %i.aa, label %.critedge56.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

.critedge56.i:                                    ; preds = %._crit_edge.i.i.i.i
  %i.ab = add nuw i32 %i.u, 1
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !896, !noalias !2226
  store ptr %i.q, ptr %i.w, align 8, !tbaa !436, !noalias !2226
  br label %.loopexit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph
  %i.ac = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.q) #22, !noalias !2226
  %i.ad = extractvalue { ptr, i8 } %i.ac, 1
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.loopexit, label %.critedge.i.backedge

.critedge.i.backedge:                             ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
  %.val13.i = load ptr, ptr %i.l, align 8, !tbaa !197
  %.val14.i = load i32, ptr %i.m, align 8, !tbaa !195
  %i.af = zext i32 %.val14.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val13.i, i64 %i.af
  %.val15.i = load ptr, ptr %i.h, align 8, !tbaa !1209 ; 2 uses
  %.not.i = icmp eq ptr %.val15.i, %i.ag
  br i1 %.not.i, label %.thread.i, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %.critedge56.i
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !1149 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1151
  %.not.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  store ptr %i.q, ptr %i.ah, align 8
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i, align 8
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !1149
end_hunk_3
begin_hunk_4_@_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5: ; preds = %bb.d
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #25 ; 5 uses
  %.val7.i.i6.pre = load ptr, ptr %i.v, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i7.pre = load ptr, ptr %i.w, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !1145
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i8 = icmp eq ptr %.val7.i.i6.pre, %.val8.i.i7.pre
  br i1 %.not7.i.i.i.i.i.i8, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14, label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5, %.lr.ph.i.i.i.i.i.i9
  %.09.i.i.i.i.i.i10 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i9 ], [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i11 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i9 ], [ %.val7.i.i6.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i10, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i11, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i11, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i10, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.ai, %.val8.i.i7.pre
  br i1 %.not.i.i.i.i.i.i12, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14, label %.lr.ph.i.i.i.i.i.i9, !llvm.loop !1153

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14: ; preds = %.lr.ph.i.i.i.i.i.i9, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5
  %i.ak = phi ptr [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ %i.ac, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.ah, %.lr.ph.i.i.i.i.i.i9 ]
  %i.al = phi ptr [ %i.af, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ %i.aa, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.af, %.lr.ph.i.i.i.i.i.i9 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i13 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.aj, %.lr.ph.i.i.i.i.i.i9 ]
  store ptr %.0.lcssa.i.i.i.i.i.i13, ptr %i.al, align 8, !tbaa !1149
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(112) %4) #22
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !1149 ; 2 uses
  %i.ao = ptrtoint ptr %.val6.i.i.i to i64
  %i.ap = ptrtoint ptr %.val.i.i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i15 = icmp eq ptr %.val6.i.i.i, %.val.i.i.i
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i, label %bb.f

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr null, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1151
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14
  %i.au = icmp ugt i64 %i.aq, 9223372036854775776
  br i1 %i.au, label %bb.g, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, !prof !107

bb.g:                                             ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i: ; preds = %bb.f
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #25 ; 5 uses
  %.val7.i.i.pre.i = load ptr, ptr %i.b, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i.pre.i = load ptr, ptr %i.s, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.av, ptr %i.an, align 8, !tbaa !1145
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !1149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.pre.i, %.val8.i.i.pre.i
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.val7.i.i.pre.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %.val8.i.i.pre.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1153

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i
  %i.bb = phi ptr [ %i.ay, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ %i.at, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ %i.ar, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bc, align 8, !tbaa !1149
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull %i.bd, i32 noundef 8, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !1145
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !1145
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !1149
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !1149
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !1151
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i = load i8, ptr %i.bk, align 8, !tbaa !897, !range !21, !noundef !22
  %i.bl = trunc nuw i8 %.val3.i.i to i1
  br i1 %i.bl, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i
  %.val2.i.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val2.i.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 dereferenceable(112) %5) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.val.i.i1.i = load ptr, ptr %i.u, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i2.i = load ptr, ptr %i.al, align 8, !tbaa !1149 ; 2 uses
  %i.bp = ptrtoint ptr %.val6.i.i2.i to i64
  %i.bq = ptrtoint ptr %.val.i.i1.i to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3.i = icmp eq ptr %.val6.i.i2.i, %.val.i.i1.i
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread, label %bb.i

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr null, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i

bb.i:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i
  %i.bv = icmp ugt i64 %i.br, 9223372036854775776
  br i1 %i.bv, label %bb.j, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i, !prof !107

bb.j:                                             ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i: ; preds = %bb.i
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #25 ; 7 uses
  %.val7.i.i6.i.pre = load ptr, ptr %i.u, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i7.i.pre = load ptr, ptr %i.al, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !1145
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !1149
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i8.i = icmp eq ptr %.val7.i.i6.i.pre, %.val8.i.i7.i.pre
  br i1 %.not7.i.i.i.i.i.i8.i, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i, label %.lr.ph.i.i.i.i.i.i9.i

.lr.ph.i.i.i.i.i.i9.i:                            ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i, %.lr.ph.i.i.i.i.i.i9.i
  %.09.i.i.i.i.i.i10.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i11.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i9.i ], [ %.val7.i.i6.i.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i10.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i11.i, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i11.i, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i10.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i12.i = icmp eq ptr %i.ca, %.val8.i.i7.i.pre
  br i1 %.not.i.i.i.i.i.i12.i, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i, label %.lr.ph.i.i.i.i.i.i9.i, !llvm.loop !1153

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i: ; preds = %.lr.ph.i.i.i.i.i.i9.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i
  %i.cc = phi ptr [ %i.bx, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ %i.bs, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.bx, %.lr.ph.i.i.i.i.i.i9.i ] ; 2 uses
  %i.cd = phi ptr [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.bw, %.lr.ph.i.i.i.i.i.i9.i ]
  %.0.lcssa.i.i.i.i.i.i13.i = phi ptr [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.cb, %.lr.ph.i.i.i.i.i.i9.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i13.i, ptr %i.cc, align 8, !tbaa !1149
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i
  %.val4.i.i = phi ptr [ %.val4.i.pre.i, %bb.o ], [ %.0.lcssa.i.i.i.i.i.i13.i, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i ]
  %.val3.i17.i = phi ptr [ %.val3.i17.pre.i, %bb.o ], [ %i.cd, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i ] ; 2 uses
  %.val1.i15.i = load ptr, ptr %i.be, align 8, !tbaa !1145 ; 3 uses
  %.val2.i16.i = load ptr, ptr %i.bg, align 8, !tbaa !1149 ; 4 uses
  %i.ce = ptrtoint ptr %.val2.i16.i to i64
  %i.cf = ptrtoint ptr %.val1.i15.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ptrtoint ptr %.val4.i.i to i64
  %i.ci = ptrtoint ptr %.val3.i17.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp eq i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val1.i15.i, %.val2.i16.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.l, %bb.n
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.n ], [ %.val3.i17.i, %bb.l ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.n ], [ %.val1.i15.i, %bb.l ] ; 4 uses
  %i.cl = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cm = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.co, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.cp, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8
  %i.cs = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i to i1
  %i.ct = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %.val2.i16.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

.loopexit.i.i:                                    ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.k
  %i.cw = getelementptr inbounds i8, ptr %.val2.i16.i, i64 -32
  %.val5.i.i = load ptr, ptr %i.cw, align 8, !tbaa !719
  %i.cx = getelementptr i8, ptr %.val5.i.i, i64 48
  %.val5.val.i.i = load i32, ptr %i.cx, align 8, !tbaa !705
  %i.cy = icmp eq i32 %.val5.val.i.i, 4
  br i1 %i.cy, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i
  %i.cz = call fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(225) %0) ; 0 uses
  %.val3.i17.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !1145
  %.val4.i.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !1149
  br label %bb.k, !llvm.loop !1323

_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit: ; preds = %bb.l, %.loopexit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit
  %.val1.i = load ptr, ptr %i.ak, align 8, !tbaa !1151
  %i.da = ptrtoint ptr %.val1.i to i64
  %i.db = ptrtoint ptr %.val.i to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i: ; preds = %bb.p, %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_12ImageJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i = load i8, ptr %i.dd, align 8, !tbaa !897, !range !21, !noundef !22
  %i.de = trunc nuw i8 %.val3.i to i1
  br i1 %i.de, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i
  %.val2.i = load ptr, ptr %5, align 8
  call void @free(ptr noundef %.val2.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i, %bb.q
  %.val.i16 = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %.val.i16, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit
  %.val1.i18 = load ptr, ptr %i.r, align 8, !tbaa !1151
  %i.df = ptrtoint ptr %.val1.i18 to i64
  %i.dg = ptrtoint ptr %.val.i16 to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i16, i64 noundef %i.dh) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19: ; preds = %bb.r, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val3.i20 = load i8, ptr %i.di, align 8, !tbaa !897, !range !21, !noundef !22
  %i.dj = trunc nuw i8 %.val3.i20 to i1
  br i1 %i.dj, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19
  %.val2.i21 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val2.i21) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19, %bb.s
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E4growEj(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, i32 noundef %1) unnamed_addr #11 align 2 {
_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEC2EjNS_12DenseMapBaseISD_S3_S7_S9_SC_E16ExactBucketCountE.exit:
  %2 = alloca %"class.llvm::DenseMap.1382", align 16 ; 8 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef range(i32 64, 0) i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1241
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 6                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #22 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1234
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1240
  store i32 0, ptr %i.p, align 16, !tbaa !1242
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2237   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1601
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !436
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !436
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !36
  store <2 x i32> %i.ag, ptr %i.ad, align 8, !tbaa !36
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit, label %.lr.ph11.preheader.i.i

.lr.ph11.preheader.i.i:                           ; preds = %_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEC2EjNS_12DenseMapBaseISD_S3_S7_S9_SC_E16ExactBucketCountE.exit
  %i.ai = zext i32 %i.af to i64                   ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 31               ; 2 uses
  %i.ak = lshr i64 %i.aj, 5
  br label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph11.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph11.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !36 ; 2 uses
  %.not11.i6.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph11.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.an = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.a

bb.a:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i7.i.i = phi i32 [ %i.am, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i7.i.i, i1 true)
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !897, !range !21, !noundef !22
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !893
  tail call void @free(ptr noundef %i.aw) #22
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.b, %bb.a
  %i.ax = add i32 %.0.i7.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i7.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.a, !llvm.loop !1330

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph11.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.ak
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph11.i.i, !llvm.loop !1331

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %i.az = shl nuw nsw i64 %i.ai, 6
  %i.ba = lshr i64 %i.aj, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.bc, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS1_7JobNodeELj4EEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEC2EjNS_12DenseMapBaseISD_S3_S7_S9_SC_E16ExactBucketCountE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E10destroyAllEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN12_GLOBAL__N_112ImageJobNodeENS_11SmallPtrSetIPNS2_7JobNodeELj4EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S8_EEEES4_S8_SA_SD_E8moveFromERSE_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #11 align 2 {
bb.a:
  %.val10 = load ptr, ptr %1, align 8, !tbaa !1234
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !1240
end_hunk_4
begin_hunk_5_@_ZL29propagateModuleFileMappingArgRN5clang6driver11CompilationERN12_GLOBAL__N_118NamedModuleJobNodeEN4llvm9StringRefE:bb.a

bb.bx:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 104
  %.val1.i.i.i33.i = load ptr, ptr %i.pz, align 8, !tbaa !1151, !noalias !2342
  %i.qa = ptrtoint ptr %.val1.i.i.i33.i to i64
  %i.qb = ptrtoint ptr %.val.i.i.i31.i to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i31.i, i64 noundef %i.qc) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i: ; preds = %bb.bx, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i30.i
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val3.i.i.i35.i = load i8, ptr %i.qd, align 8, !tbaa !897, !range !21, !noalias !2342, !noundef !22
  %i.qe = trunc nuw i8 %.val3.i.i.i35.i to i1
  br i1 %i.qe, label %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i
  %.val2.i.i.i36.i = load ptr, ptr %7, align 8, !noalias !2342
  call void @free(ptr noundef %.val2.i.i.i36.i) #22
  br label %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit

_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i34.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.val.i.i.i86 = load ptr, ptr %i.ie, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i87 = icmp eq ptr %.val.i.i.i86, null
  br i1 %.not.i.i.i.i.i.i87, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i89, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit
  %.val1.i.i.i88 = load ptr, ptr %i.ig, align 8, !tbaa !1151
  %i.qf = ptrtoint ptr %.val1.i.i.i88 to i64
  %i.qg = ptrtoint ptr %.val.i.i.i86 to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i86, i64 noundef %i.qh) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i89

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i89: ; preds = %bb.bz, %_ZN4llvm9map_rangeINS_14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEEEENSC_8CastFuncISE_EEEEDaOT_T0_.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %26, i64 360
  %.val3.i.i.i90 = load i8, ptr %i.qi, align 8, !tbaa !897, !range !21, !noundef !22
  %i.qj = trunc nuw i8 %.val3.i.i.i90 to i1
  br i1 %i.qj, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i92, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i89
  %.val2.i.i.i91 = load ptr, ptr %i.ic, align 8
  call void @free(ptr noundef %.val2.i.i.i91) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i92

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i92: ; preds = %bb.ca, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i89
  %.val.i.i.i.i93 = load ptr, ptr %i.hy, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i94 = icmp eq ptr %.val.i.i.i.i93, null
  br i1 %.not.i.i.i.i.i.i.i94, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i96, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i92
  %.val1.i.i.i.i95 = load ptr, ptr %i.ia, align 8, !tbaa !1151
  %i.qk = ptrtoint ptr %.val1.i.i.i.i95 to i64
  %i.ql = ptrtoint ptr %.val.i.i.i.i93 to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i93, i64 noundef %i.qm) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i96

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i96: ; preds = %bb.cb, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i92
  %i.qn = getelementptr inbounds nuw i8, ptr %26, i64 248
  %.val3.i.i.i.i97 = load i8, ptr %i.qn, align 8, !tbaa !897, !range !21, !noundef !22
  %i.qo = trunc nuw i8 %.val3.i.i.i.i97 to i1
  br i1 %i.qo, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i99, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i96
  %.val2.i.i.i.i98 = load ptr, ptr %i.hw, align 8
  call void @free(ptr noundef %.val2.i.i.i.i98) #22
  br label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i99

_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i99: ; preds = %bb.cc, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i96
  %.val.i.i1.i = load ptr, ptr %i.hs, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %.val.i.i1.i, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i99
  %.val1.i.i3.i = load ptr, ptr %i.hu, align 8, !tbaa !1151
  %i.qp = ptrtoint ptr %.val1.i.i3.i to i64
  %i.qq = ptrtoint ptr %.val.i.i1.i to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i1.i, i64 noundef %i.qr) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i: ; preds = %bb.cd, %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagED2Ev.exit.i99
  %i.qs = getelementptr inbounds nuw i8, ptr %26, i64 128
  %.val3.i.i5.i = load i8, ptr %i.qs, align 8, !tbaa !897, !range !21, !noundef !22
  %i.qt = trunc nuw i8 %.val3.i.i5.i to i1
  br i1 %i.qt, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i
  %.val2.i.i6.i = load ptr, ptr %i.hq, align 8
  call void @free(ptr noundef %.val2.i.i6.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i: ; preds = %bb.ce, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i4.i
  %.val.i.i.i8.i = load ptr, ptr %i.hm, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i9.i = icmp eq ptr %.val.i.i.i8.i, null
  br i1 %.not.i.i.i.i.i.i9.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i
  %.val1.i.i.i10.i = load ptr, ptr %i.ho, align 8, !tbaa !1151
  %i.qu = ptrtoint ptr %.val1.i.i.i10.i to i64
  %i.qv = ptrtoint ptr %.val.i.i.i8.i to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i8.i, i64 noundef %i.qw) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i: ; preds = %bb.cf, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i7.i
  %i.qx = getelementptr inbounds nuw i8, ptr %26, i64 16
  %.val3.i.i.i12.i = load i8, ptr %i.qx, align 8, !tbaa !897, !range !21, !noundef !22
  %i.qy = trunc nuw i8 %.val3.i.i.i12.i to i1
  br i1 %i.qy, label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i
  %.val2.i.i.i13.i = load ptr, ptr %26, align 8
  call void @free(ptr noundef %.val2.i.i.i13.i) #22
  br label %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit

_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i11.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2349)
  call fastcc void @_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(234) %27, ptr noundef nonnull align 8 dereferenceable(480) %25)
  %i.qz = getelementptr inbounds nuw i8, ptr %27, i64 232
  %i.ra = load i16, ptr %i.na, align 8, !noalias !2349
  store i16 %i.ra, ptr %i.qz, align 8, !alias.scope !2349
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  call fastcc void @_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ERKSF_(ptr noundef nonnull align 8 dereferenceable(234) %28, ptr noundef nonnull align 8 dereferenceable(234) %i.nc)
  %i.rb = getelementptr inbounds nuw i8, ptr %28, i64 232
  %i.rc = load i16, ptr %i.no, align 8, !noalias !2352
  store i16 %i.rc, ptr %i.rb, align 8, !alias.scope !2352
  %i.rd = getelementptr inbounds nuw i8, ptr %27, i64 88 ; 6 uses
  %i.re = getelementptr inbounds nuw i8, ptr %27, i64 96 ; 8 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %28, i64 88 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %28, i64 96
  %i.rh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 12 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.rl = getelementptr inbounds nuw i8, ptr %32, i64 33
  %i.rm = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.rn = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.rq = getelementptr inbounds nuw i8, ptr %31, i64 33
  %i.rr = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %30, i64 33
  %i.rt = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.sroa.2.0..sroa_idx.i.i.i172 = getelementptr inbounds nuw i8, ptr %30, i64 24
  %i.ru = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %33, i64 12
  %i.rx = getelementptr inbounds nuw i8, ptr %27, i64 200 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %27, i64 208
  %i.rz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %27, i64 12 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.sc = getelementptr inbounds nuw i8, ptr %27, i64 104 ; 4 uses
  %.val16.pre = load ptr, ptr %i.rd, align 8, !tbaa !1145
  %.val17.pre = load ptr, ptr %i.re, align 8, !tbaa !1149
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge: ; preds = %.loopexit.i.i.i, %bb.dl, %bb.dn
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit: ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit
  %.val17 = phi ptr [ %.val17.pre, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit ], [ %.val2.i.i.i177, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge ] ; 4 uses
  %.val16 = phi ptr [ %.val16.pre, %_ZN4llvm14iterator_rangeINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS5_Lj8EEELb0ENS_11GraphTraitsIS5_EEEENS_6detail17IsaCheckPredicateIJNS3_14ScannedJobNodeEEEESt20forward_iterator_tagEEED2Ev.exit ], [ %.val1.i.i.i176, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge ] ; 3 uses
  %.val18 = load ptr, ptr %i.rf, align 8, !tbaa !1145 ; 2 uses
  %.val19 = load ptr, ptr %i.rg, align 8, !tbaa !1149
  %i.sd = ptrtoint ptr %.val17 to i64
  %i.se = ptrtoint ptr %.val16 to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = ptrtoint ptr %.val19 to i64
  %i.sh = ptrtoint ptr %.val18 to i64
  %i.si = sub i64 %i.sg, %i.sh
  %i.sj = icmp eq i64 %i.sf, %i.si
  br i1 %i.sj, label %bb.ch, label %.loopexit

bb.ch:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val16, %.val17
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ch, %bb.cj
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.su, %bb.cj ], [ %.val18, %bb.ch ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.st, %bb.cj ], [ %.val16, %bb.ch ] ; 4 uses
  %i.sk = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.sl = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %bb.ci, label %.loopexit

bb.ci:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.sn, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.so, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i100 = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i100, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, label %.loopexit

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.sp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sp, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sq, align 8
  %i.sr = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i to i1
  %i.ss = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i = select i1 %i.sr, i1 %i.ss, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i
  %i.st = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i101 = icmp eq ptr %i.st, %.val17
  br i1 %.not.i.i.i.i.i.i.i.i.i101, label %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit: ; preds = %bb.ch, %bb.cj
  %i.sv = getelementptr inbounds nuw i8, ptr %28, i64 112
  %i.sw = getelementptr inbounds nuw i8, ptr %28, i64 200
  %.val.i.i.i102 = load ptr, ptr %i.sw, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i103 = icmp eq ptr %.val.i.i.i102, null
  br i1 %.not.i.i.i.i.i.i103, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i105, label %bb.ck

bb.ck:                                            ; preds = %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit
  %i.sx = getelementptr inbounds nuw i8, ptr %28, i64 216
  %.val1.i.i.i104 = load ptr, ptr %i.sx, align 8, !tbaa !1151
  %i.sy = ptrtoint ptr %.val1.i.i.i104 to i64
  %i.sz = ptrtoint ptr %.val.i.i.i102 to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i102, i64 noundef %i.ta) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i105

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i105: ; preds = %bb.ck, %_ZNK4llvm20iterator_facade_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESG_SK_lPSK_SK_EneERKSL_.exit
  %i.tb = getelementptr inbounds nuw i8, ptr %28, i64 128
  %.val3.i.i.i106 = load i8, ptr %i.tb, align 8, !tbaa !897, !range !21, !noundef !22
  %i.tc = trunc nuw i8 %.val3.i.i.i106 to i1
  br i1 %i.tc, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i108, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i105
  %.val2.i.i.i107 = load ptr, ptr %i.sv, align 8
  call void @free(ptr noundef %.val2.i.i.i107) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i108

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i108: ; preds = %bb.cl, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i105
  %.val.i.i.i.i109 = load ptr, ptr %i.rf, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i110 = icmp eq ptr %.val.i.i.i.i109, null
  br i1 %.not.i.i.i.i.i.i.i110, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i112, label %bb.cm

bb.cm:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i108
  %i.td = getelementptr inbounds nuw i8, ptr %28, i64 104
  %.val1.i.i.i.i111 = load ptr, ptr %i.td, align 8, !tbaa !1151
  %i.te = ptrtoint ptr %.val1.i.i.i.i111 to i64
  %i.tf = ptrtoint ptr %.val.i.i.i.i109 to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i109, i64 noundef %i.tg) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i112

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i112: ; preds = %bb.cm, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i108
  %i.th = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.val3.i.i.i.i113 = load i8, ptr %i.th, align 8, !tbaa !897, !range !21, !noundef !22
  %i.ti = trunc nuw i8 %.val3.i.i.i.i113 to i1
  br i1 %i.ti, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i112
  %.val2.i.i.i.i114 = load ptr, ptr %28, align 8
  call void @free(ptr noundef %.val2.i.i.i.i114) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i112, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.tj = getelementptr inbounds nuw i8, ptr %27, i64 112
  %.val.i.i.i116 = load ptr, ptr %i.rx, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %.val.i.i.i116, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i119, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %27, i64 216
  %.val1.i.i.i118 = load ptr, ptr %i.tk, align 8, !tbaa !1151
  %i.tl = ptrtoint ptr %.val1.i.i.i118 to i64
  %i.tm = ptrtoint ptr %.val.i.i.i116 to i64
  %i.tn = sub i64 %i.tl, %i.tm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i116, i64 noundef %i.tn) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i119

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i119: ; preds = %bb.co, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit
  %i.to = getelementptr inbounds nuw i8, ptr %27, i64 128
  %.val3.i.i.i120 = load i8, ptr %i.to, align 8, !tbaa !897, !range !21, !noundef !22
  %i.tp = trunc nuw i8 %.val3.i.i.i120 to i1
  br i1 %i.tp, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i122, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i119
  %.val2.i.i.i121 = load ptr, ptr %i.tj, align 8
  call void @free(ptr noundef %.val2.i.i.i121) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i122

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i122: ; preds = %bb.cp, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i119
  %.val.i.i.i.i123 = load ptr, ptr %i.rd, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i124 = icmp eq ptr %.val.i.i.i.i123, null
  br i1 %.not.i.i.i.i.i.i.i124, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i126, label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i122
  %.val1.i.i.i.i125 = load ptr, ptr %i.sc, align 8, !tbaa !1151
  %i.tq = ptrtoint ptr %.val1.i.i.i.i125 to i64
  %i.tr = ptrtoint ptr %.val.i.i.i.i123 to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i123, i64 noundef %i.ts) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i126

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i126: ; preds = %bb.cq, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i122
  %.val3.i.i.i.i127 = load i8, ptr %i.rz, align 8, !tbaa !897, !range !21, !noundef !22
  %i.tt = trunc nuw i8 %.val3.i.i.i.i127 to i1
  br i1 %i.tt, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit130, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i126
  %.val2.i.i.i.i128 = load ptr, ptr %27, align 8
  call void @free(ptr noundef %.val2.i.i.i.i128) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit130

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit130: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i126, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %.val.i.i.i.i131 = load ptr, ptr %i.nk, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i132 = icmp eq ptr %.val.i.i.i.i131, null
  br i1 %.not.i.i.i.i.i.i.i132, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i134, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit130
  %.val1.i.i.i.i133 = load ptr, ptr %i.nm, align 8, !tbaa !1151
  %i.tu = ptrtoint ptr %.val1.i.i.i.i133 to i64
  %i.tv = ptrtoint ptr %.val.i.i.i.i131 to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i131, i64 noundef %i.tw) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i134

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i134: ; preds = %bb.cs, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit130
  %i.tx = getelementptr inbounds nuw i8, ptr %25, i64 368
  %.val3.i.i.i.i135 = load i8, ptr %i.tx, align 8, !tbaa !897, !range !21, !noundef !22
  %i.ty = trunc nuw i8 %.val3.i.i.i.i135 to i1
  br i1 %i.ty, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i137, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i134
  %.val2.i.i.i.i136 = load ptr, ptr %i.ni, align 8
  call void @free(ptr noundef %.val2.i.i.i.i136) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i137

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i137: ; preds = %bb.ct, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i134
  %.val.i.i.i.i.i138 = load ptr, ptr %i.ne, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i.i139 = icmp eq ptr %.val.i.i.i.i.i138, null
  br i1 %.not.i.i.i.i.i.i.i.i139, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i141, label %bb.cu

bb.cu:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i137
  %.val1.i.i.i.i.i140 = load ptr, ptr %i.ng, align 8, !tbaa !1151
  %i.tz = ptrtoint ptr %.val1.i.i.i.i.i140 to i64
  %i.ua = ptrtoint ptr %.val.i.i.i.i.i138 to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i138, i64 noundef %i.ub) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i141

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i141: ; preds = %bb.cu, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i.i137
  %i.uc = getelementptr inbounds nuw i8, ptr %25, i64 256
  %.val3.i.i.i.i.i142 = load i8, ptr %i.uc, align 8, !tbaa !897, !range !21, !noundef !22
  %i.ud = trunc nuw i8 %.val3.i.i.i.i.i142 to i1
  br i1 %i.ud, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i144, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i141
  %.val2.i.i.i.i.i143 = load ptr, ptr %i.nc, align 8
  call void @free(ptr noundef %.val2.i.i.i.i.i143) #22
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i144

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i144: ; preds = %bb.cv, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i.i141
  %.val.i.i.i1.i = load ptr, ptr %i.mw, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i2.i = icmp eq ptr %.val.i.i.i1.i, null
  br i1 %.not.i.i.i.i.i.i2.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i144
  %.val1.i.i.i3.i = load ptr, ptr %i.my, align 8, !tbaa !1151
  %i.ue = ptrtoint ptr %.val1.i.i.i3.i to i64
  %i.uf = ptrtoint ptr %.val.i.i.i1.i to i64
  %i.ug = sub i64 %i.ue, %i.uf
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i1.i, i64 noundef %i.ug) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i: ; preds = %bb.cw, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_ED2Ev.exit.i144
  %i.uh = getelementptr inbounds nuw i8, ptr %25, i64 128
  %.val3.i.i.i5.i = load i8, ptr %i.uh, align 8, !tbaa !897, !range !21, !noundef !22
  %i.ui = trunc nuw i8 %.val3.i.i.i5.i to i1
  br i1 %i.ui, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i
  %.val2.i.i.i6.i = load ptr, ptr %i.mu, align 8
  call void @free(ptr noundef %.val2.i.i.i6.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i: ; preds = %bb.cx, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i4.i
  %.val.i.i.i.i8.i = load ptr, ptr %i.mq, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i.i.i.i9.i = icmp eq ptr %.val.i.i.i.i8.i, null
  br i1 %.not.i.i.i.i.i.i.i9.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i.i.i11.i, label %bb.cy

bb.cy:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i.i7.i
  %.val1.i.i.i.i10.i = load ptr, ptr %i.ms, align 8, !tbaa !1151
end_hunk_5
begin_hunk_6_@_ZL29propagateModuleFileMappingArgRN5clang6driver11CompilationERN12_GLOBAL__N_118NamedModuleJobNodeEN4llvm9StringRefE:bb.a

bb.db:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i148
  %.val2.i.i150 = load ptr, ptr %i.cq, align 8
  call void @free(ptr noundef %.val2.i.i150) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i151

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i151: ; preds = %bb.db, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i148
  %.val.i1.i152 = load ptr, ptr %i.ca, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i2.i153 = icmp eq ptr %.val.i1.i152, null
  br i1 %.not.i.i.i.i2.i153, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i4.i155, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i151
  %i.uu = getelementptr inbounds nuw i8, ptr %23, i64 104
  %.val1.i3.i154 = load ptr, ptr %i.uu, align 8, !tbaa !1151
  %i.uv = ptrtoint ptr %.val1.i3.i154 to i64
  %i.uw = ptrtoint ptr %.val.i1.i152 to i64
  %i.ux = sub i64 %i.uv, %i.uw
  call void @_ZdlPvm(ptr noundef nonnull %.val.i1.i152, i64 noundef %i.ux) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i4.i155

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i4.i155: ; preds = %bb.dc, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i151
  %i.uy = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.val3.i5.i156 = load i8, ptr %i.uy, align 8, !tbaa !897, !range !21, !noundef !22
  %i.uz = trunc nuw i8 %.val3.i5.i156 to i1
  br i1 %i.uz, label %_ZN4llvm14iterator_rangeINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEEED2Ev.exit158, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i4.i155
  %.val2.i6.i157 = load ptr, ptr %23, align 8
  call void @free(ptr noundef %.val2.i6.i157) #22
  br label %_ZN4llvm14iterator_rangeINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEEED2Ev.exit158

_ZN4llvm14iterator_rangeINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEEED2Ev.exit158: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i4.i155, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  ret void

.loopexit:                                        ; preds = %bb.ci, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit
  %i.va = getelementptr i8, ptr %.val17, i64 -32
  %.val20.val = load ptr, ptr %i.va, align 8, !tbaa !719
  %i.vb = getelementptr inbounds nuw i8, ptr %.val20.val, i64 56
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !215 ; 4 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 8
  %.val = load ptr, ptr %i.vd, align 8, !tbaa !291 ; 2 uses
  %i.ve = getelementptr i8, ptr %i.vc, i64 16
  %.val14 = load ptr, ptr %i.ve, align 8, !tbaa !249
  %i.vf = getelementptr i8, ptr %.val14, i64 24
  %.val14.val = load ptr, ptr %i.vf, align 8, !tbaa !292
  %i.vg = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.vh = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !293
  %i.vj = call noundef nonnull align 8 dereferenceable(328) ptr @_ZN5clang6driver11Compilation19getArgsForToolChainEPKNS0_9ToolChainENS_9BoundArchENS0_6Action11OffloadKindE(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef nonnull %.val14.val, ptr noundef nonnull byval(%"struct.clang::BoundArch") align 8 %i.vg, i32 noundef %i.vi) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vc, i64 56 ; 3 uses
  store ptr %i.rh, ptr %29, align 8, !tbaa !197
  store i32 0, ptr %i.ri, align 8, !tbaa !195
  store i32 16, ptr %i.rj, align 4, !tbaa !196
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vc, i64 64 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !195 ; 5 uses
  %.not.i.i = icmp eq i32 %i.vm, 0
  %i.vn = icmp eq ptr %29, %i.vk
  %or.cond.i = or i1 %i.vn, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvmplERKNS_5TwineES2_.exit173, label %bb.de

bb.de:                                            ; preds = %.loopexit
  %i.vo = icmp ugt i32 %i.vm, 16
  br i1 %i.vo, label %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i:       ; preds = %bb.de
  %i.vp = zext i32 %i.vm to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %29, ptr noundef nonnull %i.rh, i64 noundef %i.vp, i64 noundef 8) #22
  %.pre.i = load i32, ptr %i.vl, align 8, !tbaa !195 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre = load ptr, ptr %29, align 8, !tbaa !197
  br label %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.de
  %i.vq = phi ptr [ %.pre, %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.rh, %bb.de ]
  %i.vr = phi i32 [ %.pre.i, %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.vm, %bb.de ]
  %i.vs = zext i32 %i.vr to i64
  %i.vt = load ptr, ptr %i.vk, align 8, !tbaa !197
  %gepdiff.i.i = shl nuw nsw i64 %i.vs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr align 8 %i.vt, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKPKcPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.vm, ptr %i.ri, align 8, !tbaa !195
  br label %_ZN4llvmplERKNS_5TwineES2_.exit173

_ZN4llvmplERKNS_5TwineES2_.exit173:               ; preds = %.sink.split.i.i, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  store i8 3, ptr %i.rk, align 8, !tbaa !32, !alias.scope !2355
  store i8 5, ptr %i.rl, align 1, !tbaa !35, !alias.scope !2355
  store ptr @.str.27, ptr %32, align 8, !tbaa !26, !alias.scope !2355
  store ptr %i.b, ptr %i.rm, align 8, !tbaa !26, !alias.scope !2355
  store i64 %i.d, ptr %i.rn, align 8, !tbaa !26, !alias.scope !2355
  store ptr %32, ptr %31, align 8, !alias.scope !2358
  store ptr @.str.28, ptr %i.ro, align 8, !alias.scope !2358
  store i8 2, ptr %i.rp, align 8, !tbaa !32, !alias.scope !2358
  store i8 3, ptr %i.rq, align 1, !tbaa !35, !alias.scope !2358
  store ptr %31, ptr %30, align 8, !alias.scope !2363
  store ptr %2, ptr %i.rt, align 8, !alias.scope !2363
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i172, align 8, !tbaa !26, !alias.scope !2363
  store i8 2, ptr %i.rr, align 8, !tbaa !32, !alias.scope !2363
  store i8 5, ptr %i.rs, align 1, !tbaa !35, !alias.scope !2363
  %i.vu = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %i.vj, ptr noundef nonnull align 8 dereferenceable(34) %30) ; 2 uses
  %i.vv = load i32, ptr %i.ri, align 8, !tbaa !195 ; 2 uses
  %i.vw = load i32, ptr %i.rj, align 4, !tbaa !196
  %.not.i = icmp ult i32 %i.vv, %i.vw
  br i1 %.not.i, label %bb.dg, label %bb.df, !prof !65

bb.df:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit173
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef %i.vu)
  %.pre228 = load i32, ptr %i.ri, align 8, !tbaa !195
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

bb.dg:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit173
  %i.vx = zext i32 %i.vv to i64
  %i.vy = load ptr, ptr %29, align 8, !tbaa !197
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %i.vx
  store ptr %i.vu, ptr %i.vz, align 1
  %i.wa = load i32, ptr %i.ri, align 8, !tbaa !195
  %i.wb = add i32 %i.wa, 1                        ; 2 uses
  store i32 %i.wb, ptr %i.ri, align 8, !tbaa !195
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit: ; preds = %bb.df, %bb.dg
  %i.wc = phi i32 [ %.pre228, %bb.df ], [ %i.wb, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  store ptr %i.ru, ptr %33, align 8, !tbaa !197
  store i32 0, ptr %i.rv, align 8, !tbaa !195
  store i32 16, ptr %i.rw, align 4, !tbaa !196
  %.not.i.i174 = icmp eq i32 %i.wc, 0
  br i1 %.not.i.i174, label %_ZN4llvm11SmallVectorIPKcLj16EEC2EOS3_.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit
  %i.wd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKcEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(144) %33, ptr noundef nonnull align 8 dereferenceable(144) %29) ; 0 uses
  br label %_ZN4llvm11SmallVectorIPKcLj16EEC2EOS3_.exit

_ZN4llvm11SmallVectorIPKcLj16EEC2EOS3_.exit:      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit, %bb.dh
  %i.we = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPKcEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(144) %i.vk, ptr noundef nonnull align 8 dereferenceable(144) %33) ; 0 uses
  %i.wf = load ptr, ptr %33, align 8, !tbaa !197  ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.ru
  br i1 %i.wg, label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit, label %bb.di

bb.di:                                            ; preds = %_ZN4llvm11SmallVectorIPKcLj16EEC2EOS3_.exit
  call void @free(ptr noundef %i.wf) #22
  br label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit

_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIPKcLj16EEC2EOS3_.exit, %bb.di
  %i.wh = load ptr, ptr %29, align 8, !tbaa !197  ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.rh
  br i1 %i.wi, label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit175, label %bb.dj

bb.dj:                                            ; preds = %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit
  call void @free(ptr noundef %i.wh) #22
  br label %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit175

_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit175:      ; preds = %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.wj = call fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(232) %27) ; 0 uses
  %.val2.i.i.i177.pre = load ptr, ptr %i.re, align 8, !tbaa !1149
  br label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit, %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit175
  %.val2.i.i.i177 = phi ptr [ %.val2.i.i.i177230, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit ], [ %.val2.i.i.i177.pre, %_ZN4llvm11SmallVectorIPKcLj16EED2Ev.exit175 ] ; 6 uses
  %.val1.i.i.i176 = load ptr, ptr %i.rd, align 8, !tbaa !1145 ; 4 uses
  %.val3.i.i.i178 = load ptr, ptr %i.rx, align 8, !tbaa !1145 ; 2 uses
  %.val4.i.i.i = load ptr, ptr %i.ry, align 8, !tbaa !1149
  %i.wk = ptrtoint ptr %.val2.i.i.i177 to i64
  %i.wl = ptrtoint ptr %.val1.i.i.i176 to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = ptrtoint ptr %.val4.i.i.i to i64
  %i.wo = ptrtoint ptr %.val3.i.i.i178 to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = icmp eq i64 %i.wm, %i.wp
  br i1 %i.wq, label %bb.dl, label %.loopexit.i.i.i

bb.dl:                                            ; preds = %bb.dk
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val1.i.i.i176, %.val2.i.i.i177
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i179

.lr.ph.i.i.i.i.i.i.i.i.i.i179:                    ; preds = %bb.dl, %bb.dn
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.xb, %bb.dn ], [ %.val3.i.i.i178, %bb.dl ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.xa, %bb.dn ], [ %.val1.i.i.i176, %bb.dl ] ; 4 uses
  %i.wr = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.ws = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %bb.dm, label %.loopexit.i.i.i

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i179
  %i.wu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.wu, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.wv, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dm
  %i.ww = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ww, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.wx, align 8
  %i.wy = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i.i to i1
  %i.wz = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i = select i1 %i.wy, i1 %i.wz, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i
  %i.xa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i180 = icmp eq ptr %i.xa, %.val2.i.i.i177
  br i1 %.not.i.i.i.i.i.i.i.i.i.i180, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i179, !llvm.loop !1205

.loopexit.i.i.i:                                  ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i.i, %bb.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i179, %bb.dk
  %i.xc = getelementptr inbounds i8, ptr %.val2.i.i.i177, i64 -32
  %.val5.i.i.i = load ptr, ptr %i.xc, align 8, !tbaa !719
  %i.xd = getelementptr i8, ptr %.val5.i.i.i, i64 48
  %.val5.val.i.i.i = load i32, ptr %i.xd, align 8, !tbaa !705
  %i.xe = add i32 %.val5.val.i.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.xe, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS6_Lj8EEELb0ENS_11GraphTraitsIS6_EEEENS_6detail17IsaCheckPredicateIJNS4_14ScannedJobNodeEEEESt20forward_iterator_tagEENSC_8CastFuncISE_EEPSE_EESH_SG_SK_lPSK_SK_EppEv.exit.backedge, label %.preheader

.preheader:                                       ; preds = %.loopexit.i.i.i, %.thread.i.i
  %.val10.i.i = phi ptr [ %i.zg, %.thread.i.i ], [ %.val2.i.i.i177, %.loopexit.i.i.i ] ; 5 uses
  %i.xf = getelementptr inbounds i8, ptr %.val10.i.i, i64 -32
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !1198 ; 3 uses
  %i.xh = getelementptr inbounds i8, ptr %.val10.i.i, i64 -24 ; 4 uses
  %i.xi = getelementptr i8, ptr %.val10.i.i, i64 -8 ; 2 uses
  %.val11.i.i = load i8, ptr %i.xi, align 8, !tbaa !1204, !range !21, !noundef !22
  %i.xj = trunc nuw i8 %.val11.i.i to i1
  br i1 %i.xj, label %._crit_edge.i, label %bb.do

._crit_edge.i:                                    ; preds = %.preheader
  %.val15.i7.pre.i = load ptr, ptr %i.xh, align 8, !tbaa !1209
  br label %bb.dp

bb.do:                                            ; preds = %.preheader
  %i.xk = getelementptr i8, ptr %i.xg, i64 32
  %.val12.i.i = load ptr, ptr %i.xk, align 8, !tbaa !197 ; 2 uses
  store ptr %.val12.i.i, ptr %i.xh, align 8
  %.sroa.440.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.val10.i.i, i64 -16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.440.0..sroa_idx.i.i, align 8
  store i8 1, ptr %i.xi, align 8, !tbaa !1204
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %._crit_edge.i
  %.val15.i7.i = phi ptr [ %.val15.i7.pre.i, %._crit_edge.i ], [ %.val12.i.i, %bb.do ] ; 2 uses
  %i.xl = getelementptr i8, ptr %i.xg, i64 32     ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xg, i64 40     ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.val10.i.i, i64 -16
  %.val13.i5.i = load ptr, ptr %i.xl, align 8, !tbaa !197
  %.val14.i6.i = load i32, ptr %i.xm, align 8, !tbaa !195
  %i.xn = zext i32 %.val14.i6.i to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %.val13.i5.i, i64 %i.xn
  %.not.i8.i = icmp eq ptr %.val15.i7.i, %i.xo
  br i1 %.not.i8.i, label %.thread.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dp, %.critedge.i.backedge.i
  %.val15.i9.i = phi ptr [ %.val15.i.i, %.critedge.i.backedge.i ], [ %.val15.i7.i, %bb.dp ] ; 2 uses
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8
  %i.xp = getelementptr inbounds nuw i8, ptr %.val15.i9.i, i64 8
  store ptr %i.xp, ptr %i.xh, align 8, !tbaa !1209
  %.val17.val.i.i = load ptr, ptr %.val15.i9.i, align 8, !tbaa !902
  %i.xq = call noundef ptr %.sroa.2.0.copyload.i.i.i(ptr noundef %.val17.val.i.i) #22, !inline_history !1210 ; 5 uses
  %i.xr = load i8, ptr %i.rz, align 8, !tbaa !897, !range !21, !noalias !2368, !noundef !22
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %bb.dq, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

bb.dq:                                            ; preds = %.lr.ph.i
  %i.xt = load ptr, ptr %27, align 8, !tbaa !893, !noalias !2368 ; 2 uses
  %i.xu = load i32, ptr %i.sa, align 4, !tbaa !896, !noalias !2368 ; 4 uses
  %i.xv = zext i32 %i.xu to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.xv, 3
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i32 %i.xu, 0
  br i1 %.not22.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dq, %.critedge.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %i.xy, %.critedge.i.i.i.i.i ], [ %i.xt, %bb.dq ] ; 2 uses
  %i.xx = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !436, !noalias !2368
  %.not15.i.i.i.i.i = icmp eq ptr %i.xx, %i.xq
  br i1 %.not15.i.i.i.i.i, label %.critedge.i.backedge.i, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.xy = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i184 = icmp eq ptr %i.xy, %i.xw
  br i1 %.not.i.i.i.i.i184, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %bb.dq
  %i.xz = load i32, ptr %i.sb, align 8, !tbaa !895, !noalias !2368
  %i.ya = icmp ult i32 %i.xu, %i.xz
  br i1 %i.ya, label %.critedge56.i.i, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i

.critedge56.i.i:                                  ; preds = %._crit_edge.i.i.i.i.i
  %i.yb = add nuw i32 %i.xu, 1
  store i32 %i.yb, ptr %i.sa, align 4, !tbaa !896, !noalias !2368
  store ptr %i.xq, ptr %i.xw, align 8, !tbaa !436, !noalias !2368
  br label %.loopexit.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i
  %i.yc = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(232) %27, ptr noundef %i.xq) #22, !noalias !2368
  %i.yd = extractvalue { ptr, i8 } %i.yc, 1
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %.loopexit.i, label %.critedge.i.backedge.i

.critedge.i.backedge.i:                           ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i
  %.val13.i.i = load ptr, ptr %i.xl, align 8, !tbaa !197
  %.val14.i.i = load i32, ptr %i.xm, align 8, !tbaa !195
  %i.yf = zext i32 %.val14.i.i to i64
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %.val13.i.i, i64 %i.yf
  %.val15.i.i = load ptr, ptr %i.xh, align 8, !tbaa !1209 ; 2 uses
  %.not.i.i181 = icmp eq ptr %.val15.i.i, %i.yg
  br i1 %.not.i.i181, label %.thread.i.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i.i, %.critedge56.i.i
  %i.yh = load ptr, ptr %i.re, align 8, !tbaa !1149 ; 6 uses
  %i.yi = load ptr, ptr %i.sc, align 8, !tbaa !1151
  %.not.i.i.i.i = icmp eq ptr %i.yh, %i.yi
  br i1 %.not.i.i.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.loopexit.i
  store ptr %i.xq, ptr %i.yh, align 8
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx.i.i, align 8
  %i.yj = load ptr, ptr %i.re, align 8, !tbaa !1149
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32 ; 2 uses
  store ptr %i.yk, ptr %i.re, align 8, !tbaa !1149
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit

bb.ds:                                            ; preds = %.loopexit.i
  %.val.i.i.i.i.i182 = load ptr, ptr %i.rd, align 8, !tbaa !1145 ; 5 uses
  %i.yl = ptrtoint ptr %i.yh to i64
  %i.ym = ptrtoint ptr %.val.i.i.i.i.i182 to i64  ; 2 uses
  %i.yn = sub i64 %i.yl, %i.ym                    ; 3 uses
  %i.yo = icmp eq i64 %i.yn, 9223372036854775776
  br i1 %i.yo, label %bb.dt, label %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ds
  %i.yp = ashr exact i64 %i.yn, 5                 ; 3 uses
  %i.yq = icmp eq ptr %i.yh, %.val.i.i.i.i.i182   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.yq, i64 1, i64 %i.yp
  %i.yr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.yp ; 2 uses
  %i.ys = icmp ult i64 %i.yr, %i.yp
  %i.yt = call i64 @llvm.umin.i64(i64 %i.yr, i64 288230376151711743)
  %i.yu = select i1 %i.ys, i64 288230376151711743, i64 %i.yt ; 3 uses
  %.not.i.i.i.i.i.i183 = icmp ne i64 %i.yu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i183)
  %i.yv = shl nuw nsw i64 %i.yu, 5
  %i.yw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yv) #25 ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %i.yn ; 2 uses
  store ptr %i.xq, ptr %i.yx, align 8
  %.sroa.529.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  store i8 0, ptr %.sroa.529.0..sroa_idx30.i.i, align 8
  br i1 %i.yq, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i

.lr.ph.i.i.i.i.i.i25.i.i:                         ; preds = %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i25.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.yz, %.lr.ph.i.i.i.i.i.i25.i.i ], [ %i.yw, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.yy, %.lr.ph.i.i.i.i.i.i25.i.i ], [ %.val.i.i.i.i.i182, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.03.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.092.i.i.i.i.i.i.i.i, i64 32, i1 false), !alias.scope !2373
  %i.yy = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i26.i.i = icmp eq ptr %i.yy, %i.yh
  br i1 %.not.i.i.i.i.i.i26.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i25.i.i, !llvm.loop !1220

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i25.i.i, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.yw, %_ZNKSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.yz, %.lr.ph.i.i.i.i.i.i25.i.i ]
  %i.za = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i27.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i182, null
  br i1 %.not.i27.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i
  %i.zb = load ptr, ptr %i.sc, align 8, !tbaa !1151
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = sub i64 %i.zc, %i.ym
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i182, i64 noundef %i.zd) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE17_M_realloc_insertIJSF_EEEvN9__gnu_cxx17__normal_iteratorIPSF_SH_EEDpOT_.exit.i.i.i.i: ; preds = %bb.du, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EE11_S_relocateEPSF_SI_SI_RSG_.exit26.i.i.i.i.i
  store ptr %i.yw, ptr %i.rd, align 8, !tbaa !1145
  store ptr %i.za, ptr %i.re, align 8, !tbaa !1149
  %i.ze = getelementptr inbounds nuw [32 x i8], ptr %i.yw, i64 %i.yu
  store ptr %i.ze, ptr %i.sc, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit

.thread.i.i:                                      ; preds = %.critedge.i.backedge.i, %bb.dp
  %i.zf = load ptr, ptr %i.re, align 8, !tbaa !1149
  %i.zg = getelementptr inbounds i8, ptr %i.zf, i64 -32 ; 4 uses
  store ptr %i.zg, ptr %i.re, align 8, !tbaa !1149
  %.val19.i.i = load ptr, ptr %i.rd, align 8, !tbaa !1152
  %i.zh = icmp eq ptr %.val19.i.i, %i.zg
  br i1 %i.zh, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv.exit, label %.preheader, !llvm.loop !1221
end_hunk_6
begin_hunk_7_@_ZN4llvm20filter_iterator_implINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_:bb.a

bb.e:                                             ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5: ; preds = %bb.d
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #25 ; 5 uses
  %.val7.i.i6.pre = load ptr, ptr %i.v, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i7.pre = load ptr, ptr %i.w, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !1145
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i8 = icmp eq ptr %.val7.i.i6.pre, %.val8.i.i7.pre
  br i1 %.not7.i.i.i.i.i.i8, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14, label %.lr.ph.i.i.i.i.i.i9

.lr.ph.i.i.i.i.i.i9:                              ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5, %.lr.ph.i.i.i.i.i.i9
  %.09.i.i.i.i.i.i10 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i9 ], [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i11 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i9 ], [ %.val7.i.i6.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i10, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i11, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i11, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i10, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.ai, %.val8.i.i7.pre
  br i1 %.not.i.i.i.i.i.i12, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14, label %.lr.ph.i.i.i.i.i.i9, !llvm.loop !1153

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14: ; preds = %.lr.ph.i.i.i.i.i.i9, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5
  %i.ak = phi ptr [ %i.ah, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ %i.ac, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.ah, %.lr.ph.i.i.i.i.i.i9 ]
  %i.al = phi ptr [ %i.af, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ %i.aa, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.af, %.lr.ph.i.i.i.i.i.i9 ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.i13 = phi ptr [ %i.ae, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5 ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.thread ], [ %i.aj, %.lr.ph.i.i.i.i.i.i9 ]
  store ptr %.0.lcssa.i.i.i.i.i.i13, ptr %i.al, align 8, !tbaa !1149
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(112) %4) #22
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 5 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !1149 ; 2 uses
  %i.ao = ptrtoint ptr %.val6.i.i.i to i64
  %i.ap = ptrtoint ptr %.val.i.i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i15 = icmp eq ptr %.val6.i.i.i, %.val.i.i.i
  br i1 %.not.i.i.i.i.i.i15, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i, label %bb.f

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr null, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %i.at, align 8, !tbaa !1151
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i

bb.f:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14
  %i.au = icmp ugt i64 %i.aq, 9223372036854775776
  br i1 %i.au, label %bb.g, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, !prof !107

bb.g:                                             ; preds = %bb.f
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i: ; preds = %bb.f
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #25 ; 5 uses
  %.val7.i.i.pre.i = load ptr, ptr %i.b, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i.pre.i = load ptr, ptr %i.s, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.av, ptr %i.an, align 8, !tbaa !1145
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !1149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %.val7.i.i.pre.i, %.val8.i.i.pre.i
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.val7.i.i.pre.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i.i, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %.val8.i.i.pre.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1153

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i
  %i.bb = phi ptr [ %i.ay, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ %i.at, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ %i.ar, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i.thread.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.bc, align 8, !tbaa !1149
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvjS3_OS0_(ptr noundef nonnull align 8 dereferenceable(225) %0, ptr noundef nonnull %i.bd, i32 noundef 8, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(112) %3) #22
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !1145
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !1145
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !1149
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !1149
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !1151
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !1151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val3.i.i = load i8, ptr %i.bk, align 8, !tbaa !897, !range !21, !noundef !22
  %i.bl = trunc nuw i8 %.val3.i.i to i1
  br i1 %i.bl, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i
  %.val2.i.i = load ptr, ptr %3, align 8
  call void @free(ptr noundef %.val2.i.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull align 8 dereferenceable(112) %5) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %.val.i.i1.i = load ptr, ptr %i.u, align 8, !tbaa !1145 ; 2 uses
  %.val6.i.i2.i = load ptr, ptr %i.al, align 8, !tbaa !1149 ; 2 uses
  %i.bp = ptrtoint ptr %.val6.i.i2.i to i64
  %i.bq = ptrtoint ptr %.val.i.i1.i to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3.i = icmp eq ptr %.val6.i.i2.i, %.val.i.i1.i
  br i1 %.not.i.i.i.i.i3.i, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread, label %bb.i

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread: ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr null, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !1151
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i

bb.i:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit.i
  %i.bv = icmp ugt i64 %i.br, 9223372036854775776
  br i1 %i.bv, label %bb.j, label %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i, !prof !107

bb.j:                                             ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i: ; preds = %bb.i
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #25 ; 7 uses
  %.val7.i.i6.i.pre = load ptr, ptr %i.u, align 8, !tbaa !1152 ; 2 uses
  %.val8.i.i7.i.pre = load ptr, ptr %i.al, align 8, !tbaa !1152 ; 2 uses
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !1145
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !1149
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !1151
  %.not7.i.i.i.i.i.i8.i = icmp eq ptr %.val7.i.i6.i.pre, %.val8.i.i7.i.pre
  br i1 %.not7.i.i.i.i.i.i8.i, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i, label %.lr.ph.i.i.i.i.i.i9.i

.lr.ph.i.i.i.i.i.i9.i:                            ; preds = %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i, %.lr.ph.i.i.i.i.i.i9.i
  %.09.i.i.i.i.i.i10.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i9.i ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i11.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i9.i ], [ %.val7.i.i6.i.pre, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i10.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.06.08.i.i.i.i.i.i11.i, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i11.i, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i10.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i12.i = icmp eq ptr %i.ca, %.val8.i.i7.i.pre
  br i1 %.not.i.i.i.i.i.i12.i, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i, label %.lr.ph.i.i.i.i.i.i9.i, !llvm.loop !1153

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i: ; preds = %.lr.ph.i.i.i.i.i.i9.i, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i
  %i.cc = phi ptr [ %i.bx, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ %i.bs, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.bx, %.lr.ph.i.i.i.i.i.i9.i ] ; 2 uses
  %i.cd = phi ptr [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.bw, %.lr.ph.i.i.i.i.i.i9.i ]
  %.0.lcssa.i.i.i.i.i.i13.i = phi ptr [ %i.bw, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i ], [ null, %_ZNSt12_Vector_baseISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EEC2EmRKSG_.exit.i.i5.i.thread ], [ %i.cb, %.lr.ph.i.i.i.i.i.i9.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i13.i, ptr %i.cc, align 8, !tbaa !1149
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i
  %.val4.i.i = phi ptr [ %.val4.i.pre.i, %bb.o ], [ %.0.lcssa.i.i.i.i.i.i13.i, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i ]
  %.val3.i17.i = phi ptr [ %.val3.i17.pre.i, %bb.o ], [ %i.cd, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEC2ERKS8_.exit14.i ] ; 2 uses
  %.val1.i15.i = load ptr, ptr %i.be, align 8, !tbaa !1145 ; 3 uses
  %.val2.i16.i = load ptr, ptr %i.bg, align 8, !tbaa !1149 ; 4 uses
  %i.ce = ptrtoint ptr %.val2.i16.i to i64
  %i.cf = ptrtoint ptr %.val1.i15.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ptrtoint ptr %.val4.i.i to i64
  %i.ci = ptrtoint ptr %.val3.i17.i to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = icmp eq i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val1.i15.i, %.val2.i16.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.l, %bb.n
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cv, %bb.n ], [ %.val3.i17.i, %bb.l ] ; 4 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.n ], [ %.val1.i15.i, %bb.l ] ; 4 uses
  %i.cl = load ptr, ptr %.0811.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cm = load ptr, ptr %.012.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1198
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 24
  %.val4.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.co, align 8, !tbaa !1204, !range !21, !noundef !22 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 24
  %.val6.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.cp, align 8, !tbaa !1204, !range !21, !noundef !22
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val4.i.i.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i

_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8
  %i.cs = trunc nuw i8 %.val4.i.i.i.i.i.i.i.i.i.i to i1
  %i.ct = icmp ne ptr %.val.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.not.i.i.i.i.i.i.i.i.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, %.val2.i16.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

.loopexit.i.i:                                    ; preds = %_ZSteqIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS0_6CGEdgeEPFS2_S7_ES2_EEEEbRKSt4pairIT_T0_ESJ_.exit.i.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.k
  %i.cw = getelementptr inbounds i8, ptr %.val2.i16.i, i64 -32
  %.val5.i.i = load ptr, ptr %i.cw, align 8, !tbaa !719
  %i.cx = getelementptr i8, ptr %.val5.i.i, i64 48
  %.val5.val.i.i = load i32, ptr %i.cx, align 8, !tbaa !705
  %i.cy = add i32 %.val5.val.i.i, -1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.cy, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i.i
  %i.cz = call fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEEppEv(ptr noundef nonnull align 8 dereferenceable(225) %0) ; 0 uses
  %.val3.i17.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !1145
  %.val4.i.pre.i = load ptr, ptr %i.cc, align 8, !tbaa !1149
  br label %bb.k, !llvm.loop !2377

_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit: ; preds = %bb.l, %.loopexit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit
  %.val1.i = load ptr, ptr %i.ak, align 8, !tbaa !1151
  %i.da = ptrtoint ptr %.val1.i to i64
  %i.db = ptrtoint ptr %.val.i to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i: ; preds = %bb.p, %_ZN4llvm20filter_iterator_baseINS_11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS4_Lj8EEELb0ENS_11GraphTraitsIS4_EEEENS_6detail17IsaCheckPredicateIJNS2_14ScannedJobNodeEEEESt20forward_iterator_tagEC2ES9_S9_SD_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val3.i = load i8, ptr %i.dd, align 8, !tbaa !897, !range !21, !noundef !22
  %i.de = trunc nuw i8 %.val3.i to i1
  br i1 %i.de, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i
  %.val2.i = load ptr, ptr %5, align 8
  call void @free(ptr noundef %.val2.i) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i, %bb.q
  %.val.i16 = load ptr, ptr %i.b, align 8, !tbaa !1145 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %.val.i16, null
  br i1 %.not.i.i.i.i17, label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit
  %.val1.i18 = load ptr, ptr %i.r, align 8, !tbaa !1151
  %i.df = ptrtoint ptr %.val1.i18 to i64
  %i.dg = ptrtoint ptr %.val.i16 to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i16, i64 noundef %i.dh) #23
  br label %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19

_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19: ; preds = %bb.r, %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val3.i20 = load i8, ptr %i.di, align 8, !tbaa !897, !range !21, !noundef !22
  %i.dj = trunc nuw i8 %.val3.i20 to i1
  br i1 %i.dj, label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19
  %.val2.i21 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %.val2.i21) #22
  br label %_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22

_ZN4llvm11df_iteratorIPN12_GLOBAL__N_16CGNodeENS_23df_iterator_default_setIS3_Lj8EEELb0ENS_11GraphTraitsIS3_EEED2Ev.exit22: ; preds = %_ZNSt6vectorISt4pairIPN12_GLOBAL__N_16CGNodeESt8optionalIN4llvm15mapped_iteratorIPKPNS1_6CGEdgeEPFS3_S8_ES3_EEEESaISF_EED2Ev.exit.i19, %bb.s
  ret void
}

declare void @_ZNK5clang6driver6Driver16GetTemporaryPathB5cxx11EN4llvm9StringRefES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1208), ptr, i64, ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN5clang6driver5types17getTypeTempSuffixENS1_2IDEb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm22PostOrderTraversalBaseINS_18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS2_6CGNodeELj8EEEEENS_11GraphTraitsIS4_EEE13traverseChildEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::iterator_range.1585", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.val1329 = load ptr, ptr %0, align 8, !tbaa !197
  %.val1430 = load i32, ptr %i.a, align 8, !tbaa !195
  %i.b = zext i32 %.val1430 to i64
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %.val1329, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.val31 = load ptr, ptr %i.d, align 8, !tbaa !1209 ; 2 uses
  %.val732 = load ptr, ptr %i.e, align 8, !tbaa !1209
  %i.f = icmp eq ptr %.val31, %.val732
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26
  %.val33 = phi ptr [ %.val31, %.lr.ph ], [ %.val, %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26 ] ; 2 uses
  %i.m = phi ptr [ %i.d, %.lr.ph ], [ %i.au, %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26 ]
  %i.n = phi ptr [ %i.c, %.lr.ph ], [ %i.at, %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26 ]
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %i.n, i64 -24
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val33, i64 8
  store ptr %i.o, ptr %i.m, align 8, !tbaa !1209
  %.val11.val = load ptr, ptr %.val33, align 8, !tbaa !902
  %i.p = tail call noundef ptr %.sroa.2.0.copyload.i(ptr noundef %.val11.val) #22, !inline_history !2380 ; 7 uses
  %i.q = load i8, ptr %i.h, align 8, !tbaa !897, !range !21, !noalias !2381, !noundef !22
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !893, !noalias !2381 ; 2 uses
  %i.t = load i32, ptr %i.i, align 4, !tbaa !896, !noalias !2381 ; 4 uses
  %i.u = zext i32 %i.t to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %.not22.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not22.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.critedge.i.i.i
  %.023.i.i.i = phi ptr [ %i.x, %.critedge.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %.023.i.i.i, align 8, !tbaa !436, !noalias !2381
  %.not15.i.i.i = icmp eq ptr %i.w, %i.p
  br i1 %.not15.i.i.i, label %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.023.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.critedge.i.i.i, %bb.c
  %i.y = load i32, ptr %i.j, align 8, !tbaa !895, !noalias !2381
  %i.z = icmp ult i32 %i.t, %i.y
  br i1 %i.z, label %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread, label %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit

_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread: ; preds = %._crit_edge.i.i.i
  %i.aa = add nuw i32 %i.t, 1
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !896, !noalias !2381
  store ptr %i.p, ptr %i.v, align 8, !tbaa !436, !noalias !2381
  br label %bb.d

_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.ab = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.g, ptr noundef %i.p) #22, !noalias !2381
  %i.ac = extractvalue { ptr, i8 } %i.ab, 1
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread26

bb.d:                                             ; preds = %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit.thread, %_ZN4llvm18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS1_6CGNodeELj8EEEE10insertEdgeESt8optionalIS6_ES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.ae = getelementptr i8, ptr %i.p, i64 32
  %.val8 = load ptr, ptr %i.ae, align 8, !tbaa !197 ; 3 uses
  %i.af = getelementptr i8, ptr %i.p, i64 40
  %.val10 = load i32, ptr %i.af, align 8, !tbaa !195
  %i.ag = zext i32 %.val10 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val8, i64 %i.ag ; 2 uses
  store ptr %.val8, ptr %1, align 8, !alias.scope !2384
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !alias.scope !2384
  store ptr %i.ah, ptr %i.k, align 8, !alias.scope !2384
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !2384
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !195 ; 2 uses
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !196
  %.not.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !65

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS3_6CGNodeELj8EEEEENS_11GraphTraitsIS5_EEE10StackEntryELb1EE18growAndEmplaceBackIJRS8_NS_14iterator_rangeINS_15mapped_iteratorIPKPNS3_6CGEdgeEPFS8_SL_ES8_EEEEEEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
  br label %_ZN4llvm15SmallVectorImplINS_22PostOrderTraversalBaseINS_18PostOrderTraversalIPN12_GLOBAL__N_116CompilationGraphENS_11SmallPtrSetIPNS3_6CGNodeELj8EEEEENS_11GraphTraitsIS5_EEE10StackEntryEE12emplace_backIJRS8_NS_14iterator_rangeINS_15mapped_iteratorIPKPNS3_6CGEdgeEPFS8_SL_ES8_EEEEEEERSE_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = zext i32 %i.ai to i64
  %.val.i = load ptr, ptr %0, align 8, !tbaa !197
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %i.ak ; 5 uses
  store ptr %i.p, ptr %i.al, align 8, !tbaa !1119
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.val8, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr @_ZN4llvm11GraphTraitsIPN12_GLOBAL__N_16CGNodeEE15CGGetTargetNodeEPNS1_6CGEdgeE, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.ah, ptr %i.ao, align 8
end_hunk_7
