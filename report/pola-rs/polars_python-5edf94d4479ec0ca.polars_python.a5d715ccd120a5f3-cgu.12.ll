Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE6reduceCseeLknQCOKOd_13polars_python:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %.val7, !dbg !238301
  br i1 %i.p, label %.body, label %.lr.ph12.i.i.i, !dbg !238301

.lr.ph12.i.i.i:                                   ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.0.110.i.i.i, !dbg !238301 ; 2 uses
  %i.r = add i64 %.sroa.0.110.i.i.i, 1, !dbg !238301 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238289), !dbg !238301
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238290), !dbg !238309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238291), !dbg !238310
  %i.s = load ptr, ptr %i.q, align 8, !dbg !238311, !alias.scope !238292, !noalias !238287, !nonnull !4270, !noundef !4270
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !238312, !noalias !238293
  %i.u = icmp eq i64 %i.t, 1, !dbg !238313
  br i1 %i.u, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i, !dbg !238313

bb.e:                                             ; preds = %.lr.ph12.i.i.i
  fence acquire, !dbg !238314
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i unwind label %bb.f, !dbg !238315, !noalias !238287

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i
  %i.v = icmp eq i64 %i.r, %.val7, !dbg !238301
  br i1 %i.v, label %.body, label %.lr.ph12.i.i.i, !dbg !238301

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238301, !noalias !238287
  unreachable, !dbg !238301

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.b, %bb.g
  ret void, !dbg !238316

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238317
  %i.y = load i64, ptr %i.x, align 8, !dbg !238317, !noundef !4270
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238318 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !238318, !noundef !4270
  %i.ab = add i64 %i.aa, %i.y, !dbg !238318
  store i64 %i.ab, ptr %i.z, align 8, !dbg !238318
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238319
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238319
  %i.ac = add i64 %.sroa.48.0.copyload, %i.c, !dbg !238320
  store i64 %i.ac, ptr %i.b, align 8, !dbg !238320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238299
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit, !dbg !238300

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i, %bb.d
  resume { ptr, i32 } %i.o, !dbg !238321
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE6reduceCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238322 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !238362, !noundef !4270
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !238363 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !238363, !noundef !4270 ; 2 uses
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %i.c, !dbg !238364
  %i.e = load ptr, ptr %2, align 8, !dbg !238365, !noundef !4270 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !238366
  br i1 %i.f, label %bb.i, label %bb.b, !dbg !238366

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238367
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238368
  %.val7 = load i64, ptr %i.g, align 8, !dbg !238368, !alias.scope !4886, !noundef !4270 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0, !dbg !238369
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph.i.i.i, !dbg !238369

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.08.i.i.i, !dbg !238369 ; 3 uses
  %i.j = add nuw i64 %.sroa.0.08.i.i.i, 1, !dbg !238369 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238353), !dbg !238369
  %i.k = load i8, ptr %i.i, align 16, !dbg !238370, !range !4820, !alias.scope !238354, !noalias !238355, !noundef !4270
  %i.l = icmp eq i8 %i.k, 31, !dbg !238370
  br i1 %i.l, label %bb.c, label %bb.e, !dbg !238370

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !238370 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238356), !dbg !238370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238357), !dbg !238371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238358), !dbg !238372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238359), !dbg !238373
  %i.n = load ptr, ptr %i.m, align 8, !dbg !238374, !alias.scope !238360, !noalias !238355, !nonnull !4270, !noundef !4270
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !238375, !noalias !238361
  %i.p = icmp eq i64 %i.o, 1, !dbg !238376
  br i1 %i.p, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !238376

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !238377
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.g, !dbg !238378, !noalias !238355

bb.e:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.g, !dbg !238370, !noalias !238355

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp eq i64 %i.j, %.val7, !dbg !238369
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph.i.i.i, !dbg !238369

bb.f:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i.i.i14, 1, !dbg !238369 ; 2 uses
  %i.s = icmp eq i64 %i.r, %.val7, !dbg !238369
  br i1 %i.s, label %.body, label %.lr.ph, !dbg !238369

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.j, %.val7, !dbg !238369
  br i1 %i.u, label %.body, label %.lr.ph, !dbg !238369

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.r, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i14, !dbg !238369
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(160) %i.v) #50
          to label %bb.f unwind label %bb.h, !dbg !238369, !noalias !238355

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238369, !noalias !238355
  unreachable, !dbg !238369

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.b, %bb.i
  ret void, !dbg !238379

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238380
  %i.y = load i64, ptr %i.x, align 8, !dbg !238380, !noundef !4270
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238381 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !238381, !noundef !4270
  %i.ab = add i64 %i.aa, %i.y, !dbg !238381
  store i64 %i.ab, ptr %i.z, align 8, !dbg !238381
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238382
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238382
  %i.ac = add i64 %.sroa.48.0.copyload, %i.c, !dbg !238383
  store i64 %i.ac, ptr %i.b, align 8, !dbg !238383
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238367
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, !dbg !238368

.body:                                            ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.t, !dbg !238384
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE6reduceCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238385 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !238395, !noundef !4270
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !238396 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !238396, !noundef !4270 ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.c, !dbg !238397
  %i.e = load ptr, ptr %2, align 8, !dbg !238398, !noundef !4270 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !238399
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12, label %bb.b, !dbg !238399

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238400
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238401
  %.val7 = load i64, ptr %i.g, align 8, !dbg !238401, !alias.scope !4887, !noundef !4270 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0, !dbg !238402
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph, !dbg !238402

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7, !dbg !238402
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph, !dbg !238402

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i18, !dbg !238402
  %i.k = add i64 %.sroa.0.0.i.i.i18, 1, !dbg !238402 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.c unwind label %bb.e, !dbg !238402, !noalias !238394

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.1.i.i.i19, 1, !dbg !238402 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val7, !dbg !238402
  br i1 %i.m, label %.body, label %.lr.ph20, !dbg !238402

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.val7, !dbg !238402
  br i1 %i.o, label %.body, label %.lr.ph20, !dbg !238402

.lr.ph20:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i19, !dbg !238402
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.p) #50
          to label %bb.d unwind label %bb.f, !dbg !238402, !noalias !238394

bb.f:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238402, !noalias !238394
  unreachable, !dbg !238402

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238403
  %i.s = load i64, ptr %i.r, align 8, !dbg !238403, !noundef !4270
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238404 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !238404, !noundef !4270
  %i.v = add i64 %i.u, %i.s, !dbg !238404
  store i64 %i.v, ptr %i.t, align 8, !dbg !238404
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238405
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !238405
  %i.w = add i64 %.sroa.413.0.copyload, %i.c, !dbg !238406
  store i64 %i.w, ptr %i.b, align 8, !dbg !238406
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238400
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, !dbg !238401

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12
  ret void, !dbg !238407

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n, !dbg !238408
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutCseeLknQCOKOd_13polars_python(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238409 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238426), !dbg !238428
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !238429
  %i.b = load i64, ptr %i.a, align 8, !dbg !238429, !alias.scope !238426, !noundef !4270
  %i.c = zext i32 %2 to i64, !dbg !238430         ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !238431
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !238431

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238432
  %i.f = load ptr, ptr %i.e, align 8, !dbg !238432, !alias.scope !238426, !nonnull !4270, !noundef !4270
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.c, !dbg !238433 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !238434
  %i.i = load i32, ptr %i.h, align 8, !dbg !238434, !alias.scope !238427, !noalias !238426, !noundef !4270
  %i.j = icmp eq i32 %i.i, %1, !dbg !238434
  br i1 %i.j, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python.exit, label %bb.c, !dbg !238435

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  ret ptr %i.g, !dbg !238436

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1442, i64 noundef 24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #55, !dbg !238437
  unreachable, !dbg !238437
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !238438 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !238475
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_set(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !238476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !238477
  call void @llvm.experimental.noalias.scope.decl(metadata !238468), !dbg !238478
  %i.c = load ptr, ptr %0, align 8, !dbg !238479, !alias.scope !238468, !noalias !238473, !nonnull !4270, !noundef !4270 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238480
  %i.e = load i64, ptr %i.d, align 8, !dbg !238480, !alias.scope !238468, !noalias !238473, !noundef !4270
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e, !dbg !238481
  %i.g = getelementptr i8, ptr %i.f, i64 1, !dbg !238481
  %.val24.i = load <16 x i8>, ptr %i.c, align 16, !dbg !238482, !noalias !238474
  %i.h = icmp sgt <16 x i8> %.val24.i, splat (i8 -1), !dbg !238483
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !238484
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !238485
  %i.k = load i64, ptr %i.j, align 8, !dbg !238485, !alias.scope !238468, !noalias !238473, !noundef !4270
  store ptr %i.c, ptr %i.a, align 8, !dbg !238486
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !238486
  store ptr %i.i, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238486
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !238486
  store ptr %i.g, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !238486
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !238486
  store <16 x i1> %i.h, ptr %.sroa.610.0..sroa_idx, align 8, !dbg !238486
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !238486
  store i64 %i.k, ptr %.sroa.812.0..sroa_idx, align 8, !dbg !238486
  %i.l = call noundef nonnull align 8 ptr @_RINvMs4_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugSet7entriesRRxINtNtCs7tGzs63DEEy_9hashbrown3set4IterB13_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !238487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !238488
  %i.m = call noundef zeroext i1 @_RNvMs4_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !dbg !238489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !238490
  ret i1 %i.m, !dbg !238491
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB5_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238492 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXsd_NtCseeLknQCOKOd_13polars_python9dataframeNtB7_34Pyo3MethodsInventoryForPyDataFrameNtCsgoxMDlS32XZ_9inventory7Collect8registry8REGISTRY acquire, align 8, !dbg !238511
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !238512
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 8, i64 noundef range(i64 8, 17) 8) #53, !dbg !238513 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !238514
  br i1 %i.c, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !238515, !prof !4282

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #51, !dbg !238516
  unreachable, !dbg !238516

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !dbg !238517
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !238518
  store i64 0, ptr %i.d, align 8, !dbg !238518
  store ptr @_RNvNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB7_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %0, align 8, !dbg !238518
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238518
  store ptr %i.b, ptr %i.e, align 8, !dbg !238518
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !238518
  store ptr @1457, ptr %i.f, align 8, !dbg !238518
  ret void, !dbg !238519
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !238520 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [120 x i8], align 16          ; 5 uses
  %i.g = load i8, ptr %1, align 16, !dbg !238659, !range !4820, !noundef !4270
  %.not = icmp eq i8 %i.g, 31, !dbg !238659
  br i1 %.not, label %bb.y, label %bb.b, !dbg !238659

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !238660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !238661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !238661, !noalias !238642
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !238662 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !238663
  %i.j = load i8, ptr %i.i, align 1, !dbg !238663, !range !4338, !noalias !238642, !noundef !4270
  %i.k = icmp eq i8 %i.j, -40, !dbg !238664
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !238664

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #54, !dbg !238665, !noalias !238642
  br label %bb.e, !dbg !238665

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !238666, !noalias !238642
  br label %bb.e, !dbg !238667

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !238668, !noalias !238642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !238669, !noalias !238642
  invoke fastcc void @_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.i unwind label %bb.h, !dbg !238669, !noalias !238642

bb.f:                                             ; preds = %.body.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i ], [ %i.o, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !238670
  %i.m = load i8, ptr %i.l, align 1, !dbg !238670, !range !4338, !alias.scope !238643, !noalias !238642, !noundef !4270
  %i.n = icmp eq i8 %i.m, -40, !dbg !238671
  br i1 %i.n, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i, !dbg !238671, !prof !4282

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.x, !dbg !238672, !noalias !238642

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !238673
  %i.q = load i64, ptr %i.p, align 8, !dbg !238673, !noalias !238642, !noundef !4270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !238674, !noalias !238644
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !238675 ; 2 uses
  store i32 3, ptr %i.r, align 8, !dbg !238675, !noalias !238644
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !238676
  %i.t = load atomic i32, ptr %i.s acquire, align 16, !dbg !238677, !noalias !238644
  %i.u = icmp eq i32 %i.t, 0, !dbg !238678
  br i1 %i.u, label %bb.j, label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !238678

.body.i.i:                                        ; preds = %bb.u, %bb.t, %bb.p, %bb.o, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %i.al, %bb.t ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ], [ %i.al, %bb.u ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %.body.i unwind label %bb.w, !dbg !238679, !noalias !238644

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !238680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !238681, !noalias !238644
  %.val.i.i = load ptr, ptr %i.v, align 16, !dbg !238682, !noalias !238644, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 136, !dbg !238682
  %.val8.i.i = load ptr, ptr %i.w, align 8, !dbg !238682, !noalias !238644 ; 2 uses
  %i.x = atomicrmw add ptr %.val.i.i, i64 1 monotonic, align 8, !dbg !238683, !noalias !238644
  %i.y = icmp slt i64 %i.x, 0, !dbg !238684
  br i1 %i.y, label %bb.k, label %bb.l, !dbg !238684

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !238685
  unreachable, !dbg !238685

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !238686, !noalias !238645
  store ptr %.val.i.i, ptr %i.a, align 8, !dbg !238687, !noalias !238645
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !238687 ; 2 uses
  store ptr %.val8.i.i, ptr %i.z, align 8, !dbg !238687, !noalias !238645
  %i.aa = load atomic i32, ptr %i.r acquire, align 8, !dbg !238688, !noalias !238646
  %i.ab = icmp eq i32 %i.aa, 0, !dbg !238689
  br i1 %i.ab, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.m, !dbg !238689, !prof !4383

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.n, !dbg !238690, !noalias !238647

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !238648), !dbg !238691
  %i.ad = load ptr, ptr %i.a, align 8, !dbg !238692, !alias.scope !238648, !noalias !238645, !noundef !4270 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !238692
  br i1 %i.ae, label %.body.i.i, label %bb.o, !dbg !238692

bb.o:                                             ; preds = %bb.n
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !238693, !noalias !238649
  %i.ag = icmp eq i64 %i.af, 1, !dbg !238694
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!238203 = !DILocation(line: 1537, column: 9, scope: !238196, inlinedAt: !238200)
!238204 = !DILocation(line: 1546, column: 6, scope: !238192)
!238205 = distinct !DISubprogram(name: "try_readonly<u16, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodstB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238206 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<u16, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238207 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<u16, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238208 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238209 = distinct !DISubprogram(name: "try_into_readonly<u16, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodstB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238210 = !DILocation(line: 1545, column: 14, scope: !238205)
!238211 = !DILocation(line: 823, column: 47, scope: !238207, inlinedAt: !238210)
!238212 = !DILocation(line: 1816, column: 18, scope: !238206, inlinedAt: !238211)
!238213 = !DILocation(line: 1545, column: 22, scope: !238205)
!238214 = !DILocation(line: 1816, column: 33, scope: !238206, inlinedAt: !238211)
!238215 = !DILocation(line: 192, column: 13, scope: !238208, inlinedAt: !238212)
!238216 = !DILocation(line: 1537, column: 9, scope: !238209, inlinedAt: !238213)
!238217 = !DILocation(line: 1546, column: 6, scope: !238205)
!238218 = distinct !DISubprogram(name: "try_readonly<i64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsxB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238219 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<i64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238220 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<i64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238221 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238222 = distinct !DISubprogram(name: "try_into_readonly<i64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsxB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238223 = !DILocation(line: 1545, column: 14, scope: !238218)
!238224 = !DILocation(line: 823, column: 47, scope: !238220, inlinedAt: !238223)
!238225 = !DILocation(line: 1816, column: 18, scope: !238219, inlinedAt: !238224)
!238226 = !DILocation(line: 1545, column: 22, scope: !238218)
!238227 = !DILocation(line: 1816, column: 33, scope: !238219, inlinedAt: !238224)
!238228 = !DILocation(line: 192, column: 13, scope: !238221, inlinedAt: !238225)
!238229 = !DILocation(line: 1537, column: 9, scope: !238222, inlinedAt: !238226)
!238230 = !DILocation(line: 1546, column: 6, scope: !238218)
!238231 = distinct !DISubprogram(name: "try_readonly<u64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsyB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238232 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<u64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238233 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<u64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238234 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238235 = distinct !DISubprogram(name: "try_into_readonly<u64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsyB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238236 = !DILocation(line: 1545, column: 14, scope: !238231)
!238237 = !DILocation(line: 823, column: 47, scope: !238233, inlinedAt: !238236)
!238238 = !DILocation(line: 1816, column: 18, scope: !238232, inlinedAt: !238237)
!238239 = !DILocation(line: 1545, column: 22, scope: !238231)
!238240 = !DILocation(line: 1816, column: 33, scope: !238232, inlinedAt: !238237)
!238241 = !DILocation(line: 192, column: 13, scope: !238234, inlinedAt: !238238)
!238242 = !DILocation(line: 1537, column: 9, scope: !238235, inlinedAt: !238239)
!238243 = !DILocation(line: 1546, column: 6, scope: !238231)
!238244 = distinct !DISubprogram(name: "reduce<polars_core::series::Series>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238245 = distinct !DISubprogram(name: "add<polars_core::series::Series>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs1LHh8CLbVkQ_11polars_core6series6Series3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238246 = distinct !DILexicalBlock(scope: !238244, file: !4879, line: 177, column: 13)
!238247 = distinct !DILocation(line: 184, column: 5, scope: !238244)
!238248 = distinct !DILocation(line: 810, column: 1, scope: !1385, inlinedAt: !238247)
!238249 = distinct !DILocation(line: 77, column: 13, scope: !1387, inlinedAt: !238248)
!238250 = distinct !{!238250, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238251 = distinct !{!238251, !238250, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238252 = distinct !{!238252, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238253 = distinct !{!238253, !238252, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238254 = distinct !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238249)
!238255 = distinct !{!238255, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238256 = distinct !{!238256, !238255, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238257 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238254)
!238258 = distinct !{!238258, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238259 = distinct !{!238259, !238258, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238260 = distinct !{!238260, i1 false, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238261 = distinct !{!238261, !238260, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238262 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238257)
!238263 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238262)
!238264 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238263)
!238265 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238262)
!238266 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238265)
!238267 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238262)
!238268 = distinct !{!238268, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238269 = distinct !{!238269, !238268, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238270 = distinct !{!238270, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238271 = distinct !{!238271, !238270, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238272 = distinct !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238249)
!238273 = distinct !{!238273, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238274 = distinct !{!238274, !238273, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238275 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238272)
!238276 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238275)
!238277 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238276)
!238278 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238277)
!238279 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238276)
!238280 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238279)
!238281 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238276)
!238282 = !DILocation(line: 177, column: 41, scope: !238244)
!238283 = !{!238251}
!238284 = !{!238253}
!238285 = !{!238256}
!238286 = !{!238256, !238253, !238251, !238259}
!238287 = !{!238261}
!238288 = !{!238256, !238253, !238251, !238261}
!238289 = !{!238269}
!238290 = !{!238271}
!238291 = !{!238274}
!238292 = !{!238274, !238271, !238269, !238259}
!238293 = !{!238274, !238271, !238269, !238261}
!238294 = !DILocation(line: 177, column: 28, scope: !238244)
!238295 = !DILocation(line: 177, column: 45, scope: !238244)
!238296 = !DILocation(line: 961, column: 18, scope: !238245, inlinedAt: !238282)
!238297 = !DILocation(line: 178, column: 28, scope: !238246)
!238298 = !DILocation(line: 178, column: 16, scope: !238246)
!238299 = !DILocation(line: 182, column: 13, scope: !238246)
!238300 = !DILocation(line: 184, column: 5, scope: !238244)
!238301 = !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238249)
!238302 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238254)
!238303 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238257)
!238304 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238264)
!238305 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238266)
!238306 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238262)
!238307 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238267)
!238308 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238262)
!238309 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238272)
!238310 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238275)
!238311 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238278)
!238312 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238280)
!238313 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238276)
!238314 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238281)
!238315 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238276)
!238316 = !DILocation(line: 184, column: 6, scope: !238244)
!238317 = !DILocation(line: 179, column: 35, scope: !238246)
!238318 = !DILocation(line: 179, column: 17, scope: !238246)
!238319 = !DILocation(line: 180, column: 41, scope: !238246)
!238320 = !DILocation(line: 180, column: 17, scope: !238246)
!238321 = !DILocation(line: 168, column: 5, scope: !238244)
!238322 = distinct !DISubprogram(name: "reduce<polars_core::frame::column::Column>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238323 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238324 = distinct !DILexicalBlock(scope: !238322, file: !4879, line: 177, column: 13)
!238325 = distinct !DILocation(line: 184, column: 5, scope: !238322)
!238326 = distinct !DILocation(line: 810, column: 1, scope: !1390, inlinedAt: !238325)
!238327 = distinct !DILocation(line: 77, column: 13, scope: !1392, inlinedAt: !238326)
!238328 = distinct !{!238328, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python"}
!238329 = distinct !{!238329, !238328, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238330 = distinct !{!238330, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python"}
!238331 = distinct !{!238331, !238330, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238332 = distinct !{!238332, i1 false, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238333 = distinct !{!238333, !238332, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238334 = distinct !DILocation(line: 810, column: 1, scope: !1391, inlinedAt: !238327)
!238335 = distinct !{!238335, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6series12SeriesColumnECseeLknQCOKOd_13polars_python"}
!238336 = distinct !{!238336, !238335, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6series12SeriesColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238337 = distinct !{!238337, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238338 = distinct !{!238338, !238337, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238339 = distinct !DILocation(line: 810, column: 1, scope: !687, inlinedAt: !238334)
!238340 = distinct !{!238340, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238341 = distinct !{!238341, !238340, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238342 = distinct !DILocation(line: 810, column: 1, scope: !688, inlinedAt: !238339)
!238343 = distinct !{!238343, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238344 = distinct !{!238344, !238343, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238345 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238342)
!238346 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238345)
!238347 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238346)
!238348 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238347)
!238349 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238346)
!238350 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238349)
!238351 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238346)
!238352 = !DILocation(line: 177, column: 41, scope: !238322)
!238353 = !{!238329}
!238354 = !{!238329, !238331}
!238355 = !{!238333}
!238356 = !{!238336}
!238357 = !{!238338}
!238358 = !{!238341}
!238359 = !{!238344}
!238360 = !{!238344, !238341, !238338, !238336, !238329, !238331}
!238361 = !{!238344, !238341, !238338, !238336, !238329, !238333}
!238362 = !DILocation(line: 177, column: 28, scope: !238322)
!238363 = !DILocation(line: 177, column: 45, scope: !238322)
!238364 = !DILocation(line: 961, column: 18, scope: !238323, inlinedAt: !238352)
!238365 = !DILocation(line: 178, column: 28, scope: !238324)
!238366 = !DILocation(line: 178, column: 16, scope: !238324)
!238367 = !DILocation(line: 182, column: 13, scope: !238324)
!238368 = !DILocation(line: 184, column: 5, scope: !238322)
!238369 = !DILocation(line: 810, column: 1, scope: !1391, inlinedAt: !238327)
!238370 = !DILocation(line: 810, column: 1, scope: !687, inlinedAt: !238334)
!238371 = !DILocation(line: 810, column: 1, scope: !688, inlinedAt: !238339)
!238372 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238342)
!238373 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238345)
!238374 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238348)
!238375 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238350)
!238376 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238346)
!238377 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238351)
!238378 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238346)
!238379 = !DILocation(line: 184, column: 6, scope: !238322)
!238380 = !DILocation(line: 179, column: 35, scope: !238324)
!238381 = !DILocation(line: 179, column: 17, scope: !238324)
!238382 = !DILocation(line: 180, column: 41, scope: !238324)
!238383 = !DILocation(line: 180, column: 17, scope: !238324)
!238384 = !DILocation(line: 168, column: 5, scope: !238322)
!238385 = distinct !DISubprogram(name: "reduce<polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238386 = distinct !DISubprogram(name: "add<polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrame3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238387 = distinct !DILexicalBlock(scope: !238385, file: !4879, line: 177, column: 13)
!238388 = distinct !DILocation(line: 184, column: 5, scope: !238385)
!238389 = distinct !DILocation(line: 810, column: 1, scope: !1395, inlinedAt: !238388)
!238390 = distinct !DILocation(line: 77, column: 13, scope: !1397, inlinedAt: !238389)
!238391 = distinct !{!238391, i1 false, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238392 = distinct !{!238392, !238391, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238393 = !DILocation(line: 177, column: 41, scope: !238385)
!238394 = !{!238392}
!238395 = !DILocation(line: 177, column: 28, scope: !238385)
!238396 = !DILocation(line: 177, column: 45, scope: !238385)
!238397 = !DILocation(line: 961, column: 18, scope: !238386, inlinedAt: !238393)
!238398 = !DILocation(line: 178, column: 28, scope: !238387)
!238399 = !DILocation(line: 178, column: 16, scope: !238387)
!238400 = !DILocation(line: 182, column: 13, scope: !238387)
!238401 = !DILocation(line: 184, column: 5, scope: !238385)
!238402 = !DILocation(line: 810, column: 1, scope: !1396, inlinedAt: !238390)
!238403 = !DILocation(line: 179, column: 35, scope: !238387)
!238404 = !DILocation(line: 179, column: 17, scope: !238387)
!238405 = !DILocation(line: 180, column: 41, scope: !238387)
!238406 = !DILocation(line: 180, column: 17, scope: !238387)
!238407 = !DILocation(line: 184, column: 6, scope: !238385)
!238408 = !DILocation(line: 168, column: 5, scope: !238385)
!238409 = distinct !DISubprogram(name: "index_mut<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutCseeLknQCOKOd_13polars_python", scope: !238425, file: !4631, line: 1007, type: !4271, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238410 = distinct !{!238410, i1 false, !"_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python"}
!238411 = distinct !{!238411, !238410, !"_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python: argument 0"}
!238412 = distinct !DILocation(line: 1008, column: 20, scope: !238409)
!238413 = distinct !DILocation(line: 702, column: 9, scope: !3641, inlinedAt: !238412)
!238414 = distinct !DILocation(line: 3764, column: 14, scope: !3642, inlinedAt: !238413)
!238415 = distinct !DILocation(line: 703, column: 14, scope: !3641, inlinedAt: !238412)
!238416 = distinct !DILocation(line: 603, column: 15, scope: !3644, inlinedAt: !238415)
!238417 = distinct !DILocation(line: 1877, column: 78, scope: !3640, inlinedAt: !238414)
!238418 = distinct !DILocation(line: 2026, column: 18, scope: !3646, inlinedAt: !238417)
!238419 = distinct !DILocation(line: 296, column: 20, scope: !3647, inlinedAt: !238418)
!238420 = distinct !DILocation(line: 609, column: 14, scope: !3648, inlinedAt: !238419)
!238421 = distinct !DILocation(line: 704, column: 14, scope: !3641, inlinedAt: !238412)
!238422 = distinct !DILocation(line: 1584, column: 16, scope: !3651, inlinedAt: !238421)
!238423 = distinct !{!238423, i1 false, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECseeLknQCOKOd_13polars_python"}
!238424 = distinct !{!238424, !238423, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECseeLknQCOKOd_13polars_python: argument 0"}
!238425 = !DINamespace(name: "{impl#9}", scope: !4633)
!238426 = !{!238411}
!238427 = !{!238424}
!238428 = !DILocation(line: 1008, column: 20, scope: !238409)
!238429 = !DILocation(line: 1877, column: 92, scope: !3640, inlinedAt: !238414)
!238430 = !DILocation(line: 703, column: 22, scope: !3641, inlinedAt: !238412)
!238431 = !DILocation(line: 229, column: 12, scope: !3643, inlinedAt: !238416)
!238432 = !DILocation(line: 614, column: 9, scope: !3645, inlinedAt: !238420)
!238433 = !DILocation(line: 231, column: 27, scope: !3643, inlinedAt: !238416)
!238434 = !DILocation(line: 704, column: 28, scope: !3649, inlinedAt: !238422)
!238435 = !DILocation(line: 1589, column: 5, scope: !3650, inlinedAt: !238421)
!238436 = !DILocation(line: 1012, column: 6, scope: !238409)
!238437 = !DILocation(line: 1010, column: 21, scope: !238409)
!238438 = distinct !DISubprogram(name: "fmt<&i64, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCseeLknQCOKOd_13polars_python", scope: !238467, file: !5823, line: 1235, type: !4271, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238439 = distinct !{!238439, i1 false, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python"}
!238440 = distinct !{!238440, !238439, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python: argument 1"}
!238441 = distinct !DISubprogram(name: "iter<(&i64, ()), allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTRxuEE4iterCseeLknQCOKOd_13polars_python", scope: !4995, file: !4334, line: 1361, type: !4271, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238442 = distinct !DISubprogram(name: "iter<&i64, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4iterCseeLknQCOKOd_13polars_python", scope: !5825, file: !5823, line: 287, type: !4271, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238443 = distinct !DISubprogram(name: "keys<&i64, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRxuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4keysCseeLknQCOKOd_13polars_python", scope: !5374, file: !5370, line: 629, type: !4271, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238444 = distinct !DISubprogram(name: "iter<&i64, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRxuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4iterCseeLknQCOKOd_13polars_python", scope: !5374, file: !5370, line: 733, type: !4271, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238445 = distinct !{!238445, !238439, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python: argument 0"}
!238446 = distinct !DISubprogram(name: "data_end<(&i64, ())>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner8data_endTRxuEECseeLknQCOKOd_13polars_python", scope: !5381, file: !4334, line: 2438, type: !4271, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238447 = distinct !DISubprogram(name: "iter<(&i64, ())>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python", scope: !5381, file: !4334, line: 2138, type: !4271, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238448 = distinct !DILocation(line: 1366, column: 29, scope: !238441, inlinedAt: !238472)
!238449 = distinct !DILocation(line: 2167, column: 53, scope: !238447, inlinedAt: !238448)
!238450 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !5381, file: !4334, line: 2634, type: !4271, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238451 = distinct !DILexicalBlock(scope: !238447, file: !4334, line: 2167, column: 13)
!238452 = distinct !DILocation(line: 2170, column: 72, scope: !238451, inlinedAt: !238448)
!238453 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCseeLknQCOKOd_13polars_python", scope: !4422, file: !4420, line: 829, type: !4271, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238454 = distinct !DISubprogram(name: "new<(&i64, ())>", linkageName: "_RNvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_12RawIterRangeTRxuEE3newCseeLknQCOKOd_13polars_python", scope: !5944, file: !4334, line: 3576, type: !4271, scopeLine: 3576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238455 = distinct !DILocation(line: 2170, column: 23, scope: !238451, inlinedAt: !238448)
!238456 = distinct !DILocation(line: 3580, column: 33, scope: !238454, inlinedAt: !238455)
!238457 = distinct !DISubprogram(name: "load_aligned", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group12load_aligned", scope: !5389, file: !5386, line: 55, type: !4271, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238458 = distinct !DILexicalBlock(scope: !238454, file: !4334, line: 3580, column: 9)
!238459 = distinct !DILocation(line: 3586, column: 17, scope: !238458, inlinedAt: !238455)
!238460 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !5389, file: !5386, line: 98, type: !4271, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238461 = distinct !DILexicalBlock(scope: !238460, file: !5386, line: 106, column: 9)
!238462 = distinct !DISubprogram(name: "match_full", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group10match_full", scope: !5389, file: !5386, line: 114, type: !4271, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238463 = distinct !DILocation(line: 3586, column: 50, scope: !238458, inlinedAt: !238455)
!238464 = distinct !DILocation(line: 115, column: 23, scope: !238462, inlinedAt: !238463)
!238465 = distinct !DILocation(line: 108, column: 21, scope: !238461, inlinedAt: !238464)
!238466 = distinct !DILocation(line: 3587, column: 22, scope: !238458, inlinedAt: !238455)
!238467 = !DINamespace(name: "{impl#9}", scope: !5824)
!238468 = !{!238440}
!238469 = !DILocation(line: 1236, column: 36, scope: !238438)
!238470 = !DILocation(line: 289, column: 28, scope: !238442, inlinedAt: !238469)
!238471 = !DILocation(line: 630, column: 28, scope: !238443, inlinedAt: !238470)
!238472 = !DILocation(line: 737, column: 35, scope: !238444, inlinedAt: !238471)
!238473 = !{!238445}
!238474 = !{!238445, !238440}
!238475 = !DILocation(line: 1236, column: 9, scope: !238438)
!238476 = !DILocation(line: 1236, column: 11, scope: !238438)
!238477 = !DILocation(line: 1236, column: 31, scope: !238438)
!238478 = !DILocation(line: 1366, column: 29, scope: !238441, inlinedAt: !238472)
!238479 = !DILocation(line: 2439, column: 9, scope: !238446, inlinedAt: !238449)
!238480 = !DILocation(line: 2635, column: 9, scope: !238450, inlinedAt: !238452)
!238481 = !DILocation(line: 863, column: 18, scope: !238453, inlinedAt: !238456)
!238482 = !DILocation(line: 57, column: 24, scope: !238457, inlinedAt: !238459)
!238483 = !DILocation(line: 1615, column: 9, scope: !2447, inlinedAt: !238465)
!238484 = !DILocation(line: 863, column: 18, scope: !238453, inlinedAt: !238466)
!238485 = !DILocation(line: 2171, column: 24, scope: !238451, inlinedAt: !238448)
!238486 = !DILocation(line: 288, column: 9, scope: !238442, inlinedAt: !238469)
!238487 = !DILocation(line: 1236, column: 23, scope: !238438)
!238488 = !DILocation(line: 1236, column: 42, scope: !238438)
!238489 = !DILocation(line: 1236, column: 44, scope: !238438)
!238490 = !DILocation(line: 1236, column: 51, scope: !238438)
!238491 = !DILocation(line: 1237, column: 6, scope: !238438)
!238492 = distinct !DISubprogram(name: "items_iter", linkageName: "_RNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB5_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter", scope: !238508, file: !5110, line: 18, type: !4271, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238493 = distinct !DISubprogram(name: "load<inventory::Node>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicONtCsgoxMDlS32XZ_9inventory4NodeE4loadCseeLknQCOKOd_13polars_python", scope: !4352, file: !4349, line: 1730, type: !4271, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238494 = distinct !DISubprogram(name: "into_iter<polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame>", linkageName: "_RINvNvCsgoxMDlS32XZ_9inventory1__9into_iterNtNtCseeLknQCOKOd_13polars_python9dataframe34Pyo3MethodsInventoryForPyDataFrameEBJ_", scope: !5086, file: !5084, line: 331, type: !4271, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238495 = distinct !DILexicalBlock(scope: !238492, file: !5110, line: 18, column: 1)
!238496 = distinct !DILocation(line: 18, column: 1, scope: !238495)
!238497 = distinct !DILocation(line: 332, column: 39, scope: !238494, inlinedAt: !238496)
!238498 = distinct !DILocation(line: 1732, column: 18, scope: !238493, inlinedAt: !238497)
!238499 = distinct !DISubprogram(name: "new<core::iter::adapters::map::Map<inventory::_::Iter<polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame>, fn(&polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame) -> &pyo3::impl_::pyclass::PyClassItems>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtCseeLknQCOKOd_13polars_python9dataframe34Pyo3MethodsInventoryForPyDataFrameENvYB23_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsEE3newB27_", scope: !4395, file: !4296, line: 284, type: !4271, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238500 = distinct !DILocation(line: 18, column: 1, scope: !238495)
!238501 = distinct !DILocation(line: 286, column: 19, scope: !238499, inlinedAt: !238500)
!238502 = distinct !DILocation(line: 248, column: 18, scope: !84, inlinedAt: !238501)
!238503 = distinct !DILocation(line: 449, column: 14, scope: !83, inlinedAt: !238502)
!238504 = distinct !DILocation(line: 332, column: 9, scope: !82, inlinedAt: !238503)
!238505 = distinct !DILocation(line: 210, column: 73, scope: !81, inlinedAt: !238504)
!238506 = distinct !DILexicalBlock(scope: !238499, file: !4296, line: 286, column: 9)
!238507 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs7_NtNtCsbm5zPlkZccl_4pyo35impl_7pyclassNtB5_16PyClassItemsIter3new", scope: !6026, file: !6025, line: 266, type: !4271, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238508 = !DINamespace(name: "{impl#9}", scope: !5111)
!238509 = !DILexicalBlockFile(scope: !238495, file: !5110, discriminator: 6)
!238510 = !DILocation(line: 18, column: 1, scope: !238509)
!238511 = !DILocation(line: 3905, column: 24, scope: !2093, inlinedAt: !238498)
!238512 = !DILocation(line: 99, column: 9, scope: !79, inlinedAt: !238505)
!238513 = !DILocation(line: 101, column: 9, scope: !79, inlinedAt: !238505)
!238514 = !DILocation(line: 248, column: 11, scope: !84, inlinedAt: !238501)
!238515 = !DILocation(line: 248, column: 5, scope: !84, inlinedAt: !238501)
!238516 = !DILocation(line: 250, column: 19, scope: !84, inlinedAt: !238501)
!238517 = !DILocation(line: 289, column: 56, scope: !238506, inlinedAt: !238500)
!238518 = !DILocation(line: 273, column: 9, scope: !238507, inlinedAt: !238510)
!238519 = !DILocation(line: 18, column: 35, scope: !238492)
!238520 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !238640, file: !5180, line: 38, type: !4271, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238521 = distinct !DILexicalBlock(scope: !238520, file: !5180, line: 38, column: 17)
!238522 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !238641, file: !6010, line: 12, type: !4271, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238523 = distinct !DILocation(line: 43, column: 12, scope: !238521)
!238524 = distinct !{!238524, i1 false, !"_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone"}
!238525 = distinct !{!238525, !238524, !"_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone: argument 0"}
!238526 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs_Cs7VARH73bmU_11compact_strNtB4_13CompactStringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5271, file: !4500, line: 1954, type: !4271, scopeLine: 1954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238527 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5272, file: !4502, line: 20, type: !4271, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238528 = distinct !DILocation(line: 14, column: 5, scope: !238522, inlinedAt: !238523)
!238529 = distinct !DILocation(line: 20, column: 10, scope: !238527, inlinedAt: !238528)
!238530 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !4342, file: !4339, line: 609, type: !4271, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238531 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !4342, file: !4339, line: 446, type: !4271, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238532 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5273, file: !4339, line: 735, type: !4271, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238533 = distinct !DILocation(line: 1955, column: 21, scope: !238526, inlinedAt: !238529)
!238534 = distinct !DILocation(line: 744, column: 17, scope: !238532, inlinedAt: !238533)
!238535 = distinct !DILocation(line: 447, column: 30, scope: !238531, inlinedAt: !238534)
!238536 = distinct !DISubprogram(name: "read<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python", scope: !4291, file: !4290, line: 1682, type: !4271, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238537 = distinct !DILocation(line: 749, column: 22, scope: !238532, inlinedAt: !238533)
!238538 = distinct !DILocation(line: 12, column: 21, scope: !238522, inlinedAt: !238523)
!238539 = distinct !DILocation(line: 810, column: 1, scope: !51, inlinedAt: !238538)
!238540 = distinct !DILocation(line: 810, column: 1, scope: !50, inlinedAt: !238539)
!238541 = distinct !DILocation(line: 810, column: 1, scope: !49, inlinedAt: !238540)
!238542 = distinct !DILocation(line: 779, column: 17, scope: !48, inlinedAt: !238541)
!238543 = distinct !DILocation(line: 447, column: 30, scope: !47, inlinedAt: !238542)
!238544 = distinct !{!238544, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python"}
!238545 = distinct !{!238545, !238544, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0"}
!238546 = distinct !{!238546, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECseeLknQCOKOd_13polars_python"}
!238547 = distinct !{!238547, !238546, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECseeLknQCOKOd_13polars_python: argument 0"}
!238548 = distinct !{!238548, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python"}
!238549 = distinct !{!238549, !238548, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python: argument 0"}
!238550 = distinct !{!238550, i1 false, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!238551 = distinct !{!238551, !238550, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!238552 = distinct !{!238552, i1 false, !"_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python"}
!238553 = distinct !{!238553, !238552, !"_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python: argument 0"}
!238554 = distinct !DISubprogram(name: "clone<polars_core::series::Series>", linkageName: "_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !5973, file: !4364, line: 628, type: !4271, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238555 = distinct !DILocation(line: 25, column: 5, scope: !238522, inlinedAt: !238523)
!238556 = distinct !DISubprogram(name: "new<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3newCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 140, type: !4271, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238557 = distinct !DILocation(line: 629, column: 20, scope: !238554, inlinedAt: !238555)
!238558 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCseeLknQCOKOd_13polars_python", scope: !4348, file: !4346, line: 2443, type: !4271, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238559 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE6as_ptr", scope: !4352, file: !4349, line: 3614, type: !4271, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238560 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4load", scope: !4352, file: !4349, line: 2868, type: !4271, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238561 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once12is_completed", scope: !4359, file: !4353, line: 84, type: !4271, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238562 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB5_4Once12is_completed", scope: !4363, file: !4360, line: 272, type: !4271, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238563 = distinct !DISubprogram(name: "initialized<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE11initializedCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 517, type: !4271, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238564 = distinct !DISubprogram(name: "get<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3getCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 155, type: !4271, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238565 = distinct !DILexicalBlock(scope: !238554, file: !4364, line: 629, column: 9)
!238566 = distinct !DILexicalBlock(scope: !238565, file: !4364, line: 630, column: 41)
!238567 = distinct !DILocation(line: 630, column: 35, scope: !238566, inlinedAt: !238555)
!238568 = distinct !DILocation(line: 156, column: 17, scope: !238564, inlinedAt: !238567)
!238569 = distinct !DILocation(line: 518, column: 19, scope: !238563, inlinedAt: !238568)
!238570 = distinct !DILocation(line: 273, column: 20, scope: !238562, inlinedAt: !238569)
!238571 = distinct !DILocation(line: 87, column: 31, scope: !238561, inlinedAt: !238570)
!238572 = distinct !DILocation(line: 2870, column: 43, scope: !238560, inlinedAt: !238571)
!238573 = distinct !DILocation(line: 3615, column: 24, scope: !238559, inlinedAt: !238572)
!238574 = distinct !DILocation(line: 2870, column: 26, scope: !238560, inlinedAt: !238571)
!238575 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECseeLknQCOKOd_13polars_python", scope: !4351, file: !4349, line: 3933, type: !4271, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238576 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !4352, file: !4349, line: 3160, type: !4271, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238577 = distinct !DISubprogram(name: "clone<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4374, file: !4371, line: 2382, type: !4286, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238578 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5812, file: !4611, line: 148, type: !4286, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238579 = distinct !DILocation(line: 631, column: 34, scope: !238566, inlinedAt: !238555)
!238580 = distinct !DILocation(line: 150, column: 19, scope: !238578, inlinedAt: !238579)
!238581 = distinct !DILocation(line: 2394, column: 44, scope: !238577, inlinedAt: !238580)
!238582 = distinct !DILocation(line: 3162, column: 26, scope: !238576, inlinedAt: !238581)
!238583 = distinct !DILexicalBlock(scope: !238577, file: !4371, line: 2394, column: 9)
!238584 = distinct !{!238584, i1 false, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python"}
!238585 = distinct !{!238585, !238584, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python: argument 1"}
!238586 = distinct !{!238586, !238584, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python: argument 0"}
!238587 = distinct !DISubprogram(name: "set<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3setCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 238, type: !4271, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238588 = distinct !DILocation(line: 631, column: 24, scope: !238566, inlinedAt: !238555)
!238589 = distinct !DILocation(line: 239, column: 20, scope: !238587, inlinedAt: !238588)
!238590 = distinct !{!238590, i1 false, !"_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python"}
!238591 = distinct !{!238591, !238590, !"_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python: argument 0"}
!238592 = distinct !DILocation(line: 280, column: 24, scope: !4086, inlinedAt: !238589)
!238593 = distinct !DILocation(line: 321, column: 20, scope: !4085, inlinedAt: !238592)
!238594 = distinct !DILocation(line: 407, column: 35, scope: !4084, inlinedAt: !238593)
!238595 = distinct !DILocation(line: 156, column: 17, scope: !4082, inlinedAt: !238594)
!238596 = distinct !DILocation(line: 518, column: 19, scope: !4081, inlinedAt: !238595)
!238597 = distinct !DILocation(line: 273, column: 20, scope: !4080, inlinedAt: !238596)
!238598 = distinct !DILocation(line: 87, column: 31, scope: !4079, inlinedAt: !238597)
!238599 = distinct !DILocation(line: 2870, column: 26, scope: !4078, inlinedAt: !238598)
!238600 = distinct !{!238600, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python"}
!238601 = distinct !{!238601, !238600, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python: argument 0"}
!238602 = distinct !DILocation(line: 285, column: 5, scope: !4077, inlinedAt: !238589)
!238603 = distinct !{!238603, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238604 = distinct !{!238604, !238603, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238605 = distinct !{!238605, i1 false, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238606 = distinct !{!238606, !238605, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238607 = distinct !{!238607, i1 false, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
end_hunk_1
