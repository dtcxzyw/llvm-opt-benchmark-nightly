Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.12?download=true
inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE6reduceCseeLknQCOKOd_13polars_python:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.j, %.val7, !dbg !238298
  br i1 %i.p, label %.body, label %.lr.ph12.i.i.i, !dbg !238298

.lr.ph12.i.i.i:                                   ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.r, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.0.110.i.i.i, !dbg !238298 ; 2 uses
  %i.r = add i64 %.sroa.0.110.i.i.i, 1, !dbg !238298 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238286), !dbg !238298
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238287), !dbg !238306
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238288), !dbg !238307
  %i.s = load ptr, ptr %i.q, align 8, !dbg !238308, !alias.scope !238289, !noalias !238284, !nonnull !4270, !noundef !4270
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !dbg !238309, !noalias !238290
  %i.u = icmp eq i64 %i.t, 1, !dbg !238310
  br i1 %i.u, label %bb.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i, !dbg !238310

bb.e:                                             ; preds = %.lr.ph12.i.i.i
  fence acquire, !dbg !238311
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i unwind label %bb.f, !dbg !238312, !noalias !238284

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i
  %i.v = icmp eq i64 %i.r, %.val7, !dbg !238298
  br i1 %i.v, label %.body, label %.lr.ph12.i.i.i, !dbg !238298

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238298, !noalias !238284
  unreachable, !dbg !238298

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.b, %bb.g
  ret void, !dbg !238313

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238314
  %i.y = load i64, ptr %i.x, align 8, !dbg !238314, !noundef !4270
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238315 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !238315, !noundef !4270
  %i.ab = add i64 %i.aa, %i.y, !dbg !238315
  store i64 %i.ab, ptr %i.z, align 8, !dbg !238315
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238316
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238316
  %i.ac = add i64 %.sroa.48.0.copyload, %i.c, !dbg !238317
  store i64 %i.ac, ptr %i.b, align 8, !dbg !238317
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238296
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python.exit, !dbg !238297

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python.exit8.i.i.i, %bb.d
  resume { ptr, i32 } %i.o, !dbg !238318
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE6reduceCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238319 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !238359, !noundef !4270
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !238360 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !238360, !noundef !4270 ; 2 uses
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %i.c, !dbg !238361
  %i.e = load ptr, ptr %2, align 8, !dbg !238362, !noundef !4270 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !238363
  br i1 %i.f, label %bb.i, label %bb.b, !dbg !238363

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238364
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238365
  %.val7 = load i64, ptr %i.g, align 8, !dbg !238365, !alias.scope !4886, !noundef !4270 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0, !dbg !238366
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph.i.i.i, !dbg !238366

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.j, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.08.i.i.i, !dbg !238366 ; 3 uses
  %i.j = add nuw i64 %.sroa.0.08.i.i.i, 1, !dbg !238366 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238350), !dbg !238366
  %i.k = load i8, ptr %i.i, align 16, !dbg !238367, !range !4820, !alias.scope !238351, !noalias !238352, !noundef !4270
  %i.l = icmp eq i8 %i.k, 31, !dbg !238367
  br i1 %i.l, label %bb.c, label %bb.e, !dbg !238367

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !238367 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238353), !dbg !238367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238354), !dbg !238368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238355), !dbg !238369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238356), !dbg !238370
  %i.n = load ptr, ptr %i.m, align 8, !dbg !238371, !alias.scope !238357, !noalias !238352, !nonnull !4270, !noundef !4270
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !238372, !noalias !238358
  %i.p = icmp eq i64 %i.o, 1, !dbg !238373
  br i1 %i.p, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i, !dbg !238373

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !238374
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #54
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.g, !dbg !238375, !noalias !238352

bb.e:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.g, !dbg !238367, !noalias !238352

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = icmp eq i64 %i.j, %.val7, !dbg !238366
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph.i.i.i, !dbg !238366

bb.f:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i.i.i14, 1, !dbg !238366 ; 2 uses
  %i.s = icmp eq i64 %i.r, %.val7, !dbg !238366
  br i1 %i.s, label %.body, label %.lr.ph, !dbg !238366

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.j, %.val7, !dbg !238366
  br i1 %i.u, label %.body, label %.lr.ph, !dbg !238366

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i14 = phi i64 [ %i.r, %bb.f ], [ %i.j, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i14, !dbg !238366
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python(ptr noalias noundef align 16 dereferenceable(160) %i.v) #50
          to label %bb.f unwind label %bb.h, !dbg !238366, !noalias !238352

bb.h:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238366, !noalias !238352
  unreachable, !dbg !238366

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python.exit.i.i.i, %bb.b, %bb.i
  ret void, !dbg !238376

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238377
  %i.y = load i64, ptr %i.x, align 8, !dbg !238377, !noundef !4270
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238378 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !dbg !238378, !noundef !4270
  %i.ab = add i64 %i.aa, %i.y, !dbg !238378
  store i64 %i.ab, ptr %i.z, align 8, !dbg !238378
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238379
  %.sroa.48.0.copyload = load i64, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238379
  %i.ac = add i64 %.sroa.48.0.copyload, %i.c, !dbg !238380
  store i64 %i.ac, ptr %i.b, align 8, !dbg !238380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238364
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseeLknQCOKOd_13polars_python.exit, !dbg !238365

.body:                                            ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.t, !dbg !238381
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE6reduceCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238382 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !238392, !noundef !4270
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !238393 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !238393, !noundef !4270 ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.c, !dbg !238394
  %i.e = load ptr, ptr %2, align 8, !dbg !238395, !noundef !4270 ; 3 uses
  %i.f = icmp eq ptr %i.d, %i.e, !dbg !238396
  br i1 %i.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12, label %bb.b, !dbg !238396

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238397
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238398
  %.val7 = load i64, ptr %i.g, align 8, !dbg !238398, !alias.scope !4887, !noundef !4270 ; 4 uses
  %i.h = icmp eq i64 %.val7, 0, !dbg !238399
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph, !dbg !238399

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.val7, !dbg !238399
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, label %.lr.ph, !dbg !238399

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i18 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.0.0.i.i.i18, !dbg !238399
  %i.k = add i64 %.sroa.0.0.i.i.i18, 1, !dbg !238399 ; 4 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.c unwind label %bb.e, !dbg !238399, !noalias !238391

bb.d:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.1.i.i.i19, 1, !dbg !238399 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val7, !dbg !238399
  br i1 %i.m, label %.body, label %.lr.ph20, !dbg !238399

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.val7, !dbg !238399
  br i1 %i.o, label %.body, label %.lr.ph20, !dbg !238399

.lr.ph20:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i19 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %.sroa.0.1.i.i.i19, !dbg !238399
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(48) %i.p) #50
          to label %bb.d unwind label %bb.f, !dbg !238399, !noalias !238391

bb.f:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !238399, !noalias !238391
  unreachable, !dbg !238399

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !238400
  %i.s = load i64, ptr %i.r, align 8, !dbg !238400, !noundef !4270
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !238401 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !238401, !noundef !4270
  %i.v = add i64 %i.u, %i.s, !dbg !238401
  store i64 %i.v, ptr %i.t, align 8, !dbg !238401
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !238402
  %.sroa.413.0.copyload = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !238402
  %i.w = add i64 %.sroa.413.0.copyload, %i.c, !dbg !238403
  store i64 %i.w, ptr %i.b, align 8, !dbg !238403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !238397
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit, !dbg !238398

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.c, %bb.b, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumer13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEECseeLknQCOKOd_13polars_python.exit12
  ret void, !dbg !238404

.body:                                            ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.n, !dbg !238405
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutCseeLknQCOKOd_13polars_python(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238406 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238423), !dbg !238425
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !238426
  %i.b = load i64, ptr %i.a, align 8, !dbg !238426, !alias.scope !238423, !noundef !4270
  %i.c = zext i32 %2 to i64, !dbg !238427         ; 2 uses
  %i.d = icmp ugt i64 %i.b, %i.c, !dbg !238428
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !238428

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238429
  %i.f = load ptr, ptr %i.e, align 8, !dbg !238429, !alias.scope !238423, !nonnull !4270, !noundef !4270
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %i.c, !dbg !238430 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !238431
  %i.i = load i32, ptr %i.h, align 8, !dbg !238431, !alias.scope !238424, !noalias !238423, !noundef !4270
  %i.j = icmp eq i32 %i.i, %1, !dbg !238431
  br i1 %i.j, label %_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python.exit, label %bb.c, !dbg !238432

_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b
  ret ptr %i.g, !dbg !238433

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1442, i64 noundef 24, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #55, !dbg !238434
  unreachable, !dbg !238434
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !238435 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !238472
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_set(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !238473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !238474
  call void @llvm.experimental.noalias.scope.decl(metadata !238465), !dbg !238475
  %i.c = load ptr, ptr %0, align 8, !dbg !238476, !alias.scope !238465, !noalias !238470, !nonnull !4270, !noundef !4270 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238477
  %i.e = load i64, ptr %i.d, align 8, !dbg !238477, !alias.scope !238465, !noalias !238470, !noundef !4270
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e, !dbg !238478
  %i.g = getelementptr i8, ptr %i.f, i64 1, !dbg !238478
  %.val24.i = load <16 x i8>, ptr %i.c, align 16, !dbg !238479, !noalias !238471
  %i.h = icmp sgt <16 x i8> %.val24.i, splat (i8 -1), !dbg !238480
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !238481
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !238482
  %i.k = load i64, ptr %i.j, align 8, !dbg !238482, !alias.scope !238465, !noalias !238470, !noundef !4270
  store ptr %i.c, ptr %i.a, align 8, !dbg !238483
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !238483
  store ptr %i.i, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !238483
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !238483
  store ptr %i.g, ptr %.sroa.59.0..sroa_idx, align 8, !dbg !238483
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !238483
  store <16 x i1> %i.h, ptr %.sroa.610.0..sroa_idx, align 8, !dbg !238483
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !238483
  store i64 %i.k, ptr %.sroa.812.0..sroa_idx, align 8, !dbg !238483
  %i.l = call noundef nonnull align 8 ptr @_RINvMs4_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugSet7entriesRRxINtNtCs7tGzs63DEEy_9hashbrown3set4IterB13_EECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !238484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !238485
  %i.m = call noundef zeroext i1 @_RNvMs4_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !dbg !238486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !238487
  ret i1 %i.m, !dbg !238488
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB5_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !238489 {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXsd_NtCseeLknQCOKOd_13polars_python9dataframeNtB7_34Pyo3MethodsInventoryForPyDataFrameNtCsgoxMDlS32XZ_9inventory7Collect8registry8REGISTRY acquire, align 8, !dbg !238508
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !dbg !238509
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 8, 321) 8, i64 noundef range(i64 8, 17) 8) #53, !dbg !238510 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !238511
  br i1 %i.c, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !238512, !prof !4282

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #51, !dbg !238513
  unreachable, !dbg !238513

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !dbg !238514
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !238515
  store i64 0, ptr %i.d, align 8, !dbg !238515
  store ptr @_RNvNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB7_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS, ptr %0, align 8, !dbg !238515
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !238515
  store ptr %i.b, ptr %i.e, align 8, !dbg !238515
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !238515
  store ptr @1457, ptr %i.f, align 8, !dbg !238515
  ret void, !dbg !238516
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !238517 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [120 x i8], align 16          ; 5 uses
  %i.g = load i8, ptr %1, align 16, !dbg !238656, !range !4820, !noundef !4270
  %.not = icmp eq i8 %i.g, 31, !dbg !238656
  br i1 %.not, label %bb.y, label %bb.b, !dbg !238656

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !238657
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !238658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !238658, !noalias !238639
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !238659 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 119, !dbg !238660
  %i.j = load i8, ptr %i.i, align 1, !dbg !238660, !range !4338, !noalias !238639, !noundef !4270
  %i.k = icmp eq i8 %i.j, -40, !dbg !238661
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !238661

bb.c:                                             ; preds = %bb.b
  call void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #54, !dbg !238662, !noalias !238639
  br label %bb.e, !dbg !238662

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !238663, !noalias !238639
  br label %bb.e, !dbg !238664

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !238665, !noalias !238639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !238666, !noalias !238639
  invoke fastcc void @_RNvXs1_NtCs1LHh8CLbVkQ_11polars_core6scalarNtB5_6ScalarNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
          to label %bb.i unwind label %bb.h, !dbg !238666, !noalias !238639

bb.f:                                             ; preds = %.body.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i ], [ %i.o, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 23, !dbg !238667
  %i.m = load i8, ptr %i.l, align 1, !dbg !238667, !range !4338, !alias.scope !238640, !noalias !238639, !noundef !4270
  %i.n = icmp eq i8 %i.m, -40, !dbg !238668
  br i1 %i.n, label %bb.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i, !dbg !238668, !prof !4282

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python.exit.i unwind label %bb.x, !dbg !238669, !noalias !238639

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !238670
  %i.q = load i64, ptr %i.p, align 8, !dbg !238670, !noalias !238639, !noundef !4270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !238671, !noalias !238641
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !238672 ; 2 uses
  store i32 3, ptr %i.r, align 8, !dbg !238672, !noalias !238641
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144, !dbg !238673
  %i.t = load atomic i32, ptr %i.s acquire, align 16, !dbg !238674, !noalias !238641
  %i.u = icmp eq i32 %i.t, 0, !dbg !238675
  br i1 %i.u, label %bb.j, label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !238675

.body.i.i:                                        ; preds = %bb.u, %bb.t, %bb.p, %bb.o, %bb.n
  %.pn.i.i = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %i.al, %bb.t ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ], [ %i.al, %bb.u ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %.body.i unwind label %bb.w, !dbg !238676, !noalias !238641

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !238677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !238678, !noalias !238641
  %.val.i.i = load ptr, ptr %i.v, align 16, !dbg !238679, !noalias !238641, !nonnull !4270, !noundef !4270 ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 136, !dbg !238679
  %.val8.i.i = load ptr, ptr %i.w, align 8, !dbg !238679, !noalias !238641 ; 2 uses
  %i.x = atomicrmw add ptr %.val.i.i, i64 1 monotonic, align 8, !dbg !238680, !noalias !238641
  %i.y = icmp slt i64 %i.x, 0, !dbg !238681
  br i1 %i.y, label %bb.k, label %bb.l, !dbg !238681

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap(), !dbg !238682
  unreachable, !dbg !238682

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !238683, !noalias !238642
  store ptr %.val.i.i, ptr %i.a, align 8, !dbg !238684, !noalias !238642
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !238684 ; 2 uses
  store ptr %.val8.i.i, ptr %i.z, align 8, !dbg !238684, !noalias !238642
  %i.aa = load atomic i32, ptr %i.r acquire, align 8, !dbg !238685, !noalias !238643
  %i.ab = icmp eq i32 %i.aa, 0, !dbg !238686
  br i1 %i.ab, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python.exit.i.i.i, label %bb.m, !dbg !238686, !prof !4383

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python.exit.i.i.i unwind label %bb.n, !dbg !238687, !noalias !238644

bb.n:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !238645), !dbg !238688
  %i.ad = load ptr, ptr %i.a, align 8, !dbg !238689, !alias.scope !238645, !noalias !238642, !noundef !4270 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !238689
  br i1 %i.ae, label %.body.i.i, label %bb.o, !dbg !238689

bb.o:                                             ; preds = %bb.n
  %i.af = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !dbg !238690, !noalias !238646
  %i.ag = icmp eq i64 %i.af, 1, !dbg !238691
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!238200 = !DILocation(line: 1537, column: 9, scope: !238193, inlinedAt: !238197)
!238201 = !DILocation(line: 1546, column: 6, scope: !238189)
!238202 = distinct !DISubprogram(name: "try_readonly<u16, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodstB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238203 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<u16, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238204 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<u16, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238205 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238206 = distinct !DISubprogram(name: "try_into_readonly<u16, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArraytINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodstB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238207 = !DILocation(line: 1545, column: 14, scope: !238202)
!238208 = !DILocation(line: 823, column: 47, scope: !238204, inlinedAt: !238207)
!238209 = !DILocation(line: 1816, column: 18, scope: !238203, inlinedAt: !238208)
!238210 = !DILocation(line: 1545, column: 22, scope: !238202)
!238211 = !DILocation(line: 1816, column: 33, scope: !238203, inlinedAt: !238208)
!238212 = !DILocation(line: 192, column: 13, scope: !238205, inlinedAt: !238209)
!238213 = !DILocation(line: 1537, column: 9, scope: !238206, inlinedAt: !238210)
!238214 = !DILocation(line: 1546, column: 6, scope: !238202)
!238215 = distinct !DISubprogram(name: "try_readonly<i64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsxB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238216 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<i64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238217 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<i64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238218 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238219 = distinct !DISubprogram(name: "try_into_readonly<i64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayxINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsxB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238220 = !DILocation(line: 1545, column: 14, scope: !238215)
!238221 = !DILocation(line: 823, column: 47, scope: !238217, inlinedAt: !238220)
!238222 = !DILocation(line: 1816, column: 18, scope: !238216, inlinedAt: !238221)
!238223 = !DILocation(line: 1545, column: 22, scope: !238215)
!238224 = !DILocation(line: 1816, column: 33, scope: !238216, inlinedAt: !238221)
!238225 = !DILocation(line: 192, column: 13, scope: !238218, inlinedAt: !238222)
!238226 = !DILocation(line: 1537, column: 9, scope: !238219, inlinedAt: !238223)
!238227 = !DILocation(line: 1546, column: 6, scope: !238215)
!238228 = distinct !DISubprogram(name: "try_readonly<u64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsyB1p_E12try_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1540, type: !4271, scopeLine: 1540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238229 = distinct !DISubprogram(name: "clone_ref<numpy::array::PyArray<u64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvMsq_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEE9clone_refCseeLknQCOKOd_13polars_python", scope: !4665, file: !4546, line: 1811, type: !4271, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238230 = distinct !DISubprogram(name: "clone<numpy::array::PyArray<u64, ndarray::dimension::dim::Dim<[usize; 1]>>>", linkageName: "_RNvXs7_NtCsbm5zPlkZccl_4pyo38instanceINtB5_5BoundINtNtCsi9s4xZ1hxzb_5numpy5array7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4749, file: !4546, line: 822, type: !4271, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238231 = distinct !DISubprogram(name: "Py_INCREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_INCREF", scope: !4562, file: !4560, line: 179, type: !4271, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238232 = distinct !DISubprogram(name: "try_into_readonly<u64, ndarray::dimension::dim::Dim<[usize; 1]>>", linkageName: "_RNvXs6_NtCsi9s4xZ1hxzb_5numpy5arrayINtNtCsbm5zPlkZccl_4pyo38instance5BoundINtB5_7PyArrayyINtNtNtCs39HECPMKlmJ_7ndarray9dimension3dim3DimAjj1_EEEINtB5_14PyArrayMethodsyB1p_E17try_into_readonlyCseeLknQCOKOd_13polars_python", scope: !6038, file: !6036, line: 1532, type: !4271, scopeLine: 1532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238233 = !DILocation(line: 1545, column: 14, scope: !238228)
!238234 = !DILocation(line: 823, column: 47, scope: !238230, inlinedAt: !238233)
!238235 = !DILocation(line: 1816, column: 18, scope: !238229, inlinedAt: !238234)
!238236 = !DILocation(line: 1545, column: 22, scope: !238228)
!238237 = !DILocation(line: 1816, column: 33, scope: !238229, inlinedAt: !238234)
!238238 = !DILocation(line: 192, column: 13, scope: !238231, inlinedAt: !238235)
!238239 = !DILocation(line: 1537, column: 9, scope: !238232, inlinedAt: !238236)
!238240 = !DILocation(line: 1546, column: 6, scope: !238228)
!238241 = distinct !DISubprogram(name: "reduce<polars_core::series::Series>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238242 = distinct !DISubprogram(name: "add<polars_core::series::Series>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtCs1LHh8CLbVkQ_11polars_core6series6Series3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238243 = distinct !DILexicalBlock(scope: !238241, file: !4879, line: 177, column: 13)
!238244 = distinct !DILocation(line: 184, column: 5, scope: !238241)
!238245 = distinct !DILocation(line: 810, column: 1, scope: !1385, inlinedAt: !238244)
!238246 = distinct !DILocation(line: 77, column: 13, scope: !1387, inlinedAt: !238245)
!238247 = distinct !{!238247, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238248 = distinct !{!238248, !238247, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238249 = distinct !{!238249, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238250 = distinct !{!238250, !238249, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238251 = distinct !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238246)
!238252 = distinct !{!238252, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238253 = distinct !{!238253, !238252, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238254 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238251)
!238255 = distinct !{!238255, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238256 = distinct !{!238256, !238255, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238257 = distinct !{!238257, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238258 = distinct !{!238258, !238257, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238259 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238254)
!238260 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238259)
!238261 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238260)
!238262 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238259)
!238263 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238262)
!238264 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238259)
!238265 = distinct !{!238265, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238266 = distinct !{!238266, !238265, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238267 = distinct !{!238267, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238268 = distinct !{!238268, !238267, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238269 = distinct !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238246)
!238270 = distinct !{!238270, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238271 = distinct !{!238271, !238270, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238272 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238269)
!238273 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238272)
!238274 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238273)
!238275 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238274)
!238276 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238273)
!238277 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238276)
!238278 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238273)
!238279 = !DILocation(line: 177, column: 41, scope: !238241)
!238280 = !{!238248}
!238281 = !{!238250}
!238282 = !{!238253}
!238283 = !{!238253, !238250, !238248, !238256}
!238284 = !{!238258}
!238285 = !{!238253, !238250, !238248, !238258}
!238286 = !{!238266}
!238287 = !{!238268}
!238288 = !{!238271}
!238289 = !{!238271, !238268, !238266, !238256}
!238290 = !{!238271, !238268, !238266, !238258}
!238291 = !DILocation(line: 177, column: 28, scope: !238241)
!238292 = !DILocation(line: 177, column: 45, scope: !238241)
!238293 = !DILocation(line: 961, column: 18, scope: !238242, inlinedAt: !238279)
!238294 = !DILocation(line: 178, column: 28, scope: !238243)
!238295 = !DILocation(line: 178, column: 16, scope: !238243)
!238296 = !DILocation(line: 182, column: 13, scope: !238243)
!238297 = !DILocation(line: 184, column: 5, scope: !238241)
!238298 = !DILocation(line: 810, column: 1, scope: !1386, inlinedAt: !238246)
!238299 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238251)
!238300 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238254)
!238301 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238261)
!238302 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238263)
!238303 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238259)
!238304 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238264)
!238305 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238259)
!238306 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238269)
!238307 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238272)
!238308 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238275)
!238309 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238277)
!238310 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238273)
!238311 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238278)
!238312 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238273)
!238313 = !DILocation(line: 184, column: 6, scope: !238241)
!238314 = !DILocation(line: 179, column: 35, scope: !238243)
!238315 = !DILocation(line: 179, column: 17, scope: !238243)
!238316 = !DILocation(line: 180, column: 41, scope: !238243)
!238317 = !DILocation(line: 180, column: 17, scope: !238243)
!238318 = !DILocation(line: 168, column: 5, scope: !238241)
!238319 = distinct !DISubprogram(name: "reduce<polars_core::frame::column::Column>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238320 = distinct !DISubprogram(name: "add<polars_core::frame::column::Column>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6Column3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238321 = distinct !DILexicalBlock(scope: !238319, file: !4879, line: 177, column: 13)
!238322 = distinct !DILocation(line: 184, column: 5, scope: !238319)
!238323 = distinct !DILocation(line: 810, column: 1, scope: !1390, inlinedAt: !238322)
!238324 = distinct !DILocation(line: 77, column: 13, scope: !1392, inlinedAt: !238323)
!238325 = distinct !{!238325, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python"}
!238326 = distinct !{!238326, !238325, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238327 = distinct !{!238327, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python"}
!238328 = distinct !{!238328, !238327, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238329 = distinct !{!238329, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238330 = distinct !{!238330, !238329, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238331 = distinct !DILocation(line: 810, column: 1, scope: !1391, inlinedAt: !238324)
!238332 = distinct !{!238332, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6series12SeriesColumnECseeLknQCOKOd_13polars_python"}
!238333 = distinct !{!238333, !238332, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6series12SeriesColumnECseeLknQCOKOd_13polars_python: argument 0"}
!238334 = distinct !{!238334, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238335 = distinct !{!238335, !238334, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238336 = distinct !DILocation(line: 810, column: 1, scope: !687, inlinedAt: !238331)
!238337 = distinct !{!238337, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238338 = distinct !{!238338, !238337, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238339 = distinct !DILocation(line: 810, column: 1, scope: !688, inlinedAt: !238336)
!238340 = distinct !{!238340, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238341 = distinct !{!238341, !238340, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238342 = distinct !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238339)
!238343 = distinct !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238342)
!238344 = distinct !DILocation(line: 2814, column: 17, scope: !693, inlinedAt: !238343)
!238345 = distinct !DILocation(line: 2110, column: 27, scope: !692, inlinedAt: !238344)
!238346 = distinct !DILocation(line: 2814, column: 32, scope: !693, inlinedAt: !238343)
!238347 = distinct !DILocation(line: 3193, column: 26, scope: !695, inlinedAt: !238346)
!238348 = distinct !DILocation(line: 64, column: 9, scope: !693, inlinedAt: !238343)
!238349 = !DILocation(line: 177, column: 41, scope: !238319)
!238350 = !{!238326}
!238351 = !{!238326, !238328}
!238352 = !{!238330}
!238353 = !{!238333}
!238354 = !{!238335}
!238355 = !{!238338}
!238356 = !{!238341}
!238357 = !{!238341, !238338, !238335, !238333, !238326, !238328}
!238358 = !{!238341, !238338, !238335, !238333, !238326, !238330}
!238359 = !DILocation(line: 177, column: 28, scope: !238319)
!238360 = !DILocation(line: 177, column: 45, scope: !238319)
!238361 = !DILocation(line: 961, column: 18, scope: !238320, inlinedAt: !238349)
!238362 = !DILocation(line: 178, column: 28, scope: !238321)
!238363 = !DILocation(line: 178, column: 16, scope: !238321)
!238364 = !DILocation(line: 182, column: 13, scope: !238321)
!238365 = !DILocation(line: 184, column: 5, scope: !238319)
!238366 = !DILocation(line: 810, column: 1, scope: !1391, inlinedAt: !238324)
!238367 = !DILocation(line: 810, column: 1, scope: !687, inlinedAt: !238331)
!238368 = !DILocation(line: 810, column: 1, scope: !688, inlinedAt: !238336)
!238369 = !DILocation(line: 810, column: 1, scope: !689, inlinedAt: !238339)
!238370 = !DILocation(line: 810, column: 1, scope: !690, inlinedAt: !238342)
!238371 = !DILocation(line: 444, column: 20, scope: !691, inlinedAt: !238345)
!238372 = !DILocation(line: 3956, column: 24, scope: !694, inlinedAt: !238347)
!238373 = !DILocation(line: 2814, column: 12, scope: !693, inlinedAt: !238343)
!238374 = !DILocation(line: 4387, column: 24, scope: !68, inlinedAt: !238348)
!238375 = !DILocation(line: 2857, column: 18, scope: !693, inlinedAt: !238343)
!238376 = !DILocation(line: 184, column: 6, scope: !238319)
!238377 = !DILocation(line: 179, column: 35, scope: !238321)
!238378 = !DILocation(line: 179, column: 17, scope: !238321)
!238379 = !DILocation(line: 180, column: 41, scope: !238321)
!238380 = !DILocation(line: 180, column: 17, scope: !238321)
!238381 = !DILocation(line: 168, column: 5, scope: !238319)
!238382 = distinct !DISubprogram(name: "reduce<polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvXs6_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEE6reduceCseeLknQCOKOd_13polars_python", scope: !6039, file: !4879, line: 168, type: !4271, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238383 = distinct !DISubprogram(name: "add<polars_core::frame::dataframe::DataFrame>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrONtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrame3addCseeLknQCOKOd_13polars_python", scope: !4318, file: !4316, line: 927, type: !4271, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238384 = distinct !DILexicalBlock(scope: !238382, file: !4879, line: 177, column: 13)
!238385 = distinct !DILocation(line: 184, column: 5, scope: !238382)
!238386 = distinct !DILocation(line: 810, column: 1, scope: !1395, inlinedAt: !238385)
!238387 = distinct !DILocation(line: 77, column: 13, scope: !1397, inlinedAt: !238386)
!238388 = distinct !{!238388, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
!238389 = distinct !{!238389, !238388, !"_RNvXs2_NtNtNtCse67t6KqNqGQ_5rayon4iter7collect8consumerINtB5_13CollectResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python: argument 0"}
!238390 = !DILocation(line: 177, column: 41, scope: !238382)
!238391 = !{!238389}
!238392 = !DILocation(line: 177, column: 28, scope: !238382)
!238393 = !DILocation(line: 177, column: 45, scope: !238382)
!238394 = !DILocation(line: 961, column: 18, scope: !238383, inlinedAt: !238390)
!238395 = !DILocation(line: 178, column: 28, scope: !238384)
!238396 = !DILocation(line: 178, column: 16, scope: !238384)
!238397 = !DILocation(line: 182, column: 13, scope: !238384)
!238398 = !DILocation(line: 184, column: 5, scope: !238382)
!238399 = !DILocation(line: 810, column: 1, scope: !1396, inlinedAt: !238387)
!238400 = !DILocation(line: 179, column: 35, scope: !238384)
!238401 = !DILocation(line: 179, column: 17, scope: !238384)
!238402 = !DILocation(line: 180, column: 41, scope: !238384)
!238403 = !DILocation(line: 180, column: 17, scope: !238384)
!238404 = !DILocation(line: 184, column: 6, scope: !238382)
!238405 = !DILocation(line: 168, column: 5, scope: !238382)
!238406 = distinct !DISubprogram(name: "index_mut<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutCseeLknQCOKOd_13polars_python", scope: !238422, file: !4631, line: 1007, type: !4271, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238407 = distinct !{!238407, !"_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python"}
!238408 = distinct !{!238408, !238407, !"_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCseeLknQCOKOd_13polars_python: argument 0"}
!238409 = distinct !DILocation(line: 1008, column: 20, scope: !238406)
!238410 = distinct !DILocation(line: 702, column: 9, scope: !3641, inlinedAt: !238409)
!238411 = distinct !DILocation(line: 3764, column: 14, scope: !3642, inlinedAt: !238410)
!238412 = distinct !DILocation(line: 703, column: 14, scope: !3641, inlinedAt: !238409)
!238413 = distinct !DILocation(line: 603, column: 15, scope: !3644, inlinedAt: !238412)
!238414 = distinct !DILocation(line: 1877, column: 78, scope: !3640, inlinedAt: !238411)
!238415 = distinct !DILocation(line: 2026, column: 18, scope: !3646, inlinedAt: !238414)
!238416 = distinct !DILocation(line: 296, column: 20, scope: !3647, inlinedAt: !238415)
!238417 = distinct !DILocation(line: 609, column: 14, scope: !3648, inlinedAt: !238416)
!238418 = distinct !DILocation(line: 704, column: 14, scope: !3641, inlinedAt: !238409)
!238419 = distinct !DILocation(line: 1584, column: 16, scope: !3651, inlinedAt: !238418)
!238420 = distinct !{!238420, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECseeLknQCOKOd_13polars_python"}
!238421 = distinct !{!238421, !238420, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECseeLknQCOKOd_13polars_python: argument 0"}
!238422 = !DINamespace(name: "{impl#9}", scope: !4633)
!238423 = !{!238408}
!238424 = !{!238421}
!238425 = !DILocation(line: 1008, column: 20, scope: !238406)
!238426 = !DILocation(line: 1877, column: 92, scope: !3640, inlinedAt: !238411)
!238427 = !DILocation(line: 703, column: 22, scope: !3641, inlinedAt: !238409)
!238428 = !DILocation(line: 229, column: 12, scope: !3643, inlinedAt: !238413)
!238429 = !DILocation(line: 614, column: 9, scope: !3645, inlinedAt: !238417)
!238430 = !DILocation(line: 231, column: 27, scope: !3643, inlinedAt: !238413)
!238431 = !DILocation(line: 704, column: 28, scope: !3649, inlinedAt: !238419)
!238432 = !DILocation(line: 1589, column: 5, scope: !3650, inlinedAt: !238418)
!238433 = !DILocation(line: 1012, column: 6, scope: !238406)
!238434 = !DILocation(line: 1010, column: 21, scope: !238406)
!238435 = distinct !DISubprogram(name: "fmt<&i64, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXs7_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCseeLknQCOKOd_13polars_python", scope: !238464, file: !5823, line: 1235, type: !4271, scopeLine: 1235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238436 = distinct !{!238436, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python"}
!238437 = distinct !{!238437, !238436, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python: argument 1"}
!238438 = distinct !DISubprogram(name: "iter<(&i64, ()), allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableTRxuEE4iterCseeLknQCOKOd_13polars_python", scope: !4995, file: !4334, line: 1361, type: !4271, scopeLine: 1361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238439 = distinct !DISubprogram(name: "iter<&i64, foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3setINtB5_7HashSetRxNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4iterCseeLknQCOKOd_13polars_python", scope: !5825, file: !5823, line: 287, type: !4271, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238440 = distinct !DISubprogram(name: "keys<&i64, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRxuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4keysCseeLknQCOKOd_13polars_python", scope: !5374, file: !5370, line: 629, type: !4271, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238441 = distinct !DISubprogram(name: "iter<&i64, (), foldhash::quality::RandomState, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvMs2_NtCs7tGzs63DEEy_9hashbrown3mapINtB5_7HashMapRxuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4iterCseeLknQCOKOd_13polars_python", scope: !5374, file: !5370, line: 733, type: !4271, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238442 = distinct !{!238442, !238436, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python: argument 0"}
!238443 = distinct !DISubprogram(name: "data_end<(&i64, ())>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner8data_endTRxuEECseeLknQCOKOd_13polars_python", scope: !5381, file: !4334, line: 2438, type: !4271, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238444 = distinct !DISubprogram(name: "iter<(&i64, ())>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner4iterTRxuEECseeLknQCOKOd_13polars_python", scope: !5381, file: !4334, line: 2138, type: !4271, scopeLine: 2138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238445 = distinct !DILocation(line: 1366, column: 29, scope: !238438, inlinedAt: !238469)
!238446 = distinct !DILocation(line: 2167, column: 53, scope: !238444, inlinedAt: !238445)
!238447 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !5381, file: !4334, line: 2634, type: !4271, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238448 = distinct !DILexicalBlock(scope: !238444, file: !4334, line: 2167, column: 13)
!238449 = distinct !DILocation(line: 2170, column: 72, scope: !238448, inlinedAt: !238445)
!238450 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCseeLknQCOKOd_13polars_python", scope: !4422, file: !4420, line: 829, type: !4271, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238451 = distinct !DISubprogram(name: "new<(&i64, ())>", linkageName: "_RNvMsh_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_12RawIterRangeTRxuEE3newCseeLknQCOKOd_13polars_python", scope: !5944, file: !4334, line: 3576, type: !4271, scopeLine: 3576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238452 = distinct !DILocation(line: 2170, column: 23, scope: !238448, inlinedAt: !238445)
!238453 = distinct !DILocation(line: 3580, column: 33, scope: !238451, inlinedAt: !238452)
!238454 = distinct !DISubprogram(name: "load_aligned", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group12load_aligned", scope: !5389, file: !5386, line: 55, type: !4271, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238455 = distinct !DILexicalBlock(scope: !238451, file: !4334, line: 3580, column: 9)
!238456 = distinct !DILocation(line: 3586, column: 17, scope: !238455, inlinedAt: !238452)
!238457 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !5389, file: !5386, line: 98, type: !4271, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238458 = distinct !DILexicalBlock(scope: !238457, file: !5386, line: 106, column: 9)
!238459 = distinct !DISubprogram(name: "match_full", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group10match_full", scope: !5389, file: !5386, line: 114, type: !4271, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238460 = distinct !DILocation(line: 3586, column: 50, scope: !238455, inlinedAt: !238452)
!238461 = distinct !DILocation(line: 115, column: 23, scope: !238459, inlinedAt: !238460)
!238462 = distinct !DILocation(line: 108, column: 21, scope: !238458, inlinedAt: !238461)
!238463 = distinct !DILocation(line: 3587, column: 22, scope: !238455, inlinedAt: !238452)
!238464 = !DINamespace(name: "{impl#9}", scope: !5824)
!238465 = !{!238437}
!238466 = !DILocation(line: 1236, column: 36, scope: !238435)
!238467 = !DILocation(line: 289, column: 28, scope: !238439, inlinedAt: !238466)
!238468 = !DILocation(line: 630, column: 28, scope: !238440, inlinedAt: !238467)
!238469 = !DILocation(line: 737, column: 35, scope: !238441, inlinedAt: !238468)
!238470 = !{!238442}
!238471 = !{!238442, !238437}
!238472 = !DILocation(line: 1236, column: 9, scope: !238435)
!238473 = !DILocation(line: 1236, column: 11, scope: !238435)
!238474 = !DILocation(line: 1236, column: 31, scope: !238435)
!238475 = !DILocation(line: 1366, column: 29, scope: !238438, inlinedAt: !238469)
!238476 = !DILocation(line: 2439, column: 9, scope: !238443, inlinedAt: !238446)
!238477 = !DILocation(line: 2635, column: 9, scope: !238447, inlinedAt: !238449)
!238478 = !DILocation(line: 863, column: 18, scope: !238450, inlinedAt: !238453)
!238479 = !DILocation(line: 57, column: 24, scope: !238454, inlinedAt: !238456)
!238480 = !DILocation(line: 1615, column: 9, scope: !2447, inlinedAt: !238462)
!238481 = !DILocation(line: 863, column: 18, scope: !238450, inlinedAt: !238463)
!238482 = !DILocation(line: 2171, column: 24, scope: !238448, inlinedAt: !238445)
!238483 = !DILocation(line: 288, column: 9, scope: !238439, inlinedAt: !238466)
!238484 = !DILocation(line: 1236, column: 23, scope: !238435)
!238485 = !DILocation(line: 1236, column: 42, scope: !238435)
!238486 = !DILocation(line: 1236, column: 44, scope: !238435)
!238487 = !DILocation(line: 1236, column: 51, scope: !238435)
!238488 = !DILocation(line: 1237, column: 6, scope: !238435)
!238489 = distinct !DISubprogram(name: "items_iter", linkageName: "_RNvXs7_NtCseeLknQCOKOd_13polars_python9dataframeNtB5_11PyDataFrameNtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass11PyClassImpl10items_iter", scope: !238505, file: !5110, line: 18, type: !4271, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238490 = distinct !DISubprogram(name: "load<inventory::Node>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicONtCsgoxMDlS32XZ_9inventory4NodeE4loadCseeLknQCOKOd_13polars_python", scope: !4352, file: !4349, line: 1730, type: !4271, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238491 = distinct !DISubprogram(name: "into_iter<polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame>", linkageName: "_RINvNvCsgoxMDlS32XZ_9inventory1__9into_iterNtNtCseeLknQCOKOd_13polars_python9dataframe34Pyo3MethodsInventoryForPyDataFrameEBJ_", scope: !5086, file: !5084, line: 331, type: !4271, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238492 = distinct !DILexicalBlock(scope: !238489, file: !5110, line: 18, column: 1)
!238493 = distinct !DILocation(line: 18, column: 1, scope: !238492)
!238494 = distinct !DILocation(line: 332, column: 39, scope: !238491, inlinedAt: !238493)
!238495 = distinct !DILocation(line: 1732, column: 18, scope: !238490, inlinedAt: !238494)
!238496 = distinct !DISubprogram(name: "new<core::iter::adapters::map::Map<inventory::_::Iter<polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame>, fn(&polars_python::dataframe::Pyo3MethodsInventoryForPyDataFrame) -> &pyo3::impl_::pyclass::PyClassItems>>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNvCsgoxMDlS32XZ_9inventory1__4IterNtNtCseeLknQCOKOd_13polars_python9dataframe34Pyo3MethodsInventoryForPyDataFrameENvYB23_NtNtNtCsbm5zPlkZccl_4pyo35impl_7pyclass16PyClassInventory5itemsEE3newB27_", scope: !4395, file: !4296, line: 284, type: !4271, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238497 = distinct !DILocation(line: 18, column: 1, scope: !238492)
!238498 = distinct !DILocation(line: 286, column: 19, scope: !238496, inlinedAt: !238497)
!238499 = distinct !DILocation(line: 248, column: 18, scope: !84, inlinedAt: !238498)
!238500 = distinct !DILocation(line: 449, column: 14, scope: !83, inlinedAt: !238499)
!238501 = distinct !DILocation(line: 332, column: 9, scope: !82, inlinedAt: !238500)
!238502 = distinct !DILocation(line: 210, column: 73, scope: !81, inlinedAt: !238501)
!238503 = distinct !DILexicalBlock(scope: !238496, file: !4296, line: 286, column: 9)
!238504 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs7_NtNtCsbm5zPlkZccl_4pyo35impl_7pyclassNtB5_16PyClassItemsIter3new", scope: !6026, file: !6025, line: 266, type: !4271, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238505 = !DINamespace(name: "{impl#9}", scope: !5111)
!238506 = !DILexicalBlockFile(scope: !238492, file: !5110, discriminator: 6)
!238507 = !DILocation(line: 18, column: 1, scope: !238506)
!238508 = !DILocation(line: 3905, column: 24, scope: !2093, inlinedAt: !238495)
!238509 = !DILocation(line: 99, column: 9, scope: !79, inlinedAt: !238502)
!238510 = !DILocation(line: 101, column: 9, scope: !79, inlinedAt: !238502)
!238511 = !DILocation(line: 248, column: 11, scope: !84, inlinedAt: !238498)
!238512 = !DILocation(line: 248, column: 5, scope: !84, inlinedAt: !238498)
!238513 = !DILocation(line: 250, column: 19, scope: !84, inlinedAt: !238498)
!238514 = !DILocation(line: 289, column: 56, scope: !238503, inlinedAt: !238497)
!238515 = !DILocation(line: 273, column: 9, scope: !238504, inlinedAt: !238507)
!238516 = !DILocation(line: 18, column: 35, scope: !238489)
!238517 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !238637, file: !5180, line: 38, type: !4271, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238518 = distinct !DILexicalBlock(scope: !238517, file: !5180, line: 38, column: 17)
!238519 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !238638, file: !6010, line: 12, type: !4271, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238520 = distinct !DILocation(line: 43, column: 12, scope: !238518)
!238521 = distinct !{!238521, !"_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone"}
!238522 = distinct !{!238522, !238521, !"_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone: argument 0"}
!238523 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs_Cs7VARH73bmU_11compact_strNtB4_13CompactStringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5271, file: !4500, line: 1954, type: !4271, scopeLine: 1954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238524 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5272, file: !4502, line: 20, type: !4271, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238525 = distinct !DILocation(line: 14, column: 5, scope: !238519, inlinedAt: !238520)
!238526 = distinct !DILocation(line: 20, column: 10, scope: !238524, inlinedAt: !238525)
!238527 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !4342, file: !4339, line: 609, type: !4271, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238528 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !4342, file: !4339, line: 446, type: !4271, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238529 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5273, file: !4339, line: 735, type: !4271, scopeLine: 735, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238530 = distinct !DILocation(line: 1955, column: 21, scope: !238523, inlinedAt: !238526)
!238531 = distinct !DILocation(line: 744, column: 17, scope: !238529, inlinedAt: !238530)
!238532 = distinct !DILocation(line: 447, column: 30, scope: !238528, inlinedAt: !238531)
!238533 = distinct !DISubprogram(name: "read<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr4readNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python", scope: !4291, file: !4290, line: 1682, type: !4271, scopeLine: 1682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238534 = distinct !DILocation(line: 749, column: 22, scope: !238529, inlinedAt: !238530)
!238535 = distinct !DILocation(line: 12, column: 21, scope: !238519, inlinedAt: !238520)
!238536 = distinct !DILocation(line: 810, column: 1, scope: !51, inlinedAt: !238535)
!238537 = distinct !DILocation(line: 810, column: 1, scope: !50, inlinedAt: !238536)
!238538 = distinct !DILocation(line: 810, column: 1, scope: !49, inlinedAt: !238537)
!238539 = distinct !DILocation(line: 779, column: 17, scope: !48, inlinedAt: !238538)
!238540 = distinct !DILocation(line: 447, column: 30, scope: !47, inlinedAt: !238539)
!238541 = distinct !{!238541, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python"}
!238542 = distinct !{!238542, !238541, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECseeLknQCOKOd_13polars_python: argument 0"}
!238543 = distinct !{!238543, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECseeLknQCOKOd_13polars_python"}
!238544 = distinct !{!238544, !238543, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECseeLknQCOKOd_13polars_python: argument 0"}
!238545 = distinct !{!238545, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python"}
!238546 = distinct !{!238546, !238545, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECseeLknQCOKOd_13polars_python: argument 0"}
!238547 = distinct !{!238547, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!238548 = distinct !{!238548, !238547, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!238549 = distinct !{!238549, !"_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python"}
!238550 = distinct !{!238550, !238549, !"_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python: argument 0"}
!238551 = distinct !DISubprogram(name: "clone<polars_core::series::Series>", linkageName: "_RNvXs5_NtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB5_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !5973, file: !4364, line: 628, type: !4271, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238552 = distinct !DILocation(line: 25, column: 5, scope: !238519, inlinedAt: !238520)
!238553 = distinct !DISubprogram(name: "new<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3newCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 140, type: !4271, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238554 = distinct !DILocation(line: 629, column: 20, scope: !238551, inlinedAt: !238552)
!238555 = distinct !DISubprogram(name: "get<core::sync::atomic::private::Align4<u32>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtB7_4sync6atomic7private6Align4mEE3getCseeLknQCOKOd_13polars_python", scope: !4348, file: !4346, line: 2443, type: !4271, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238556 = distinct !DISubprogram(name: "as_ptr", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE6as_ptr", scope: !4352, file: !4349, line: 3614, type: !4271, scopeLine: 3614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238557 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs14_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicmE4load", scope: !4352, file: !4349, line: 2868, type: !4271, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238558 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once12is_completed", scope: !4359, file: !4353, line: 84, type: !4271, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238559 = distinct !DISubprogram(name: "is_completed", linkageName: "_RNvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB5_4Once12is_completed", scope: !4363, file: !4360, line: 272, type: !4271, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238560 = distinct !DISubprogram(name: "initialized<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE11initializedCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 517, type: !4271, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238561 = distinct !DISubprogram(name: "get<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3getCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 155, type: !4271, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238562 = distinct !DILexicalBlock(scope: !238551, file: !4364, line: 629, column: 9)
!238563 = distinct !DILexicalBlock(scope: !238562, file: !4364, line: 630, column: 41)
!238564 = distinct !DILocation(line: 630, column: 35, scope: !238563, inlinedAt: !238552)
!238565 = distinct !DILocation(line: 156, column: 17, scope: !238561, inlinedAt: !238564)
!238566 = distinct !DILocation(line: 518, column: 19, scope: !238560, inlinedAt: !238565)
!238567 = distinct !DILocation(line: 273, column: 20, scope: !238559, inlinedAt: !238566)
!238568 = distinct !DILocation(line: 87, column: 31, scope: !238558, inlinedAt: !238567)
!238569 = distinct !DILocation(line: 2870, column: 43, scope: !238557, inlinedAt: !238568)
!238570 = distinct !DILocation(line: 3615, column: 24, scope: !238556, inlinedAt: !238569)
!238571 = distinct !DILocation(line: 2870, column: 26, scope: !238557, inlinedAt: !238568)
!238572 = distinct !DISubprogram(name: "atomic_add<usize, usize>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic10atomic_addjjECseeLknQCOKOd_13polars_python", scope: !4351, file: !4349, line: 3933, type: !4271, scopeLine: 3933, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238573 = distinct !DISubprogram(name: "fetch_add", linkageName: "_RNvMs1k_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicjE9fetch_add", scope: !4352, file: !4349, line: 3160, type: !4271, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238574 = distinct !DISubprogram(name: "clone<dyn polars_core::series::series_trait::SeriesTrait, alloc::alloc::Global>", linkageName: "_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseeLknQCOKOd_13polars_python", scope: !4374, file: !4371, line: 2382, type: !4286, scopeLine: 2382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238575 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXs7_NtCs1LHh8CLbVkQ_11polars_core6seriesNtB5_6SeriesNtNtCscgRAwXFJnXP_4core5clone5Clone5clone", scope: !5812, file: !4611, line: 148, type: !4286, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238576 = distinct !DILocation(line: 631, column: 34, scope: !238563, inlinedAt: !238552)
!238577 = distinct !DILocation(line: 150, column: 19, scope: !238575, inlinedAt: !238576)
!238578 = distinct !DILocation(line: 2394, column: 44, scope: !238574, inlinedAt: !238577)
!238579 = distinct !DILocation(line: 3162, column: 26, scope: !238573, inlinedAt: !238578)
!238580 = distinct !DILexicalBlock(scope: !238574, file: !4371, line: 2394, column: 9)
!238581 = distinct !{!238581, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python"}
!238582 = distinct !{!238582, !238581, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python: argument 1"}
!238583 = distinct !{!238583, !238581, !"_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10try_insertCseeLknQCOKOd_13polars_python: argument 0"}
!238584 = distinct !DISubprogram(name: "set<polars_core::series::Series>", linkageName: "_RNvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB2_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE3setCseeLknQCOKOd_13polars_python", scope: !4366, file: !4364, line: 238, type: !4271, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4270)
!238585 = distinct !DILocation(line: 631, column: 24, scope: !238563, inlinedAt: !238552)
!238586 = distinct !DILocation(line: 239, column: 20, scope: !238584, inlinedAt: !238585)
!238587 = distinct !{!238587, !"_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python"}
!238588 = distinct !{!238588, !238587, !"_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECseeLknQCOKOd_13polars_python: argument 0"}
!238589 = distinct !DILocation(line: 280, column: 24, scope: !4086, inlinedAt: !238586)
!238590 = distinct !DILocation(line: 321, column: 20, scope: !4085, inlinedAt: !238589)
!238591 = distinct !DILocation(line: 407, column: 35, scope: !4084, inlinedAt: !238590)
!238592 = distinct !DILocation(line: 156, column: 17, scope: !4082, inlinedAt: !238591)
!238593 = distinct !DILocation(line: 518, column: 19, scope: !4081, inlinedAt: !238592)
!238594 = distinct !DILocation(line: 273, column: 20, scope: !4080, inlinedAt: !238593)
!238595 = distinct !DILocation(line: 87, column: 31, scope: !4079, inlinedAt: !238594)
!238596 = distinct !DILocation(line: 2870, column: 26, scope: !4078, inlinedAt: !238595)
!238597 = distinct !{!238597, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python"}
!238598 = distinct !{!238598, !238597, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECseeLknQCOKOd_13polars_python: argument 0"}
!238599 = distinct !DILocation(line: 285, column: 5, scope: !4077, inlinedAt: !238586)
!238600 = distinct !{!238600, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python"}
!238601 = distinct !{!238601, !238600, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseeLknQCOKOd_13polars_python: argument 0"}
!238602 = distinct !{!238602, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python"}
!238603 = distinct !{!238603, !238602, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_EECseeLknQCOKOd_13polars_python: argument 0"}
!238604 = distinct !{!238604, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python"}
end_hunk_1
