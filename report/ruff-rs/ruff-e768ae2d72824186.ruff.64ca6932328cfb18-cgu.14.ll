Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.14?download=true
inline.NumInlined: 1609
inline.NumDeleted: 840
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringBC_EECs8EvorvD8vmS_4ruff:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtCs8yaccCKGz54_10ruff_graph13ModuleImportsEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2078 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.c, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2079, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2080
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2078 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2079, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2081
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.g) #33
          to label %bb.h unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2086
  %.sroa.06.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2086 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsECs8EvorvD8vmS_4ruff.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit
  %.sroa.58.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.58.0.copyload.i.i.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2086
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.47.0.copyload.i.i.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2086 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !2086
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !2086
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !2086
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i.i, align 8, !noalias !2086
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !2086
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !2086
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsECs8EvorvD8vmS_4ruff.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs8yaccCKGz54_10ruff_graph13ModuleImportsECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit, %bb.f
  %.sink31.i.i.i.i = phi i64 [ 1, %bb.f ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i.i, %bb.f ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit ]
  store i64 %.sink31.i.i.i.i, ptr %i.a, align 8, !noalias !2086
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink31.i.i.i.i, ptr %i.i, align 8, !noalias !2086
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i.i, ptr %i.j, align 8, !noalias !2086
  call void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtB7_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !2086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2086
  ret void

bb.g:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtNtNtCscdodAO9FK5_5alloc11collections5btree7set_val9SetValZSTEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2105 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2106, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2107
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i.i.i = load i64, ptr %0, align 8, !alias.scope !2105 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2106, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2108
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBC_EECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(32) %i.b) #33
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTdNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !2119 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load ptr, ptr %i.d, align 8, !alias.scope !2120, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2121
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !2119 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2120, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2122
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B2n_B2k_3keyEB2R_ECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B1N_B1K_3keyENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2h_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2h_E0INtNtBc_6result6ResultB4d_zEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B1Z_B1W_3keyEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(32) %1) #33
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2135, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2135, !nonnull !9, !noundef !9
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 5
  store i64 0, ptr %i.b, align 8, !alias.scope !2135
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !2135
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !2135
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !2135
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.v)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEB2h_EECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.n

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.x = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.y = icmp ne i64 %i.g, %i.x
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.y, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.k, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.ap, %bb.k ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2138)
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2139, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2139, !nonnull !9, !noundef !9
  %i.ab = ptrtoint ptr %.val1.i.i.i to i64
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.g, !noalias !2139

bb.g:                                             ; preds = %.thread
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !2139, !noundef !9 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !2139, !nonnull !9, !noundef !9
  %i.aj = shl nuw i64 %i.ag, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2140
  br label %common.resume

bb.i:                                             ; preds = %.thread
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !2139, !noundef !9 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B1Z_B1W_3keyEECs8EvorvD8vmS_4ruff.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %1, align 8, !alias.scope !2139, !nonnull !9, !noundef !9
  %i.an = shl nuw i64 %i.ak, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2141
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B1Z_B1W_3keyEECs8EvorvD8vmS_4ruff.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufuEENvMs0_B1Z_B1W_3keyEECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.i, %bb.j
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.k

bb.k:                                             ; preds = %2
  %i.ao = icmp ule i64 %i.x, %i.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.x) #26 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %.thread, !prof !25

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.x) #32
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB2m_INtNtNtB1e_5slice4iter4IterB2m_EEs0_0EB2m_ECs8EvorvD8vmS_4ruff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !9
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1M_INtNtNtBc_5slice4iter4IterB1M_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultB4R_zEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(32) %1) #33
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !2154, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2154, !nonnull !9, !noundef !9
  %i.s = ptrtoint ptr %.val1.i to i64
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = lshr exact i64 %i.u, 5
  store i64 0, ptr %i.b, align 8, !alias.scope !2154
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !2154
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !alias.scope !2154
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !2154
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef %i.v)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.l
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBI_6string6StringEB1M_EECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %bb.b unwind label %bb.n

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.x = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.y = icmp ne i64 %i.g, %i.x
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.y, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.k, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.ap, %bb.k ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2158, !nonnull !9, !noundef !9 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !2158, !nonnull !9, !noundef !9
  %i.ab = ptrtoint ptr %.val1.i.i.i to i64
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSTdNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.ae)
          to label %bb.i unwind label %bb.g, !noalias !2158

bb.g:                                             ; preds = %.thread
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !alias.scope !2158, !noundef !9 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %1, align 8, !alias.scope !2158, !nonnull !9, !noundef !9
  %i.aj = shl nuw i64 %i.ag, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2159
  br label %common.resume

bb.i:                                             ; preds = %.thread
  %i.ak = load i64, ptr %i.b, align 8, !alias.scope !2158, !noundef !9 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8EvorvD8vmS_4ruff.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %1, align 8, !alias.scope !2158, !nonnull !9, !noundef !9
  %i.an = shl nuw i64 %i.ak, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2160
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8EvorvD8vmS_4ruff.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTdNtNtB1g_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB1Y_INtNtNtB4_5slice4iter4IterB1Y_EEs0_0EECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.i, %bb.j
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.k

bb.k:                                             ; preds = %2
  %i.ao = icmp ule i64 %i.x, %i.g
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.x) #26 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %.thread, !prof !25

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.x) #32
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.b
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECs8EvorvD8vmS_4ruff(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs8EvorvD8vmS_4ruff.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !2176, !noundef !9 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs8EvorvD8vmS_4ruff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2177
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs8EvorvD8vmS_4ruff.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsgNynMj4ykPw_6notify(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs8EvorvD8vmS_4ruff.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazy7destroyNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleECs8EvorvD8vmS_4ruff(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleE0ECs8EvorvD8vmS_4ruff.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !9 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleE0ECs8EvorvD8vmS_4ruff.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs3MGJH6NE8G5_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleE0ECs8EvorvD8vmS_4ruff.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs3MGJH6NE8G5_15crossbeam_epoch9collector11LocalHandleE0ECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1a_6option6OptionNtNtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5alloc5ArenaEEECs8EvorvD8vmS_4ruff(ptr noundef initializes((8, 9)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.a, align 1
  %i.b = load ptr, ptr %0, align 8, !alias.scope !2184, !noundef !9
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionNtNtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5alloc5ArenaEEE0ECs8EvorvD8vmS_4ruff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5allocNtB5_5ArenaNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionNtNtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5alloc5ArenaEEE0ECs8EvorvD8vmS_4ruff.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionNtNtNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocator5alloc5ArenaEEE0ECs8EvorvD8vmS_4ruff.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellNtNtCs56aZGHL6Dc6_7ruff_db5panic17CapturedPanicInfoEECs8EvorvD8vmS_4ruff(ptr noundef initializes((88, 89)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 2, ptr %i.a, align 1
  %i.b = load i64, ptr %0, align 8, !range !2205, !alias.scope !2206, !noundef !9
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs0_NtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs8EvorvD8vmS_4ruff(ptr noalias noundef align 8 dereferenceable(24) %i.f) #33
          to label %.body.i.i.i.i.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !17, !alias.scope !2207, !noundef !9
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCs56aZGHL6Dc6_7ruff_db5panic17CapturedPanicInfoEECs8EvorvD8vmS_4ruff.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !2208 ; 2 uses
  %i.k = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %.body.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !2209, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2210
  br label %.body.i.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !2208 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCs56aZGHL6Dc6_7ruff_db5panic17CapturedPanicInfoEECs8EvorvD8vmS_4ruff.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !2209, !nonnull !9, !noundef !9
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2211
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell4CellNtNtCs56aZGHL6Dc6_7ruff_db5panic17CapturedPanicInfoEECs8EvorvD8vmS_4ruff.exit.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.f, %bb.e, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_0
