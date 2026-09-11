Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_project-b8359ba6a2b1260c.ty_project.331fa20baa313f1f-cgu.04?download=true
inline.NumInlined: 1269
inline.NumDeleted: 590
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SBT_16sort_unstable_byNCINvMsL_BW_INtBW_27DeduplicatedNestedPathsIterBT_E3newINtNtNtNtB8_4iter8adapters5chain5ChainINtNtNtB3f_7sources4once4OnceBT_EINtNtB3d_3map3MapINtNtB6_4iter4IterNtBW_13SystemPathBufENvMs1_BW_B4Q_7as_pathEEE0E0ECs4o81Y09oZk1_10ty_project:bb.a
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SBT_16sort_unstable_byNCINvMsL_BW_INtBW_27DeduplicatedNestedPathsIterBT_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBT_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4I_14ProjectWatcher6update0EE0E0EB4M_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val11 = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %.val12 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val13 = load i64, ptr %i.d, align 8, !noundef !3
  %i.e = tail call noundef range(i8 -1, 2) i8 @_RNvXs1M_CshFWUtO0bu8g_6caminoNtB6_8Utf8PathNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10, i64 noundef %.val11, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12, i64 noundef %.val13)
  %i.f = icmp eq i8 %i.e, -1                      ; 2 uses
  %.not28 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.f, label %.preheader, label %.preheader18

.preheader18:                                     ; preds = %bb.b
  br i1 %.not28, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not28, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit, label %.lr.ph24

.lr.ph:                                           ; preds = %.preheader18, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader18 ]
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader18 ]
  %.sroa.01.0.i20 = phi i64 [ %i.k, %bb.c ], [ 2, %.preheader18 ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i20 ; 2 uses
  %.val6 = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val7 = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.i = tail call noundef range(i8 -1, 2) i8 @_RNvXs1M_CshFWUtO0bu8g_6caminoNtB6_8Utf8PathNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8, i64 noundef %.val9)
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = add nuw nsw i64 %.sroa.01.0.i20, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread, label %.lr.ph

.lr.ph24:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ]
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i23 = phi i64 [ %i.p, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.n = tail call noundef range(i8 -1, 2) i8 @_RNvXs1M_CshFWUtO0bu8g_6caminoNtB6_8Utf8PathNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val4, i64 noundef %.val5)
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit

bb.d:                                             ; preds = %.lr.ph24
  %i.p = add nuw nsw i64 %.sroa.01.1.i23, 1       ; 2 uses
  %exitcond31.not = icmp eq i64 %i.p, %1
  br i1 %exitcond31.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread, label %.lr.ph24

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit: ; preds = %.lr.ph, %.lr.ph24, %.preheader18, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader18 ], [ 2, %.preheader ], [ %.sroa.01.1.i23, %.lr.ph24 ], [ %.sroa.01.0.i20, %.lr.ph ] ; 2 uses
  %i.q = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.r, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread, label %bb.e

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit
  br i1 %i.f, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit
  %i.s = or i64 %1, 1
  %i.t = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = xor i32 %i.v, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB8_SB17_16sort_unstable_byNCINvMsL_B1a_INtB1a_27DeduplicatedNestedPathsIterB17_E3newINtNtNtNtBa_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB17_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB51_14ProjectWatcher6update0EE0E0EB55_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.w, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i
  %i.x = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.y = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.aa = getelementptr [16 x i8], ptr %i.ag, i64 %i.y ; 3 uses
  %i.ab = load ptr, ptr %i.z, align 8, !alias.scope !1989, !noalias !1990, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1989, !noalias !1990, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !1991
  store ptr %i.ab, ptr %i.aa, align 8, !alias.scope !1992, !noalias !1993
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !alias.scope !1992, !noalias !1993
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread, %bb.e
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPathNCINvMB6_SB12_16sort_unstable_byNCINvMsL_B15_INtB15_27DeduplicatedNestedPathsIterB12_E3newINtNtNtNtB8_4iter8adapters6filter6FilterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB12_ENCNvMNtNtCs4o81Y09oZk1_10ty_project5watch15project_watcherNtB4W_14ProjectWatcher6update0EE0E0EB50_.exit.thread
  %i.af = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1990)
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ah = icmp eq i64 %i.af, 1
  br i1 %i.ah, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i
  %unroll_iter = and i64 %i.af, 288230376151711742
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i.new ], [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i ]
  %i.ai = xor i64 %.sroa.0.016.i.i, -1
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.ak = getelementptr [16 x i8], ptr %i.ag, i64 %i.ai ; 3 uses
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !1989, !noalias !1990, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1989, !noalias !1990, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !1991
  store ptr %i.al, ptr %i.ak, align 8, !alias.scope !1992, !noalias !1993
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !alias.scope !1992, !noalias !1993
  %i.ap = xor i64 %.sroa.0.016.i.i, -2
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr [16 x i8], ptr %i.ag, i64 %i.ap ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !1989, !noalias !1990, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1989, !noalias !1990, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !1991
  store ptr %i.at, ptr %i.as, align 8, !alias.scope !1992, !noalias !1993
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !alias.scope !1992, !noalias !1993
  %i.ax = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath7reverseCs4o81Y09oZk1_10ty_project.exit.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path10SystemPath12split_at_mutCs4o81Y09oZk1_10ty_project.exit11.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1u_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2k_5sliceSBW_7sort_byNCNCINvMs4_NtBZ_3mapINtB4q_8IndexMapB1t_B2S_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6m_7Options24prioritize_all_selectors00E00E0EB6q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.at, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.at ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ic, %bb.at ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ia, %bb.at ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit
  %.sroa.021.0 = phi i8 [ %i.dn, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, %bb.h
  br i1 %4, label %bb.y, label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 128
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !2009, !noalias !2010, !noundef !3 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !2009, !noalias !2010 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !2009, !noalias !2010 ; 2 uses
  %i.t = icmp eq i64 %.val15.i, 3
  br i1 %i.t, label %bb.l, label %.thread.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %i.o, i64 120
  %.val14.i = load ptr, ptr %i.u, align 8, !alias.scope !2009, !noalias !2010, !nonnull !3, !noundef !3 ; 3 uses
  %i.v = load i16, ptr %.val14.i, align 1
  %i.w = xor i16 %i.v, 27745
  %i.x = getelementptr i8, ptr %.val14.i, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = xor i16 %i.z, 108
  %i.ab = or i16 %i.w, %i.aa
  %i.ac = icmp ne i16 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0                    ; 2 uses
  %i.af = icmp eq i64 %.val17.i, 3
  br i1 %i.af, label %bb.n, label %bb.m

.thread.i.i.i.i:                                  ; preds = %bb.k
  %i.ag = icmp eq i64 %.val17.i, 3
  br i1 %i.ag, label %.thread10.i.i.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i

.thread10.i.i.i.i:                                ; preds = %.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.ae, label %.split.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ]
  br i1 %i.ae, label %bb.o, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i

.split.i:                                         ; preds = %bb.o, %bb.m
  %.not60.i = icmp eq i64 %i.n, 2
  br i1 %.not60.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.ah = load i16, ptr %.val16.i, align 1
  %i.ai = xor i16 %i.ah, 27745
  %i.aj = getelementptr i8, ptr %.val16.i, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 108
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i, label %.split.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %.thread10.i.i.i.i, %.thread.i.i.i.i
  %.not61.i = icmp eq i64 %i.n, 2
  br i1 %.not61.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i, %bb.t
  %.val13.i = phi i64 [ %.val11.i, %bb.t ], [ %.val15.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i ] ; 2 uses
  %.sroa.01.0.i53.i = phi i64 [ %i.bs, %bb.t ], [ 2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i ] ; 5 uses
  %6 = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.01.0.i53.i ; 2 uses
  %7 = add nsw i64 %.sroa.01.0.i53.i, -1          ; 2 uses
  %8 = icmp samesign ult i64 %7, %i.n
  tail call void @llvm.assume(i1 %8)
  %i.ar = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %7
  %i.as = getelementptr i8, ptr %6, i64 32
  %.val11.i = load i64, ptr %i.as, align 8, !alias.scope !2009, !noalias !2010, !noundef !3 ; 2 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 24
  %.val12.i = load ptr, ptr %i.at, align 8, !alias.scope !2009, !noalias !2010 ; 4 uses
  %i.au = icmp eq i64 %.val11.i, 3
  br i1 %i.au, label %bb.p, label %.thread.i.i.i18.i

bb.p:                                             ; preds = %.lr.ph54.i
  %i.av = getelementptr i8, ptr %6, i64 24
  %.val10.i = load ptr, ptr %i.av, align 8, !alias.scope !2009, !noalias !2010, !nonnull !3, !noundef !3 ; 2 uses
  %i.aw = load i16, ptr %.val10.i, align 1
  %i.ax = xor i16 %i.aw, 27745
  %i.ay = getelementptr i8, ptr %.val10.i, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i16
  %i.bb = xor i16 %i.ba, 108
  %i.bc = or i16 %i.ax, %i.bb
  %i.bd = icmp ne i16 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  %i.bg = icmp eq i64 %.val13.i, 3
  br i1 %i.bg, label %bb.r, label %bb.q

.thread.i.i.i18.i:                                ; preds = %.lr.ph54.i
  %i.bh = icmp eq i64 %.val13.i, 3
  br i1 %i.bh, label %.thread10.i.i.i20.i, label %bb.t

.thread10.i.i.i20.i:                              ; preds = %.thread.i.i.i18.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %i.bf, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = load i16, ptr %.val12.i, align 1
  %i.bj = xor i16 %i.bi, 27745
  %i.bk = getelementptr i8, ptr %.val12.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i16
  %i.bn = xor i16 %i.bm, 108
  %i.bo = or i16 %i.bj, %i.bn
  %i.bp = icmp ne i16 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.t, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.thread10.i.i.i20.i, %.thread.i.i.i18.i
  %i.bs = add nuw nsw i64 %.sroa.01.0.i53.i, 1    ; 2 uses
  %exitcond68.not.i = icmp eq i64 %i.bs, %i.n
  br i1 %exitcond68.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %.lr.ph54.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i
  %.val8.i = phi ptr [ %.val.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i ], [ %.val14.i, %.split.i ] ; 2 uses
  %.sroa.01.1.i46.i = phi i64 [ %i.cr, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i ], [ 2, %.split.i ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.01.1.i46.i ; 2 uses
  %9 = add nsw i64 %.sroa.01.1.i46.i, -1
  %10 = icmp samesign ult i64 %9, %i.n
  tail call void @llvm.assume(i1 %10)
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %.val7.i = load i64, ptr %i.bu, align 8, !alias.scope !2009, !noalias !2010, !noundef !3
  %i.bv = icmp eq i64 %.val7.i, 3
  br i1 %i.bv, label %bb.u, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i

bb.u:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr i8, ptr %i.bt, i64 24
  %.val.i = load ptr, ptr %i.bw, align 8, !alias.scope !2009, !noalias !2010, !nonnull !3, !noundef !3 ; 3 uses
  %i.bx = load i16, ptr %.val.i, align 1
  %i.by = xor i16 %i.bx, 27745
  %i.bz = getelementptr i8, ptr %.val.i, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = xor i16 %i.cb, 108
  %i.cd = or i16 %i.by, %i.cc
  %i.ce = icmp ne i16 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ch = load i16, ptr %.val8.i, align 1
  %i.ci = xor i16 %i.ch, 27745
  %i.cj = getelementptr i8, ptr %.val8.i, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i16
  %i.cm = xor i16 %i.cl, 108
  %i.cn = or i16 %i.ci, %i.cm
  %i.co = icmp ne i16 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i: ; preds = %bb.v
  %i.cr = add nuw nsw i64 %.sroa.01.1.i46.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cr, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i, label %.lr.ph.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i, %bb.v, %bb.u, %.lr.ph.i, %bb.t, %bb.s, %bb.q, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i, %.split.i
  %.sroa.3.0.i.i = phi i1 [ true, %.split.i ], [ false, %bb.t ], [ false, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i ], [ false, %bb.q ], [ false, %bb.s ], [ true, %.lr.ph.i ], [ true, %bb.u ], [ true, %bb.v ], [ true, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.split.i ], [ %i.n, %bb.t ], [ 2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i ], [ %.sroa.01.0.i53.i, %bb.s ], [ %.sroa.01.0.i53.i, %bb.q ], [ %.sroa.01.1.i46.i, %.lr.ph.i ], [ %i.n, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit29.i ], [ %.sroa.01.1.i46.i, %bb.v ], [ %.sroa.01.1.i46.i, %bb.u ] ; 7 uses
  %i.cs = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.cs)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1A_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2q_5sliceSB12_7sort_byNCNCINvMs4_NtB15_3mapINtB4x_8IndexMapB1z_B2Y_INtNtB8_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6u_7Options24prioritize_all_selectors00E00E0EB6y_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.z, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i30.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.n, i64 %.sroa.01.0)
  %i.ct = shl nuw nsw i64 %.sroa.0.0.i30.i, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i31.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 96076792050570582) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1D_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2t_5sliceSB15_7sort_byNCNCINvMs4_NtB18_3mapINtB4A_8IndexMapB1C_B31_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6x_7Options24prioritize_all_selectors00E00E0EB6B_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i31.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.cu = shl nuw nsw i64 %.sroa.0.0.i31.i, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i, %bb.z, %bb.w, %bb.j
  %.sroa.0.0.i41.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ %.sroa.0.0.i.i, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i ]
  %i.cw = shl nuw nsw i64 %.sroa.0.0.i41.i, 1
  %i.cx = or disjoint i64 %i.cw, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit

bb.z:                                             ; preds = %bb.w
  %i.cy = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.de, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.da = xor i64 %.sroa.0.017.i.i.i, -1
  %i.db = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.dc = getelementptr [96 x i8], ptr %i.cz, i64 %i.da
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs4o81Y09oZk1_10ty_project(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i unwind label %bb.aa, !noalias !2010

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #26, !noalias !2010
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1y_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECs4o81Y09oZk1_10ty_project.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.de = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.de, %i.cy
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1B_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2r_5sliceSB13_7sort_byNCNCINvMs4_NtB16_3mapINtB4y_8IndexMapB1A_B2Z_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6v_7Options24prioritize_all_selectors00E00E0EB6z_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.cx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB12_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7reverseCs4o81Y09oZk1_10ty_project.exit.i ], [ %i.cv, %bb.y ], [ %i.ct, %bb.x ] ; 2 uses
  %i.df = lshr i64 %.sroa.023.0, 1
  %i.dg = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dh = sub nsw i64 %factor, %i.df
  %i.di = add nuw nsw i64 %i.dg, %factor
  %i.dj = mul i64 %i.dh, %.sroa.0.0
  %i.dk = mul i64 %i.di, %.sroa.0.0
  %i.dl = xor i64 %i.dk, %i.dj
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 false)
  %i.dn = trunc nuw nsw i64 %i.dm to i8
  br label %bb.g

bb.ab:                                            ; preds = %.lr.ph, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit
  %.sroa.02.144 = phi i64 [ %.sroa.02.0, %.lr.ph ], [ %i.do, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit ] ; 2 uses
  %.sroa.023.143 = phi i64 [ %.sroa.023.0, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit ] ; 4 uses
  %i.do = add i64 %.sroa.02.144, -1               ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.dq, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.ac

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit, %bb.ab, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.143, %bb.ab ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.144, %bb.ab ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ds, align 1
  br i1 %i.k, label %bb.at, label %bb.au

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.do
  %i.du = load i64, ptr %i.dt, align 8, !noundef !3 ; 3 uses
  %i.dv = lshr i64 %i.du, 1                       ; 8 uses
  %i.dw = lshr i64 %.sroa.023.143, 1              ; 6 uses
  %i.dx = add nuw i64 %i.dv, %i.dw                ; 4 uses
  %i.dy = sub i64 %.sroa.09.0, %i.dx
  %i.dz = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.dy ; 6 uses
  %i.ea = icmp samesign ugt i64 %i.dx, %3
  %i.eb = trunc i64 %.sroa.023.143 to i1
  %i.ec = or i64 %i.du, %.sroa.023.143
  %i.ed = trunc i64 %i.ec to i1
  %or.cond3.i = or i1 %i.ea, %i.ed
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ee = trunc i64 %i.du to i1
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.ef = shl nuw nsw i64 %i.dx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1E_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2u_5sliceSB16_7sort_byNCNCINvMs4_NtB19_3mapINtB4B_8IndexMapB1D_B32_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6y_7Options24prioritize_all_selectors00E00E0EB6C_.exit

bb.af:                                            ; preds = %bb.ag, %bb.ad
  br i1 %i.eb, label %bb.ah, label %bb.as

bb.ag:                                            ; preds = %bb.ad
  %i.eg = or i64 %i.dv, 1
  %i.eh = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = xor i32 %i.ej, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1D_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2t_5sliceSB15_7sort_byNCNCINvMs4_NtB18_3mapINtB4A_8IndexMapB1C_B31_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6x_7Options24prioritize_all_selectors00E00E0EB6B_(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 96076792050570582) %i.dv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 96076792050570582) %3, i32 noundef %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.af

bb.ah:                                            ; preds = %bb.as, %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  %i.el = icmp eq i64 %i.dv, 0
  %i.em = icmp eq i64 %i.dw, 0
  %or.cond.i = or i1 %i.em, %i.el
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1v_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2l_5sliceSBX_7sort_byNCNCINvMs4_NtB10_3mapINtB4r_8IndexMapB1u_B2T_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6o_7Options24prioritize_all_selectors00E00E0EB6s_.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 range(i64 0, -9223372036854775808) %i.dv) ; 2 uses
  %i.en = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.en, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1v_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENCINvMNtB2l_5sliceSBX_7sort_byNCNCINvMs4_NtB10_3mapINtB4r_8IndexMapB1u_B2T_INtNtBa_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB6o_7Options24prioritize_all_selectors00E00E0EB6s_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw [96 x i8], ptr %i.dz, i64 %i.dv ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.dv, %i.dw  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.eo, ptr %i.dz
  %i.ep = mul nuw nsw i64 %.sroa.0.0.i.i35, 96    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ep, i1 false), !alias.scope !2013
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ep ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i.i
  %i.er = phi ptr [ %i.gc, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i.i ], [ %i.eq, %.critedge.i ] ; 3 uses
  %i.es = phi ptr [ %i.ga, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i.i ], [ %i.eo, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ev, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB15_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE7sort_byNCNCINvMs4_NtBA_3mapINtB3p_8IndexMapB14_B2d_INtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE7sort_byNCNCNvMNtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5B_7Options24prioritize_all_selectors00E00E0B5F_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -96 ; 3 uses
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 -96 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -96 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.er, i64 -64
  %.val10.i.i = load i64, ptr %i.ew, align 8, !alias.scope !2012, !noalias !2014, !noundef !3
  %i.ex = getelementptr i8, ptr %i.es, i64 -72
  %.val11.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !2011, !noalias !2015 ; 4 uses
  %i.ey = getelementptr i8, ptr %i.es, i64 -64
  %.val12.i.i = load i64, ptr %i.ey, align 8, !alias.scope !2011, !noalias !2015 ; 2 uses
  %i.ez = icmp eq i64 %.val10.i.i, 3
  br i1 %i.ez, label %bb.aj, label %.thread.i.i.i.i.i

end_hunk_0
