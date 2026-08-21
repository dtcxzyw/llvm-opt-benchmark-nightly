Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.15?download=true
inline.NumInlined: 9921
inline.NumDeleted: 5523
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvXs_NtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCscgRAwXFJnXP_4core5panic11unwind_safe16AssertUnwindSafeINtNtCsidoPH4Qgqxm_12polars_async8executor10JoinHandleINtNtB1u_6result6ResultNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore20OwnedSemaphorePermitNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB1u_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.0..sroa_idx, i64 48, i1 false), !dbg !112991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !112992
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 19, !dbg !112993
  br i1 %i.g, label %bb.g, label %bb.f, !dbg !112999

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0, !dbg !112985
  %i.i = extractvalue { ptr, ptr } %i.d, 1, !dbg !112985 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i64 19, ptr %0, align 8, !dbg !113000
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113000
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !113000
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !113000
  store ptr %i.i, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !113000
  br label %bb.h, !dbg !113008

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !113009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !dbg !113011
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113009
  store <2 x ptr> %i.f, ptr %.sroa.443.0..sroa_idx, align 8, !dbg !113009
  br label %bb.g, !dbg !113012

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ 20, %bb.d ], !dbg !113013
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !113013
  br label %bb.h, !dbg !113008

bb.h:                                             ; preds = %bb.g, %bb.e
  ret void, !dbg !113008
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCscgRAwXFJnXP_4core5panic11unwind_safe16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2v_19InternalCloudWriter3put00EENtNtNtB1u_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !113014 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !113015
  invoke void @_RNvXso_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB1g_19InternalCloudWriter3put00ENtNtNtB9_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b, !dbg !113028

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null, !dbg !113033
  %i.c = extractvalue { ptr, i32 } %i.b, 0, !dbg !113033
  %i.d = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c, !dbg !113034 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #51, !dbg !113039
  unreachable, !dbg !113039

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !dbg !113040 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !113040
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !113040
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !113040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.0..sroa_idx, i64 48, i1 false), !dbg !113040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113041
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 19, !dbg !113042
  br i1 %i.g, label %bb.g, label %bb.f, !dbg !113045

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0, !dbg !113034
  %i.i = extractvalue { ptr, ptr } %i.d, 1, !dbg !113034 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i64 19, ptr %0, align 8, !dbg !113046
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113046
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !113046
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !113046
  store ptr %i.i, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !113046
  br label %bb.h, !dbg !113053

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !113054
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !dbg !113056
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113054
  store <2 x ptr> %i.f, ptr %.sroa.443.0..sroa_idx, align 8, !dbg !113054
  br label %bb.g, !dbg !113057

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ 20, %bb.d ], !dbg !113058
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !113058
  br label %bb.h, !dbg !113053

bb.h:                                             ; preds = %bb.g, %bb.e
  ret void, !dbg !113053
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtB4_13SpecAdvanceBy15spec_advance_byB2o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !113059 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0, !dbg !113062
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %bb.b, !dbg !113063

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113064), !dbg !113067
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !113069 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113072), !dbg !113075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113076), !dbg !113075
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !113078, !noalias !113085, !noundef !14 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.b, align 8, !alias.scope !113087, !noalias !113076 ; 6 uses
  %i.e = load i64, ptr %0, align 8, !range !5717, !alias.scope !113088, !noalias !113072
  %.fr17.i.i = freeze i64 %i.e
  %i.f = icmp eq i64 %.fr17.i.i, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !113088, !noalias !113072, !nonnull !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.f, label %.split.us.preheader.i.i, label %.split.i.i, !prof !113089

.split.us.preheader.i.i:                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !113088, !noalias !113072
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %.promoted.i.i), !dbg !113090 ; 2 uses
  %umax18.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.promoted.i.i), !dbg !113090
  %i.l = add i64 %.promoted.i.i, %1, !dbg !113090
  %i.m = sub i64 %i.l, %umax.i.i, !dbg !113090
  br label %.split.us.i.i, !dbg !113090

.split.us.i.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, %.split.us.preheader.i.i
  %i.n = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], [ %.promoted.i.i, %.split.us.preheader.i.i ] ; 4 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.x, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], [ %1, %.split.us.preheader.i.i ], !dbg !113097
  %exitcond.not.i.i = icmp eq i64 %i.n, %umax.i.i, !dbg !113098
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %bb.c, !dbg !113090

bb.c:                                             ; preds = %.split.us.i.i
  %i.o = add i64 %i.n, 1, !dbg !113100            ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !dbg !113103, !alias.scope !113087, !noalias !113076
  %exitcond19.not.i.i = icmp eq i64 %i.n, %umax18.i.i, !dbg !113104
  br i1 %exitcond19.not.i.i, label %.split14.us.i.i, label %bb.d, !dbg !113104, !prof !717

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.n, !dbg !113118 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !113119, !noalias !113130, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !113119
  %i.s = load i64, ptr %i.r, align 8, !dbg !113119, !noalias !113130, !noundef !14
  %i.t = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !113133, !noalias !113130
  %i.u = icmp slt i64 %i.t, 0, !dbg !113138
  br i1 %i.u, label %.split16.us.i.i, label %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i, !dbg !113138

_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113140
  store ptr %i.q, ptr %i.a, align 8, !noalias !113140
  store i64 %i.s, ptr %i.i, align 8, !noalias !113140
  %i.v = atomicrmw sub ptr %i.q, i64 1 release, align 8, !dbg !113141, !noalias !113151
  %i.w = icmp eq i64 %i.v, 1, !dbg !113160
  br i1 %i.w, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, !dbg !113160

bb.e:                                             ; preds = %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i
  fence acquire, !dbg !113161
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #52, !dbg !113163, !noalias !113140
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, !dbg !113163

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i: ; preds = %bb.e, %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i
  %i.x = add i64 %.sroa.01.0.us.i.i, -1, !dbg !113164 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113167, !noalias !113140
  %i.y = icmp eq i64 %i.x, 0, !dbg !113168
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %.split.us.i.i, !dbg !113168

.split.i.i:                                       ; preds = %bb.b
  %i.z = icmp ult i64 %.promoted.i.i, %i.d, !dbg !113098
  br i1 %i.z, label %bb.f, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, !dbg !113090

bb.f:                                             ; preds = %.split.i.i
  %i.aa = add nuw i64 %.promoted.i.i, 1, !dbg !113100
  store i64 %i.aa, ptr %i.b, align 8, !dbg !113103, !alias.scope !113087, !noalias !113076
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #57, !dbg !113169, !noalias !113130
  unreachable, !dbg !113169

.split14.us.i.i:                                  ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #57, !dbg !113172, !noalias !113130
  unreachable, !dbg !113172

.split16.us.i.i:                                  ; preds = %bb.d
  call void @llvm.trap(), !dbg !113175
  unreachable, !dbg !113175

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, %.split.us.i.i, %.split.i.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %.split.i.i ], [ %i.m, %.split.us.i.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], !dbg !113176
  ret i64 %.sroa.0.1, !dbg !113177
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB28_20row_group_data_fetchNtB3P_19RowGroupDataFetcher4next000ENtB4_13SpecAdvanceBy15spec_advance_byB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !113178 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !113179
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %bb.b, !dbg !113180

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !113181, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !113181 ; 5 uses
  %.promoted.i.i8 = ptrtoaddr ptr %.promoted.i.i to i64, !dbg !113188 ; 2 uses
  %i.d = mul i64 %i.c, 345876451382054093, !dbg !113188
  %i.e = mul i64 %.promoted.i.i8, -345876451382054093, !dbg !113188
  %i.f = add i64 %i.d, %i.e, !dbg !113188
  %i.g = lshr i64 %i.f, 5, !dbg !113188
  %i.h = add i64 %1, -1, !dbg !113188
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !113188 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !113188    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !113188
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !113188

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i8, !dbg !113188
  %i.l = and i64 %i.k, 31, !dbg !113188
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !113188
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = mul i64 %n.vec, 160
  %i.q = getelementptr i8, ptr %.promoted.i.i, i64 %i.p
  %i.r = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !113195
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !113195, !llvm.loop !113197

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !113198, !alias.scope !113181
  br label %scalar.ph.preheader, !dbg !113195

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !113200

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !113201 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !113202
  br i1 %i.v, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %bb.c, !dbg !113200

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !113204 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !113198, !alias.scope !113181
  %i.x = add i64 %.sroa.01.0.i.i, -1, !dbg !113206 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !113195
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %scalar.ph, !dbg !113195, !llvm.loop !113213

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i.i, %scalar.ph ], !dbg !113214
  ret i64 %.sroa.0.1, !dbg !113215
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB28_20row_group_data_fetchNtB3P_19RowGroupDataFetcher4next00s_0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !113216 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !113217
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %bb.b, !dbg !113218

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !113219, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !113219 ; 5 uses
  %.promoted.i.i8 = ptrtoaddr ptr %.promoted.i.i to i64, !dbg !113226 ; 2 uses
  %i.d = mul i64 %i.c, 345876451382054093, !dbg !113226
  %i.e = mul i64 %.promoted.i.i8, -345876451382054093, !dbg !113226
  %i.f = add i64 %i.d, %i.e, !dbg !113226
  %i.g = lshr i64 %i.f, 5, !dbg !113226
  %i.h = add i64 %1, -1, !dbg !113226
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !113226 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !113226    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !113226
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !113226

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i8, !dbg !113226
  %i.l = and i64 %i.k, 31, !dbg !113226
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !113226
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = mul i64 %n.vec, 160
  %i.q = getelementptr i8, ptr %.promoted.i.i, i64 %i.p
  %i.r = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !113233
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !113233, !llvm.loop !113235

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !113236, !alias.scope !113219
  br label %scalar.ph.preheader, !dbg !113233

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !113238

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !113239 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !113240
  br i1 %i.v, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %bb.c, !dbg !113238

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !113242 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !113236, !alias.scope !113219
  %i.x = add i64 %.sroa.01.0.i.i, -1, !dbg !113244 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !113233
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %scalar.ph, !dbg !113233, !llvm.loop !113251

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i.i, %scalar.ph ], !dbg !113252
  ret i64 %.sroa.0.1, !dbg !113253
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !113254 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.11 = alloca [40 x i8], align 8           ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !113256
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !113257 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 87, !dbg !113261
  %i.i = load i8, ptr %i.h, align 1, !dbg !113261, !range !9654, !noundef !14
  %i.j = icmp eq i8 %i.i, -40, !dbg !113268
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !113268

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #52, !dbg !113269
  br label %bb.d, !dbg !113269

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !113270
  br label %bb.d, !dbg !113273

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !113259
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !113274
  %i.l = load i32, ptr %i.k, align 8, !dbg !113274, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !113275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113276), !dbg !113275
  %i.m = load i64, ptr %1, align 16, !dbg !113279, !range !8991, !alias.scope !113276, !noalias !113283, !noundef !14 ; 2 uses
  %i.n = xor i64 %i.m, -9223372036854775808, !dbg !113279
  %i.o = icmp slt i64 %i.m, 0, !dbg !113279
  %i.p = select i1 %i.o, i64 %i.n, i64 3, !dbg !113279
  switch i64 %i.p, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.k
  ], !dbg !113279

bb.e:                                             ; preds = %bb.d
  unreachable, !dbg !113279

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !113286, !noalias !113288
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q) #53
          to label %.noexc unwind label %bb.l, !dbg !113286, !inline_history !113289

.noexc:                                           ; preds = %bb.f
  %.sroa.9.16.copyload = load i64, ptr %i.d, align 16, !dbg !113290, !noalias !113276
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !113290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.16..sroa_idx, i64 40, i1 false), !dbg !113290, !noalias !113276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !113291, !noalias !113288
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113292

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113293), !dbg !113296
  %i.r = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnE13new_uninit_inCs2g09Ig8GZd6_13polars_stream()
          to label %.noexc8 unwind label %bb.l, !dbg !113298, !inline_history !113301 ; 3 uses

.noexc8:                                          ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113302
  %i.t = load ptr, ptr %i.s, align 8, !dbg !113303, !alias.scope !113293, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !113305, !noalias !113310
  invoke fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.t) #53
          to label %.noexc1 unwind label %bb.h, !dbg !113313, !noalias !113293, !inline_history !113314

bb.h:                                             ; preds = %.noexc8
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 96, i64 noundef 16) #54, !dbg !113315, !noalias !113293, !inline_history !113301
  br label %.body, !dbg !113326

.noexc1:                                          ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !113327, !noalias !113310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113330, !noalias !113310
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113292

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113331), !dbg !113334
  %i.v = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnE13new_uninit_inCs2g09Ig8GZd6_13polars_stream()
          to label %.noexc6 unwind label %bb.l, !dbg !113336, !inline_history !113301 ; 3 uses

.noexc6:                                          ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113338
  %i.x = load ptr, ptr %i.w, align 8, !dbg !113339, !alias.scope !113331, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !113340, !noalias !113343
  invoke fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.x) #53
          to label %.noexc2 unwind label %bb.j, !dbg !113346, !noalias !113331, !inline_history !113314

bb.j:                                             ; preds = %.noexc6
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 96, i64 noundef 16) #54, !dbg !113347, !noalias !113331, !inline_history !113301
  br label %.body, !dbg !113354

.noexc2:                                          ; preds = %.noexc6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.v, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !113355, !noalias !113343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !113357, !noalias !113343
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113358
  %i.aa = load i64, ptr %i.z, align 16, !dbg !113358, !alias.scope !113276, !noalias !113283, !noundef !14
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113292

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !113359, !noalias !113288
  invoke void @_RNvXNtCse4dvU5uQ85g_8indexmap3mapINtB2_8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1)
          to label %.noexc3 unwind label %bb.l, !dbg !113361

.noexc3:                                          ; preds = %bb.k
  %.sroa.0.0.copyload12 = load i64, ptr %i.c, align 8, !dbg !113365, !noalias !113276
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !113365
  %.sroa.7.0.copyload14 = load ptr, ptr %.sroa.7.0..sroa_idx13, align 8, !dbg !113365, !noalias !113276
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !113365
  %.sroa.9.0.copyload16 = load i64, ptr %.sroa.9.0..sroa_idx15, align 8, !dbg !113365, !noalias !113276
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !113365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx17, i64 40, i1 false), !dbg !113365, !noalias !113276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !113366, !noalias !113288
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113292

bb.l:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !113367

.body:                                            ; preds = %bb.l, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.ab, %bb.l ], [ %i.u, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !113368
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !113368, !range !9654, !alias.scope !113375, !noundef !14
  %i.ae = icmp eq i8 %i.ad, -40, !dbg !113384
  br i1 %i.ae, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit, !dbg !113384, !prof !717

bb.m:                                             ; preds = %.body
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.n, !dbg !113385

_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %.noexc3, %.noexc2, %.noexc1, %.noexc
  %.sroa.9.0 = phi i64 [ %.sroa.9.16.copyload, %.noexc ], [ undef, %.noexc1 ], [ %i.aa, %.noexc2 ], [ %.sroa.9.0.copyload16, %.noexc3 ], !dbg !113275
  %.sroa.7.0 = phi ptr [ undef, %.noexc ], [ %i.r, %.noexc1 ], [ %i.v, %.noexc2 ], [ %.sroa.7.0.copyload14, %.noexc3 ], !dbg !113275
end_hunk_0
begin_hunk_1_@_RNvXsk_NtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4argsNtB5_8JoinArgsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.120..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !114239, !noalias !114172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !114209, !noalias !114176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !114209, !noalias !114176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !114209, !noalias !114176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.0.i.i, i64 144, i1 false), !dbg !114257, !noalias !114149
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !114257
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !114257, !noalias !114149
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !114257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !dbg !114257, !noalias !114149
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 168, !dbg !114257
  store i8 %i.n, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !114257, !noalias !114149
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 169, !dbg !114257
  store i8 %i.ag, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !dbg !114257, !noalias !114149
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 170, !dbg !114257
  store i8 %i.ai, ptr %.sroa.10.0..sroa_idx.i.i, align 2, !dbg !114257, !noalias !114149
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !114260
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !114261
  br label %bb.y, !dbg !114140

bb.y:                                             ; preds = %bb.a, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.14.0 = phi ptr [ %i.l, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit ], [ undef, %bb.a ], !dbg !114143 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 66, !dbg !114262
  %i.ak = load i8, ptr %i.aj, align 2, !dbg !114262, !range !15606, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !114266
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !114267 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 63, !dbg !114267
  %i.an = load i8, ptr %i.am, align 1, !dbg !114267, !range !20863, !noundef !14 ; 2 uses
  %.not = icmp eq i8 %i.an, -38, !dbg !114267
  br i1 %.not, label %bb.aa, label %bb.z, !dbg !114269

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !114270
  %i.ao = icmp eq i8 %i.an, -40, !dbg !114276
  br i1 %i.ao, label %bb.ab, label %bb.ac, !dbg !114276

bb.aa:                                            ; preds = %bb.y, %bb.ae
  %.sroa.4.0 = phi i8 [ %.sroa.47.0.copyload, %bb.ae ], [ -38, %bb.y ], !dbg !114279
  %i.ap = load i64, ptr %1, align 8, !dbg !114280, !range !6324, !noundef !14 ; 2 uses
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !114283 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114283
  %i.as = load i64, ptr %i.ar, align 8, !dbg !114283
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114283
  %i.au = load i64, ptr %i.at, align 8, !dbg !114283
  %.sroa.6.0 = select i1 %i.aq, i64 %i.au, i64 undef, !dbg !114283
  %.sroa.5.0 = select i1 %i.aq, i64 %i.as, i64 undef, !dbg !114283
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !114284
  %i.aw = load i8, ptr %i.av, align 8, !dbg !114284, !range !2269, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !114285
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !114285, !range !13685, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 67, !dbg !114289
  %i.ba = load i8, ptr %i.az, align 1, !dbg !114289, !range !15826, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68, !dbg !114293
  %i.bc = load i8, ptr %i.bb, align 4, !dbg !114293, !range !15826, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114296
  store i64 %i.i, ptr %i.bd, align 8, !dbg !114296
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114296
  store ptr %.sroa.14.0, ptr %i.be, align 8, !dbg !114296
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 66, !dbg !114296
  store i8 %i.ak, ptr %i.bf, align 2, !dbg !114296
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.bg, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, i64 23, i1 false), !dbg !114296
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 63, !dbg !114296
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx1, align 1, !dbg !114296
  store i64 %i.ap, ptr %0, align 8, !dbg !114296
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114296
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114296
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114296
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !114296
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114296
  store i8 %i.aw, ptr %i.bh, align 8, !dbg !114296
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !114296
  store i8 %i.ay, ptr %i.bi, align 1, !dbg !114296
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 67, !dbg !114296
  store i8 %i.ba, ptr %i.bj, align 1, !dbg !114296
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !114296
  store i8 %i.bc, ptr %i.bk, align 4, !dbg !114296
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !114297
  ret void, !dbg !114298

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.ae unwind label %bb.ad, !dbg !114299

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !114300
  br label %bb.ae, !dbg !114303

bb.ad:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4args8JoinTypeECs2g09Ig8GZd6_13polars_stream(i64 %i.i, ptr %.sroa.14.0) #56
          to label %common.resume unwind label %bb.af, !dbg !114297

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(23) %i.g, i64 23, i1 false), !dbg !114304
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 23, !dbg !114304
  %.sroa.47.0.copyload = load i8, ptr %.sroa.47.0..sroa_idx, align 1, !dbg !114304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !114305
  br label %bb.aa, !dbg !114306

bb.af:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !114296
  unreachable, !dbg !114296
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #29 personality ptr @rust_eh_personality !dbg !114307 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !114309
  %i.b = load i8, ptr %i.a, align 1, !dbg !114309, !range !9654, !alias.scope !114318, !noundef !14 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !114321
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114321

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !114322
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !114324
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !114324
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114327

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !114328, !alias.scope !114318, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114329
  %i.h = load i64, ptr %i.g, align 8, !dbg !114329, !alias.scope !114318, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114330

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !114331
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !114332
  %i.i = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114333
  ret i1 %i.i, !dbg !114334
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #29 personality ptr @rust_eh_personality !dbg !114335 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !114337
  %i.b = load i8, ptr %i.a, align 1, !dbg !114337, !range !9654, !alias.scope !114346, !noundef !14 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !114349
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114349

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !114350
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !114352
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !114352
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114355

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !114356, !alias.scope !114346, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114357
  %i.h = load i64, ptr %i.g, align 8, !dbg !114357, !alias.scope !114346, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114358

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !114359
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !114360
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114361
  ret i1 %i.i, !dbg !114362
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #16 !dbg !114363 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114365
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114365, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114380
  %i.d = load i64, ptr %i.c, align 8, !dbg !114380, !noundef !14
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114381
  ret i1 %i.e, !dbg !114382
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCscgRAwXFJnXP_4core3fmtSTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB5_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !114383 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114385
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !dbg !114386
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !114387
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringEINtNtNtBa_5slice4iter4IterB14_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !114396
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !114397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114398
  ret i1 %i.d, !dbg !114399
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator3nthCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #30 !dbg !114400 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !114402
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert, align 8, !noalias !14 ; 3 uses
  %.pre1319 = ptrtoaddr ptr %.pre13 to i64, !dbg !114404 ; 2 uses
  %.pre = load ptr, ptr %1, align 8               ; 6 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !114404

.lr.ph:                                           ; preds = %bb.a
  %.promoted20 = ptrtoaddr ptr %.pre to i64       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = mul i64 %.pre1319, 214497024112901763, !dbg !114404
  %i.c = mul i64 %.promoted20, -214497024112901763, !dbg !114404
  %i.d = add i64 %i.b, %i.c, !dbg !114404
  %i.e = lshr i64 %i.d, 3, !dbg !114404
  %i.f = add i64 %2, -1, !dbg !114404
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f), !dbg !114404 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !114404    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 8, !dbg !114404
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !114404

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.i = sub i64 %.pre1319, %.promoted20, !dbg !114404
  %i.j = and i64 %i.i, 7, !dbg !114404
  %ident.check.not = icmp eq i64 %i.j, 0, !dbg !114404
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader, !dbg !114411

vector.ph:                                        ; preds = %vector.scevcheck
  %i.k = and i64 %i.h, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.h, %i.m                 ; 3 uses
  %i.n = mul i64 %n.vec, 344
  %i.o = getelementptr i8, ptr %.pre, i64 %i.n
  br label %vector.body, !dbg !114411

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !114411
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !114411 ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1376
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !114404
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !114404, !llvm.loop !114417

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 1376
  store ptr %i.q, ptr %1, align 8, !dbg !114418, !alias.scope !114422, !noalias !114429
  br label %scalar.ph.preheader, !dbg !114404

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.sroa.0.012.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph, !dbg !114432

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.r = phi ptr [ %.pre, %bb.a ], [ %i.y, %bb.d ], !dbg !114433 ; 3 uses
  %i.s = icmp eq ptr %i.r, %.pre13, !dbg !114439
  br i1 %i.s, label %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !114441

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 344, !dbg !114442
  store ptr %i.t, ptr %1, align 8, !dbg !114444, !alias.scope !114445, !noalias !114454
  br label %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !114458

_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge, %bb.b
  %.sink.i.i = phi ptr [ %i.r, %bb.b ], [ null, %._crit_edge ], !dbg !114459 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114459
  store ptr %.sink.i.i, ptr %i.u, align 8, !dbg !114459, !alias.scope !114460, !noalias !114461
  br label %bb.c, !dbg !114462

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.0.012 = phi i64 [ %i.z, %bb.d ], [ %.sroa.0.012.ph, %scalar.ph.preheader ]
  %i.v = phi ptr [ %i.y, %bb.d ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = icmp eq ptr %i.v, %.pre13, !dbg !114463
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !114432

bb.c:                                             ; preds = %bb.e, %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  %.sink = phi ptr [ null, %bb.e ], [ %.sink.i.i, %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114465
  store ptr %.sink, ptr %i.x, align 8, !dbg !114465
  store i64 18, ptr %0, align 8, !dbg !114465
  ret void, !dbg !114466

bb.d:                                             ; preds = %scalar.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 344, !dbg !114467 ; 3 uses
  store ptr %i.y, ptr %1, align 8, !dbg !114418, !alias.scope !114422, !noalias !114429
  %i.z = add nuw i64 %.sroa.0.012, 1, !dbg !114411 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2, !dbg !114402
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !dbg !114404, !llvm.loop !114469

bb.e:                                             ; preds = %scalar.ph
  store ptr null, ptr %i.a, align 8, !dbg !114470, !alias.scope !114471, !noalias !114472
  br label %bb.c, !dbg !114473
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((16, 24)) %1) unnamed_addr #22 !dbg !114437 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114475, !alias.scope !114479, !noalias !114486, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114489
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114489, !alias.scope !114479, !noalias !114486, !nonnull !14, !noundef !14
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !114490
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !114492

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 344, !dbg !114493
  store ptr %i.e, ptr %1, align 8, !dbg !114495, !alias.scope !114479, !noalias !114486
  br label %bb.c, !dbg !114496

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ], !dbg !114497 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114497
  store ptr %.sink.i, ptr %i.f, align 8, !dbg !114497, !alias.scope !114498, !noalias !114499
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114500
  store ptr %.sink.i, ptr %i.g, align 8, !dbg !114500
  store i64 18, ptr %0, align 8, !dbg !114500
  ret void, !dbg !114501
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0) unnamed_addr #16 !dbg !114502 {
bb.a:
  %.val = load i8, ptr %0, align 8, !dbg !114503, !range !22840, !noundef !14
  %i.a = icmp eq i8 %.val, 0, !dbg !114506
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !114505

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114508 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114508, !noundef !14
  %.not.i = icmp eq ptr %i.c, null, !dbg !114508
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !114511

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114514
  %i.e = load i64, ptr %i.d, align 8, !dbg !114514, !noundef !14
  br label %bb.e, !dbg !114518

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !114519
  br label %bb.e, !dbg !114525

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !114528
  ret i64 %.sroa.0.1, !dbg !114518
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #31 !dbg !114529 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114530
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114530, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !114530
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !114533

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !114536
  %i.d = load i64, ptr %i.c, align 8, !dbg !114536, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !114548
  %i.f = load ptr, ptr %i.e, align 8, !dbg !114548, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114550
  %i.h = load i64, ptr %i.g, align 8, !dbg !114550, !noundef !14
  %i.i = add i64 %i.h, %1, !dbg !114550           ; 2 uses
  %i.j = lshr i64 %i.i, 3, !dbg !114551           ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.d, !dbg !114554
  tail call void @llvm.assume(i1 %i.k), !dbg !114559
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !114560
  %i.m = load i8, ptr %i.l, align 1, !dbg !114561, !noundef !14
  %i.n = trunc i64 %i.i to i8, !dbg !114562
  %i.o = and i8 %i.n, 7, !dbg !114562
  %i.p = xor i8 %i.m, -1, !dbg !114564
  %i.q = lshr i8 %i.p, %i.o, !dbg !114564
  %i.r = trunc i8 %i.q to i1, !dbg !114565
  br label %bb.c, !dbg !114566

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ false, %bb.a ], !dbg !114569
  ret i1 %.sroa.0.0, !dbg !114565
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array7is_nullCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #16 !dbg !114570 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114571
  %i.b = load i64, ptr %i.a, align 8, !dbg !114571, !noundef !14
  %i.c = icmp ult i64 %1, %i.b, !dbg !114575
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114575, !prof !420

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @475) #57, !dbg !114576
  unreachable, !dbg !114576

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114577
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114577, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null, !dbg !114577
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114581

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !114583
  %i.g = load i64, ptr %i.f, align 8, !dbg !114583, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !114588
  %i.i = load ptr, ptr %i.h, align 8, !dbg !114588, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114589
  %i.k = load i64, ptr %i.j, align 8, !dbg !114589, !noundef !14
  %i.l = add i64 %i.k, %1, !dbg !114589           ; 2 uses
  %i.m = lshr i64 %i.l, 3, !dbg !114590           ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g, !dbg !114592
  tail call void @llvm.assume(i1 %i.n), !dbg !114595
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m, !dbg !114596
  %i.p = load i8, ptr %i.o, align 1, !dbg !114597, !noundef !14
  %i.q = trunc i64 %i.l to i8, !dbg !114598
  %i.r = and i8 %i.q, 7, !dbg !114598
  %i.s = xor i8 %i.p, -1, !dbg !114599
  %i.t = lshr i8 %i.s, %i.r, !dbg !114599
end_hunk_1
begin_hunk_2_@_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream:bb.a
  br i1 %i.d, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114930

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !114931 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !dbg !114933, !alias.scope !114918
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !114934, !noalias !114944
  %i.f = add i64 %.sroa.01.0.i.i.i, -1, !dbg !114949 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !114954
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.c, !dbg !114954

_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ], !dbg !114955
  ret i64 %.sroa.0.1.i, !dbg !114956
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator3nthCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !114957 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114958), !dbg !114961
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114962), !dbg !114965
  %.not.i.i = icmp eq i64 %2, 0, !dbg !114967
  %.pre = load ptr, ptr %1, align 8, !dbg !114969 ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b, !dbg !114972

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8, !dbg !114973, !alias.scope !114974, !noalias !114979
  br label %.loopexit, !dbg !114972

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114981), !dbg !114984
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114985), !dbg !114988
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !114990, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.c, !dbg !114993

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.f, %bb.d ], !dbg !114995
  %i.d = icmp eq ptr %i.c, %i.b, !dbg !114996
  br i1 %i.d, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114999

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !115000 ; 3 uses
  store ptr %i.e, ptr %1, align 8, !dbg !115002, !alias.scope !114990
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !115003, !noalias !115012
  %i.f = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !115017 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !115020
  br i1 %i.g, label %.loopexit, label %bb.c, !dbg !115020

_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  store i64 19, ptr %0, align 8, !dbg !115021
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115027

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.h = phi ptr [ %.pre3, %..loopexit_crit_edge ], [ %i.b, %bb.d ], !dbg !114973
  %i.i = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.e, %bb.d ], !dbg !114969 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114979), !dbg !115028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115029), !dbg !115028
  %i.j = icmp eq ptr %i.i, %i.h, !dbg !115030
  br i1 %i.j, label %bb.g, label %bb.e, !dbg !115032

bb.e:                                             ; preds = %.loopexit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !115033
  store ptr %i.k, ptr %1, align 8, !dbg !115035, !alias.scope !114974, !noalias !114979
  %i.l = getelementptr i8, ptr %i.i, i64 8, !dbg !115036
  %.val.i = load ptr, ptr %i.l, align 8, !dbg !115036, !noalias !115039, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 16, !dbg !115036
  %.val2.i = load i64, ptr %i.m, align 8, !dbg !115036, !noalias !115039, !noundef !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !115040, !noalias !115048
  %i.n = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #54, !dbg !115053, !noalias !115048 ; 5 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !115055
  br i1 %i.o, label %bb.f, label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !115056, !prof !717

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #55, !dbg !115057, !noalias !115048
  unreachable, !dbg !115057

_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [344 x i8], ptr %.val.i, i64 %.val2.i, !dbg !115058
  store ptr %.val.i, ptr %i.n, align 8, !dbg !115062, !noalias !115063
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !115062
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !115062, !noalias !115063
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !115062
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !115062, !noalias !115063
  store i64 18, ptr %0, align 8, !dbg !115064, !alias.scope !114979, !noalias !115029
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115064
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !115064, !alias.scope !114979, !noalias !115029
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115064
  store ptr @151, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !115064, !alias.scope !114979, !noalias !115029
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115065

bb.g:                                             ; preds = %.loopexit
  store i64 19, ptr %0, align 8, !dbg !115066, !alias.scope !114979, !noalias !115029
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115067

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.g, %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i, %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit
  ret void, !dbg !115027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1g_EjENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #21 !dbg !115068 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115069, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115069
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115069, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115070
  %i.c = ptrtoint ptr %.val to i64, !dbg !115070
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115070
  %i.e = lshr exact i64 %i.d, 4, !dbg !115070
  ret i64 %i.e, !dbg !115084
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2O_12ChunkedArrayNtNtB2Q_9datatypes11BooleanTypeE13downcast_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 !dbg !115085 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115086, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115086
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115086, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115087
  %i.c = ptrtoint ptr %.val to i64, !dbg !115087
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115087
  %i.e = lshr exact i64 %i.d, 4, !dbg !115087
  ret i64 %i.e, !dbg !115094
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2N_8AnyValue10eq_missing17struct_value_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #21 !dbg !115095 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115096, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115096
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115096, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115097
  %i.c = ptrtoint ptr %.val to i64, !dbg !115097
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115097
  %i.e = lshr exact i64 %i.d, 4, !dbg !115097
  ret i64 %i.e, !dbg !115104
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCskY9G75ZWc4U_11polars_expr6reduce16GroupedReductionEL_EENCNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB30_16GroupBySinkState14combine_localss1_000ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools11collect_vecB34_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !115105 {
bb.a:
  tail call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCskY9G75ZWc4U_11polars_expr6reduce16GroupedReductionEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_5slice4iter4IterBU_ENCNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB43_16GroupBySinkState14combine_localss1_000EE9from_iterB47_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2), !dbg !115106
  ret void, !dbg !115111
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1k_13chunked_array7struct_11constructorBQ_E0ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equalCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !115112 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !115113
  br i1 %i.a, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !115122

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container8n_chunks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !115123, !noalias !115131
  br label %bb.c, !dbg !115134

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 16, !dbg !115143 ; 3 uses
  %.not11.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.c, %1, !dbg !115144 ; 3 uses
  br i1 %.not11.not.not.i.not.not.not.i.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !115148

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container8n_chunks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !115149, !noalias !115153
  %.not.i.i.i = icmp eq i64 %i.b, %i.d, !dbg !115161
  br i1 %.not.i.i.i, label %bb.c, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !115167

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.not11.not.not.i.not.not.not.i.not.i, %bb.c ], [ %.not11.not.not.i.not.not.not.i.not.i, %bb.d ], !dbg !115143
  ret i1 %.sroa.0.0, !dbg !115168
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1i_B1g_10eq_missing23struct_owned_value_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 !dbg !115169 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115170, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115170
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115170, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115171
  %i.c = ptrtoint ptr %.val to i64, !dbg !115171
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115171
  %i.e = udiv exact i64 %i.d, 48, !dbg !115171
  ret i64 %i.e, !dbg !115185
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #30 personality ptr @rust_eh_personality !dbg !115186 {
bb.a:
  %.not.i = icmp eq i64 %1, 0, !dbg !115187
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %bb.b, !dbg !115190

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !115191, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !115191 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64, !dbg !115200 ; 2 uses
  %i.d = mul i64 %i.c, 345876451382054093, !dbg !115200
  %i.e = mul i64 %.promoted.i.i.i3, -345876451382054093, !dbg !115200
  %i.f = add i64 %i.d, %i.e, !dbg !115200
  %i.g = lshr i64 %i.f, 5, !dbg !115200
  %i.h = add i64 %1, -1, !dbg !115200
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !115200 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !115200    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !115200
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !115200

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i.i3, !dbg !115200
  %i.l = and i64 %i.k, 31, !dbg !115200
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !115200
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.m = and i64 %i.j, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub nsw i64 %i.j, %i.o                 ; 3 uses
  %i.p = mul i64 %n.vec, 160
  %i.q = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.p
  %i.r = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.promoted.i.i.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !115207
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !115207, !llvm.loop !115209

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !115210, !alias.scope !115191
  br label %scalar.ph.preheader, !dbg !115207

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !115212

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ], !dbg !115213 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !115214
  br i1 %i.v, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %bb.c, !dbg !115212

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !115216 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !115210, !alias.scope !115191
  %i.x = add i64 %.sroa.01.0.i.i.i, -1, !dbg !115218 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !115207
  br i1 %i.y, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %scalar.ph, !dbg !115207, !llvm.loop !115225

_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ], !dbg !115226
  ret i64 %.sroa.0.1.i, !dbg !115227
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef align 8 ptr @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator3nthB1q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #33 personality ptr @rust_eh_personality !dbg !115228 {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0, !dbg !115229
  %.pre = load ptr, ptr %0, align 8, !dbg !115232 ; 6 uses
  %.pre11 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre510 = ptrtoaddr ptr %.pre5 to i64, !dbg !115235 ; 2 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader, !dbg !115235

.preheader:                                       ; preds = %bb.a
  %i.a = mul i64 %.pre510, 345876451382054093, !dbg !115236
  %i.b = mul i64 %.pre11, -345876451382054093, !dbg !115236
  %i.c = add i64 %i.a, %i.b, !dbg !115236
  %i.d = lshr i64 %i.c, 5, !dbg !115236
  %i.e = add i64 %1, -1, !dbg !115236
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e), !dbg !115236 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1, !dbg !115236    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 8, !dbg !115236
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !115236

vector.scevcheck:                                 ; preds = %.preheader
  %i.h = sub i64 %.pre510, %.pre11, !dbg !115236
  %i.i = and i64 %i.h, 31, !dbg !115236
  %ident.check.not = icmp eq i64 %i.i, 0, !dbg !115236
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.j = and i64 %i.g, 3                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %i.g, %i.l                 ; 3 uses
  %i.m = mul i64 %n.vec, 160
  %i.n = getelementptr i8, ptr %.pre, i64 %i.m
  %i.o = sub i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 640
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !115240
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !115240, !llvm.loop !115241

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.q, ptr %0, align 8, !dbg !115242, !alias.scope !115243
  br label %scalar.ph.preheader, !dbg !115240

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.preheader ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %.preheader ], [ %i.o, %middle.block ]
  br label %scalar.ph, !dbg !115236

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.r = phi ptr [ %i.t, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ], !dbg !115254
  %i.s = icmp eq ptr %i.r, %.pre5, !dbg !115255
  br i1 %i.s, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, label %bb.b, !dbg !115236

bb.b:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 160, !dbg !115257 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !dbg !115242, !alias.scope !115243
  %i.u = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !115259 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !115240
  br i1 %i.v, label %.loopexit, label %scalar.ph, !dbg !115240, !llvm.loop !115263

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.w = phi ptr [ %.pre, %bb.a ], [ %i.t, %bb.b ], !dbg !115232 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115264), !dbg !115267
  %i.x = icmp eq ptr %i.w, %.pre5, !dbg !115268
  br i1 %i.x, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, label %bb.c, !dbg !115270

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 160, !dbg !115271
  store ptr %i.y, ptr %0, align 8, !dbg !115273, !alias.scope !115274
  %i.z = load i64, ptr %i.w, align 16, !dbg !115277, !range !6855, !alias.scope !115282, !noalias !115264, !noundef !14
  %.not.i.i2 = icmp eq i64 %i.z, 3, !dbg !115277
  %i.aa = select i1 %.not.i.i2, i64 40, i64 96, !dbg !115285
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa, !dbg !115285
  br label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, !dbg !115286

_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit: ; preds = %scalar.ph, %bb.c, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.ab, %bb.c ], [ null, %scalar.ph ], !dbg !115287
  ret ptr %.sroa.0.0, !dbg !115288
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes11multiplexer15MultiplexerNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115289 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115292), !dbg !115295
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115299), !dbg !115296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115302), !dbg !115305
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115307, !alias.scope !115313, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115314, !noalias !115313
  %i.d = icmp eq i64 %i.c, 1, !dbg !115317
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115317

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115318
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115320
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115320

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115321
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes12gather_every15GatherEveryNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115322 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115323), !dbg !115326
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115327 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115329), !dbg !115327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115332), !dbg !115335
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115337, !alias.scope !115341, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115342, !noalias !115341
  %i.d = icmp eq i64 %i.c, 1, !dbg !115345
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115345

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115346
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115348
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115348

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115349
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sink16CallbackSinkNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115350 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115351), !dbg !115354
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115355 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115357), !dbg !115355
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115360), !dbg !115363
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115365, !alias.scope !115369, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115370, !noalias !115369
  %i.d = icmp eq i64 %i.c, 1, !dbg !115373
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115373

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115374
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115376
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115376

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115377
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes16in_memory_source18InMemorySourceNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115378 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115379), !dbg !115382
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115383 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115385), !dbg !115383
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115388), !dbg !115391
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115393, !alias.scope !115397, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115398, !noalias !115397
  %i.d = icmp eq i64 %i.c, 1, !dbg !115401
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115401

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115402
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115404
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115404

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115405
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes16rolling_group_by14RollingGroupByNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(576) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115406 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115407), !dbg !115410
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115411 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115413), !dbg !115411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115416), !dbg !115419
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115421, !alias.scope !115425, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115426, !noalias !115425
  %i.d = icmp eq i64 %i.c, 1, !dbg !115429
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115429

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115430
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115432
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115432

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115433
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0) unnamed_addr #16 !dbg !68258 {
bb.a:
  %.val = load i8, ptr %0, align 8, !dbg !115434, !range !22840, !noundef !14
  %i.a = icmp eq i8 %.val, 0, !dbg !115436
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !115435

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !115438 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !115438, !noundef !14
  %.not.i = icmp eq ptr %i.c, null, !dbg !115438
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !115441

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !115443
  %i.e = load i64, ptr %i.d, align 8, !dbg !115443, !noundef !14
  br label %bb.e, !dbg !115447

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !115448
  br label %bb.e, !dbg !115451
end_hunk_2
