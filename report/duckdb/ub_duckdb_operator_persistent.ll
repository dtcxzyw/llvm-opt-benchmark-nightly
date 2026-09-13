Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_operator_persistent?download=true
inline.NumInlined: 13629
inline.NumDeleted: 7416
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E9_M_invokeERKSt9_Any_dataS2_":bb.a

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  %i.ac = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2799, !noalias !2798
  store i64 %i.ac, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2798, !noalias !2799
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1034
  store ptr %i.af, ptr %i.h, align 8, !tbaa !1032
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !1033
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_4JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_4", ptr %0, align 8, !tbaa !1481
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !200
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1036
  store i64 %.val.i, ptr %0, align 8, !tbaa !1036
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_4E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_5E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %1) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.b = load i8, ptr %i.a, align 2, !tbaa !1029, !range !351, !noundef !300
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp ne i8 %i.e, 31
  %or.cond.not.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not.i.i.i, label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 152 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1032 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1033
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64
  store i64 %i.l, ptr %i.i, align 8
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1032
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.h, align 8, !tbaa !1032
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1034 ; 5 uses
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #33 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %1 to i64
  store i64 %i.ab, ptr %i.aa, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2804)
  %i.ac = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2804, !noalias !2803
  store i64 %i.ac, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2803, !noalias !2804
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !55

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #31
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1034
  store ptr %i.af, ptr %i.h, align 8, !tbaa !1032
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !1033
  br label %"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIvRZN6duckdb14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaIS7_EEERNS0_13ExportEntriesEE3$_5JRNS0_12CatalogEntryEEENSt9enable_ifIXsr7is_voidIT_EE5valueESI_E4typeEOT0_DpOT1_.exit": ; preds = %bb.a, %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN6duckdb12CatalogEntryEEZNS0_14PhysicalExport14ExtractEntriesERNS0_13ClientContextERNS0_6vectorISt17reference_wrapperINS0_18SchemaCatalogEntryEELb1ESaISA_EEERNS0_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6duckdb14PhysicalExport14ExtractEntriesERNS_13ClientContextERNS_6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS6_EEERNS_13ExportEntriesEE3$_5", ptr %0, align 8, !tbaa !1481
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !200
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !1036
  store i64 %.val.i, ptr %0, align 8, !tbaa !1036
  br label %"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6duckdb14PhysicalExport14ExtractEntriesERNS1_13ClientContextERNS1_6vectorISt17reference_wrapperINS1_18SchemaCatalogEntryEELb1ESaIS8_EEERNS1_13ExportEntriesEE3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #25 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEET_SK_SK_T0_.exit"
  %i.h = icmp eq i64 %i.df, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !2805

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ed, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ap, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load ptr, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.037.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.037.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !1051
  %.val1.i.i.us.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !1051
  %i.z = getelementptr i8, ptr %.val.i.i.us.i.i.i, i64 8
  %.val.val.i.i.us.i.i.i = load i64, ptr %i.z, align 8, !tbaa !1038
  %i.aa = getelementptr i8, ptr %.val1.i.i.us.i.i.i, i64 8
  %.val1.val.i.i.us.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !1038
  %i.ab = icmp ult i64 %.val.val.i.i.us.i.i.i, %.val1.val.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.us.i.i.i
  %i.ae = load i64, ptr %i.ac, align 8
  store i64 %i.ae, ptr %i.ad, align 8
  %i.af = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.af, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !2806

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.ag = getelementptr i8, ptr %.sroa.03.0.copyload.us.i.i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %.val.val.i26.i.us.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !1038
  %.val.i.i.i.us.i.i.i = load ptr, ptr %i.ah, align 8 ; 2 uses
  %i.ai = getelementptr i8, ptr %.val.i.i.i.us.i.i.i, i64 8
  %.val.val.i.i.i.us.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !1038
  %i.aj = icmp ult i64 %.val.val.i.i.i.us.i.i.i, %.val.val.i26.i.us.i.i.i
  br i1 %i.aj, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i"

bb.d:                                             ; preds = %bb.c
  %i.ak = ptrtoint ptr %.val.i.i.i.us.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.am, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i", !llvm.loop !2807

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i": ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  %i.ao = ptrtoint ptr %.sroa.03.0.copyload.us.i.i.i to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ap = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !2808

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bq, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8 ; 2 uses
  %i.ar = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.as = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.av
  %.val.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1051
  %.val1.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !1051
  %i.ax = getelementptr i8, ptr %.val.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !1038
  %i.ay = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 8
  %.val1.val.i.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !1038
  %i.az = icmp ult i64 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.az, i64 %i.av, i64 %i.at ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.i.i.i
  %i.bc = load i64, ptr %i.ba, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2806

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bf = load i64, ptr %i.q, align 8
  store i64 %i.bf, ptr %i.r, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bg = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %.val.val.i26.i.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !1038
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8 ; 2 uses
  %i.bj = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !1038
  %i.bk = icmp ult i64 %.val.val.i.i.i.i.i.i, %.val.val.i26.i.i.i.i
  br i1 %i.bk, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.bn, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i", !llvm.loop !2807

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  %i.bp = ptrtoint ptr %.sroa.03.0.copyload.i.i.i to i64
  store i64 %i.bp, ptr %i.bo, align 8
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bq = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !2808

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_T0_SL_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.br, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i" ]
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.br, align 8 ; 2 uses
  %i.bs = load i64, ptr %.fr27, align 8
  store i64 %i.bs, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bt, %i.a                     ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 3                 ; 3 uses
  %i.bw = add nsw i64 %i.bv, -1
  %i.bx = lshr i64 %i.bw, 1
  %i.by = icmp sgt i64 %i.bv, 2
  br i1 %i.by, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i21.i
  %.037.i.i.i22.i = phi i64 [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i21.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bz = shl i64 %.037.i.i.i22.i, 1              ; 2 uses
  %i.ca = add i64 %i.bz, 2                        ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ca
  %i.cc = or disjoint i64 %i.bz, 1                ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.cc
  %.val.i.i.i.i23.i = load ptr, ptr %i.cb, align 8, !tbaa !1051
  %.val1.i.i.i.i24.i = load ptr, ptr %i.cd, align 8, !tbaa !1051
  %i.ce = getelementptr i8, ptr %.val.i.i.i.i23.i, i64 8
  %.val.val.i.i.i.i25.i = load i64, ptr %i.ce, align 8, !tbaa !1038
  %i.cf = getelementptr i8, ptr %.val1.i.i.i.i24.i, i64 8
  %.val1.val.i.i.i.i26.i = load i64, ptr %i.cf, align 8, !tbaa !1038
  %i.cg = icmp ult i64 %.val.val.i.i.i.i25.i, %.val1.val.i.i.i.i26.i
  %spec.select.i.i.i27.i = select i1 %i.cg, i64 %i.cc, i64 %i.ca ; 4 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i27.i
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.037.i.i.i22.i
  %i.cj = load i64, ptr %i.ch, align 8
  store i64 %i.cj, ptr %i.ci, align 8
  %i.ck = icmp slt i64 %spec.select.i.i.i27.i, %i.bx
  br i1 %i.ck, label %.lr.ph.i.i.i21.i, label %._crit_edge.i.i.i11.i, !llvm.loop !2806

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i27.i, %.lr.ph.i.i.i21.i ] ; 5 uses
  %i.cl = and i64 %i.bu, 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cn = add nsw i64 %i.bv, -2
  %i.co = ashr exact i64 %i.cn, 1
  %i.cp = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.co
  br i1 %i.cp, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cq = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cr = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.cu = load i64, ptr %i.cs, align 8
  store i64 %i.cu, ptr %i.ct, align 8
  br label %.lr.ph.i.i.i.i14.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cr, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.j ]
  %i.cv = getelementptr i8, ptr %.sroa.03.0.copyload.i.i10.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i14.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i14.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %.val.val.i26.i.i.i17.i = load i64, ptr %i.cv, align 8, !tbaa !1038
  %.val.i.i.i.i.i18.i = load ptr, ptr %i.cw, align 8 ; 2 uses
  %i.cx = getelementptr i8, ptr %.val.i.i.i.i.i18.i, i64 8
  %.val.val.i.i.i.i.i19.i = load i64, ptr %i.cx, align 8, !tbaa !1038
  %i.cy = icmp ult i64 %.val.val.i.i.i.i.i19.i, %.val.val.i26.i.i.i17.i
  br i1 %i.cy, label %bb.l, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i"

bb.l:                                             ; preds = %bb.k
  %i.cz = ptrtoint ptr %.val.i.i.i.i.i18.i to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i64 %i.cz, ptr %i.da, align 8
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", label %bb.k, !llvm.loop !2807

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i": ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.db = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i20.i
  %i.dc = ptrtoint ptr %.sroa.03.0.copyload.i.i10.i to i64
  store i64 %i.dc, ptr %i.db, align 8
  %i.dd = icmp sgt i64 %i.bu, 8
  br i1 %i.dd, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !2809

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.df, %bb.b ], [ %2, %.lr.ph ]
  %i.de = phi i64 [ %i.ee, %bb.b ], [ %i.d, %.lr.ph ]
  %i.df = add nsw i64 %.02544, -1                 ; 3 uses
  %i.dg = lshr i64 %i.de, 1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 3 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8       ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.dh, align 8     ; 2 uses
  %i.dj = getelementptr i8, ptr %.val.i.i.i, i64 8
  %.val.val.i.i.i = load i64, ptr %i.dj, align 8, !tbaa !1038 ; 3 uses
  %i.dk = getelementptr i8, ptr %.val1.i.i.i, i64 8
  %.val1.val.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !1038 ; 3 uses
  %i.dl = icmp ult i64 %.val.val.i.i.i, %.val1.val.i.i.i
  %i.dm = ptrtoint ptr %.val1.i.i.i to i64        ; 2 uses
  %i.dn = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %.val1.i27.i.i = load ptr, ptr %i.di, align 8   ; 2 uses
  %i.do = getelementptr i8, ptr %.val1.i27.i.i, i64 8
  %.val1.val.i29.i.i = load i64, ptr %i.do, align 8, !tbaa !1038 ; 4 uses
  %i.dp = ptrtoint ptr %.val1.i27.i.i to i64      ; 2 uses
  br i1 %i.dl, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph46
  %i.dq = icmp ult i64 %.val1.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.fr27, align 8
  store i64 %i.dm, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.dh, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %i.dr = icmp ult i64 %.val.val.i.i.i, %.val1.val.i29.i.i
  %.sroa.0.0.copyload.i.i34.i.i = load ptr, ptr %.fr27, align 8 ; 2 uses
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.dp, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.di, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  store i64 %i.dn, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.r:                                             ; preds = %.lr.ph46
  %i.ds = icmp ult i64 %.val.val.i.i.i, %.val1.val.i29.i.i
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i40.i.i = load ptr, ptr %.fr27, align 8
  store i64 %i.dn, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i40.i.i, ptr %i.f, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  %i.dt = icmp ult i64 %.val1.val.i.i.i, %.val1.val.i29.i.i
  %.sroa.0.0.copyload.i.i45.i.i = load ptr, ptr %.fr27, align 8 ; 2 uses
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.dp, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i45.i.i, ptr %i.di, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

bb.v:                                             ; preds = %bb.t
  store i64 %i.dm, ptr %.fr27, align 8
  store ptr %.sroa.0.0.copyload.i.i45.i.i, ptr %i.dh, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader": ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader", %bb.y
  %.sroa.014.0.i.i = phi ptr [ %i.dx, %bb.y ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load ptr, ptr %.fr27, align 8, !tbaa !1051
  %i.du = getelementptr i8, ptr %.val1.i.i13.i, i64 8
  %.val1.val.i.i14.i = load i64, ptr %i.du, align 8, !tbaa !1038 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i" ], [ %i.dx, %bb.w ] ; 8 uses
  %.val.i.i15.i = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !1051 ; 2 uses
  %i.dv = getelementptr i8, ptr %.val.i.i15.i, i64 8
  %.val.val.i.i16.i = load i64, ptr %i.dv, align 8, !tbaa !1038
  %i.dw = icmp ult i64 %.val.val.i.i16.i, %.val1.val.i.i14.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.dw, label %bb.w, label %.preheader.i.i, !llvm.loop !2810

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %.val1.i9.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8 ; 2 uses
  %i.dy = getelementptr i8, ptr %.val1.i9.i.i, i64 8
  %.val1.val.i11.i.i = load i64, ptr %i.dy, align 8, !tbaa !1038
  %i.dz = icmp ult i64 %.val1.val.i.i14.i, %.val1.val.i11.i.i
  br i1 %i.dz, label %.preheader.i.i, label %bb.x, !llvm.loop !2811

bb.x:                                             ; preds = %.preheader.i.i
  %i.ea = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ea, label %bb.y, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEET_SK_SK_T0_.exit"

bb.y:                                             ; preds = %bb.x
  %i.eb = ptrtoint ptr %.val1.i9.i.i to i64
  store i64 %i.eb, ptr %.sroa.014.1.i.i, align 8
  store ptr %.val.i.i15.i, ptr %.sroa.0.1.i.i, align 8
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_SK_T0_.exit.i", !llvm.loop !2812

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEET_SK_SK_T0_.exit": ; preds = %bb.x
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2445, i64 noundef %i.df)
  %i.ec = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ed = sub i64 %i.ec, %i.a                     ; 2 uses
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %i.ef = icmp sgt i64 %i.ee, 16
  br i1 %i.ef, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit", !llvm.loop !2805

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEET_SK_SK_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_SK_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_14PhysicalExport19GetNaiveExportOrderERNS3_13ClientContextERNS3_7CatalogEE3$_0EEEvT_SK_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_17DependencyManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1041
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC2ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !234    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #30
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #30
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !87

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19) #30
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i19) #30
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !87

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #31
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !234
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.x, ptr %i.w, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1099
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 1, ptr %i.a, align 1, !tbaa !1372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.g = load i8, ptr %i.c, align 1, !tbaa !1099
  store i8 %i.g, ptr %i.b, align 1, !tbaa !1372
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
end_hunk_0
