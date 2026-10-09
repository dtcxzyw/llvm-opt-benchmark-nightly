Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.08?download=true
inline.NumInlined: 15609
inline.NumDeleted: 6028
loop-unroll.NumCompletelyUnrolled: 729
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 842
begin_hunk_0_@_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array24split_at_boxed_uncheckedCs1LHh8CLbVkQ_11polars_core:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !293744
  store ptr @82, ptr %i.n, align 8, !dbg !293744
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !293744
  store ptr %i.j, ptr %i.o, align 8, !dbg !293744
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !293744
  store ptr @82, ptr %i.p, align 8, !dbg !293744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !293745
  ret void, !dbg !293746

bb.j:                                             ; preds = %.body, %.thread
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !293747
  unreachable, !dbg !293747

bb.k:                                             ; preds = %.body, %.thread
  %.pn11 = phi { ptr, i32 } [ %i.h, %.thread ], [ %i.l, %.body ]
  resume { ptr, i32 } %.pn11, !dbg !293747

.thread:                                          ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #37
          to label %bb.k unwind label %bb.j, !dbg !293745
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array3lenCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #14 !dbg !4590 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !293750
  %i.b = load i64, ptr %i.a, align 8, !dbg !293750, !noundef !5304
  ret i64 %i.b, !dbg !293751
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array5dtypeCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) %0) unnamed_addr #13 !dbg !293752 {
bb.a:
  ret ptr %0, !dbg !293753
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array5sliceCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 !dbg !293754 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293760), !dbg !293761
  %i.a = add i64 %2, %1, !dbg !293762
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !293763
  %i.c = load i64, ptr %i.b, align 8, !dbg !293763, !alias.scope !293760, !noundef !5304
  %.not.i = icmp ugt i64 %i.a, %i.c, !dbg !293762
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE5sliceCs1LHh8CLbVkQ_11polars_core.exit, !dbg !293762, !prof !5351

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @144, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #41, !dbg !293764, !noalias !293760
  unreachable, !dbg !293764

_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE5sliceCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayyE15slice_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) #39, !dbg !293765
  ret void, !dbg !293766
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array6as_anyCs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull align 8 %0) unnamed_addr #13 !dbg !293767 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0, !dbg !293768
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @280, 1, !dbg !293768
  ret { ptr, ptr } %i.b, !dbg !293768
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array8to_boxedCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !293769 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !293807
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293804), !dbg !293808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !293809, !noalias !293804
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) #39, !dbg !293809, !noalias !293804
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !293810
  %i.d = load ptr, ptr %i.c, align 8, !dbg !293810, !noalias !293804, !nonnull !5304, !noundef !5304 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !293811, !range !5834, !noalias !293804, !noundef !5304
  %i.f = icmp eq i64 %i.e, 3, !dbg !293812
  br i1 %i.f, label %bb.b, label %bb.c, !dbg !293812

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !293813
  %i.h = load ptr, ptr %i.g, align 8, !dbg !293813, !noalias !293804, !noundef !5304
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !293814
  %i.j = load i64, ptr %i.i, align 8, !dbg !293814, !noalias !293804, !noundef !5304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !293815
  %i.l = load ptr, ptr %i.k, align 8, !dbg !293815, !noalias !293804, !noundef !5304 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null, !dbg !293815
  br i1 %.not.i, label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, label %bb.d, !dbg !293816

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !293817
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !dbg !293818, !noalias !293804 ; 0 uses
  br label %bb.b, !dbg !293819

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 8, !dbg !293820, !range !5834, !noalias !293805, !noundef !5304
  %i.p = icmp eq i64 %i.o, 3, !dbg !293821
  br i1 %i.p, label %bb.f, label %bb.e, !dbg !293821

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !293822
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !293823, !noalias !293805 ; 0 uses
  br label %bb.f, !dbg !293824

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !293825
  %i.t = load <2 x i64>, ptr %i.s, align 8, !dbg !293825, !noalias !293805
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !293826
  %i.v = load atomic i64, ptr %i.u monotonic, align 8, !dbg !293827, !noalias !293805
  br label %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit, !dbg !293828

_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b, %bb.f
  %.sroa.5.sroa.5.0.i = phi i64 [ undef, %bb.b ], [ %i.v, %bb.f ], !dbg !293829
  %i.w = phi <2 x i64> [ undef, %bb.b ], [ %i.t, %bb.f ], !dbg !293829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !293830
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !293830
  store ptr %i.d, ptr %i.x, align 8, !dbg !293830, !alias.scope !293804
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !293830
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !293830, !alias.scope !293804
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !293830
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx5.i, align 8, !dbg !293830, !alias.scope !293804
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !293830
  store ptr %i.l, ptr %i.y, align 8, !dbg !293830, !alias.scope !293804
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !293830
  store <2 x i64> %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !293830, !alias.scope !293804
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !293830
  store i64 %.sroa.5.sroa.5.0.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !dbg !293830, !alias.scope !293804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !293831, !noalias !293804
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !dbg !293832, !noalias !293806
  %i.z = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #40, !dbg !293833, !noalias !293806 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null, !dbg !293834
  br i1 %i.aa, label %bb.g, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEE3newCs1LHh8CLbVkQ_11polars_core.exit, !dbg !293835, !prof !5351

bb.g:                                             ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #42
          to label %.noexc unwind label %bb.h, !dbg !293836

.noexc:                                           ; preds = %bb.g
  unreachable, !dbg !293836

bb.h:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #37
          to label %bb.j unwind label %bb.i, !dbg !293837

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !293838
  unreachable, !dbg !293838

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !293838

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEE3newCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RNvXs6_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs1LHh8CLbVkQ_11polars_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !dbg !293839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !293840
  %i.ad = insertvalue { ptr, ptr } poison, ptr %i.z, 0, !dbg !293841
  %i.ae = insertvalue { ptr, ptr } %i.ad, ptr @82, 1, !dbg !293841
  ret { ptr, ptr } %i.ae, !dbg !293841
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array8validityCs1LHh8CLbVkQ_11polars_core(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #15 !dbg !4593 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !293843 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !293843, !noundef !5304
  %.not = icmp eq ptr %i.b, null, !dbg !293843
  %. = select i1 %.not, ptr null, ptr %i.a, !dbg !293844
  ret ptr %., !dbg !293845
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB4_14PrimitiveArrayyENtB6_5Array9dtype_mutCs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef readnone returned align 8 captures(ret: address, provenance) dereferenceable(88) %0) unnamed_addr #13 !dbg !293846 {
bb.a:
  ret ptr %0, !dbg !293847
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 !dbg !293848 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, i64 %8), !dbg !293849
  ret void, !dbg !293850
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !293851 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dEINtNtB7_5nulls21RollingAggWindowNullsB15_E6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !293852
  ret void, !dbg !293853
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB6_5nulls21RollingAggWindowNullsB17_E7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !293854 {
bb.a:
  %i.a = tail call { i16, i16 } @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dE7get_sumCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !dbg !293886 ; 2 uses
  %i.b = extractvalue { i16, i16 } %i.a, 1, !dbg !293886
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !293887
  %i.d = load i64, ptr %i.c, align 8, !dbg !293887, !noundef !5304
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !293888
  %i.f = load i64, ptr %i.e, align 8, !dbg !293888, !noundef !5304
  %i.g = sub i64 %i.d, %i.f, !dbg !293887         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !293889
  %i.i = load i64, ptr %i.h, align 8, !dbg !293889, !noundef !5304 ; 2 uses
  %i.j = icmp ne i64 %i.i, %i.g, !dbg !293889
  %i.k = extractvalue { i16, i16 } %i.a, 0
  %i.l = trunc i16 %i.k to i1
  %or.cond = select i1 %i.j, i1 %i.l, i1 false, !dbg !293889
  br i1 %or.cond, label %bb.b, label %bb.m, !dbg !293889

bb.b:                                             ; preds = %bb.a
  %i.m = sub i64 %i.g, %i.i, !dbg !293890
  %i.n = uitofp i64 %i.m to float, !dbg !293891   ; 2 uses
  %i.o = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !293892, !noalias !293885 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !293893
  br i1 %i.p, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !293893, !prof !5351

.split.i.i.i:                                     ; preds = %bb.b
  %i.q = tail call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !293894, !noalias !293885
  %i.r = and i128 %i.q, 36028797018963968, !dbg !293895
  %.not6.i.i.i = icmp eq i128 %i.r, 0, !dbg !293895
  br i1 %.not6.i.i.i, label %bb.c, label %bb.l, !dbg !293896

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.b
  %i.s = and i64 %i.o, 36028797018963968, !dbg !293897
  %.not.i.i.i = icmp eq i64 %i.s, 0, !dbg !293897
  br i1 %.not.i.i.i, label %bb.c, label %bb.l, !dbg !293896

bb.c:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.t = bitcast float %i.n to i32, !dbg !293898  ; 7 uses
  %i.u = and i32 %i.t, 2139095040, !dbg !293899   ; 3 uses
  %i.v = and i32 %i.t, 8388607, !dbg !293900      ; 4 uses
  %i.w = icmp eq i32 %i.u, 2139095040, !dbg !293901
  br i1 %i.w, label %bb.d, label %bb.e, !dbg !293901

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, 0, !dbg !293902
  %..i.i.i.i = select i1 %i.x, i32 0, i32 512, !dbg !293903
  %i.y = lshr i32 %i.v, 13, !dbg !293904
  %i.z = or i32 %..i.i.i.i, %i.y, !dbg !293905
  %i.aa = trunc nuw nsw i32 %i.z to i16, !dbg !293905
  %i.ab = or disjoint i16 %i.aa, 31744, !dbg !293905
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, !dbg !293906

bb.e:                                             ; preds = %bb.c
  %i.ac = lshr i32 %i.t, 23, !dbg !293907         ; 2 uses
  %i.ad = icmp samesign ugt i32 %i.u, 1191182336, !dbg !293908
  br i1 %i.ad, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, label %bb.f, !dbg !293908

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp samesign ult i32 %i.t, 947912704, !dbg !293909
  br i1 %i.ae, label %bb.h, label %bb.g, !dbg !293909

bb.g:                                             ; preds = %bb.f
  %i.af = lshr exact i32 %i.u, 13, !dbg !293910
  %i.ag = add nuw nsw i32 %i.af, 16384, !dbg !293910
  %i.ah = lshr i32 %i.v, 13, !dbg !293911
  %i.ai = and i32 %i.t, 4096, !dbg !293912
  %i.aj = icmp ne i32 %i.ai, 0, !dbg !293912
  %i.ak = and i32 %i.t, 12287
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond.not.i.i.i.i = and i1 %i.aj, %i.al, !dbg !293913
  %i.am = or disjoint i32 %i.ag, %i.ah, !dbg !293913
  %i.an = trunc i32 %i.am to i16, !dbg !293913
  %i.ao = zext i1 %or.cond.not.i.i.i.i to i16, !dbg !293912
  %spec.select7.i.i.i.i = add i16 %i.an, %i.ao, !dbg !293912
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, !dbg !293912

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i32 %i.t, 855638016, !dbg !293914
  br i1 %i.ap, label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, label %bb.i, !dbg !293914

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nsw i32 126, %i.ac, !dbg !293914
  %i.ar = or disjoint i32 %i.v, 8388608, !dbg !293915 ; 3 uses
  %i.as = lshr i32 %i.ar, %i.aq, !dbg !293916     ; 2 uses
  %i.at = sub nsw i32 29, %i.ac, !dbg !293917
  %i.au = and i32 %i.at, 31, !dbg !293918         ; 2 uses
  %i.av = shl nuw i32 1, %i.au, !dbg !293918
  %i.aw = and i32 %i.av, %i.ar, !dbg !293919
  %i.ax = icmp eq i32 %i.aw, 0, !dbg !293919
  br i1 %i.ax, label %bb.k, label %bb.j, !dbg !293919

bb.j:                                             ; preds = %bb.i
  %i.ay = shl i32 3, %i.au, !dbg !293920
  %i.az = add nuw i32 %i.ay, 16777215, !dbg !293921
  %i.ba = and i32 %i.az, %i.ar, !dbg !293922
  %i.bb = icmp ne i32 %i.ba, 0, !dbg !293922
  %i.bc = zext i1 %i.bb to i32, !dbg !293922
  %spec.select.i.i.i.i = add nuw nsw i32 %i.as, %i.bc, !dbg !293922
  br label %bb.k, !dbg !293922

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.03.0.i.i.i.i = phi i32 [ %i.as, %bb.i ], [ %spec.select.i.i.i.i, %bb.j ], !dbg !293923
  %i.bd = trunc nuw i32 %.sroa.03.0.i.i.i.i to i16, !dbg !293924
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, !dbg !293925

bb.l:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.be = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.n), !dbg !293926
  br label %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit, !dbg !293926

_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.k, %bb.l
  %.sroa.03.0.i.i.i = phi i16 [ %i.be, %bb.l ], [ %i.ab, %bb.d ], [ %spec.select7.i.i.i.i, %bb.g ], [ 31744, %bb.e ], [ %i.bd, %bb.k ], [ 0, %bb.h ], !dbg !293927
  %i.bf = tail call fastcc noundef i16 @_RNvXsD_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16NtNtNtCscgRAwXFJnXP_4core3ops5arith3Div3div(i16 noundef %i.b, i16 noundef %.sroa.03.0.i.i.i) #39, !dbg !293928, !noalias !293885
  br label %bb.m, !dbg !293929

bb.m:                                             ; preds = %bb.a, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.4.0 = phi i16 [ undef, %bb.a ], [ %i.bf, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit ]
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ 1, %_RNCNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB6_10MeanWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtB8_5nulls21RollingAggWindowNullsB19_E7get_agg0Cs1LHh8CLbVkQ_11polars_core.exit ], !dbg !293930
  %i.bg = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0, !dbg !293931
  %i.bh = insertvalue { i16, i16 } %i.bg, i16 %.sroa.4.0, 1, !dbg !293931
  ret { i16, i16 } %i.bh, !dbg !293931
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowdEINtNtB6_5nulls21RollingAggWindowNullsdE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 !dbg !293932 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowddEINtNtB7_5nulls21RollingAggWindowNullsdE3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, i64 %8), !dbg !293933
  ret void, !dbg !293934
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowdEINtNtB6_5nulls21RollingAggWindowNullsdE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !293935 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowddEINtNtB7_5nulls21RollingAggWindowNullsdE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !293936
  ret void, !dbg !293937
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, double } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowdEINtNtB6_5nulls21RollingAggWindowNullsdE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !293938 {
bb.a:
  %i.a = tail call { i64, double } @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowddE7get_sumCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !dbg !293943 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !293944
  %i.c = load i64, ptr %i.b, align 8, !dbg !293944, !noundef !5304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !293945
  %i.e = load i64, ptr %i.d, align 8, !dbg !293945, !noundef !5304
  %i.f = sub i64 %i.c, %i.e, !dbg !293944         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !293946
  %i.h = load i64, ptr %i.g, align 8, !dbg !293946, !noundef !5304 ; 2 uses
  %i.i = icmp ne i64 %i.h, %i.f, !dbg !293946
  %i.j = extractvalue { i64, double } %i.a, 0
  %i.k = trunc nuw i64 %i.j to i1
  %or.cond = select i1 %i.i, i1 %i.k, i1 false, !dbg !293946 ; 2 uses
  %i.l = extractvalue { i64, double } %i.a, 1, !dbg !293946
  %i.m = sub i64 %i.f, %i.h, !dbg !293946
  %i.n = uitofp i64 %i.m to double, !dbg !293946
  %i.o = fdiv double %i.l, %i.n, !dbg !293946
  %.sroa.4.0 = select i1 %or.cond, double %i.o, double undef, !dbg !293946
  %.sroa.0.0 = zext i1 %or.cond to i64, !dbg !293946
  %i.p = insertvalue { i64, double } poison, i64 %.sroa.0.0, 0, !dbg !293947
  %i.q = insertvalue { i64, double } %i.p, double %.sroa.4.0, 1, !dbg !293947
  ret { i64, double } %i.q, !dbg !293947
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowfEINtNtB6_5nulls21RollingAggWindowNullsfE3newCs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, i64 noundef range(i64 0, 2) %7, i64 %8) unnamed_addr #0 !dbg !293948 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowfdEINtNtB7_5nulls21RollingAggWindowNullsfE3newCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, i64 %8), !dbg !293949
  ret void, !dbg !293950
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowfEINtNtB6_5nulls21RollingAggWindowNullsfE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !dbg !293951 {
bb.a:
  tail call void @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB5_9SumWindowfdEINtNtB7_5nulls21RollingAggWindowNullsfE6updateCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2), !dbg !293952
  ret void, !dbg !293953
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, float } @_RNvXs_NtNtCslFlrwjHoTci_14polars_compute7rolling4meanINtB4_10MeanWindowfEINtNtB6_5nulls21RollingAggWindowNullsfE7get_aggCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !293954 {
bb.a:
  %i.a = tail call { i32, float } @_RNvMNtNtCslFlrwjHoTci_14polars_compute7rolling3sumINtB2_9SumWindowfdE7get_sumCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !dbg !293959 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !293960
  %i.c = load i64, ptr %i.b, align 8, !dbg !293960, !noundef !5304
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !293961
  %i.e = load i64, ptr %i.d, align 8, !dbg !293961, !noundef !5304
  %i.f = sub i64 %i.c, %i.e, !dbg !293960         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !293962
  %i.h = load i64, ptr %i.g, align 8, !dbg !293962, !noundef !5304 ; 2 uses
  %i.i = icmp ne i64 %i.h, %i.f, !dbg !293962
  %i.j = extractvalue { i32, float } %i.a, 0
  %i.k = trunc i32 %i.j to i1
  %or.cond = select i1 %i.i, i1 %i.k, i1 false, !dbg !293962 ; 2 uses
  %i.l = extractvalue { i32, float } %i.a, 1, !dbg !293962
  %i.m = sub i64 %i.f, %i.h, !dbg !293962
  %i.n = uitofp i64 %i.m to float, !dbg !293962
  %i.o = fdiv float %i.l, %i.n, !dbg !293962
  %.sroa.4.0 = select i1 %or.cond, float %i.o, float undef, !dbg !293962
  %.sroa.0.0 = zext i1 %or.cond to i32, !dbg !293962
  %i.p = insertvalue { i32, float } poison, i32 %.sroa.0.0, 0, !dbg !293963
  %i.q = insertvalue { i32, float } %i.p, float %.sroa.4.0, 1, !dbg !293963
  ret { i32, float } %i.q, !dbg !293963
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by7hashing22group_by_threaded_iterINtNtBa_6option6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtNtNtNtBa_4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRB2y_INtNtNtBa_5slice4iter4IterB2y_ENtNtB3V_8iterator10BitmapIterENCNCINvNtBW_11into_groups16num_groups_proxyNtNtB10_9datatypes11Float16TypeEs_00EE00INtB6_5FnMutTjEE8call_mutB10_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !293964 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.7.i.i = alloca [32 x i8], align 8        ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [56 x i8], align 16               ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 14 uses
  %i.i = load ptr, ptr %1, align 8, !dbg !294378, !nonnull !5304, !align !5498, !noundef !5304 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294337), !dbg !294379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !294380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !294380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !294380, !noalias !294338
  %i.j = load ptr, ptr %i.i, align 8, !dbg !294381, !alias.scope !294337, !noalias !294339, !nonnull !5304, !align !5498, !noundef !5304
  %i.k = load i64, ptr %i.j, align 8, !dbg !294381, !noalias !294338, !noundef !5304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294340), !dbg !294382
  %i.l = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !294383, !noalias !294341
  %i.m = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !294384, !noalias !294341
  %i.n = icmp eq i8 %i.m, 2, !dbg !294385
  br i1 %i.n, label %_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtB7_9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_7float164pf16EEINtNtB7_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCs1LHh8CLbVkQ_11polars_core.exit.i, label %bb.b, !dbg !294385, !prof !5350

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #43, !dbg !294386, !noalias !294341
  br label %_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtB7_9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_7float164pf16EEINtNtB7_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !294386

_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtB7_9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_7float164pf16EEINtNtB7_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.b, %bb.a
  call fastcc void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(40) %i.h, i64 noundef 24, i64 noundef %i.k, i1 noundef zeroext true), !dbg !294387
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !294388 ; 3 uses
  store i64 %i.l, ptr %i.o, align 8, !dbg !294388, !alias.scope !294342, !noalias !294338
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !294389
  %i.q = load ptr, ptr %i.p, align 8, !dbg !294389, !alias.scope !294337, !noalias !294339, !nonnull !5304, !align !5498, !noundef !5304 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !dbg !294389, !noalias !294338, !nonnull !5304, !align !5498, !noundef !5304 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !294389
  %i.t = load i64, ptr %i.s, align 8, !dbg !294389, !noalias !294338, !noundef !5304 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.t, 56, !dbg !294390
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i, !dbg !294390
  %.not8299.i = icmp eq i64 %i.t, 0, !dbg !294391
  br i1 %.not8299.i, label %._crit_edge.i, label %.lr.ph.i, !dbg !294392

.lr.ph.i:                                         ; preds = %_RNvXs3_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3map7HashMapINtNtB7_9total_ord12TotalOrdWrapINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_7float164pf16EEINtNtB7_7idx_vec7UnitVecmENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps13with_capacityCs1LHh8CLbVkQ_11polars_core.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !294337, !noalias !294339, !nonnull !5304, !align !5498
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx119.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %bb.c, !dbg !294392

bb.c:                                             ; preds = %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread.i, %.lr.ph.i
  %.sroa.0.0101.i = phi i32 [ 0, %.lr.ph.i ], [ %i.be, %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread.i ] ; 2 uses
  %.sroa.08.0100.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.ab, %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.0100.i, i64 56, !dbg !294393 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !294394, !noalias !294338
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !294395
  call void @llvm.experimental.noalias.scope.decl(metadata !294344), !dbg !294395
  %i.ac = load <2 x ptr>, ptr %.sroa.08.0100.i, align 8, !dbg !294396, !alias.scope !294345, !noalias !294346
  %i.ad = load ptr, ptr %.sroa.08.0100.i, align 8, !dbg !294396, !alias.scope !294345, !noalias !294346, !noundef !5304
  %.not.i.i.i = icmp eq ptr %i.ad, null, !dbg !294396
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.08.0100.i, i64 16, !dbg !294397
  %.val1.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !294397, !alias.scope !294347, !noalias !294348
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !dbg !294396

bb.d:                                             ; preds = %bb.c
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0100.i, i64 24, !dbg !294398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.7.16..sroa_idx.i.i, i64 32, i1 false), !dbg !294398, !alias.scope !294349, !noalias !294348
  br label %bb.e, !dbg !294399

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i, i64 32, i1 false), !dbg !294400, !noalias !294338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !294401
  store <2 x ptr> %i.ac, ptr %i.g, align 16, !dbg !294402, !alias.scope !294350, !noalias !294338
  store ptr %.val1.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !294402, !alias.scope !294350, !noalias !294338
  %i.af = invoke noundef i64 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2c_ENtNtB11_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB47_9datatypes11Float16TypeEs_00ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB47_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g)
          to label %bb.g unwind label %bb.f, !dbg !294403, !noalias !294338

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.ah = trunc i64 %i.af to i32, !dbg !294404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 16 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !294405, !noalias !294338
  invoke void @_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB26_ENtNtBV_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB40_9datatypes11Float16TypeEs_00ENtNtB2a_9itertools9Itertools13enumerate_idxB40_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
          to label %bb.h unwind label %bb.f, !dbg !294406, !noalias !294338

bb.h:                                             ; preds = %bb.g
  %.sroa.034.0.copyload.i = load ptr, ptr %i.f, align 8, !dbg !294405, !noalias !294338
  %.sroa.535.0.copyload.i = load ptr, ptr %.sroa.535.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  %.sroa.15.0.copyload.i = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  %.sroa.19.0.copyload.i = load i32, ptr %.sroa.19.0..sroa_idx.i, align 8, !dbg !294405, !noalias !294338
  br label %bb.i, !dbg !294407

bb.i:                                             ; preds = %bb.u, %bb.h
  %.sroa.19.0.i = phi i32 [ %.sroa.19.0.copyload.i, %bb.h ], [ %i.bg, %bb.u ], !dbg !294405 ; 2 uses
  %.sroa.17.0.i = phi i64 [ %.sroa.17.0.copyload.i, %bb.h ], [ %.sroa.17.3147.i, %bb.u ], !dbg !294405 ; 5 uses
  %.sroa.15.0.i = phi i64 [ %.sroa.15.0.copyload.i, %bb.h ], [ %.sroa.15.2148.i, %bb.u ], !dbg !294405 ; 3 uses
  %.sroa.13.0.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.h ], [ %.sroa.13.2149.i, %bb.u ], !dbg !294405 ; 3 uses
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.h ], [ %.sroa.8.3150.i, %bb.u ], !dbg !294405 ; 8 uses
  %.sroa.535.0.i = phi ptr [ %.sroa.535.0.copyload.i, %bb.h ], [ %.sroa.535.1151.i, %bb.u ], !dbg !294405 ; 7 uses
  %.sroa.034.0.i = phi ptr [ %.sroa.034.0.copyload.i, %bb.h ], [ %.sroa.034.2152.i, %bb.u ], !dbg !294405 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.034.0.i, null, !dbg !294408
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.535.0.i) ]
  br i1 %.not.i.i.i.i, label %bb.l, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i, !dbg !294409

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ai = icmp eq ptr %.sroa.034.0.i, %.sroa.535.0.i, !dbg !294410 ; 2 uses
  %spec.select.idx.i = select i1 %i.ai, i64 0, i64 2, !dbg !294411
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.034.0.i, i64 %spec.select.idx.i, !dbg !294411 ; 2 uses
  %spec.select81.i = select i1 %i.ai, ptr null, ptr %.sroa.034.0.i, !dbg !294411
  %i.aj = icmp eq i64 %.sroa.15.0.i, 0, !dbg !294412
  br i1 %i.aj, label %bb.j, label %._crit_edge.i.i.i.i.i.i, !dbg !294412

bb.j:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i
  %i.ak = icmp eq i64 %.sroa.17.0.i, 0, !dbg !294413
  br i1 %i.ak, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, !dbg !294413

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.17.0.i, i64 64), !dbg !294414 ; 2 uses
  %i.al = sub nuw i64 %.sroa.17.0.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !294415
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.8.0.i, align 1, !dbg !294416, !noalias !294351
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i, i64 8, !dbg !294417
  br label %._crit_edge.i.i.i.i.i.i, !dbg !294418

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i
  %.sroa.17.1.i = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %.sroa.17.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ], !dbg !294405
  %.sroa.8.1.i = phi ptr [ %i.am, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %.sroa.8.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ], !dbg !294405
  %i.an = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %.sroa.15.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ], !dbg !294419
  %i.ao = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ], !dbg !294420 ; 2 uses
  %i.ap = trunc i64 %i.ao to i8, !dbg !294420
  %i.aq = lshr i64 %i.ao, 1, !dbg !294421
  %i.ar = add i64 %i.an, -1, !dbg !294419
  %i.as = and i8 %i.ap, 1, !dbg !294422
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !294423

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.j
  %.sroa.17.2.i = phi i64 [ 0, %bb.j ], [ %.sroa.17.1.i, %._crit_edge.i.i.i.i.i.i ], !dbg !294405 ; 2 uses
  %.sroa.15.1.i = phi i64 [ 0, %bb.j ], [ %i.ar, %._crit_edge.i.i.i.i.i.i ], !dbg !294405 ; 2 uses
  %.sroa.13.1.i = phi i64 [ %.sroa.13.0.i, %bb.j ], [ %i.aq, %._crit_edge.i.i.i.i.i.i ], !dbg !294405 ; 2 uses
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0.i, %bb.j ], [ %.sroa.8.1.i, %._crit_edge.i.i.i.i.i.i ], !dbg !294405 ; 2 uses
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.j ], [ %i.as, %._crit_edge.i.i.i.i.i.i ], !dbg !294424
  %i.at = invoke { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECs1LHh8CLbVkQ_11polars_core(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select81.i)
          to label %.noexc19.i unwind label %bb.n, !dbg !294425, !noalias !294338 ; 2 uses

.noexc19.i:                                       ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.au = extractvalue { i8, ptr } %i.at, 0, !dbg !294426 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.au, 2, !dbg !294427
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread.i, label %bb.k, !dbg !294428

bb.k:                                             ; preds = %.noexc19.i
  %i.av = extractvalue { i8, ptr } %i.at, 1, !dbg !294426 ; 2 uses
  %i.aw = trunc nuw i8 %i.au to i1, !dbg !294429
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  br i1 %i.aw, label %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.i, label %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread138.i, !dbg !294430

bb.l:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i) ]
  %i.ax = icmp eq ptr %.sroa.535.0.i, %.sroa.8.0.i, !dbg !294431
  br i1 %i.ax, label %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.thread.i, label %bb.m, !dbg !294432

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.535.0.i, i64 2, !dbg !294433
  br label %_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.i, !dbg !294434

bb.n:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RNvXs_NtNtCs2mZqlW55729_12polars_utils9itertools13enumerate_idxINtB4_12EnumerateIdxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtB8_7float164pf16INtNtNtB1s_5slice4iter4IterB3n_ENtNtB2c_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groups16num_groups_proxyNtNtB4U_9datatypes11Float16TypeEs_00EmENtNtNtB1q_6traits8iterator8Iterator4nextB4U_.exit.i: ; preds = %bb.m, %bb.k
  %.sroa.17.4.i = phi i64 [ %.sroa.17.0.i, %bb.m ], [ %.sroa.17.2.i, %bb.k ], !dbg !294405
  %.sroa.15.3.i = phi i64 [ %.sroa.15.0.i, %bb.m ], [ %.sroa.15.1.i, %bb.k ], !dbg !294405
  %.sroa.13.3.i = phi i64 [ %.sroa.13.0.i, %bb.m ], [ %.sroa.13.1.i, %bb.k ], !dbg !294405
end_hunk_0
