inline.NumInlined: 4836
inline.NumDeleted: 1728
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
  %.sroa.826.i.sroa.8.i.a = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.826.i.sroa.9.i = alloca [272 x i8], align 8 ; 7 uses
  %i.cb = alloca [200 x i8], align 8              ; 9 uses
  %.sroa.8.i.sroa.7.i = alloca [32 x i8], align 8 ; 7 uses
  %i.cc = alloca [200 x i8], align 8              ; 11 uses
end_hunk_0
begin_hunk_1_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7492)
  %i.fe = load i64, ptr %i.ca, align 8, !range !129, !alias.scope !7495, !noalias !7497, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.fe, 20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false), !noalias !7487
end_hunk_1
begin_hunk_2_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i, %bb.ab
  %i.ft = phi ptr [ %i.es, %bb.ab ], [ %i.jo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fu = phi ptr [ %i.et, %bb.ab ], [ %i.jp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fv = phi ptr [ %i.eu, %bb.ab ], [ %i.jq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fw = phi ptr [ %i.ew, %bb.ab ], [ %i.jr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fx = phi ptr [ %i.ex, %bb.ab ], [ %i.js, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 10 uses
  %i.fy = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.ab ], [ %.pre124.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map11VacantEntryNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit60.i.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.gs = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.es, %bb.ac ] ; 2 uses
  %i.gt = phi ptr [ %i.hl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.et, %bb.ac ] ; 2 uses
  %i.gu = phi ptr [ %i.hm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.eu, %bb.ac ] ; 2 uses
  %i.gv = phi ptr [ %i.hn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ew, %bb.ac ] ; 2 uses
  %i.gw = phi ptr [ %i.ho, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ex, %bb.ac ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2538
end_hunk_3
begin_hunk_4_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %bb.ai unwind label %bb.ag, !noalias !7491

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load i64, ptr %i.bv, align 8, !range !712, !noalias !7487, !noundef !4 ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 21
  br i1 %i.hr, label %.thread.i.i, label %bb.aj

end_hunk_4
begin_hunk_5_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7487
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 2200
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.mp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i unwind label %bb.bm, !noalias !7491

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i, %bb.bl
  %i.mq = phi ptr [ %i.hk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEECs2VbMhdeEr66_16delta_benchmarks.exit74.i.i.i ], [ %i.ft, %bb.bl ]
end_hunk_5
begin_hunk_6_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit66.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.bl
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 2538
  store i8 0, ptr %3, align 2, !noalias !7487
  store i8 0, ptr %i.mm, align 1, !noalias !7487
  br label %bb.cn

bb.bn:                                            ; preds = %bb.bk, %bb.bi
  %.pn11.i.i.i = phi { ptr, i32 } [ %i.mo, %bb.bk ], [ %i.mh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !7487
end_hunk_6
begin_hunk_7_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
.thread49.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit76.i.i.i
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 2539
  store i8 0, ptr %i.py, align 1, !noalias !7487
  br label %bb.cn

bb.cj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.ji) #34
end_hunk_7
begin_hunk_8_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjHlmExTLNuX_14datafusion_sql6parser9StatementECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(200) %i.qb) #34
          to label %bb.ch unwind label %bb.bb, !noalias !7491

bb.cn:                                            ; preds = %.thread49.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %4 = phi ptr [ %i.ft, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gs, %.thread49.i.i ] ; 4 uses
  %5 = phi ptr [ %i.fu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gt, %.thread49.i.i ] ; 3 uses
  %6 = phi ptr [ %i.fv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gu, %.thread49.i.i ] ; 4 uses
  %7 = phi ptr [ %i.fw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gv, %.thread49.i.i ]
  %8 = phi ptr [ %i.fx, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderECs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ %i.gw, %.thread49.i.i ]
  %.sroa.024.0.copyload25.pre.i.i = load i64, ptr %i.br, align 16, !noalias !7581 ; 3 uses
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.826.i.sroa.0.0.copyload95.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !7581 ; 2 uses
  %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i.a, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.826.i.sroa.8.0..sroa.826.0..sroa_idx27.i.sroa_idx.i.a, i64 32, i1 false), !noalias !7581
  %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.826.i.sroa.9.0..sroa.826.0..sroa_idx27.i.sroa_idx.i, i64 272, i1 false), !noalias !7581
  store i8 1, ptr %7, align 8, !noalias !7487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !7474
end_hunk_8
begin_hunk_9_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qc = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 37
  br i1 %i.qc, label %bb.cv, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.826.i.sroa.8.i.a, i64 32, i1 false), !noalias !7474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.3.i.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.826.i.sroa.9.i, i64 272, i1 false), !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs_NtNtCs8Hz2sPNgbCO_10datafusion9execution13session_stateNtBN_12SessionState17statement_to_plan0ECs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %8)
          to label %bb.cq unwind label %bb.cp, !noalias !7478

bb.cp:                                            ; preds = %bb.co
end_hunk_9
begin_hunk_10_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %bb.q

bb.cq:                                            ; preds = %bb.co
  %i.qe = icmp eq i64 %.sroa.024.0.copyload25.pre.i.i, 36
  br i1 %i.qe, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
end_hunk_10
begin_hunk_11_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %.body16.thread.i unwind label %bb.ct, !noalias !7478

bb.cv:                                            ; preds = %bb.cn, %.thread.i.i
  %i.qg = phi ptr [ %i.hk, %.thread.i.i ], [ %4, %bb.cn ]
  %i.qh = phi ptr [ %i.hm, %.thread.i.i ], [ %6, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.8.i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.826.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !7474
end_hunk_11
begin_hunk_12_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.qi = phi ptr [ %i.dm, %bb.r ], [ %4, %bb.cs ], [ %4, %bb.cr ] ; 7 uses
  %i.qj = phi ptr [ %i.dn, %bb.r ], [ %5, %bb.cs ], [ %5, %bb.cr ] ; 7 uses
  %i.qk = phi ptr [ %i.dr, %bb.r ], [ %6, %bb.cs ], [ %6, %bb.cr ]
  %.sroa.433.i.sroa.0.0.i = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %bb.r ], [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.cs ], [ %.sroa.826.i.sroa.0.0.copyload95.i, %bb.cr ] ; 2 uses
  %.sroa.032.1.i.i = phi i64 [ 36, %bb.r ], [ 36, %bb.cs ], [ %.sroa.024.0.copyload25.pre.i.i, %bb.cr ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 2553
  store i8 0, ptr %i.ql, align 1, !noalias !7474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !7474
end_hunk_12
begin_hunk_13_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.ou:                                            ; preds = %bb.ox, %bb.ow, %bb.ov, %bb.et
  store i8 0, ptr %i.ui, align 2, !noalias !7588
  br label %bb.pg

bb.ov:                                            ; preds = %bb.et
end_hunk_13
begin_hunk_14_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.pa:                                            ; preds = %bb.ot
  %.sroa.2262.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.2262.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3260.i.i, i64 32, i1 false), !noalias !7588
  call void @llvm.experimental.noalias.scope.decl(metadata !7872)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.sroa.0254.0.copyload255.i.i, ptr %i.ale, align 8, !alias.scope !7875, !noalias !7588
  store i64 36, ptr %i.av, align 16, !alias.scope !7877, !noalias !7878
  br label %bb.fh

bb.pb:                                            ; preds = %bb.fh
end_hunk_14
begin_hunk_15_@_RNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB7_14SessionContext3sql0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.alq = phi ptr [ %i.uf, %bb.ou ], [ %i.uv, %bb.pd ]
  %i.alr = phi ptr [ %i.ug, %bb.ou ], [ %i.uw, %bb.pd ]
  %i.als = phi ptr [ %i.uh, %bb.ou ], [ %i.ux, %bb.pd ]
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 2723
  store i8 0, ptr %i.alt, align 1, !noalias !7588
  %.sroa.078.0.copyload79.i = load i64, ptr %i.av, align 16, !noalias !7879 ; 2 uses
  %.sroa.18.0..sroa_idx80.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.18.sroa.0.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx80.i, align 8, !noalias !7879
  %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.18.sroa.6.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 32, i1 false), !noalias !7879
  %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.18.sroa.7.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.18.sroa.7.0..sroa.18.0..sroa_idx80.sroa_idx.i, i64 288, i1 false), !noalias !7879
  store i8 1, ptr %i.alr, align 16, !noalias !7588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !7469
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3260.i.i)
end_hunk_15
begin_hunk_16_@llvm.umin.i64
!7869 = distinct !{!7869, !7870, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!7870 = distinct !{!7870, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks"}
!7871 = distinct !{!7871, !7870, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultuNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleBL_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!7872 = !{!7873}
!7873 = distinct !{!7873, !7874, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 1"}
!7874 = distinct !{!7874, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks"}
!7875 = !{!7876, !7873}
!7876 = distinct !{!7876, !7874, !"_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1y_EE13from_residualCs2VbMhdeEr66_16delta_benchmarks: argument 0"}
!7877 = !{!7876}
!7878 = !{!7873, !7589, !7591, !7470, !7472}
!7879 = !{!7591, !7470, !7472}
!7880 = !{!7472}
!7881 = !{!7882}
!7882 = distinct !{!7882, !7883, !"_RNvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB6_4Path6to_str: argument 0"}
end_hunk_16
