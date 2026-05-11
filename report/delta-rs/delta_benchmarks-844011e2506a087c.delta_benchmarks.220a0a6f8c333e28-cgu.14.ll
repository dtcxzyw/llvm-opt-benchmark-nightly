inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.bn = alloca [336 x i8], align 16             ; 7 uses
  %i.bo = alloca [2152 x i8], align 8             ; 8 uses
  %i.bp = alloca [64 x i8], align 8               ; 7 uses
  %i.bq = alloca [320 x i8], align 16             ; 18 uses
  %i.br = alloca [200 x i8], align 8              ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 9 uses
  %i.bt = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.bu = alloca [40 x i8], align 8               ; 9 uses
  %i.bv = alloca [48 x i8], align 8               ; 10 uses
  %i.bw = alloca [48 x i8], align 8               ; 6 uses
  %i.bx = alloca [56 x i8], align 8               ; 6 uses
  %i.by = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 7 uses
  %i.bz = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.826.i.sroa.8.i = alloca [272 x i8], align 8 ; 7 uses
  %i.ca = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cb = alloca [200 x i8], align 8              ; 11 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17884)
  %i.fd = load i64, ptr %i.bz, align 8, !range !1787, !alias.scope !17887, !noalias !17889, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fd, 20
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false), !noalias !17873
end_hunk_1
begin_hunk_2_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i, %bb.ac
  %i.fs = phi ptr [ %i.er, %bb.ac ], [ %i.jo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.ft = phi ptr [ %i.es, %bb.ac ], [ %i.jp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fu = phi ptr [ %i.et, %bb.ac ], [ %i.jq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fv = phi ptr [ %i.ev, %bb.ac ], [ %i.jr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fw = phi ptr [ %i.ew, %bb.ac ], [ %i.js, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.fx = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.pre125.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.gr = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.er, %bb.ad ] ; 2 uses
  %i.gs = phi ptr [ %i.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.es, %bb.ad ] ; 2 uses
  %i.gt = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.et, %bb.ad ] ; 2 uses
  %i.gu = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.gv = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ew, %bb.ad ] ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 2538
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.ah, !noalias !17877, !inline_history !15634

_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.ai
  %i.hr = load i64, ptr %i.bu, align 8, !range !1799, !noalias !17873, !noundef !17 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, 21
  br i1 %i.hs, label %.thread.i.i, label %bb.aj

end_hunk_4
begin_hunk_5_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17873
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.bk, !noalias !17877

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i, %bb.bj
  %i.mq = phi ptr [ %i.hi, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.fs, %bb.bj ]
end_hunk_5
begin_hunk_6_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bj
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %3, align 2, !noalias !17873
  store i8 0, ptr %i.mm, align 1, !noalias !17873
  br label %bb.cm

bb.bl:                                            ; preds = %bb.bi, %bb.bg
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.mo, %bb.bi ], [ %i.mh, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !17873
end_hunk_6
begin_hunk_7_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.py, align 1, !noalias !17873
  br label %bb.cm

bb.ci:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ji) #37
end_hunk_7
begin_hunk_8_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.qb) #37
          to label %bb.cf unwind label %bb.az, !noalias !17877

bb.cm:                                            ; preds = %bb.ch, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %4 = phi ptr [ %i.fs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gr, %bb.ch ] ; 4 uses
  %5 = phi ptr [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gs, %bb.ch ] ; 3 uses
  %6 = phi ptr [ %i.fu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gt, %bb.ch ] ; 4 uses
  %7 = phi ptr [ %i.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gu, %bb.ch ]
  %8 = phi ptr [ %i.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gv, %bb.ch ]
  %.sroa.024.0.copyload25.i.i = load i64, ptr %i.bq, align 16, !noalias !17974 ; 3 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.826.i.sroa.0.0.copyload.i.a = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !17974 ; 2 uses
  %.sroa.826.i.sroa.7.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.7.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !17974
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !17974
  store i8 1, ptr %7, align 8, !noalias !17873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !17860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !17860
end_hunk_8
begin_hunk_9_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qc = icmp eq i64 %.sroa.024.0.copyload25.i.i, 37
  br i1 %i.qc, label %bb.cu, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.7.i, i64 32, i1 false), !noalias !17860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.8.i, i64 272, i1 false), !noalias !17860
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %8)
          to label %bb.cp unwind label %bb.co, !noalias !17864

bb.co:                                            ; preds = %bb.cn
end_hunk_9
begin_hunk_10_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %bb.q

bb.cp:                                            ; preds = %bb.cn
  %i.qe = icmp eq i64 %.sroa.024.0.copyload25.i.i, 36
  br i1 %i.qe, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
end_hunk_10
begin_hunk_11_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %.body16.thread.i unwind label %bb.cs, !noalias !17864

bb.cu:                                            ; preds = %bb.cm, %.thread.i.i
  %i.qg = phi ptr [ %i.hi, %.thread.i.i ], [ %4, %bb.cm ]
  %i.qh = phi ptr [ %i.hk, %.thread.i.i ], [ %6, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17860
end_hunk_11
begin_hunk_12_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qi = phi ptr [ %i.dl, %bb.r ], [ %4, %bb.cr ], [ %4, %bb.cq ] ; 7 uses
  %i.qj = phi ptr [ %i.dm, %bb.r ], [ %5, %bb.cr ], [ %5, %bb.cq ] ; 7 uses
  %i.qk = phi ptr [ %i.dq, %bb.r ], [ %6, %bb.cr ], [ %6, %bb.cq ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.copyload.i.a, %bb.cr ], [ %.sroa.826.i.sroa.0.0.copyload.i.a, %bb.cq ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cr ], [ %.sroa.024.0.copyload25.i.i, %bb.cq ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.ql, align 1, !noalias !17860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !17860
end_hunk_12
begin_hunk_13_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.on:                                            ; preds = %bb.oq, %bb.op, %bb.oo, %bb.es
  store i8 0, ptr %i.ug, align 2, !noalias !17981
  br label %bb.oz

bb.oo:                                            ; preds = %bb.es
end_hunk_13
begin_hunk_14_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.ot:                                            ; preds = %bb.om
  %.sroa.2274.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.2274.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3272.i.i, i64 32, i1 false), !noalias !17981
  call void @llvm.experimental.noalias.scope.decl(metadata !18320)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.0266.0.copyload267.i.i, ptr %i.akz, align 8, !alias.scope !18323, !noalias !17981
  store i64 36, ptr %i.au, align 16, !alias.scope !18325, !noalias !18326
  br label %bb.fg

bb.ou:                                            ; preds = %bb.fg
end_hunk_14
begin_hunk_15_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.all = phi ptr [ %i.ud, %bb.on ], [ %i.us, %bb.ow ]
  %i.alm = phi ptr [ %i.ue, %bb.on ], [ %i.ut, %bb.ow ]
  %i.aln = phi ptr [ %i.uf, %bb.on ], [ %i.uu, %bb.ow ]
  %i.alo = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.alo, align 1, !noalias !17981
  %.sroa.078.0.copyload79.i = load i64, ptr %i.au, align 16, !noalias !18327 ; 2 uses
  %.sroa.18.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.18.sroa.0.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx80.i, align 8, !noalias !18327
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 32, i1 false), !noalias !18327
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 288, i1 false), !noalias !18327
  store i8 1, ptr %i.alm, align 16, !noalias !17981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17855
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3272.i.i)
end_hunk_15
begin_hunk_16_@llvm.memmove.p0.p0.i64
!18317 = distinct !{!18317, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs2VbMhdeEr66_16delta_benchmarks"}
!18318 = distinct !{!18318, !18319, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!18319 = distinct !{!18319, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks"}
!18320 = !{!18321}
!18321 = distinct !{!18321, !18322, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!18322 = distinct !{!18322, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks"}
!18323 = !{!18324, !18321}
!18324 = distinct !{!18324, !18322, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!18325 = !{!18324}
!18326 = !{!18321, !17982, !17984, !17856, !17858}
!18327 = !{!17984, !17856, !17858}
!18328 = !{!17858}
!18329 = !{!18330}
!18330 = distinct !{!18330, !18331, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtB2f_6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
end_hunk_16
