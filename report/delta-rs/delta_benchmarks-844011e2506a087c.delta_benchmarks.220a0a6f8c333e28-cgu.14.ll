inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [40 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !noundef !17 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.w = invoke { ptr, ptr } @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext7catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val37.i)
          to label %bb.d unwind label %bb.c, !noalias !20682 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i: ; preds = %bb.aa, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20682
  br i1 %.sroa.01.2.i, label %.thread.i, label %.body82.i

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.at, %bb.ab, %bb.t
  %.sroa.01.1.i = phi i1 [ true, %bb.ab ], [ false, %bb.at ], [ true, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20717)
  call void @llvm.experimental.noalias.scope.decl(metadata !20720)
  %i.ap = load ptr, ptr %i.aa, align 8, !alias.scope !20723, !noalias !20682, !noundef !17 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  unreachable

bb.y:                                             ; preds = %bb.av, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i, %.body60.i
  %.sroa.01.2.i = phi i1 [ true, %bb.av ], [ %.sroa.01.7.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ true, %.body60.i ]
  %.pn28.i = phi { ptr, i32 } [ %i.ck, %bb.av ], [ %.pn25.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %.pn14.i, %.body60.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20729)
  call void @llvm.experimental.noalias.scope.decl(metadata !20732)
  %i.au = load ptr, ptr %i.aa, align 8, !alias.scope !20735, !noalias !20682, !noundef !17 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.au, %.thread11.i, %bb.as, %.thread20.i, %.thread15.i, %.body67.i
  %.sroa.01.7.i = phi i1 [ false, %.thread20.i ], [ false, %bb.as ], [ true, %.body67.i ], [ false, %.thread11.i ], [ true, %bb.au ], [ true, %.thread15.i ]
  %.pn25.pn.i = phi { ptr, i32 } [ %i.ci, %.thread20.i ], [ %.pn21.i, %bb.as ], [ %eh.lpad-body68.i, %.body67.i ], [ %i.cj, %.thread11.i ], [ %i.bi, %bb.au ], [ %i.bi, %.thread15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !20682
  br label %bb.y
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.aw:                                            ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20682
  br i1 %.sroa.01.1.i, label %.thread.i, label %.body82.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !20682
  br i1 %.sroa.01.1.i, label %bb.ay, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i: ; preds = %bb.bc, %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20682
end_hunk_5
begin_hunk_6_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i81.i, i64 noundef %.val.i.i80.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !20782
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit84.i

.body82.i:                                        ; preds = %.thread.i, %bb.ba, %bb.az, %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i
  %.pn33.i = phi { ptr, i32 } [ %.pn28.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i ], [ %.pn30.pn10.i, %.thread.i ], [ %i.cq, %bb.az ], [ %i.cq, %bb.ba ], [ %i.cl, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !20682
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20785)
end_hunk_6
begin_hunk_7_@_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB1C_14SessionContext14create_catalog0EENtB4_6Future4pollCs2VbMhdeEr66_16delta_benchmarks:bb.a
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaEECs2VbMhdeEr66_16delta_benchmarks.exit86.i

.thread.i:                                        ; preds = %bb.aw, %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i
  %.pn30.pn10.i = phi { ptr, i32 } [ %.pn28.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTbINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEECs2VbMhdeEr66_16delta_benchmarks.exit65.i ], [ %i.x, %bb.c ], [ %i.cl, %bb.aw ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #38
          to label %.body82.i unwind label %bb.x, !noalias !20682

end_hunk_7
