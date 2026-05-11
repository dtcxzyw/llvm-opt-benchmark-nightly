inline.NumInlined: 5211
inline.NumDeleted: 2104
begin_hunk_0_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.bo = alloca [336 x i8], align 16             ; 7 uses
  %i.bp = alloca [2152 x i8], align 8             ; 8 uses
  %i.bq = alloca [64 x i8], align 8               ; 7 uses
  %i.br = alloca [320 x i8], align 16             ; 18 uses
  %i.bs = alloca [200 x i8], align 8              ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 9 uses
  %i.bu = alloca [64 x i8], align 8               ; 6 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.bv = alloca [40 x i8], align 8               ; 9 uses
  %i.bw = alloca [48 x i8], align 8               ; 10 uses
  %i.bx = alloca [48 x i8], align 8               ; 6 uses
  %i.by = alloca [56 x i8], align 8               ; 6 uses
  %i.bz = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 7 uses
  %i.ca = alloca [40 x i8], align 8               ; 8 uses
  %.sroa.433.i.sroa.6.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.734.i.i = alloca [272 x i8], align 16    ; 6 uses
  %.sroa.3.i.sroa.5.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.7.i = alloca [272 x i8], align 8 ; 6 uses
  %.sroa.826.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.826.i.sroa.8.i = alloca [272 x i8], align 8 ; 7 uses
  %i.cb = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cc = alloca [200 x i8], align 8              ; 11 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6932)
  %i.fe = load i64, ptr %i.ca, align 8, !range !120, !alias.scope !6935, !noalias !6937, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fe, 20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !6927
end_hunk_1
begin_hunk_2_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i, %bb.ac
  %i.ga = phi ptr [ %i.es, %bb.ac ], [ %i.jv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gb = phi ptr [ %i.et, %bb.ac ], [ %i.jw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gc = phi ptr [ %i.eu, %bb.ac ], [ %i.jx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gd = phi ptr [ %i.ew, %bb.ac ], [ %i.jy, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.ge = phi ptr [ %i.ex, %bb.ac ], [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 10 uses
  %i.gf = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ac ], [ %.pre125.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit61.i.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.gz = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.es, %bb.ad ] ; 2 uses
  %i.ha = phi ptr [ %i.hs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.et, %bb.ad ] ; 2 uses
  %i.hb = phi ptr [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.eu, %bb.ad ] ; 2 uses
  %i.hc = phi ptr [ %i.hu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ew, %bb.ad ] ; 2 uses
  %i.hd = phi ptr [ %i.hv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ex, %bb.ad ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2538
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %bb.aj unwind label %bb.ah, !noalias !6931

bb.aj:                                            ; preds = %bb.ai
  %i.hx = load i64, ptr %i.bv, align 8, !range !5488, !noalias !6927, !noundef !8 ; 3 uses
  %i.hy = icmp eq i64 %i.hx, 21
  br i1 %i.hy, label %.thread.i.i, label %bb.ak

end_hunk_4
begin_hunk_5_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !6927
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.bn, !noalias !6931

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i, %bb.bm
  %i.mx = phi ptr [ %i.hr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit75.i.i.i ], [ %i.ga, %bb.bm ]
end_hunk_5
begin_hunk_6_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit67.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bm
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %3, align 2, !noalias !6927
  store i8 0, ptr %i.mt, align 1, !noalias !6927
  br label %bb.cp

bb.bo:                                            ; preds = %bb.bl, %bb.bj
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.mv, %bb.bl ], [ %i.mo, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !6927
end_hunk_6
begin_hunk_7_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit77.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.qf, align 1, !noalias !6927
  br label %bb.cp

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.jp) #38
end_hunk_7
begin_hunk_8_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.qi) #38
          to label %bb.ci unwind label %bb.bc, !noalias !6931

bb.cp:                                            ; preds = %bb.ck, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %4 = phi ptr [ %i.ga, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gz, %bb.ck ] ; 4 uses
  %5 = phi ptr [ %i.gb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.ha, %bb.ck ] ; 3 uses
  %6 = phi ptr [ %i.gc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hb, %bb.ck ] ; 4 uses
  %7 = phi ptr [ %i.gd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hc, %bb.ck ]
  %8 = phi ptr [ %i.ge, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.hd, %bb.ck ]
  %.sroa.024.0.copyload25.i.i = load i64, ptr %i.br, align 16, !noalias !7035 ; 3 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.826.i.sroa.0.0.copyload.i.a = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !7035 ; 2 uses
  %.sroa.826.i.sroa.7.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.7.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 32, i1 false), !noalias !7035
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !7035
  store i8 1, ptr %7, align 8, !noalias !6927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !6914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !6914
end_hunk_8
begin_hunk_9_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qj = icmp eq i64 %.sroa.024.0.copyload25.i.i, 37
  br i1 %i.qj, label %bb.cx, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.7.i, i64 32, i1 false), !noalias !6914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.8.i, i64 272, i1 false), !noalias !6914
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %8)
          to label %bb.cs unwind label %bb.cr, !noalias !6918

bb.cr:                                            ; preds = %bb.cq
end_hunk_9
begin_hunk_10_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %bb.q

bb.cs:                                            ; preds = %bb.cq
  %i.ql = icmp eq i64 %.sroa.024.0.copyload25.i.i, 36
  br i1 %i.ql, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
end_hunk_10
begin_hunk_11_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %.body16.thread.i unwind label %bb.cv, !noalias !6918

bb.cx:                                            ; preds = %bb.cp, %.thread.i.i
  %i.qn = phi ptr [ %i.hr, %.thread.i.i ], [ %4, %bb.cp ]
  %i.qo = phi ptr [ %i.ht, %.thread.i.i ], [ %6, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !6914
end_hunk_11
begin_hunk_12_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qp = phi ptr [ %i.dm, %bb.r ], [ %4, %bb.cu ], [ %4, %bb.ct ] ; 7 uses
  %i.qq = phi ptr [ %i.dn, %bb.r ], [ %5, %bb.cu ], [ %5, %bb.ct ] ; 7 uses
  %i.qr = phi ptr [ %i.dr, %bb.r ], [ %6, %bb.cu ], [ %6, %bb.ct ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.copyload.i.a, %bb.cu ], [ %.sroa.826.i.sroa.0.0.copyload.i.a, %bb.ct ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cu ], [ %.sroa.024.0.copyload25.i.i, %bb.ct ] ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.qs, align 1, !noalias !6914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !6914
end_hunk_12
begin_hunk_13_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.ow:                                            ; preds = %bb.oz, %bb.oy, %bb.ox, %bb.ev
  store i8 0, ptr %i.up, align 2, !noalias !7042
  br label %bb.pi

bb.ox:                                            ; preds = %bb.ev
end_hunk_13
begin_hunk_14_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.pc:                                            ; preds = %bb.ov
  %.sroa.2262.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.2262.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3260.i.i, i64 32, i1 false), !noalias !7042
  call void @llvm.experimental.noalias.scope.decl(metadata !7326)
  %i.all = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.0254.0.copyload255.i.i, ptr %i.all, align 8, !alias.scope !7329, !noalias !7042
  store i64 36, ptr %i.av, align 16, !alias.scope !7331, !noalias !7332
  br label %bb.fj

bb.pd:                                            ; preds = %bb.fj
end_hunk_14
begin_hunk_15_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.alx = phi ptr [ %i.um, %bb.ow ], [ %i.vc, %bb.pf ]
  %i.aly = phi ptr [ %i.un, %bb.ow ], [ %i.vd, %bb.pf ]
  %i.alz = phi ptr [ %i.uo, %bb.ow ], [ %i.ve, %bb.pf ]
  %i.ama = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.ama, align 1, !noalias !7042
  %.sroa.078.0.copyload79.i = load i64, ptr %i.av, align 16, !noalias !7333 ; 2 uses
  %.sroa.18.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.18.sroa.0.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx80.i, align 8, !noalias !7333
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 32, i1 false), !noalias !7333
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 288, i1 false), !noalias !7333
  store i8 1, ptr %i.aly, align 16, !noalias !7042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6909
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3260.i.i)
end_hunk_15
begin_hunk_16_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9459, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = load ptr, ptr %0, align 8, !alias.scope !9459, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = load <16 x i8>, ptr %1, align 16, !noalias !9460
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %1, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
end_hunk_16
begin_hunk_17_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  %2 = load ptr, ptr %0, align 8, !alias.scope !9453, !nonnull !8, !noundef !8
  %i.as = sub i64 -48, %i.am
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !9453
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

end_hunk_17
begin_hunk_18_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9506, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = load ptr, ptr %0, align 8, !alias.scope !9506, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = load <16 x i8>, ptr %1, align 16, !noalias !9507
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %1, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i.i ] ; 2 uses
end_hunk_18
begin_hunk_19_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks:bb.a
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp ult i64 %i.ap, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  %2 = load ptr, ptr %0, align 8, !alias.scope !9500, !nonnull !8, !noundef !8
  %i.as = sub i64 -48, %i.am
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !9500
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEENtNtNtB6_5alloc5inner6GlobalECs2VbMhdeEr66_16delta_benchmarks.exit

end_hunk_19
begin_hunk_20_@llvm.experimental.noalias.scope.decl
!7323 = distinct !{!7323, !7324, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!7324 = distinct !{!7324, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks"}
!7325 = distinct !{!7325, !7324, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!7326 = !{!7327}
!7327 = distinct !{!7327, !7328, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!7328 = distinct !{!7328, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks"}
!7329 = !{!7330, !7327}
!7330 = distinct !{!7330, !7328, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!7331 = !{!7330}
!7332 = !{!7327, !7043, !7045, !6910, !6912}
!7333 = !{!7045, !6910, !6912}
!7334 = !{!6912}
!7335 = !{!7336}
!7336 = distinct !{!7336, !7337, !"_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path6to_str: argument 0"}
end_hunk_20
