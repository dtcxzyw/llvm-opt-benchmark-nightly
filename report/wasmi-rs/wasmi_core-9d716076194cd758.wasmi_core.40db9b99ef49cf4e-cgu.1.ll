Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_core-9d716076194cd758.wasmi_core.40db9b99ef49cf4e-cgu.1?download=true
inline.NumInlined: 120
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType14params_results:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !195, !noalias !194, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.l = sub nuw nsw i64 %i.d, %i.g
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner14params_results.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !195, !noalias !194, !noundef !8
  %i.o = zext i8 %i.n to i64                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 2, !alias.scope !195, !noalias !194, !noundef !8
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add nuw nsw i64 %i.r, %i.o               ; 2 uses
  %i.t = icmp samesign ult i64 %i.s, 22
  br i1 %i.t, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19, !noalias !197
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner14params_results.exit

_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner14params_results.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValType8split_atBy_.exit.i, %bb.f
  %.sink9.i = phi ptr [ %i.u, %bb.f ], [ %i.j, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValType8split_atBy_.exit.i ]
  %.sink8.i = phi i64 [ %i.o, %bb.f ], [ %i.g, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValType8split_atBy_.exit.i ]
  %.sink7.i = phi ptr [ %i.v, %bb.f ], [ %i.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValType8split_atBy_.exit.i ]
  %.sink.i = phi i64 [ %i.r, %bb.f ], [ %i.l, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValType8split_atBy_.exit.i ]
  store ptr %.sink9.i, ptr %0, align 8, !alias.scope !194, !noalias !195
  %.sroa.43.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink8.i, ptr %.sroa.43.0..sroa_idx.i2.i, align 8, !alias.scope !194, !noalias !195
  %.sroa.54.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink7.i, ptr %.sroa.54.0..sroa_idx.i3.i, align 8, !alias.scope !194, !noalias !195
  %.sroa.65.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink.i, ptr %.sroa.65.0..sroa_idx.i4.i, align 8, !alias.scope !194, !noalias !195
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType6params(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.a = load i8, ptr %0, align 8, !range !7, !alias.scope !200, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !200, !noundef !8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !alias.scope !200, !noundef !8
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.not.i = icmp ult i64 %i.d, %i.g
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !20

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !200, !noundef !8 ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = icmp ult i8 %i.i, 22
  br i1 %i.k, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !noalias !200
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner6params.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !200, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner6params.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !noalias !200
  unreachable

_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner6params.exit: ; preds = %bb.e, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.g, %bb.f ], [ %i.j, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.e ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.a = load i8, ptr %0, align 8, !range !7, !alias.scope !203, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !203, !noundef !8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2, !alias.scope !203, !noundef !8
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.g, label %bb.f, !prof !10

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !203, !noundef !8
  %i.k = zext i8 %i.j to i64                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 2, !alias.scope !203, !noundef !8
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = add nuw nsw i64 %i.n, %i.k               ; 2 uses
  %i.p = icmp samesign ult i64 %i.o, 22
  br i1 %i.p, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.o, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19, !noalias !203
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner7results.exit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !203, !nonnull !8, !noundef !8
  %i.u = sub nuw i64 %i.d, %i.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.g
  br label %_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner7results.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !203
  unreachable

_RNvMs0_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_13FuncTypeInner7results.exit: ; preds = %bb.e, %bb.f
  %.sroa.3.0.i = phi i64 [ %i.u, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.f ], [ %i.r, %bb.e ]
  %i.x = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.y = insertvalue { ptr, i64 } %i.x, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ 2, %bb.a ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 undef, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel8get_fuel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !7, !alias.scope !206, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8
  br label %_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit

_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit: ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 2, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define { i64, i64 } @_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel8set_fuel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !7, !alias.scope !209, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %0, align 8
  br label %_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit

_RNvMs5_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_4Fuel27check_fuel_metering_enabled.exit: ; preds = %bb.a, %bb.b
  %2 = phi { i64, i64 } [ { i64 2, i64 undef }, %bb.b ], [ { i64 0, i64 undef }, %bb.a ]
  ret { i64, i64 } %2
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProviderNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit.thread, label %bb.b

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit.thread: ; preds = %bb.a
  store i32 64, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 7, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !11, !invariant.load !8
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = getelementptr i8, ptr %.val1, i64 24
  %.val3.i.i = load ptr, ptr %i.l, align 8
  %i.m = tail call noundef i32 %.val3.i.i(ptr noundef nonnull %i.k) #17, !inline_history !0
  store i32 %i.m, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr i8, ptr %.val1, i64 32
  %.val3.i.i7 = load ptr, ptr %i.n, align 8
  %i.o = tail call noundef i32 %.val3.i.i7(ptr noundef nonnull %i.k) #17, !inline_history !2
  store i32 %i.o, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr i8, ptr %.val1, i64 40
  %.val3.i.i10 = load ptr, ptr %i.p, align 8
  %i.q = tail call noundef i32 %.val3.i.i10(ptr noundef nonnull %i.k) #17, !inline_history !1
  br label %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit

_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider24fuel_per_bytes_validated.exit: ; preds = %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit.thread, %bb.b
  %.sroa.0.0.i.i11 = phi i32 [ %i.q, %bb.b ], [ 2, %_RNvMs1_NtCs5zeGauAcNNa_10wasmi_core4fuelNtB5_17FuelCostsProvider25fuel_per_bytes_translated.exit.thread ]
  store i32 %.sroa.0.0.i.i11, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 17)
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 21, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  %i.s = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 25, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  %i.t = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 24, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  %i.u = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.u
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.d = load i8, ptr %0, align 8, !range !7, !alias.scope !220, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !220, !noundef !8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2, !alias.scope !220, !noundef !8
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %.not.i.i = icmp ult i64 %i.g, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.f, !prof !20

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !220, !noundef !8 ; 2 uses
  %i.m = zext i8 %i.l to i64                      ; 2 uses
  %i.n = icmp ult i8 %i.l, 22
  br i1 %i.n, label %bb.g, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !noalias !220
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19, !noalias !220
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !220, !nonnull !8, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.r, align 8
  %i.s = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !221, !noundef !8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i16, ptr %i.v, align 2, !alias.scope !221, !noundef !8
  %i.x = zext i16 %i.w to i64                     ; 4 uses
  %i.y = icmp ult i64 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %bb.j, !prof !10

bb.g:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  store ptr %i.z, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.m, ptr %i.aa, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !221, !noundef !8
  %i.ae = zext i8 %i.ad to i64                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ag = load i8, ptr %i.af, align 2, !alias.scope !221, !noundef !8
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, %i.ae            ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ai, 22
  br i1 %i.aj, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.ai, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19, !noalias !221
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ae
  br label %_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results.exit

bb.j:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !221, !nonnull !8, !noundef !8
  %i.ao = sub nuw i64 %i.u, %i.x
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.x
  br label %_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results.exit

bb.k:                                             ; preds = %bb.f
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.x, i64 noundef %i.u, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19, !noalias !221
  unreachable

_RNvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB5_8FuncType7results.exit: ; preds = %bb.i, %bb.j
  %i.ar = phi ptr [ %i.s, %bb.j ], [ %i.ab, %bb.i ]
  %.sroa.3.0.i.i1 = phi i64 [ %i.ao, %bb.j ], [ %i.ah, %bb.i ]
  %.sroa.0.0.i.i2 = phi ptr [ %i.aq, %bb.j ], [ %i.al, %bb.i ]
  store ptr %.sroa.0.0.i.i2, ptr %i.a, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.3.0.i.i1, ptr %i.as, align 8
  %i.at = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  %i.au = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.au
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs5zeGauAcNNa_10wasmi_core6memory5errorNtB5_11MemoryErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !15, !noundef !8
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 17)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 17)
  br label %bb.k

end_hunk_0
