Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.10?download=true
inline.NumInlined: 666
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter4IterTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtB6_8Iterator8try_folduNCINvNvB2F_4find5checkRB1h_QNCNvXs3_NtB1n_4htmlNtB3D_4HtmlNtB1l_6Report9summarizes3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3p_EEB1n_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %i.g, %bb.c ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter4IterTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvNtB6_8Iterator4find5checkRB1h_QNCNvXs3_NtB1n_4htmlNtB41_4HtmlNtB1l_6Report9summarizes3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3N_EEB1n_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  store ptr %i.g, ptr %.val, align 8, !alias.scope !146, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  store ptr %i.e, ptr %i.a, align 8, !noalias !147
  %i.h = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvXs3_NtCs7NzLGBMhIGf_9criterion4htmlNtBW_4HtmlNtNtBY_6report6Report9summarizes3_0INtB7_5FnMutTRRTRNtB1D_11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEEE8call_mutBY_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  br i1 %i.h, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter4IterTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvNtB6_8Iterator4find5checkRB1h_QNCNvXs3_NtB1n_4htmlNtB41_4HtmlNtB1l_6Report9summarizes3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3N_EEB1n_.exit, label %bb.b

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter4IterTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtB6_15IteratorRefSpec13spec_try_folduNCINvNvNtB6_8Iterator4find5checkRB1h_QNCNvXs3_NtB1n_4htmlNtB41_4HtmlNtB1l_6Report9summarizes3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3N_EEB1n_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !144
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBO_INtNtNtBc_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIBO_INtNtNtBc_5slice4iter4IterRTRNtNtB1Z_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB1R_s3_00EENCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB50_10PropertiesINtNtB52_6traits3SetINtB52_9TicLabelsB1d_B34_EE3set0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6K_8for_each4callNtNtB48_6string6StringNCINvMsj_B46_IB44_B7N_E14extend_trustedBN_E0E0EB1Z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i.i.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIBX_INtNtNtBb_5slice4iter4IterRTRNtNtB1U_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB1M_s3_00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvBZ_8map_foldTdNtNtB43_6string6StringEB5K_uNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB6k_10PropertiesINtNtB6m_6traits3SetINtB6m_9TicLabelsBW_B2Z_EE3set0NCINvNvB4N_8for_each4callB5K_NCINvMsj_B41_IB3Z_B5K_E14extend_trustedIBX_BM_B6c_EE0E0E0EB1U_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i32, ptr %.sroa.51.0..sroa_idx, align 8
  %i.g = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.h = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  br label %bb.b

common.resume.i.i.i.i.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %i.ad, %bb.e ], [ %i.ac, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val17.i.i.i, ptr %.sroa.02.0.copyload, align 8, !noalias !168
  resume { ptr, i32 } %eh.lpad-body.i.i.i

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.val17.i.i.i = phi i64 [ %.sroa.53.0.copyload, %.lr.ph.i.i.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.o = phi i32 [ %.sroa.51.0.copyload, %.lr.ph.i.i.i ], [ %i.r, %bb.h ] ; 2 uses
  %.sroa.01.021.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.q, %bb.h ]
  %i.p = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.i ], [ %i.t, %bb.h ] ; 3 uses
  %i.q = add nuw nsw i64 %.sroa.01.021.i.i.i, 1   ; 2 uses
  %i.r = add i32 %i.o, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !168
  %i.s = icmp ne ptr %i.p, %.sroa.4.0.copyload
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !169, !nonnull !6, !align !9, !noundef !6
  %i.u = load ptr, ptr %.val.i.i.i.i, align 8, !noalias !170, !nonnull !6, !align !9, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !noalias !170, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.y = load i64, ptr %i.x, align 8, !noalias !170, !noundef !6
  invoke void @_RNvNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend14gnuplot_escape(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %._RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCNvNtNtNtB1t_4plot15gnuplot_backend7summary6violins3_00ENtNtNtB9_6traits8iterator8Iterator4nextB1t_.exit_crit_edge.i.i.i unwind label %bb.c, !noalias !168

._RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCNvNtNtNtB1t_4plot15gnuplot_backend7summary6violins3_00ENtNtNtB9_6traits8iterator8Iterator4nextB1t_.exit_crit_edge.i.i.i: ; preds = %bb.b
  %i.z = sitofp i32 %i.o to double
  %i.aa = fadd double %i.z, 5.000000e-01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !171
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !171, !nonnull !6, !noundef !6
  %.val11.i.i.i.i.i = load i64, ptr %i.l, align 8, !noalias !171, !noundef !6
  store ptr %.val.i.i.i.i.i, ptr %i.c, align 8, !noalias !171
  store i64 %.val11.i.i.i.i.i, ptr %i.m, align 8, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171
  store double %i.aa, ptr %i.b, align 8, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  store ptr %i.c, ptr %i.a, align 8, !noalias !171
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCs7NzLGBMhIGf_9criterion, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !171
  store ptr %i.b, ptr %i.n, align 8, !noalias !171
  store ptr @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !171
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i unwind label %bb.d, !noalias !172

bb.c:                                             ; preds = %_RNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB7_10PropertiesINtNtB9_6traits3SetINtB9_9TicLabelsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIB1z_INtNtNtB1H_5slice4iter4IterRTRNtNtB35_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB2X_s3_00EEE3set0B35_.exit.i.i.i.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i.i.i

bb.d:                                             ; preds = %._RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCNvNtNtNtB1t_4plot15gnuplot_backend7summary6violins3_00ENtNtNtB9_6traits8iterator8Iterator4nextB1t_.exit_crit_edge.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs7NzLGBMhIGf_9criterion(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %common.resume.i.i.i.i.i unwind label %bb.g, !noalias !171

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i: ; preds = %._RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCNvNtNtNtB1t_4plot15gnuplot_backend7summary6violins3_00ENtNtNtB9_6traits8iterator8Iterator4nextB1t_.exit_crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB7_10PropertiesINtNtB9_6traits3SetINtB9_9TicLabelsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIB1z_INtNtNtB1H_5slice4iter4IterRTRNtNtB35_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB2X_s3_00EEE3set0B35_.exit.i.i.i.i unwind label %bb.e, !noalias !171

bb.e:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i.i.i.i unwind label %bb.f, !noalias !171

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !171
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !171
  unreachable

_RNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB7_10PropertiesINtNtB9_6traits3SetINtB9_9TicLabelsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIB1z_INtNtNtB1H_5slice4iter4IterRTRNtNtB35_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB2X_s3_00EEE3set0B35_.exit.i.i.i.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7NzLGBMhIGf_9criterion.exit.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.c, !noalias !168

bb.h:                                             ; preds = %_RNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB7_10PropertiesINtNtB9_6traits3SetINtB9_9TicLabelsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1H_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIB1z_INtNtNtB1H_5slice4iter4IterRTRNtNtB35_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB2X_s3_00EEE3set0B35_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !171
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val17.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !172
  %i.ah = add i64 %.val17.i.i.i, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !168
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIBX_INtNtNtBb_5slice4iter4IterRTRNtNtB1U_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB1M_s3_00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvBZ_8map_foldTdNtNtB43_6string6StringEB5K_uNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB6k_10PropertiesINtNtB6m_6traits3SetINtB6m_9TicLabelsBW_B2Z_EE3set0NCINvNvB4N_8for_each4callB5K_NCINvMsj_B41_IB3Z_B5K_E14extend_trustedIBX_BM_B6c_EE0E0E0EB1U_.exit, label %bb.b

_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtBb_3ops5range9RangeFromlENCNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins1_00EIBX_INtNtNtBb_5slice4iter4IterRTRNtNtB1U_6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNCB1M_s3_00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvBZ_8map_foldTdNtNtB43_6string6StringEB5K_uNCNvXs5_NtCs9sp7F1bin3f_14criterion_plot4axisNtB6k_10PropertiesINtNtB6m_6traits3SetINtB6m_9TicLabelsBW_B2Z_EE3set0NCINvNvB4N_8for_each4callB5K_NCINvMsj_B41_IB3Z_B5K_E14extend_trustedIBX_BM_B6c_EE0E0E0EB1U_.exit: ; preds = %bb.h, %bb.a
  %.val15.i.i.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.ah, %bb.h ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val15.i.i.i, ptr %.sroa.02.0.copyload, align 8, !noalias !168
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangeyENCNvMs6_Cs7NzLGBMhIGf_9criterionNtB1x_18ActualSamplingMode16iteration_counts0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecyE14extend_trustedBN_E0E0EB1x_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !6, !align !9, !noundef !6 ; 8 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldyyuNCNvMs6_Cs7NzLGBMhIGf_9criterionNtB2f_18ActualSamplingMode16iteration_counts0NCINvNvBL_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecyE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2f_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = sub nuw i64 %i.d, %i.b                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.h = shl i64 %.sroa.4.0.copyload, 3
  %i.i = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.h
  %i.j = add i64 %.sroa.4.0.copyload, %i.d
  %i.k = sub i64 %i.j, %i.b
  %i.l = shl i64 %i.k, 3
  %i.m = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.l
  %i.n = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.i, %i.n
  %bound1 = icmp ult ptr %i.e, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.p = add i64 %i.b, %n.vec
  %i.q = load i64, ptr %i.e, align 8, !alias.scope !187, !noalias !188
  %broadcast.splatinsert4 = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat5 = shufflevector <2 x i64> %broadcast.splatinsert4, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %i.r = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.s = mul <2 x i64> %broadcast.splat5, %vec.ind
  %i.t = mul <2 x i64> %broadcast.splat5, %step.add
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x i64> %i.s, ptr %i.u, align 8, !alias.scope !189, !noalias !190
  store <2 x i64> %i.t, ptr %i.v, align 8, !alias.scope !189, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldyyuNCNvMs6_Cs7NzLGBMhIGf_9criterionNtB2f_18ActualSamplingMode16iteration_counts0NCINvNvBL_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecyE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2f_.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 4 uses
  %i.x = sub i64 %i.d, %.sroa.0.011.i.ph
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.prol
  %i.y = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader7 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader7 ]
  %i.z = add nuw i64 %.sroa.0.011.i.prol, 1       ; 2 uses
  %i.aa = load i64, ptr %i.e, align 8, !noalias !188, !noundef !6
  %i.ab = mul i64 %i.aa, %.sroa.0.011.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.y
  store i64 %i.ab, ptr %i.ac, align 8, !noalias !191
  %i.ad = add i64 %i.y, 1                         ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !185

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader7
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader7 ], [ %i.ad, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader7 ], [ %i.ad, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader7 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ae = sub i64 %.sroa.0.011.i.ph, %i.d
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldyyuNCNvMs6_Cs7NzLGBMhIGf_9criterionNtB2f_18ActualSamplingMode16iteration_counts0NCINvNvBL_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecyE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2f_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i64 [ %i.ba, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = add nuw i64 %.sroa.0.011.i, 1
  %i.ai = load i64, ptr %i.e, align 8, !noalias !188, !noundef !6
  %i.aj = mul i64 %i.ai, %.sroa.0.011.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ag
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !191
  %i.al = add nuw i64 %.sroa.0.011.i, 2
  %i.am = load i64, ptr %i.e, align 8, !noalias !188, !noundef !6
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ag
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !noalias !191
  %i.aq = add nuw i64 %.sroa.0.011.i, 3
  %i.ar = load i64, ptr %i.e, align 8, !noalias !188, !noundef !6
  %i.as = mul i64 %i.ar, %i.al
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ag
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store i64 %i.as, ptr %i.au, align 8, !noalias !191
  %i.av = add nuw i64 %.sroa.0.011.i, 4           ; 2 uses
  %i.aw = load i64, ptr %i.e, align 8, !noalias !188, !noundef !6
  %i.ax = mul i64 %i.aw, %i.aq
  %i.ay = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ag
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  store i64 %i.ax, ptr %i.az, align 8, !noalias !191
  %i.ba = add i64 %i.ag, 4                        ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.av, %i.d
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldyyuNCNvMs6_Cs7NzLGBMhIGf_9criterionNtB2f_18ActualSamplingMode16iteration_counts0NCINvNvBL_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecyE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2f_.exit, label %.lr.ph.i, !llvm.loop !186

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangeyENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldyyuNCNvMs6_Cs7NzLGBMhIGf_9criterionNtB2f_18ActualSamplingMode16iteration_counts0NCINvNvBL_8for_each4callyNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecyE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2f_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ba, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !193
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg14default_valuesB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1r_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4D_3VecB1r_E14extend_trustedBN_E0E0ECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !203 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !203 ; 3 uses
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.c = load i64, ptr %i.a, align 8, !alias.scope !205, !noundef !6 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !205, !noundef !6 ; 4 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.e, 1
  %i.g = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !206
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = add i64 %.sroa.8.16.copyload.i, 1
  store i64 1, ptr %i.a, align 8, !alias.scope !205
  br label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %i.j = phi i64 [ 1, %.lr.ph.i.preheader.i ], [ %i.c, %bb.a ]
  %.val3.i.i = phi i64 [ %i.i, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !207
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrEj1_NtB4_11PartialDrop12partial_dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.j, i64 noundef %i.e), !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj2_ENCNvXss_NtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parserNtB1G_20PossibleValuesParserINtNtBc_7convert4FromAB1r_B1u_E4from0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3C_8for_each4callNtNtB1I_14possible_value13PossibleValueNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5r_3VecB4F_E14extend_trustedBN_E0E0ECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !227 ; 4 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !alias.scope !227 ; 2 uses
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.11.16..sroa_idx.i, align 8, !alias.scope !227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.c = load i64, ptr %0, align 8, !alias.scope !229, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !229, !noundef !6 ; 3 uses
  %i.f = icmp ule i64 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %.not6.i.i = icmp eq i64 %i.c, %i.e
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.val5.i.i = phi i64 [ %i.o, %bb.b ], [ %.sroa.9.16.copyload.i, %bb.a ] ; 3 uses
  %i.g = phi i64 [ %i.m, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !226, !noalias !230, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !226, !noalias !230, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !231
  invoke void @_RNvXs0_NtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_valueNtB5_13PossibleValueINtNtCs4NRVxsYgnAr_4core7convert4FromReE4fromCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.b unwind label %.body.i, !noalias !232

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.sroa.11.16.copyload.i, i64 %.val5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !233
  %i.o = add i64 %.val5.i.i, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !231
  %.not.i.i = icmp eq i64 %i.m, %i.e
  br i1 %.not.i.i, label %_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %.lr.ph.i.i

.body.i:                                          ; preds = %.lr.ph.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val5.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !232
  resume { ptr, i32 } %i.p

_RINvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB6_8IntoIterReKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB16_8adapters3map8map_foldBT_NtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueuNCNvXss_NtB2r_12value_parserNtB3H_20PossibleValuesParserINtNtBa_7convert4FromABT_BW_E4from0NCINvNvB10_8for_each4callB2n_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB5E_3VecB2n_E14extend_trustedINtB1Q_3MapBE_B3z_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit: ; preds = %bb.b, %bb.a
  %.val3.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.o, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !232
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterReKj2_ENvYB1r_INtNtBc_7convert4IntoNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdE4intoENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callB20_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB46_3VecB20_E14extend_trustedBN_E0E0ECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNvNtNtNtB1u_4plot15gnuplot_backend7summary6violin0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callTINtNtB2h_5boxed3BoxSdEB4H_ENCINvMsj_B2f_IB2d_B4G_E14extend_trustedBN_E0E0EB1u_:bb.a
_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.as = icmp eq i64 %i.u, 0
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i
  %i.at = shl nuw nsw i64 %i.u, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #21, !noalias !378
  br label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %middle.block, %bb.h
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 4 uses
  store ptr %i.t, ptr %i.au, align 8, !noalias !379
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.u, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !379
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.v, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !379
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.w, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !379
  %i.av = add i64 %.val15.i, 1                    ; 2 uses
  %i.aw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.g
  br i1 %i.ax, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_TINtNtB1K_5boxed3BoxSdEB3E_EuNCNvNtNtNtBX_4plot15gnuplot_backend7summary6violin0NCINvNvB2f_8for_each4callB3D_NCINvMsj_B1I_IB1G_B3D_E14extend_trustedINtB35_3MapBF_B46_EE0E0E0EBX_.exit, label %bb.d

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.y, %bb.i ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !377
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_TINtNtB1K_5boxed3BoxSdEB3E_EuNCNvNtNtNtBX_4plot15gnuplot_backend7summary6violin0NCINvNvB2f_8for_each4callB3D_NCINvMsj_B1I_IB1G_B3D_E14extend_trustedINtB35_3MapBF_B46_EE0E0E0EBX_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.av, %.loopexit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !377
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRdyNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0EB1w_4foldTyB2k_ENCINvNvB1w_6max_by4foldB3C_INvB1u_7compareB2k_yEE0EB2x_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi ptr [ %3, %.new ], [ %.sroa.3.0.i.i.i.i.1, %bb.c ]
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !386, !noalias !387, !noundef !6
  %i.i = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.h) ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0.i, %i.i
  %.sroa.3.0.i.i.i.i = select i1 %i.j, ptr %.sroa.6.0.i, ptr %i.g
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i, i64 %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !alias.scope !386, !noalias !387, !noundef !6
  %i.n = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.m) ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.n
  %.sroa.3.0.i.i.i.i.1 = select i1 %i.o, ptr %.sroa.3.0.i.i.i.i, ptr %i.l ; 3 uses
  %.sroa.0.0.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 %i.n) ; 3 uses
  %i.p = add nuw i64 %.sroa.05.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi ptr [ %3, %bb.b ], [ %.sroa.3.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i.epil.init ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !alias.scope !386, !noalias !387, !noundef !6
  %i.t = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.s) ; 2 uses
  %i.u = icmp ugt i64 %.sroa.02.0.i.epil.init, %i.t
  %.sroa.3.0.i.i.i.i.epil = select i1 %i.u, ptr %.sroa.6.0.i.epil.init, ptr %i.r
  %.sroa.0.0.i.i.i.i.epil = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i.epil.init, i64 %i.t)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, %bb.a
  %.pn20.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ]
  %.pn18.i = phi ptr [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ], [ %.sroa.3.0.i.i.i.i.epil, %.epil.preheader ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.pn20.i, 0
  %.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn18.i, 1
  ret { i64, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1u_3KdedNtNtB1u_6kernel8GaussianE3map0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB31_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4e_3VecdE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.k, align 8, !noalias !396, !noundef !6
  %i.l = invoke noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE8estimateB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, double noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !396

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  store double %i.l, ptr %i.m, align 8, !noalias !397
  %i.n = add i64 %.val15.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !396
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !396
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1u_6SampledE14median_abs_devs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4a_3VecdE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load double, ptr %i.e, align 8, !alias.scope !412, !noalias !413
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !alias.scope !414, !noalias !415
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !alias.scope !414, !noalias !415
  %i.u = fsub <2 x double> %wide.load, %broadcast.splat
  %i.v = fsub <2 x double> %wide.load11, %broadcast.splat
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u)
  %i.x = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v)
  %i.y = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !416, !noalias !417
  store <2 x double> %i.x, ptr %i.z, align 8, !alias.scope !416, !noalias !417
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.ab = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ac, align 8, !noalias !415, !noundef !6
  %i.ad = load double, ptr %i.e, align 8, !noalias !413, !noundef !6
  %i.ae = fsub double %.val16.i.prol, %i.ad
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !418
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  %i.ai = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.j, %.neg
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ak = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.al, align 8, !noalias !415, !noundef !6
  %i.am = load double, ptr %i.e, align 8, !noalias !413, !noundef !6
  %i.an = fsub double %.val16.i, %i.am
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  store double %i.ao, ptr %i.ap, align 8, !noalias !418
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val16.i.1 = load double, ptr %i.ar, align 8, !noalias !415, !noundef !6
  %i.as = load double, ptr %i.e, align 8, !noalias !413, !noundef !6
  %i.at = fsub double %.val16.i.1, %i.as
  %i.au = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.av = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !noalias !418
  %i.ax = add i64 %i.ak, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph, !llvm.loop !411

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !415
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load double, ptr %i.e, align 8, !alias.scope !433, !noalias !434
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !alias.scope !435, !noalias !436
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !alias.scope !435, !noalias !436
  %i.u = fmul <2 x double> %wide.load, splat (double 4.500000e-01)
  %i.v = fmul <2 x double> %wide.load11, splat (double 4.500000e-01)
  %i.w = fadd <2 x double> %i.u, %broadcast.splat
  %i.x = fadd <2 x double> %i.v, %broadcast.splat
  %i.y = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !437, !noalias !438
  store <2 x double> %i.x, ptr %i.z, align 8, !alias.scope !437, !noalias !438
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.ab = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ac, align 8, !noalias !436, !noundef !6
  %i.ad = load double, ptr %i.e, align 8, !noalias !434, !noundef !6
  %i.ae = fmul double %.val16.i.prol, 4.500000e-01
  %i.af = fadd double %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !439
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  %i.ai = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.j, %.neg
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ak = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.al, align 8, !noalias !436, !noundef !6
  %i.am = load double, ptr %i.e, align 8, !noalias !434, !noundef !6
  %i.an = fmul double %.val16.i, 4.500000e-01
  %i.ao = fadd double %i.an, %i.am
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  store double %i.ao, ptr %i.ap, align 8, !noalias !439
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val16.i.1 = load double, ptr %i.ar, align 8, !noalias !436, !noundef !6
  %i.as = load double, ptr %i.e, align 8, !noalias !434, !noundef !6
  %i.at = fmul double %.val16.i.1, 4.500000e-01
  %i.au = fadd double %i.at, %i.as
  %i.av = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !noalias !439
  %i.ax = add i64 %i.ak, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !432

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !436
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load double, ptr %i.e, align 8, !alias.scope !454, !noalias !455
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !alias.scope !456, !noalias !457
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !alias.scope !456, !noalias !457
  %i.u = fmul <2 x double> %wide.load, splat (double 4.500000e-01)
  %i.v = fmul <2 x double> %wide.load11, splat (double 4.500000e-01)
  %i.w = fsub <2 x double> %broadcast.splat, %i.u
  %i.x = fsub <2 x double> %broadcast.splat, %i.v
  %i.y = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !458, !noalias !459
  store <2 x double> %i.x, ptr %i.z, align 8, !alias.scope !458, !noalias !459
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !452

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.ab = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.ab, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ac, align 8, !noalias !457, !noundef !6
  %i.ad = load double, ptr %i.e, align 8, !noalias !455, !noundef !6
  %i.ae = fmul double %.val16.i.prol, 4.500000e-01
  %i.af = fsub double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.af, ptr %i.ag, align 8, !noalias !460
  %i.ah = add i64 %.ph, 1                         ; 2 uses
  %i.ai = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %i.aj = icmp eq i64 %i.j, %.neg
  br i1 %i.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ak = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.al, align 8, !noalias !457, !noundef !6
  %i.am = load double, ptr %i.e, align 8, !noalias !455, !noundef !6
  %i.an = fmul double %.val16.i, 4.500000e-01
  %i.ao = fsub double %i.am, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  store double %i.ao, ptr %i.ap, align 8, !noalias !460
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val16.i.1 = load double, ptr %i.ar, align 8, !noalias !457, !noundef !6
  %i.as = load double, ptr %i.e, align 8, !noalias !455, !noundef !6
  %i.at = fmul double %.val16.i.1, 4.500000e-01
  %i.au = fsub double %i.as, %i.at
  %i.av = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ak
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  store double %i.au, ptr %i.aw, align 8, !noalias !460
  %i.ax = add i64 %i.ak, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !453

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !457
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !align !9, !noundef !6 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 8
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load double, ptr %i.e, align 8, !alias.scope !475, !noalias !476
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 8, !alias.scope !477, !noalias !478
  %wide.load11 = load <2 x double>, ptr %i.t, align 8, !alias.scope !477, !noalias !478
  %i.u = fmul <2 x double> %wide.load, %broadcast.splat
  %i.v = fmul <2 x double> %wide.load11, %broadcast.splat
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x double> %i.u, ptr %i.w, align 8, !alias.scope !479, !noalias !480
  store <2 x double> %i.v, ptr %i.x, align 8, !alias.scope !479, !noalias !480
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.z = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.aa, align 8, !noalias !478, !noundef !6
  %i.ab = load double, ptr %i.e, align 8, !noalias !476, !noundef !6
  %i.ac = fmul double %.val16.i.prol, %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.ac, ptr %i.ad, align 8, !noalias !481
  %i.ae = add i64 %.ph, 1                         ; 2 uses
  %i.af = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.j, %.neg
  br i1 %i.ag, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ah = phi i64 [ %i.as, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.at, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.ai, align 8, !noalias !478, !noundef !6
  %i.aj = load double, ptr %i.e, align 8, !noalias !476, !noundef !6
  %i.ak = fmul double %.val16.i, %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah
  store double %i.ak, ptr %i.al, align 8, !noalias !481
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val16.i.1 = load double, ptr %i.an, align 8, !noalias !478, !noundef !6
  %i.ao = load double, ptr %i.e, align 8, !noalias !476, !noundef !6
  %i.ap = fmul double %.val16.i.1, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ah
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store double %i.ap, ptr %i.ar, align 8, !noalias !481
  %i.as = add i64 %i.ah, 2                        ; 2 uses
  %i.at = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.j
  br i1 %i.au, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !474

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.as, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !478
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !490, !noundef !6 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !491, !noundef !6
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !491, !noundef !6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !492
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !490, !noundef !6 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !491, !noundef !6
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !491, !noundef !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !492
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !490, !noundef !6 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !491, !noundef !6
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !491, !noundef !6
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !492
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !490
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionReEENCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2i_14BenchmarkGroup3news3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1L_NtNtBc_7convert10InfallibleEEB3i_8try_folduNCINvNvB3i_12try_for_each4callNtB2i_10ReportLinkINtNtNtBc_3ops12control_flow11ControlFlowB5M_ENcNtB64_5Break0E0B64_E0IB65_B64_EEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !507, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !507 ; 2 uses
  %.not11.i = icmp eq ptr %.promoted.i, %i.c
  br i1 %.not11.i, label %_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtNtCs4NRVxsYgnAr_4core6option6OptionReEENtNtNtNtB11_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters3map12map_try_foldBW_IBX_NtNtCs7NzLGBMhIGf_9criterion4html10ReportLinkEuINtNtNtB11_3ops12control_flow11ControlFlowIB3Z_B3d_EENCNvMs1_B3f_NtB3f_14BenchmarkGroup3news3_0NCINvXB2z_INtB2z_12GenericShuntINtB2x_3MapBH_B4P_EIBX_NtNtB11_7convert10InfallibleEEB1C_8try_folduNCINvNvB1C_12try_for_each4callB3d_B4E_NcNtB4E_5Break0E0B4E_E0E0B3Y_EB3h_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_1
