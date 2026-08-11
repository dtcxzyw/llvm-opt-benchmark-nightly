inline.NumInlined: 9921
inline.NumDeleted: 5523
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvXs_NtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCscgRAwXFJnXP_4core5panic11unwind_safe16AssertUnwindSafeINtNtCsidoPH4Qgqxm_12polars_async8executor10JoinHandleINtNtB1u_6result6ResultNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore20OwnedSemaphorePermitNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEENtNtNtB1u_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream:bb.a
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !112964
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !112964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.0..sroa_idx, i64 48, i1 false), !dbg !112964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !112965
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 19, !dbg !112966
  br i1 %i.g, label %bb.g, label %bb.f, !dbg !112972

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0, !dbg !112958
  %i.i = extractvalue { ptr, ptr } %i.d, 1, !dbg !112958 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i64 19, ptr %0, align 8, !dbg !112973
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !112973
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !112973
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !112973
  store ptr %i.i, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !112973
  br label %bb.h, !dbg !112981

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !112982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !dbg !112984
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !112982
  store <2 x ptr> %i.f, ptr %.sroa.443.0..sroa_idx, align 8, !dbg !112982
  br label %bb.g, !dbg !112985

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ 20, %bb.d ], !dbg !112986
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !112986
  br label %bb.h, !dbg !112981

bb.h:                                             ; preds = %bb.g, %bb.e
  ret void, !dbg !112981
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCslt8cbK4E2O5_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCscgRAwXFJnXP_4core5panic11unwind_safe16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB2v_19InternalCloudWriter3put00EENtNtNtB1u_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !112987 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !112988
  invoke void @_RNvXso_NtNtCscgRAwXFJnXP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud12cloud_writer15internal_writerNtB1g_19InternalCloudWriter3put00ENtNtNtB9_6future6future6Future4pollCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b, !dbg !113001

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null, !dbg !113006
  %i.c = extractvalue { ptr, i32 } %i.b, 0, !dbg !113006
  %i.d = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c, !dbg !113007 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #51, !dbg !113012
  unreachable, !dbg !113012

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !dbg !113013 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !113013
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !113013
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !113013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.0..sroa_idx, i64 48, i1 false), !dbg !113013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113014
  %i.g = icmp eq i64 %.sroa.0.0.copyload, 19, !dbg !113015
  br i1 %i.g, label %bb.g, label %bb.f, !dbg !113018

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0, !dbg !113007
  %i.i = extractvalue { ptr, ptr } %i.d, 1, !dbg !113007 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i64 19, ptr %0, align 8, !dbg !113019
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113019
  store ptr %i.h, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !113019
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !113019
  store ptr %i.i, ptr %.sroa.534.0..sroa_idx, align 8, !dbg !113019
  br label %bb.h, !dbg !113026

bb.f:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !113027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false), !dbg !113029
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !113027
  store <2 x ptr> %i.f, ptr %.sroa.443.0..sroa_idx, align 8, !dbg !113027
  br label %bb.g, !dbg !113030

bb.g:                                             ; preds = %bb.d, %bb.f
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %bb.f ], [ 20, %bb.d ], !dbg !113031
  store i64 %.sroa.0.0.copyload.sink, ptr %0, align 8, !dbg !113031
  br label %bb.h, !dbg !113026

bb.h:                                             ; preds = %bb.g, %bb.e
  ret void, !dbg !113026
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtB4_13SpecAdvanceBy15spec_advance_byB2o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !113032 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %1, 0, !dbg !113035
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %bb.b, !dbg !113036

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113037), !dbg !113040
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !113042 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113045), !dbg !113048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113049), !dbg !113048
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !113051, !noalias !113058, !noundef !14 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.b, align 8, !alias.scope !113060, !noalias !113049 ; 6 uses
  %i.e = load i64, ptr %0, align 8, !range !5714, !alias.scope !113061, !noalias !113045
  %.fr17.i.i = freeze i64 %i.e
  %i.f = icmp eq i64 %.fr17.i.i, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !113061, !noalias !113045, !nonnull !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %i.f, label %.split.us.preheader.i.i, label %.split.i.i, !prof !113062

.split.us.preheader.i.i:                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !113061, !noalias !113045
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %.promoted.i.i), !dbg !113063 ; 2 uses
  %umax18.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %.promoted.i.i), !dbg !113063
  %i.l = add i64 %.promoted.i.i, %1, !dbg !113063
  %i.m = sub i64 %i.l, %umax.i.i, !dbg !113063
  br label %.split.us.i.i, !dbg !113063

.split.us.i.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, %.split.us.preheader.i.i
  %i.n = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], [ %.promoted.i.i, %.split.us.preheader.i.i ] ; 4 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.x, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], [ %1, %.split.us.preheader.i.i ], !dbg !113070
  %exitcond.not.i.i = icmp eq i64 %i.n, %umax.i.i, !dbg !113071
  br i1 %exitcond.not.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %bb.c, !dbg !113063

bb.c:                                             ; preds = %.split.us.i.i
  %i.o = add i64 %i.n, 1, !dbg !113073            ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !dbg !113076, !alias.scope !113060, !noalias !113049
  %exitcond19.not.i.i = icmp eq i64 %i.n, %umax18.i.i, !dbg !113077
  br i1 %exitcond19.not.i.i, label %.split14.us.i.i, label %bb.d, !dbg !113077, !prof !717

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.n, !dbg !113091 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !113092, !noalias !113103, !nonnull !14, !noundef !14 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !113092
  %i.s = load i64, ptr %i.r, align 8, !dbg !113092, !noalias !113103, !noundef !14
  %i.t = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !113106, !noalias !113103
  %i.u = icmp slt i64 %i.t, 0, !dbg !113111
  br i1 %i.u, label %.split16.us.i.i, label %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i, !dbg !113111

_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !113113
  store ptr %i.q, ptr %i.a, align 8, !noalias !113113
  store i64 %i.s, ptr %i.i, align 8, !noalias !113113
  %i.v = atomicrmw sub ptr %i.q, i64 1 release, align 8, !dbg !113114, !noalias !113124
  %i.w = icmp eq i64 %i.v, 1, !dbg !113133
  br i1 %i.w, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, !dbg !113133

bb.e:                                             ; preds = %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i
  fence acquire, !dbg !113134
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #52, !dbg !113136, !noalias !113113
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, !dbg !113136

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i: ; preds = %bb.e, %_RNCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00Bh_.exit.i.us.i.i
  %i.x = add i64 %.sroa.01.0.us.i.i, -1, !dbg !113137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113140, !noalias !113113
  %i.y = icmp eq i64 %i.x, 0, !dbg !113141
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, label %.split.us.i.i, !dbg !113141

.split.i.i:                                       ; preds = %bb.b
  %i.z = icmp ult i64 %.promoted.i.i, %i.d, !dbg !113071
  br i1 %i.z, label %bb.f, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit, !dbg !113063

bb.f:                                             ; preds = %.split.i.i
  %i.aa = add nuw i64 %.promoted.i.i, 1, !dbg !113073
  store i64 %i.aa, ptr %i.b, align 8, !dbg !113076, !alias.scope !113060, !noalias !113049
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #57, !dbg !113142, !noalias !113103
  unreachable, !dbg !113142

.split14.us.i.i:                                  ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #57, !dbg !113145, !noalias !113103
  unreachable, !dbg !113145

.split16.us.i.i:                                  ; preds = %bb.d
  call void @llvm.trap(), !dbg !113148
  unreachable, !dbg !113148

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB3N_10advance_byBN_NtB57_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4u_EEB1H_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i, %.split.us.i.i, %.split.i.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %.split.i.i ], [ %i.m, %.split.us.i.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldjNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB1O_ENCNCNCNvNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline14initialization37finish_initialize_multi_scan_pipeline0s1_00NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_3MapINtNtNtBa_3ops5range5RangejEB2L_ENtB5f_13SpecAdvanceBy15spec_advance_by0E0B33_.exit.us.i.i ], !dbg !113149
  ret i64 %.sroa.0.1, !dbg !113150
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB28_20row_group_data_fetchNtB3P_19RowGroupDataFetcher4next000ENtB4_13SpecAdvanceBy15spec_advance_byB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !113151 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !113152
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %bb.b, !dbg !113153

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !113154, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !113154 ; 5 uses
  %.promoted.i.i8 = ptrtoaddr ptr %.promoted.i.i to i64, !dbg !113161 ; 2 uses
  %i.d = mul i64 %.promoted.i.i8, -345876451382054093, !dbg !113161
  %i.e = mul i64 %i.c, 345876451382054093, !dbg !113161
  %i.f = add i64 %i.d, %i.e, !dbg !113161
  %i.g = lshr i64 %i.f, 5, !dbg !113161
  %i.h = add i64 %1, -1, !dbg !113161
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !113161 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !113161    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !113161
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !113161

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i8, !dbg !113161
  %i.l = and i64 %i.k, 31, !dbg !113161
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !113161
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
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !113168
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !113168, !llvm.loop !113170

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !113171, !alias.scope !113154
  br label %scalar.ph.preheader, !dbg !113168

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !113173

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !113174 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !113175
  br i1 %i.v, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %bb.c, !dbg !113173

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !113177 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !113171, !alias.scope !113154
  %i.x = add i64 %.sroa.01.0.i.i, -1, !dbg !113179 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !113168
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit, label %scalar.ph, !dbg !113168, !llvm.loop !113186

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4a_10advance_byBN_NtB5u_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4R_EEB1x_.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i.i, %scalar.ph ], !dbg !113187
  ret i64 %.sroa.0.1, !dbg !113188
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB28_20row_group_data_fetchNtB3P_19RowGroupDataFetcher4next00s_0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #28 personality ptr @rust_eh_personality !dbg !113189 {
bb.a:
  %.not = icmp eq i64 %1, 0, !dbg !113190
  br i1 %.not, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %bb.b, !dbg !113191

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !113192, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !113192 ; 5 uses
  %.promoted.i.i8 = ptrtoaddr ptr %.promoted.i.i to i64, !dbg !113199 ; 2 uses
  %i.d = mul i64 %.promoted.i.i8, -345876451382054093, !dbg !113199
  %i.e = mul i64 %i.c, 345876451382054093, !dbg !113199
  %i.f = add i64 %i.d, %i.e, !dbg !113199
  %i.g = lshr i64 %i.f, 5, !dbg !113199
  %i.h = add i64 %1, -1, !dbg !113199
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !113199 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !113199    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !113199
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !113199

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i8, !dbg !113199
  %i.l = and i64 %i.k, 31, !dbg !113199
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !113199
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
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !113206
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !113206, !llvm.loop !113208

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !113209, !alias.scope !113192
  br label %scalar.ph.preheader, !dbg !113206

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i, %vector.scevcheck ], [ %.promoted.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !113211

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.ph, %scalar.ph.preheader ], !dbg !113212 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !113213
  br i1 %i.v, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %bb.c, !dbg !113211

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !113215 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !113209, !alias.scope !113192
  %i.x = add i64 %.sroa.01.0.i.i, -1, !dbg !113217 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !113206
  br i1 %i.y, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit, label %scalar.ph, !dbg !113206, !llvm.loop !113224

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNCNCNvMNtB1r_20row_group_data_fetchNtB38_19RowGroupDataFetcher4next00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4c_10advance_byBN_NtB5w_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4T_EEB1x_.exit: ; preds = %bb.c, %scalar.ph, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.sroa.01.0.i.i, %scalar.ph ], !dbg !113225
  ret i64 %.sroa.0.1, !dbg !113226
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !113227 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.11 = alloca [40 x i8], align 8           ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !113229
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !113230 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 87, !dbg !113234
  %i.i = load i8, ptr %i.h, align 1, !dbg !113234, !range !9651, !noundef !14
  %i.j = icmp eq i8 %i.i, -40, !dbg !113241
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !113241

bb.b:                                             ; preds = %bb.a
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #52, !dbg !113242
  br label %bb.d, !dbg !113242

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !113243
  br label %bb.d, !dbg !113246

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !113232
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !113247
  %i.l = load i32, ptr %i.k, align 8, !dbg !113247, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !113248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113249), !dbg !113248
  %i.m = load i64, ptr %1, align 16, !dbg !113252, !range !8988, !alias.scope !113249, !noalias !113256, !noundef !14 ; 2 uses
  %i.n = xor i64 %i.m, -9223372036854775808, !dbg !113252
  %i.o = icmp slt i64 %i.m, 0, !dbg !113252
  %i.p = select i1 %i.o, i64 %i.n, i64 3, !dbg !113252
  switch i64 %i.p, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.k
  ], !dbg !113252

bb.e:                                             ; preds = %bb.d
  unreachable, !dbg !113252

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !113259, !noalias !113261
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.q) #53
          to label %.noexc unwind label %bb.l, !dbg !113259, !inline_history !113262

.noexc:                                           ; preds = %bb.f
  %.sroa.9.16.copyload = load i64, ptr %i.d, align 16, !dbg !113263, !noalias !113249
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !113263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.16..sroa_idx, i64 40, i1 false), !dbg !113263, !noalias !113249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !113264, !noalias !113261
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113265

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113266), !dbg !113269
  %i.r = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnE13new_uninit_inCs2g09Ig8GZd6_13polars_stream()
          to label %.noexc8 unwind label %bb.l, !dbg !113271, !inline_history !113274 ; 3 uses

.noexc8:                                          ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113275
  %i.t = load ptr, ptr %i.s, align 8, !dbg !113276, !alias.scope !113266, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !113278, !noalias !113283
  invoke fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.t) #53
          to label %.noexc1 unwind label %bb.h, !dbg !113286, !noalias !113266, !inline_history !113287

bb.h:                                             ; preds = %.noexc8
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 96, i64 noundef 16) #54, !dbg !113288, !noalias !113266, !inline_history !113274
  br label %.body, !dbg !113299

.noexc1:                                          ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !113300, !noalias !113283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !113303, !noalias !113283
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113265

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113304), !dbg !113307
  %i.v = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnE13new_uninit_inCs2g09Ig8GZd6_13polars_stream()
          to label %.noexc6 unwind label %bb.l, !dbg !113309, !inline_history !113274 ; 3 uses

.noexc6:                                          ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !113311
  %i.x = load ptr, ptr %i.w, align 8, !dbg !113312, !alias.scope !113304, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !113313, !noalias !113316
  invoke fastcc void @_RNvXsa_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_13IcebergColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.x) #53
          to label %.noexc2 unwind label %bb.j, !dbg !113319, !noalias !113304, !inline_history !113287

bb.j:                                             ; preds = %.noexc6
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 96, i64 noundef 16) #54, !dbg !113320, !noalias !113304, !inline_history !113274
  br label %.body, !dbg !113327

.noexc2:                                          ; preds = %.noexc6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.v, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false), !dbg !113328, !noalias !113316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !113330, !noalias !113316
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !113331
  %i.aa = load i64, ptr %i.z, align 16, !dbg !113331, !alias.scope !113249, !noalias !113256, !noundef !14
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113265

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !113332, !noalias !113261
  invoke void @_RNvXNtCse4dvU5uQ85g_8indexmap3mapINtB2_8IndexMapmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %1)
          to label %.noexc3 unwind label %bb.l, !dbg !113334

.noexc3:                                          ; preds = %bb.k
  %.sroa.0.0.copyload12 = load i64, ptr %i.c, align 8, !dbg !113338, !noalias !113249
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !113338
  %.sroa.7.0.copyload14 = load ptr, ptr %.sroa.7.0..sroa_idx13, align 8, !dbg !113338, !noalias !113249
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !113338
  %.sroa.9.0.copyload16 = load i64, ptr %.sroa.9.0..sroa_idx15, align 8, !dbg !113338, !noalias !113249
  %.sroa.11.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !113338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx17, i64 40, i1 false), !dbg !113338, !noalias !113249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !113339, !noalias !113261
  br label %_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !113265

bb.l:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !113340

.body:                                            ; preds = %bb.l, %bb.h, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.ab, %bb.l ], [ %i.u, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !113341
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !113341, !range !9651, !alias.scope !113348, !noundef !14
  %i.ae = icmp eq i8 %i.ad, -40, !dbg !113357
  br i1 %i.ae, label %bb.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit, !dbg !113357, !prof !717

bb.m:                                             ; preds = %.body
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECs2g09Ig8GZd6_13polars_stream.exit unwind label %bb.n, !dbg !113358

_RNvXsg_NtNtCs1LHh8CLbVkQ_11polars_core6schema7icebergNtB5_17IcebergColumnTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %.noexc3, %.noexc2, %.noexc1, %.noexc
  %.sroa.9.0 = phi i64 [ %.sroa.9.16.copyload, %.noexc ], [ undef, %.noexc1 ], [ %i.aa, %.noexc2 ], [ %.sroa.9.0.copyload16, %.noexc3 ]
end_hunk_0
begin_hunk_1_@_RNvXsk_NtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4argsNtB5_8JoinArgsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !114212, !noalias !114145
  %.sroa.0.120..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 120, !dbg !114212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.120..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !114212, !noalias !114145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !114182, !noalias !114149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !114182, !noalias !114149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !114182, !noalias !114149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %.sroa.0.i.i, i64 144, i1 false), !dbg !114230, !noalias !114122
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 144, !dbg !114230
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !114230, !noalias !114122
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 152, !dbg !114230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !dbg !114230, !noalias !114122
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 168, !dbg !114230
  store i8 %i.n, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !114230, !noalias !114122
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 169, !dbg !114230
  store i8 %i.ag, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !dbg !114230, !noalias !114122
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 170, !dbg !114230
  store i8 %i.ai, ptr %.sroa.10.0..sroa_idx.i.i, align 2, !dbg !114230, !noalias !114122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !114233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !dbg !114234
  br label %bb.y, !dbg !114113

bb.y:                                             ; preds = %bb.a, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.14.0 = phi ptr [ %i.l, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4asof11AsOfOptionsENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit ], [ undef, %bb.a ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 66, !dbg !114235
  %i.ak = load i8, ptr %i.aj, align 2, !dbg !114235, !range !15603, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !114239
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !114240 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 63, !dbg !114240
  %i.an = load i8, ptr %i.am, align 1, !dbg !114240, !range !20860, !noundef !14 ; 2 uses
  %.not = icmp eq i8 %i.an, -38, !dbg !114240
  br i1 %.not, label %bb.aa, label %bb.z, !dbg !114242

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !114243
  %i.ao = icmp eq i8 %i.an, -40, !dbg !114249
  br i1 %i.ao, label %bb.ab, label %bb.ac, !dbg !114249

bb.aa:                                            ; preds = %bb.y, %bb.ae
  %.sroa.4.0 = phi i8 [ %.sroa.47.0.copyload, %bb.ae ], [ -38, %bb.y ], !dbg !114252
  %i.ap = load i64, ptr %1, align 8, !dbg !114253, !range !6321, !noundef !14 ; 2 uses
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !114256 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114256
  %i.as = load i64, ptr %i.ar, align 8, !dbg !114256
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114256
  %i.au = load i64, ptr %i.at, align 8, !dbg !114256
  %.sroa.6.0 = select i1 %i.aq, i64 %i.au, i64 undef, !dbg !114256
  %.sroa.5.0 = select i1 %i.aq, i64 %i.as, i64 undef, !dbg !114256
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !114257
  %i.aw = load i8, ptr %i.av, align 8, !dbg !114257, !range !2268, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 65, !dbg !114258
  %i.ay = load i8, ptr %i.ax, align 1, !dbg !114258, !range !13682, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 67, !dbg !114262
  %i.ba = load i8, ptr %i.az, align 1, !dbg !114262, !range !15823, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 68, !dbg !114266
  %i.bc = load i8, ptr %i.bb, align 4, !dbg !114266, !range !15823, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114269
  store i64 %i.i, ptr %i.bd, align 8, !dbg !114269
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114269
  store ptr %.sroa.14.0, ptr %i.be, align 8, !dbg !114269
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 66, !dbg !114269
  store i8 %i.ak, ptr %i.bf, align 2, !dbg !114269
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.bg, ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, i64 23, i1 false), !dbg !114269
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 63, !dbg !114269
  store i8 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx1, align 1, !dbg !114269
  store i64 %i.ap, ptr %0, align 8, !dbg !114269
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114269
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114269
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114269
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !114269
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114269
  store i8 %i.aw, ptr %i.bh, align 8, !dbg !114269
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 65, !dbg !114269
  store i8 %i.ay, ptr %i.bi, align 1, !dbg !114269
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 67, !dbg !114269
  store i8 %i.ba, ptr %i.bj, align 1, !dbg !114269
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 68, !dbg !114269
  store i8 %i.bc, ptr %i.bk, align 4, !dbg !114269
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !114270
  ret void, !dbg !114271

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.ae unwind label %bb.ad, !dbg !114272

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !114273
  br label %bb.ae, !dbg !114276

bb.ad:                                            ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join4args8JoinTypeECs2g09Ig8GZd6_13polars_stream(i64 %i.i, ptr %.sroa.14.0) #56
          to label %common.resume unwind label %bb.af, !dbg !114270

bb.ae:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(23) %i.g, i64 23, i1 false), !dbg !114277
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 23, !dbg !114277
  %.sroa.47.0.copyload = load i8, ptr %.sroa.47.0..sroa_idx, align 1, !dbg !114277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !114278
  br label %bb.aa, !dbg !114279

bb.af:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #51, !dbg !114269
  unreachable, !dbg !114269
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #29 personality ptr @rust_eh_personality !dbg !114280 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !114282
  %i.b = load i8, ptr %i.a, align 1, !dbg !114282, !range !9651, !alias.scope !114291, !noundef !14 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !114294
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114294

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !114295
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !114297
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !114297
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114300

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !114301, !alias.scope !114291, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114302
  %i.h = load i64, ptr %i.g, align 8, !dbg !114302, !alias.scope !114291, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114303

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !114304
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !114305
  %i.i = tail call noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114306
  ret i1 %i.i, !dbg !114307
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #29 personality ptr @rust_eh_personality !dbg !114308 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23, !dbg !114310
  %i.b = load i8, ptr %i.a, align 1, !dbg !114310, !range !9651, !alias.scope !114319, !noundef !14 ; 2 uses
  %i.c = icmp ugt i8 %i.b, -41, !dbg !114322
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114322

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.b, 64, !dbg !114323
  %i.e = tail call i8 @llvm.umin.i8(i8 %i.d, i8 24), !dbg !114325
  %.sroa.0.0.i.i = zext nneg i8 %i.e to i64, !dbg !114325
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114328

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !dbg !114329, !alias.scope !114319, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114330
  %i.h = load i64, ptr %i.g, align 8, !dbg !114330, !alias.scope !114319, !noundef !14
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114331

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.0.i.i, %bb.b ], !dbg !114332
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %0, %bb.b ], !dbg !114333
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114334
  ret i1 %i.i, !dbg !114335
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #16 !dbg !114336 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114338
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114338, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114353
  %i.d = load i64, ptr %i.c, align 8, !dbg !114353, !noundef !14
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !114354
  ret i1 %i.e, !dbg !114355
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCscgRAwXFJnXP_4core3fmtSTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB5_5Debug3fmtCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 !dbg !114356 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114358
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !dbg !114359
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1, !dbg !114360
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8RKTHBS4OBx_12object_store5azure7builder14AzureConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringEINtNtNtBa_5slice4iter4IterB14_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b), !dbg !114369
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !dbg !114370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114371
  ret i1 %i.d, !dbg !114372
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator3nthCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #30 !dbg !114373 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !114375
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert, align 8, !noalias !14 ; 3 uses
  %.pre1319 = ptrtoaddr ptr %.pre13 to i64, !dbg !114377 ; 2 uses
  %.pre = load ptr, ptr %1, align 8               ; 6 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !114377

.lr.ph:                                           ; preds = %bb.a
  %.promoted20 = ptrtoaddr ptr %.pre to i64       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = mul i64 %.promoted20, -214497024112901763, !dbg !114377
  %i.c = mul i64 %.pre1319, 214497024112901763, !dbg !114377
  %i.d = add i64 %i.b, %i.c, !dbg !114377
  %i.e = lshr i64 %i.d, 3, !dbg !114377
  %i.f = add i64 %2, -1, !dbg !114377
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f), !dbg !114377 ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !114377    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.g, 8, !dbg !114377
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !114377

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.i = sub i64 %.pre1319, %.promoted20, !dbg !114377
  %i.j = and i64 %i.i, 7, !dbg !114377
  %ident.check.not = icmp eq i64 %i.j, 0, !dbg !114377
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader, !dbg !114384

vector.ph:                                        ; preds = %vector.scevcheck
  %i.k = and i64 %i.h, 3                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 4, i64 %i.k
  %n.vec = sub nsw i64 %i.h, %i.m                 ; 3 uses
  %i.n = mul i64 %n.vec, 344
  %i.o = getelementptr i8, ptr %.pre, i64 %i.n
  br label %vector.body, !dbg !114384

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !114384
  %pointer.phi = phi ptr [ %.pre, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4, !dbg !114384 ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1376
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !114377
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !114377, !llvm.loop !114390

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 1376
  store ptr %i.q, ptr %1, align 8, !dbg !114391, !alias.scope !114395, !noalias !114402
  br label %scalar.ph.preheader, !dbg !114377

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.sroa.0.012.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.lr.ph ], [ %i.o, %middle.block ]
  br label %scalar.ph, !dbg !114405

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.r = phi ptr [ %.pre, %bb.a ], [ %i.y, %bb.d ], !dbg !114406 ; 3 uses
  %i.s = icmp eq ptr %i.r, %.pre13, !dbg !114412
  br i1 %i.s, label %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !114414

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 344, !dbg !114415
  store ptr %i.t, ptr %1, align 8, !dbg !114417, !alias.scope !114418, !noalias !114427
  br label %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !114431

_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge, %bb.b
  %.sink.i.i = phi ptr [ %i.r, %bb.b ], [ null, %._crit_edge ], !dbg !114432 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114432
  store ptr %.sink.i.i, ptr %i.u, align 8, !dbg !114432, !alias.scope !114433, !noalias !114434
  br label %bb.c, !dbg !114435

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %.sroa.0.012 = phi i64 [ %i.z, %bb.d ], [ %.sroa.0.012.ph, %scalar.ph.preheader ]
  %i.v = phi ptr [ %i.y, %bb.d ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = icmp eq ptr %i.v, %.pre13, !dbg !114436
  br i1 %i.w, label %bb.e, label %bb.d, !dbg !114405

bb.c:                                             ; preds = %bb.e, %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit
  %.sink = phi ptr [ null, %bb.e ], [ %.sink.i.i, %_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114438
  store ptr %.sink, ptr %i.x, align 8, !dbg !114438
  store i64 18, ptr %0, align 8, !dbg !114438
  ret void, !dbg !114439

bb.d:                                             ; preds = %scalar.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 344, !dbg !114440 ; 3 uses
  store ptr %i.y, ptr %1, align 8, !dbg !114391, !alias.scope !114395, !noalias !114402
  %i.z = add nuw i64 %.sroa.0.012, 1, !dbg !114384 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %2, !dbg !114375
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !dbg !114377, !llvm.loop !114442

bb.e:                                             ; preds = %scalar.ph
  store ptr null, ptr %i.a, align 8, !dbg !114443, !alias.scope !114444, !noalias !114445
  br label %bb.c, !dbg !114446
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtCsisGkweMqrR3_27fallible_streaming_iterator7ConvertINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB13_5slice4iter4IterNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageENcNtINtNtB13_6result6ResultRB29_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE2Ok0EB29_ENtB5_25FallibleStreamingIterator4nextCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) initializes((16, 24)) %1) unnamed_addr #22 !dbg !114410 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114448, !alias.scope !114452, !noalias !114459, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114462
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114462, !alias.scope !114452, !noalias !114459, !nonnull !14, !noundef !14
  %i.d = icmp eq ptr %i.a, %i.c, !dbg !114463
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !114465

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 344, !dbg !114466
  store ptr %i.e, ptr %1, align 8, !dbg !114468, !alias.scope !114452, !noalias !114459
  br label %bb.c, !dbg !114469

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ], !dbg !114470 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114470
  store ptr %.sink.i, ptr %i.f, align 8, !dbg !114470, !alias.scope !114471, !noalias !114472
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114473
  store ptr %.sink.i, ptr %i.g, align 8, !dbg !114473
  store i64 18, ptr %0, align 8, !dbg !114473
  ret void, !dbg !114474
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0) unnamed_addr #16 !dbg !114475 {
bb.a:
  %.val = load i8, ptr %0, align 8, !dbg !114476, !range !22837, !noundef !14
  %i.a = icmp eq i8 %.val, 0, !dbg !114479
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !114478

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114481 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114481, !noundef !14
  %.not.i = icmp eq ptr %i.c, null, !dbg !114481
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !114484

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114487
  %i.e = load i64, ptr %i.d, align 8, !dbg !114487, !noundef !14
  br label %bb.e, !dbg !114491

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !114492
  br label %bb.e, !dbg !114498

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.1 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.b ], !dbg !114501
  ret i64 %.sroa.0.1, !dbg !114491
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #31 !dbg !114502 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114503
  %i.b = load ptr, ptr %i.a, align 8, !dbg !114503, !noundef !14 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !114503
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !114506

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !114509
  %i.d = load i64, ptr %i.c, align 8, !dbg !114509, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !114521
  %i.f = load ptr, ptr %i.e, align 8, !dbg !114521, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114523
  %i.h = load i64, ptr %i.g, align 8, !dbg !114523, !noundef !14
  %i.i = add i64 %i.h, %1, !dbg !114523           ; 2 uses
  %i.j = lshr i64 %i.i, 3, !dbg !114524           ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.d, !dbg !114527
  tail call void @llvm.assume(i1 %i.k), !dbg !114532
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !114533
  %i.m = load i8, ptr %i.l, align 1, !dbg !114534, !noundef !14
  %i.n = trunc i64 %i.i to i8, !dbg !114535
  %i.o = and i8 %i.n, 7, !dbg !114535
  %i.p = xor i8 %i.m, -1, !dbg !114537
  %i.q = lshr i8 %i.p, %i.o, !dbg !114537
  %i.r = trunc i8 %i.q to i1, !dbg !114538
  br label %bb.c, !dbg !114539

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.r, %bb.b ], [ false, %bb.a ], !dbg !114542
  ret i1 %.sroa.0.0, !dbg !114538
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array7is_nullCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #16 !dbg !114543 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114544
  %i.b = load i64, ptr %i.a, align 8, !dbg !114544, !noundef !14
  %i.c = icmp ult i64 %1, %i.b, !dbg !114548
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !114548, !prof !420

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @475) #57, !dbg !114549
  unreachable, !dbg !114549

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114550
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114550, !noundef !14 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null, !dbg !114550
  br i1 %.not.i.i, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array17is_null_uncheckedCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114554

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !114556
  %i.g = load i64, ptr %i.f, align 8, !dbg !114556, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !114561
  %i.i = load ptr, ptr %i.h, align 8, !dbg !114561, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114562
  %i.k = load i64, ptr %i.j, align 8, !dbg !114562, !noundef !14
  %i.l = add i64 %i.k, %1, !dbg !114562           ; 2 uses
  %i.m = lshr i64 %i.l, 3, !dbg !114563           ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g, !dbg !114565
  tail call void @llvm.assume(i1 %i.n), !dbg !114568
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m, !dbg !114569
  %i.p = load i8, ptr %i.o, align 1, !dbg !114570, !noundef !14
  %i.q = trunc i64 %i.l to i8, !dbg !114571
  %i.r = and i8 %i.q, 7, !dbg !114571
  %i.s = xor i8 %i.p, -1, !dbg !114572
end_hunk_1
begin_hunk_2_@_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.01.0.i.i.i = phi i64 [ %1, %bb.b ], [ %i.f, %bb.d ], !dbg !114898 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.b, !dbg !114899
  br i1 %i.d, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114903

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !114904 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !dbg !114906, !alias.scope !114891
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !114907, !noalias !114917
  %i.f = add i64 %.sroa.01.0.i.i.i, -1, !dbg !114922 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !114927
  br i1 %i.g, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.c, !dbg !114927

_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB3L_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBe_6marker4SendEL_E15write_row_group0ENtB4_13SpecAdvanceBy15spec_advance_byCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %bb.c ], [ 0, %bb.d ], !dbg !114928
  ret i64 %.sroa.0.1.i, !dbg !114929
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator3nthCs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !114930 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114931), !dbg !114934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114935), !dbg !114938
  %.not.i.i = icmp eq i64 %2, 0, !dbg !114940
  %.pre = load ptr, ptr %1, align 8, !dbg !114942 ; 2 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b, !dbg !114945

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre3 = load ptr, ptr %.phi.trans.insert, align 8, !dbg !114946, !alias.scope !114947, !noalias !114952
  br label %.loopexit, !dbg !114945

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114954), !dbg !114957
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114958), !dbg !114961
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !114963, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.c, !dbg !114966

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.c = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %2, %bb.b ], [ %i.f, %bb.d ], !dbg !114968
  %i.d = icmp eq ptr %i.c, %i.b, !dbg !114969
  br i1 %i.d, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !114972

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !114973 ; 3 uses
  store ptr %i.e, ptr %1, align 8, !dbg !114975, !alias.scope !114963
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !114976, !noalias !114985
  %i.f = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !114990 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !114993
  br i1 %i.g, label %.loopexit, label %bb.c, !dbg !114993

_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.c
  store i64 19, ptr %0, align 8, !dbg !114994
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115000

.loopexit:                                        ; preds = %bb.d, %..loopexit_crit_edge
  %i.h = phi ptr [ %.pre3, %..loopexit_crit_edge ], [ %i.b, %bb.d ], !dbg !114946
  %i.i = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.e, %bb.d ], !dbg !114942 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114952), !dbg !115001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115002), !dbg !115001
  %i.j = icmp eq ptr %i.i, %i.h, !dbg !115003
  br i1 %i.j, label %bb.g, label %bb.e, !dbg !115005

bb.e:                                             ; preds = %.loopexit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !115006
  store ptr %i.k, ptr %1, align 8, !dbg !115008, !alias.scope !114947, !noalias !114952
  %i.l = getelementptr i8, ptr %i.i, i64 8, !dbg !115009
  %.val.i = load ptr, ptr %i.l, align 8, !dbg !115009, !noalias !115012, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = getelementptr i8, ptr %i.i, i64 16, !dbg !115009
  %.val2.i = load i64, ptr %i.m, align 8, !dbg !115009, !noalias !115012, !noundef !14
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !dbg !115013, !noalias !115021
  %i.n = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #54, !dbg !115026, !noalias !115021 ; 5 uses
  %i.o = icmp eq ptr %i.n, null, !dbg !115028
  br i1 %i.o, label %bb.f, label %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !115029, !prof !717

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #55, !dbg !115030, !noalias !115021
  unreachable, !dbg !115030

_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [344 x i8], ptr %.val.i, i64 %.val2.i, !dbg !115031
  store ptr %.val.i, ptr %i.n, align 8, !dbg !115035, !noalias !115036
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !115035
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !115035, !noalias !115036
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !115035
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !115035, !noalias !115036
  store i64 18, ptr %0, align 8, !dbg !115037, !alias.scope !114952, !noalias !115002
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115037
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !115037, !alias.scope !114952, !noalias !115002
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !115037
  store ptr @151, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !115037, !alias.scope !114952, !noalias !115002
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115038

bb.g:                                             ; preds = %.loopexit
  store i64 19, ptr %0, align 8, !dbg !115039, !alias.scope !114952, !noalias !115002
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit, !dbg !115040

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB33_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator4nextCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.g, %_RNCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB4_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtCscgRAwXFJnXP_4core6marker4SendEL_E15write_row_group0Cs2g09Ig8GZd6_13polars_stream.exit.i, %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4page14CompressedPageEENCNvMNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write14batched_writerINtB2X_13BatchedWriterQDNtNtCsh8eZTKRCwoO_3std2io5WriteNtNtBb_6marker4SendEL_E15write_row_group0ENtNtNtB9_6traits8iterator8Iterator10advance_byCs2g09Ig8GZd6_13polars_stream.exit
  ret void, !dbg !115000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEFG_RL0_B1g_EjENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #21 !dbg !115041 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115042, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115042
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115042, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115043
  %i.c = ptrtoint ptr %.val to i64, !dbg !115043
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115043
  %i.e = lshr exact i64 %i.d, 4, !dbg !115043
  ret i64 %i.e, !dbg !115057
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2O_12ChunkedArrayNtNtB2Q_9datatypes11BooleanTypeE13downcast_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 !dbg !115058 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115059, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115059
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115059, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115060
  %i.c = ptrtoint ptr %.val to i64, !dbg !115060
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115060
  %i.e = lshr exact i64 %i.d, 4, !dbg !115060
  ret i64 %i.e, !dbg !115067
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 1152921504606846976) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvNvMsa_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2N_8AnyValue10eq_missing17struct_value_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #21 !dbg !115068 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115069, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115069
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115069, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115070
  %i.c = ptrtoint ptr %.val to i64, !dbg !115070
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115070
  %i.e = lshr exact i64 %i.d, 4, !dbg !115070
  ret i64 %i.e, !dbg !115077
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCskY9G75ZWc4U_11polars_expr6reduce16GroupedReductionEL_EENCNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB30_16GroupBySinkState14combine_localss1_000ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools11collect_vecB34_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !115078 {
bb.a:
  tail call void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCskY9G75ZWc4U_11polars_expr6reduce16GroupedReductionEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2I_5slice4iter4IterBU_ENCNCNCNvMs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes8group_byNtB43_16GroupBySinkState14combine_localss1_000EE9from_iterB47_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2), !dbg !115079
  ret void, !dbg !115084
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1k_13chunked_array7struct_11constructorBQ_E0ENtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equalCs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !115085 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !115086
  br i1 %i.a, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !115095

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container8n_chunks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !115096, !noalias !115104
  br label %bb.c, !dbg !115107

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn = phi ptr [ %i.c, %bb.d ], [ %0, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %.pn, i64 16, !dbg !115116 ; 3 uses
  %.not11.not.not.i.not.not.not.i.not.i = icmp eq ptr %i.c, %1, !dbg !115117 ; 3 uses
  br i1 %.not11.not.not.i.not.not.not.i.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.d, !dbg !115121

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i64 @_RNvXs4_NtCs1LHh8CLbVkQ_11polars_core5utilsNtNtB7_6series6SeriesNtB5_9Container8n_chunks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !115122, !noalias !115126
  %.not.i.i.i = icmp eq i64 %i.b, %i.d, !dbg !115134
  br i1 %.not.i.i.i, label %bb.c, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !115140

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENCINvNtNtB1l_13chunked_array7struct_11constructorBR_E0ENtNtNtBa_6traits8iterator8Iterator3allNCNvYB3_NtNtCs2mZqlW55729_12polars_utils9itertools9Itertools9all_equal0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.not11.not.not.i.not.not.not.i.not.i, %bb.c ], [ %.not11.not.not.i.not.not.not.i.not.i, %bb.d ], !dbg !115116
  ret i1 %.sroa.0.0, !dbg !115141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 384307168202282326) i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENCNvNvMsa_B1i_B1g_10eq_missing23struct_owned_value_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #21 !dbg !115142 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !dbg !115143, !nonnull !14, !noundef !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !115143
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !115143, !nonnull !14, !noundef !14
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !115144
  %i.c = ptrtoint ptr %.val to i64, !dbg !115144
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !115144
  %i.e = udiv exact i64 %i.d, 48, !dbg !115144
  ret i64 %i.e, !dbg !115158
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #30 personality ptr @rust_eh_personality !dbg !115159 {
bb.a:
  %.not.i = icmp eq i64 %1, 0, !dbg !115160
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %bb.b, !dbg !115163

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !115164, !nonnull !14, !noundef !14 ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !115164 ; 5 uses
  %.promoted.i.i.i3 = ptrtoaddr ptr %.promoted.i.i.i to i64, !dbg !115173 ; 2 uses
  %i.d = mul i64 %.promoted.i.i.i3, -345876451382054093, !dbg !115173
  %i.e = mul i64 %i.c, 345876451382054093, !dbg !115173
  %i.f = add i64 %i.d, %i.e, !dbg !115173
  %i.g = lshr i64 %i.f, 5, !dbg !115173
  %i.h = add i64 %1, -1, !dbg !115173
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h), !dbg !115173 ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 1, !dbg !115173    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.i, 8, !dbg !115173
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !115173

vector.scevcheck:                                 ; preds = %bb.b
  %i.k = sub i64 %i.c, %.promoted.i.i.i3, !dbg !115173
  %i.l = and i64 %i.k, 31, !dbg !115173
  %ident.check.not = icmp eq i64 %i.l, 0, !dbg !115173
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
  %i.s = icmp eq i64 %index.next, %n.vec, !dbg !115180
  br i1 %i.s, label %middle.block, label %vector.body, !dbg !115180, !llvm.loop !115182

middle.block:                                     ; preds = %vector.body
  %i.t = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.t, ptr %0, align 8, !dbg !115183, !alias.scope !115164
  br label %scalar.ph.preheader, !dbg !115180

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %bb.b, %middle.block
  %.ph = phi ptr [ %.promoted.i.i.i, %vector.scevcheck ], [ %.promoted.i.i.i, %bb.b ], [ %i.q, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %bb.b ], [ %i.r, %middle.block ]
  br label %scalar.ph, !dbg !115185

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.u = phi ptr [ %i.w, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ], !dbg !115186 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b, !dbg !115187
  br i1 %i.v, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %bb.c, !dbg !115185

bb.c:                                             ; preds = %scalar.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 160, !dbg !115189 ; 2 uses
  store ptr %i.w, ptr %0, align 8, !dbg !115183, !alias.scope !115164
  %i.x = add i64 %.sroa.01.0.i.i.i, -1, !dbg !115191 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0, !dbg !115180
  br i1 %i.y, label %_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit, label %scalar.ph, !dbg !115180, !llvm.loop !115198

_RNvXs_NvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB28_20row_group_data_fetchNtB3L_19RowGroupDataFetcher15peek_next_bytes0ENtB4_13SpecAdvanceBy15spec_advance_byB2e_.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ], !dbg !115199
  ret i64 %.sroa.0.1.i, !dbg !115200
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal noundef align 8 ptr @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator3nthB1q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #33 personality ptr @rust_eh_personality !dbg !115201 {
bb.a:
  %.not.i.i = icmp eq i64 %1, 0, !dbg !115202
  %.pre = load ptr, ptr %0, align 8, !dbg !115205 ; 6 uses
  %.pre11 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre510 = ptrtoaddr ptr %.pre5 to i64, !dbg !115208 ; 2 uses
  br i1 %.not.i.i, label %.loopexit, label %.preheader, !dbg !115208

.preheader:                                       ; preds = %bb.a
  %i.a = mul i64 %.pre11, -345876451382054093, !dbg !115209
  %i.b = mul i64 %.pre510, 345876451382054093, !dbg !115209
  %i.c = add i64 %i.a, %i.b, !dbg !115209
  %i.d = lshr i64 %i.c, 5, !dbg !115209
  %i.e = add i64 %1, -1, !dbg !115209
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e), !dbg !115209 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 1, !dbg !115209    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.f, 8, !dbg !115209
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !dbg !115209

vector.scevcheck:                                 ; preds = %.preheader
  %i.h = sub i64 %.pre510, %.pre11, !dbg !115209
  %i.i = and i64 %i.h, 31, !dbg !115209
  %ident.check.not = icmp eq i64 %i.i, 0, !dbg !115209
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
  %i.p = icmp eq i64 %index.next, %n.vec, !dbg !115213
  br i1 %i.p, label %middle.block, label %vector.body, !dbg !115213, !llvm.loop !115214

middle.block:                                     ; preds = %vector.body
  %i.q = getelementptr i8, ptr %pointer.phi, i64 640
  store ptr %i.q, ptr %0, align 8, !dbg !115215, !alias.scope !115216
  br label %scalar.ph.preheader, !dbg !115213

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader, %middle.block
  %.ph = phi ptr [ %.pre, %vector.scevcheck ], [ %.pre, %.preheader ], [ %i.n, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %1, %vector.scevcheck ], [ %1, %.preheader ], [ %i.o, %middle.block ]
  br label %scalar.ph, !dbg !115209

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %i.r = phi ptr [ %i.t, %bb.b ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ], !dbg !115227
  %i.s = icmp eq ptr %i.r, %.pre5, !dbg !115228
  br i1 %i.s, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, label %bb.b, !dbg !115209

bb.b:                                             ; preds = %scalar.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 160, !dbg !115230 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !dbg !115215, !alias.scope !115216
  %i.u = add i64 %.sroa.01.0.i.i.i.i, -1, !dbg !115232 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !115213
  br i1 %i.v, label %.loopexit, label %scalar.ph, !dbg !115213, !llvm.loop !115236

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.w = phi ptr [ %.pre, %bb.a ], [ %i.t, %bb.b ], !dbg !115205 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115237), !dbg !115240
  %i.x = icmp eq ptr %i.w, %.pre5, !dbg !115241
  br i1 %i.x, label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, label %bb.c, !dbg !115243

bb.c:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 160, !dbg !115244
  store ptr %i.y, ptr %0, align 8, !dbg !115246, !alias.scope !115247
  %i.z = load i64, ptr %i.w, align 16, !dbg !115250, !range !6852, !alias.scope !115255, !noalias !115237, !noundef !14
  %.not.i.i2 = icmp eq i64 %i.z, 3, !dbg !115250
  %i.aa = select i1 %.not.i.i2, i64 40, i64 96, !dbg !115258
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa, !dbg !115258
  br label %_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit, !dbg !115259

_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet10projection20ArrowFieldProjectionENCNvMNtB1k_20row_group_data_fetchNtB2X_19RowGroupDataFetcher15peek_next_bytes0ENtNtNtB9_6traits8iterator8Iterator10advance_byB1q_.exit: ; preds = %scalar.ph, %bb.c, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ %i.ab, %bb.c ], [ null, %scalar.ph ], !dbg !115260
  ret ptr %.sroa.0.0, !dbg !115261
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes11multiplexer15MultiplexerNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115262 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115265), !dbg !115268
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115269 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115272), !dbg !115269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115275), !dbg !115278
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115280, !alias.scope !115286, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115287, !noalias !115286
  %i.d = icmp eq i64 %i.c, 1, !dbg !115290
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115290

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115291
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115293
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115293

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115294
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes12gather_every15GatherEveryNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115295 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115296), !dbg !115299
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115300 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115302), !dbg !115300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115305), !dbg !115308
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115310, !alias.scope !115314, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115315, !noalias !115314
  %i.d = icmp eq i64 %i.c, 1, !dbg !115318
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115318

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115319
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115321
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115321

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115322
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes13callback_sink16CallbackSinkNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115323 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115324), !dbg !115327
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115328 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115330), !dbg !115328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115333), !dbg !115336
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115338, !alias.scope !115342, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115343, !noalias !115342
  %i.d = icmp eq i64 %i.c, 1, !dbg !115346
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115346

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115347
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115349
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115349

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115350
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes16in_memory_source18InMemorySourceNodeNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115351 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115352), !dbg !115355
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115356 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115358), !dbg !115356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115361), !dbg !115364
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115366, !alias.scope !115370, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115371, !noalias !115370
  %i.d = icmp eq i64 %i.c, 1, !dbg !115374
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115374

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115375
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115377
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115377

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115378
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes16rolling_group_by14RollingGroupByNtB6_11ComputeNode29set_phase_metrics_registratorB8_(ptr noalias nofree noundef readnone align 16 captures(none) dereferenceable(576) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 !dbg !115379 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115380), !dbg !115383
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !115384 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115386), !dbg !115384
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115389), !dbg !115392
  %i.b = load ptr, ptr %i.a, align 8, !dbg !115394, !alias.scope !115398, !nonnull !14, !noundef !14
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !dbg !115399, !noalias !115398
  %i.d = icmp eq i64 %i.c, 1, !dbg !115402
  br i1 %i.d, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115402

bb.b:                                             ; preds = %bb.a
  fence acquire, !dbg !115403
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCsdjtJf7E0q1U_8lock_api5mutex5MutexNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexNtNtCs2g09Ig8GZd6_13polars_stream7metrics12GraphMetricsEE9drop_slowB2c_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #52, !dbg !115405
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit, !dbg !115405

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream7metrics22NodeMetricsRegistratorEBK_.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !115406
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array10null_countCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0) unnamed_addr #16 !dbg !68248 {
bb.a:
  %.val = load i8, ptr %0, align 8, !dbg !115407, !range !22837, !noundef !14
  %i.a = icmp eq i8 %.val, 0, !dbg !115409
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !115408

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !115411 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !115411, !noundef !14
  %.not.i = icmp eq ptr %i.c, null, !dbg !115411
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !115414

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !115416
  %i.e = load i64, ptr %i.d, align 8, !dbg !115416, !noundef !14
  br label %bb.e, !dbg !115420

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.b), !dbg !115421
end_hunk_2
