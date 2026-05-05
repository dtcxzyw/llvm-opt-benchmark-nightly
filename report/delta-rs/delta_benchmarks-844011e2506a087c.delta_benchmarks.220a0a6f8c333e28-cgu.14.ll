inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks:bb.a

bb.bf:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionINtNtB10_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
end_hunk_0
begin_hunk_1_@_RNCINvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB8_14SessionContext19find_and_deregisterNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
  store ptr %.sroa.3.0.copyload, ptr %i.h, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5.0.copyload, ptr %i.fx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !range !313, !invariant.load !17
end_hunk_1
begin_hunk_2_@_RNCNvCs2VbMhdeEr66_16delta_benchmarks4main0B3_:bb.a
  br i1 %i.alv, label %_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.i, label %_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.thread.i

_RNvXs1u_NtCs6Po7BT7Nknu_5alloc6stringReINtNtCsbvkFyIu7lgC_4core3cmp9PartialEqNtB6_6StringE2ne.exit.i: ; preds = %bb.sa
  %.val135.i = load ptr, ptr %i.ait, align 8, !noalias !17026 ; 2 uses
  %i.alw = extractvalue { ptr, i64 } %i.als, 0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.alw) ]
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.alw, ptr nonnull readonly %.val135.i, i64 %i.alu), !noalias !17030
  %.not377.i = icmp eq i32 %bcmp.i.i, 0
end_hunk_2
